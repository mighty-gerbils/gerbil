(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1755903071)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass55464%_)
      (let ((_%$e55466%_
             (let ((__obj88259 _%klass55464%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj88259
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj88259 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj88259
                    'precedence-list)))))
        (if _%$e55466%_
            _%$e55466%_
            (let ((_g88315_
                   (c4-linearize
                    '()
                    (let ((__obj88260 _%klass55464%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj88260
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj88260 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj88260
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id55470%_)
                      (cons _%klass-id55470%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id55470%_))))
                    'struct:
                    (lambda (_%klass-id55472%_)
                      (let ((__obj88261
                             (gx#syntax-local-value _%klass-id55472%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj88261
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj88261
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj88261
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g88316_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g88315_)
                             (##values-length _g88315_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g88316_ 2)))
                      (error "Context expects 2 values" _g88316_)))
                (let ((_%precedence-list55474%_
                       (let () (declare (not safe)) (##values-ref _g88315_ 0)))
                      (_%base-struct55475%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g88315_ 1))))
                  (let ((_%precedence-list55519%_
                         (if (let ((__tmp88317
                                    (let ((__obj88262 _%klass55464%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj88262
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj88262
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj88262
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp88317 '(t object class)))
                             _%precedence-list55474%_
                             (if (member ':object
                                         _%precedence-list55474%_
                                         gx#free-identifier=?)
                                 _%precedence-list55474%_
                                 (if (let ((__obj88263 _%klass55464%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj88263
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj88263
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj88263
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list55474%_
                                                 gx#free-identifier=?)
                                         _%precedence-list55474%_
                                         (let ((__tmp88318
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list55474%_
                                            __tmp88318)))
                                     (let _%loop55481%_ ((_%tail55483%_
                                                          _%precedence-list55474%_)
                                                         (_%head55484%_ '()))
                                       (let* ((_%tail5548555493%_
                                               _%tail55483%_)
                                              (_%else5548755501%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head55484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5548955507%_
                                               (lambda (_%rest55504%_
                                                        _%hd55505%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd55505%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail55483%_)
                    _%head55484%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop55481%_
                                                      _%rest55504%_
                                                      (cons _%hd55505%_
                                                            _%head55484%_))))))
                                         (if (pair? _%tail5548555493%_)
                                             (let ((_%hd5549055510%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5548555493%_)))
                                                   (_%tl5549155512%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5548555493%_))))
                                               (let* ((_%hd55515%_
                                                       _%hd5549055510%_)
                                                      (_%rest55517%_
                                                       _%tl5549155512%_))
                                                 (_%K5548955507%_
                                                  _%rest55517%_
                                                  _%hd55515%_)))
                                             (_%else5548755501%_)))))))))
                    (let ((__obj88264 _%klass55464%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj88264
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj88264
                             _%precedence-list55519%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj88264
                           'precedence-list
                           _%precedence-list55519%_)))
                    _%precedence-list55519%_)))))))))
