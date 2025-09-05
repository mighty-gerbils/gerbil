(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1756721290)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass55850%_)
      (let ((_%$e55852%_
             (let ((__obj91673 _%klass55850%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj91673
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj91673 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj91673
                    'precedence-list)))))
        (if _%$e55852%_
            _%$e55852%_
            (let ((_g91728_
                   (c4-linearize
                    '()
                    (let ((__obj91674 _%klass55850%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj91674
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj91674 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj91674
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id55856%_)
                      (cons _%klass-id55856%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id55856%_))))
                    'struct:
                    (lambda (_%klass-id55858%_)
                      (let ((__obj91675
                             (gx#syntax-local-value _%klass-id55858%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj91675
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj91675
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj91675
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g91729_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g91728_)
                             (##values-length _g91728_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g91729_ 2)))
                      (error "Context expects 2 values" _g91729_)))
                (let ((_%precedence-list55860%_
                       (let () (declare (not safe)) (##values-ref _g91728_ 0)))
                      (_%base-struct55861%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g91728_ 1))))
                  (let ((_%precedence-list55905%_
                         (if (let ((__tmp91730
                                    (let ((__obj91676 _%klass55850%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj91676
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj91676
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj91676
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp91730 '(t object class)))
                             _%precedence-list55860%_
                             (if (member ':object
                                         _%precedence-list55860%_
                                         gx#free-identifier=?)
                                 _%precedence-list55860%_
                                 (if (let ((__obj91677 _%klass55850%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj91677
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj91677
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj91677
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list55860%_
                                                 gx#free-identifier=?)
                                         _%precedence-list55860%_
                                         (let ((__tmp91731
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list55860%_
                                            __tmp91731)))
                                     (let _%loop55867%_ ((_%tail55869%_
                                                          _%precedence-list55860%_)
                                                         (_%head55870%_ '()))
                                       (let* ((_%tail5587155879%_
                                               _%tail55869%_)
                                              (_%else5587355887%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head55870%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5587555893%_
                                               (lambda (_%rest55890%_
                                                        _%hd55891%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd55891%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail55869%_)
                    _%head55870%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop55867%_
                                                      _%rest55890%_
                                                      (cons _%hd55891%_
                                                            _%head55870%_))))))
                                         (if (pair? _%tail5587155879%_)
                                             (let ((_%hd5587655896%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5587155879%_)))
                                                   (_%tl5587755898%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5587155879%_))))
                                               (let* ((_%hd55901%_
                                                       _%hd5587655896%_)
                                                      (_%rest55903%_
                                                       _%tl5587755898%_))
                                                 (_%K5587555893%_
                                                  _%rest55903%_
                                                  _%hd55901%_)))
                                             (_%else5587355887%_)))))))))
                    (let ((__obj91678 _%klass55850%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj91678
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj91678
                             _%precedence-list55905%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj91678
                           'precedence-list
                           _%precedence-list55905%_)))
                    _%precedence-list55905%_)))))))))
