(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1712757950)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52413%_)
      (let ((_%$e52415%_
             (let ((__obj80833 _%klass52413%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj80833
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj80833 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj80833
                    'precedence-list)))))
        (if _%$e52415%_
            _%$e52415%_
            (let ((_g80880_
                   (c4-linearize
                    '()
                    (let ((__obj80834 _%klass52413%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80834
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80834 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80834
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52419%_)
                      (cons _%klass-id52419%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52419%_))))
                    'struct:
                    (lambda (_%klass-id52421%_)
                      (let ((__obj80835
                             (gx#syntax-local-value _%klass-id52421%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj80835
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj80835
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj80835
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g80881_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g80880_)
                             (##vector-length _g80880_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g80881_ 2)))
                      (error "Context expects 2 values" _g80881_)))
                (let ((_%precedence-list52423%_
                       (let () (declare (not safe)) (##vector-ref _g80880_ 0)))
                      (_%base-struct52424%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g80880_ 1))))
                  (let ((_%precedence-list52468%_
                         (if (let ((__tmp80882
                                    (let ((__obj80836 _%klass52413%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj80836
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj80836
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj80836
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp80882 '(t object class)))
                             _%precedence-list52423%_
                             (if (member ':object
                                         _%precedence-list52423%_
                                         gx#free-identifier=?)
                                 _%precedence-list52423%_
                                 (if (let ((__obj80837 _%klass52413%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj80837
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj80837
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj80837
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52423%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52423%_
                                         (let ((__tmp80883
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52423%_
                                            __tmp80883)))
                                     (let _%loop52430%_ ((_%tail52432%_
                                                          _%precedence-list52423%_)
                                                         (_%head52433%_ '()))
                                       (let* ((_%tail5243452442%_
                                               _%tail52432%_)
                                              (_%else5243652450%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52433%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5243852456%_
                                               (lambda (_%rest52453%_
                                                        _%hd52454%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52454%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52432%_)
                    _%head52433%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52430%_
                                                      _%rest52453%_
                                                      (cons _%hd52454%_
                                                            _%head52433%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _%tail5243452442%_))
                                             (let ((_%hd5243952459%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5243452442%_)))
                                                   (_%tl5244052461%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5243452442%_))))
                                               (let* ((_%hd52464%_
                                                       _%hd5243952459%_)
                                                      (_%rest52466%_
                                                       _%tl5244052461%_))
                                                 (_%K5243852456%_
                                                  _%rest52466%_
                                                  _%hd52464%_)))
                                             (_%else5243652450%_)))))))))
                    (let ((__obj80838 _%klass52413%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80838
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj80838
                             _%precedence-list52468%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80838
                           'precedence-list
                           _%precedence-list52468%_)))
                    _%precedence-list52468%_)))))))))
