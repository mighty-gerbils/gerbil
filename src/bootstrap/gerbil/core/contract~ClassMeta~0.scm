(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1734279323)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52392%_)
      (let ((_%$e52394%_
             (let ((__obj84748 _%klass52392%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj84748
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj84748 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj84748
                    'precedence-list)))))
        (if _%$e52394%_
            _%$e52394%_
            (let ((_g84801_
                   (c4-linearize
                    '()
                    (let ((__obj84749 _%klass52392%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84749
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84749 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84749
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52398%_)
                      (cons _%klass-id52398%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52398%_))))
                    'struct:
                    (lambda (_%klass-id52400%_)
                      (let ((__obj84750
                             (gx#syntax-local-value _%klass-id52400%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84750
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84750
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj84750
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g84802_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g84801_)
                             (##values-length _g84801_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g84802_ 2)))
                      (error "Context expects 2 values" _g84802_)))
                (let ((_%precedence-list52402%_
                       (let () (declare (not safe)) (##values-ref _g84801_ 0)))
                      (_%base-struct52403%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g84801_ 1))))
                  (let ((_%precedence-list52447%_
                         (if (let ((__tmp84803
                                    (let ((__obj84751 _%klass52392%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj84751
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj84751
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj84751
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp84803 '(t object class)))
                             _%precedence-list52402%_
                             (if (member ':object
                                         _%precedence-list52402%_
                                         gx#free-identifier=?)
                                 _%precedence-list52402%_
                                 (if (let ((__obj84752 _%klass52392%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj84752
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj84752
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj84752
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52402%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52402%_
                                         (let ((__tmp84804
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52402%_
                                            __tmp84804)))
                                     (let _%loop52409%_ ((_%tail52411%_
                                                          _%precedence-list52402%_)
                                                         (_%head52412%_ '()))
                                       (let* ((_%tail5241352421%_
                                               _%tail52411%_)
                                              (_%else5241552429%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5241752435%_
                                               (lambda (_%rest52432%_
                                                        _%hd52433%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52433%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52411%_)
                    _%head52412%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52409%_
                                                      _%rest52432%_
                                                      (cons _%hd52433%_
                                                            _%head52412%_))))))
                                         (if (pair? _%tail5241352421%_)
                                             (let ((_%hd5241852438%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5241352421%_)))
                                                   (_%tl5241952440%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5241352421%_))))
                                               (let* ((_%hd52443%_
                                                       _%hd5241852438%_)
                                                      (_%rest52445%_
                                                       _%tl5241952440%_))
                                                 (_%K5241752435%_
                                                  _%rest52445%_
                                                  _%hd52443%_)))
                                             (_%else5241552429%_)))))))))
                    (let ((__obj84753 _%klass52392%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84753
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj84753
                             _%precedence-list52447%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84753
                           'precedence-list
                           _%precedence-list52447%_)))
                    _%precedence-list52447%_)))))))))
