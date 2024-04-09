(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1712697251)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52043%_)
      (let ((_%$e52045%_
             (let ((__obj80373 _%klass52043%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj80373
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj80373 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj80373
                    'precedence-list)))))
        (if _%$e52045%_
            _%$e52045%_
            (let ((_g80420_
                   (c4-linearize
                    '()
                    (let ((__obj80374 _%klass52043%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80374
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80374 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80374
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52049%_)
                      (cons _%klass-id52049%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52049%_))))
                    'struct:
                    (lambda (_%klass-id52051%_)
                      (let ((__obj80375
                             (gx#syntax-local-value _%klass-id52051%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj80375
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj80375
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj80375
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g80421_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g80420_)
                             (##vector-length _g80420_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g80421_ 2)))
                      (error "Context expects 2 values" _g80421_)))
                (let ((_%precedence-list52053%_
                       (let () (declare (not safe)) (##vector-ref _g80420_ 0)))
                      (_%base-struct52054%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g80420_ 1))))
                  (let ((_%precedence-list52098%_
                         (if (let ((__tmp80422
                                    (let ((__obj80376 _%klass52043%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj80376
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj80376
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj80376
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp80422 '(t object class)))
                             _%precedence-list52053%_
                             (if (member ':object
                                         _%precedence-list52053%_
                                         gx#free-identifier=?)
                                 _%precedence-list52053%_
                                 (if (let ((__obj80377 _%klass52043%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj80377
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj80377
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj80377
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52053%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52053%_
                                         (let ((__tmp80423
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52053%_
                                            __tmp80423)))
                                     (let _%loop52060%_ ((_%tail52062%_
                                                          _%precedence-list52053%_)
                                                         (_%head52063%_ '()))
                                       (let* ((_%tail5206452072%_
                                               _%tail52062%_)
                                              (_%else5206652080%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52063%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5206852086%_
                                               (lambda (_%rest52083%_
                                                        _%hd52084%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52084%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52062%_)
                    _%head52063%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52060%_
                                                      _%rest52083%_
                                                      (cons _%hd52084%_
                                                            _%head52063%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _%tail5206452072%_))
                                             (let ((_%hd5206952089%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5206452072%_)))
                                                   (_%tl5207052091%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5206452072%_))))
                                               (let* ((_%hd52094%_
                                                       _%hd5206952089%_)
                                                      (_%rest52096%_
                                                       _%tl5207052091%_))
                                                 (_%K5206852086%_
                                                  _%rest52096%_
                                                  _%hd52094%_)))
                                             (_%else5206652080%_)))))))))
                    (let ((__obj80378 _%klass52043%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80378
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj80378
                             _%precedence-list52098%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80378
                           'precedence-list
                           _%precedence-list52098%_)))
                    _%precedence-list52098%_)))))))))
