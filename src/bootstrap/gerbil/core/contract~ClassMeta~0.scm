(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1712773521)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52413%_)
      (let ((_%$e52415%_
             (let ((__obj81073 _%klass52413%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj81073
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj81073 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj81073
                    'precedence-list)))))
        (if _%$e52415%_
            _%$e52415%_
            (let ((_g81120_
                   (c4-linearize
                    '()
                    (let ((__obj81074 _%klass52413%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj81074
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj81074 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj81074
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52419%_)
                      (cons _%klass-id52419%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52419%_))))
                    'struct:
                    (lambda (_%klass-id52421%_)
                      (let ((__obj81075
                             (gx#syntax-local-value _%klass-id52421%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj81075
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj81075
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj81075
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g81121_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g81120_)
                             (##vector-length _g81120_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g81121_ 2)))
                      (error "Context expects 2 values" _g81121_)))
                (let ((_%precedence-list52423%_
                       (let () (declare (not safe)) (##vector-ref _g81120_ 0)))
                      (_%base-struct52424%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g81120_ 1))))
                  (let ((_%precedence-list52468%_
                         (if (let ((__tmp81122
                                    (let ((__obj81076 _%klass52413%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj81076
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj81076
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj81076
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp81122 '(t object class)))
                             _%precedence-list52423%_
                             (if (member ':object
                                         _%precedence-list52423%_
                                         gx#free-identifier=?)
                                 _%precedence-list52423%_
                                 (if (let ((__obj81077 _%klass52413%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj81077
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj81077
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj81077
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52423%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52423%_
                                         (let ((__tmp81123
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52423%_
                                            __tmp81123)))
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
                    (let ((__obj81078 _%klass52413%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj81078
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj81078
                             _%precedence-list52468%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj81078
                           'precedence-list
                           _%precedence-list52468%_)))
                    _%precedence-list52468%_)))))))))
