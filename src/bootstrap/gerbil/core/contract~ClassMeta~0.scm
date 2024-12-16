(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1734357957)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52390%_)
      (let ((_%$e52392%_
             (let ((__obj84838 _%klass52390%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj84838
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj84838 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj84838
                    'precedence-list)))))
        (if _%$e52392%_
            _%$e52392%_
            (let ((_g84894_
                   (c4-linearize
                    '()
                    (let ((__obj84839 _%klass52390%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84839
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84839 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84839
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52396%_)
                      (cons _%klass-id52396%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52396%_))))
                    'struct:
                    (lambda (_%klass-id52398%_)
                      (let ((__obj84840
                             (gx#syntax-local-value _%klass-id52398%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84840
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84840
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj84840
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g84895_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g84894_)
                             (##values-length _g84894_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g84895_ 2)))
                      (error "Context expects 2 values" _g84895_)))
                (let ((_%precedence-list52400%_
                       (let () (declare (not safe)) (##values-ref _g84894_ 0)))
                      (_%base-struct52401%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g84894_ 1))))
                  (let ((_%precedence-list52445%_
                         (if (let ((__tmp84896
                                    (let ((__obj84841 _%klass52390%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj84841
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj84841
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj84841
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp84896 '(t object class)))
                             _%precedence-list52400%_
                             (if (member ':object
                                         _%precedence-list52400%_
                                         gx#free-identifier=?)
                                 _%precedence-list52400%_
                                 (if (let ((__obj84842 _%klass52390%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj84842
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj84842
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj84842
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52400%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52400%_
                                         (let ((__tmp84897
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52400%_
                                            __tmp84897)))
                                     (let _%loop52407%_ ((_%tail52409%_
                                                          _%precedence-list52400%_)
                                                         (_%head52410%_ '()))
                                       (let* ((_%tail5241152419%_
                                               _%tail52409%_)
                                              (_%else5241352427%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52410%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5241552433%_
                                               (lambda (_%rest52430%_
                                                        _%hd52431%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52431%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52409%_)
                    _%head52410%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52407%_
                                                      _%rest52430%_
                                                      (cons _%hd52431%_
                                                            _%head52410%_))))))
                                         (if (pair? _%tail5241152419%_)
                                             (let ((_%hd5241652436%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5241152419%_)))
                                                   (_%tl5241752438%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5241152419%_))))
                                               (let* ((_%hd52441%_
                                                       _%hd5241652436%_)
                                                      (_%rest52443%_
                                                       _%tl5241752438%_))
                                                 (_%K5241552433%_
                                                  _%rest52443%_
                                                  _%hd52441%_)))
                                             (_%else5241352427%_)))))))))
                    (let ((__obj84843 _%klass52390%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84843
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj84843
                             _%precedence-list52445%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84843
                           'precedence-list
                           _%precedence-list52445%_)))
                    _%precedence-list52445%_)))))))))
