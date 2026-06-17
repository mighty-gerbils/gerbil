(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1781697548)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass59905%_)
        (let ((_%$e59907%_
               (let ((__obj102235 _%klass59905%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102235
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102235 '7 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102235
                      'precedence-list)))))
          (if _%$e59907%_
              _%$e59907%_
              (let ((_g102295_
                     (c4-linearize
                      '()
                      (let ((__obj102236 _%klass59905%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj102236
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj102236
                               '5
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj102236
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id59911%_)
                        (cons _%klass-id59911%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id59911%_))))
                      'struct:
                      (lambda (_%klass-id59913%_)
                        (let ((__obj102237
                               (gx#syntax-local-value _%klass-id59913%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj102237
                                 'gerbil/core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj102237
                                 '9
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj102237
                               'struct?))))
                      'eq:
                      gx#free-identifier=?
                      'get-name:
                      gx#stx-e)))
                (begin
                  (let ((_g102296_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g102295_)
                               (##values-length _g102295_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g102296_ 2)))
                        (error "Context expects 2 values" _g102296_)))
                  (let ((_%precedence-list59915%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g102295_ 0)))
                        (_%base-struct59916%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g102295_ 1))))
                    (let ((_%precedence-list59960%_
                           (if (let ((__tmp102297
                                      (let ((__obj102238 _%klass59905%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj102238
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj102238
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj102238
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp102297 '(t object class)))
                               _%precedence-list59915%_
                               (if (member ':object
                                           _%precedence-list59915%_
                                           gx#free-identifier=?)
                                   _%precedence-list59915%_
                                   (if (let ((__obj102239 _%klass59905%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj102239
                                                'gerbil/core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj102239
                                                '11
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj102239
                                              'system?)))
                                       (if (member ':t
                                                   _%precedence-list59915%_
                                                   gx#free-identifier=?)
                                           _%precedence-list59915%_
                                           (let ((__tmp102298
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list59915%_
                                              __tmp102298)))
                                       (let _%loop59922%_ ((_%tail59924%_
                                                            _%precedence-list59915%_)
                                                           (_%head59925%_ '()))
                                         (let* ((_%$%tail5992659934%_
                                                 _%tail59924%_)
                                                (_%$%else5992859942%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head59925%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K5993059948%_
                                                 (lambda (_%rest59945%_
                                                          _%hd59946%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd59946%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail59924%_)
                      _%head59925%_)
               (_%loop59922%_
                _%rest59945%_
                (cons _%hd59946%_ _%head59925%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%tail5992659934%_)
                                               (let ((_%$%hd5993159951%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%tail5992659934%_)))
                                                     (_%$%tl5993259953%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%tail5992659934%_))))
                                                 (let* ((_%hd59956%_
                                                         _%$%hd5993159951%_)
                                                        (_%rest59958%_
                                                         _%$%tl5993259953%_))
                                                   (_%$%K5993059948%_
                                                    _%rest59958%_
                                                    _%hd59956%_)))
                                               (_%$%else5992859942%_)))))))))
                      (let ((__obj102240 _%klass59905%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj102240
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj102240
                               _%precedence-list59960%_
                               '7
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj102240
                             'precedence-list
                             _%precedence-list59960%_)))
                      _%precedence-list59960%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta59775%_ _%method59776%_)
        (let ((_%$%tab5977759779%_
               (let ((__obj102243 _%meta59775%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102243
                        'gerbil/core#meta-object::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102243 '1 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#meta-object::t
                      __obj102243
                      'methods)))))
          (if _%$%tab5977759779%_
              (let ((_%tab59781%_ _%$%tab5977759779%_))
                (hash-get _%tab59781%_ _%method59776%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta59769%_ _%method59770%_)
        (let ((_%$e59772%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta59769%_
                _%method59770%_)))
          (if _%$e59772%_
              _%$e59772%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta59769%_
               _%method59770%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta59718%_ _%method59719%_)
        (let ((_%$e59721%_ (method-ref _%meta59718%_ 'precedence-list)))
          (if _%$e59721%_
              (let _%loop59726%_ ((_%rest59728%_ (_%$e59721%_ _%meta59718%_)))
                (let* ((_%$%rest5972959737%_ _%rest59728%_)
                       (_%$%else5973159745%_ (lambda () '#f))
                       (_%$%K5973359756%_
                        (lambda (_%rest59748%_ _%klass59749%_)
                          (let* ((_%meta59751%_
                                  (gx#syntax-local-value _%klass59749%_))
                                 (_%$e59753%_
                                  (if (let ()
                                        (declare (not safe))
                                        (class-instance?
                                         gerbil/core/mop~MOP-2#meta-object::t
                                         _%meta59751%_))
                                      (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                       _%meta59751%_
                                       _%method59719%_)
                                      '#f)))
                            (if _%$e59753%_
                                _%$e59753%_
                                (_%loop59726%_ _%rest59748%_))))))
                  (if (pair? _%$%rest5972959737%_)
                      (let ((_%$%hd5973459759%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest5972959737%_)))
                            (_%$%tl5973559761%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest5972959737%_))))
                        (let* ((_%klass59764%_ _%$%hd5973459759%_)
                               (_%rest59766%_ _%$%tl5973559761%_))
                          (_%$%K5973359756%_ _%rest59766%_ _%klass59764%_)))
                      (_%$%else5973159745%_))))
              '#f))))
    (define gerbil/core/contract~ClassMeta#call-meta-object
      (lambda (_%meta59708%_ _%method59709%_ . _%args59710%_)
        (let ((_%$e59712%_
               (gerbil/core/contract~ClassMeta#get-meta-object-method
                _%meta59708%_
                _%method59709%_)))
          (if _%$e59712%_
              (apply _%$e59712%_ _%meta59708%_ _%args59710%_)
              (error '"missing meta object method"
                     'meta-object:
                     _%meta59708%_
                     'method:
                     'method)))))))
