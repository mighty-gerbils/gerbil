(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1783939340)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass59879%_)
        (let ((_%$e59881%_
               (let ((__obj102405 _%klass59879%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102405
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102405 '7 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102405
                      'precedence-list)))))
          (if _%$e59881%_
              _%$e59881%_
              (let ((_g102464_
                     (c4-linearize
                      '()
                      (let ((__obj102406 _%klass59879%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj102406
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj102406
                               '5
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj102406
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id59885%_)
                        (cons _%klass-id59885%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id59885%_))))
                      'struct:
                      (lambda (_%klass-id59887%_)
                        (let ((__obj102407
                               (gx#syntax-local-value _%klass-id59887%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj102407
                                 'gerbil/core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj102407
                                 '9
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj102407
                               'struct?))))
                      'eq:
                      gx#free-identifier=?
                      'get-name:
                      gx#stx-e)))
                (begin
                  (let ((_g102465_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g102464_)
                               (##values-length _g102464_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g102465_ 2)))
                        (error "Context expects 2 values" _g102465_)))
                  (let ((_%precedence-list59889%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g102464_ 0)))
                        (_%base-struct59890%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g102464_ 1))))
                    (let ((_%precedence-list59934%_
                           (if (let ((__tmp102466
                                      (let ((__obj102408 _%klass59879%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj102408
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj102408
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj102408
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp102466 '(t object class)))
                               _%precedence-list59889%_
                               (if (member ':object
                                           _%precedence-list59889%_
                                           gx#free-identifier=?)
                                   _%precedence-list59889%_
                                   (if (let ((__obj102409 _%klass59879%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj102409
                                                'gerbil/core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj102409
                                                '11
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj102409
                                              'system?)))
                                       (if (member ':t
                                                   _%precedence-list59889%_
                                                   gx#free-identifier=?)
                                           _%precedence-list59889%_
                                           (let ((__tmp102467
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list59889%_
                                              __tmp102467)))
                                       (let _%loop59896%_ ((_%tail59898%_
                                                            _%precedence-list59889%_)
                                                           (_%head59899%_ '()))
                                         (let* ((_%$%tail5990059908%_
                                                 _%tail59898%_)
                                                (_%$%else5990259916%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head59899%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K5990459922%_
                                                 (lambda (_%rest59919%_
                                                          _%hd59920%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd59920%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail59898%_)
                      _%head59899%_)
               (_%loop59896%_
                _%rest59919%_
                (cons _%hd59920%_ _%head59899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%tail5990059908%_)
                                               (let ((_%$%hd5990559925%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%tail5990059908%_)))
                                                     (_%$%tl5990659927%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%tail5990059908%_))))
                                                 (let* ((_%hd59930%_
                                                         _%$%hd5990559925%_)
                                                        (_%rest59932%_
                                                         _%$%tl5990659927%_))
                                                   (_%$%K5990459922%_
                                                    _%rest59932%_
                                                    _%hd59930%_)))
                                               (_%$%else5990259916%_)))))))))
                      (let ((__obj102410 _%klass59879%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj102410
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj102410
                               _%precedence-list59934%_
                               '7
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj102410
                             'precedence-list
                             _%precedence-list59934%_)))
                      _%precedence-list59934%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta59749%_ _%method59750%_)
        (let ((_%$%tab5975159753%_
               (let ((__obj102413 _%meta59749%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102413
                        'gerbil/core#meta-object::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102413 '1 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#meta-object::t
                      __obj102413
                      'methods)))))
          (if _%$%tab5975159753%_
              (let ((_%tab59755%_ _%$%tab5975159753%_))
                (hash-get _%tab59755%_ _%method59750%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta59743%_ _%method59744%_)
        (let ((_%$e59746%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta59743%_
                _%method59744%_)))
          (if _%$e59746%_
              _%$e59746%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta59743%_
               _%method59744%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta59692%_ _%method59693%_)
        (let ((_%$e59695%_ (method-ref _%meta59692%_ 'precedence-list)))
          (if _%$e59695%_
              (let _%loop59700%_ ((_%rest59702%_ (_%$e59695%_ _%meta59692%_)))
                (let* ((_%$%rest5970359711%_ _%rest59702%_)
                       (_%$%else5970559719%_ (lambda () '#f))
                       (_%$%K5970759730%_
                        (lambda (_%rest59722%_ _%klass59723%_)
                          (let* ((_%meta59725%_
                                  (gx#syntax-local-value _%klass59723%_))
                                 (_%$e59727%_
                                  (if (let ()
                                        (declare (not safe))
                                        (class-instance?
                                         gerbil/core/mop~MOP-2#meta-object::t
                                         _%meta59725%_))
                                      (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                       _%meta59725%_
                                       _%method59693%_)
                                      '#f)))
                            (if _%$e59727%_
                                _%$e59727%_
                                (_%loop59700%_ _%rest59722%_))))))
                  (if (pair? _%$%rest5970359711%_)
                      (let ((_%$%hd5970859733%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest5970359711%_)))
                            (_%$%tl5970959735%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest5970359711%_))))
                        (let* ((_%klass59738%_ _%$%hd5970859733%_)
                               (_%rest59740%_ _%$%tl5970959735%_))
                          (_%$%K5970759730%_ _%rest59740%_ _%klass59738%_)))
                      (_%$%else5970559719%_))))
              '#f))))
    (define gerbil/core/contract~ClassMeta#call-meta-object
      (lambda (_%meta59682%_ _%method59683%_ . _%args59684%_)
        (let ((_%$e59686%_
               (gerbil/core/contract~ClassMeta#get-meta-object-method
                _%meta59682%_
                _%method59683%_)))
          (if _%$e59686%_
              (apply _%$e59686%_ _%meta59682%_ _%args59684%_)
              (error '"missing meta object method"
                     'meta-object:
                     _%meta59682%_
                     'method:
                     'method)))))))
