(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1783878469)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass59908%_)
        (let ((_%$e59910%_
               (let ((__obj102225 _%klass59908%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102225
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102225 '7 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102225
                      'precedence-list)))))
          (if _%$e59910%_
              _%$e59910%_
              (let ((_g102285_
                     (c4-linearize
                      '()
                      (let ((__obj102226 _%klass59908%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj102226
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj102226
                               '5
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj102226
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id59914%_)
                        (cons _%klass-id59914%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id59914%_))))
                      'struct:
                      (lambda (_%klass-id59916%_)
                        (let ((__obj102227
                               (gx#syntax-local-value _%klass-id59916%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj102227
                                 'gerbil/core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj102227
                                 '9
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj102227
                               'struct?))))
                      'eq:
                      gx#free-identifier=?
                      'get-name:
                      gx#stx-e)))
                (begin
                  (let ((_g102286_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g102285_)
                               (##values-length _g102285_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g102286_ 2)))
                        (error "Context expects 2 values" _g102286_)))
                  (let ((_%precedence-list59918%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g102285_ 0)))
                        (_%base-struct59919%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g102285_ 1))))
                    (let ((_%precedence-list59963%_
                           (if (let ((__tmp102287
                                      (let ((__obj102228 _%klass59908%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj102228
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj102228
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj102228
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp102287 '(t object class)))
                               _%precedence-list59918%_
                               (if (member ':object
                                           _%precedence-list59918%_
                                           gx#free-identifier=?)
                                   _%precedence-list59918%_
                                   (if (let ((__obj102229 _%klass59908%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj102229
                                                'gerbil/core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj102229
                                                '11
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj102229
                                              'system?)))
                                       (if (member ':t
                                                   _%precedence-list59918%_
                                                   gx#free-identifier=?)
                                           _%precedence-list59918%_
                                           (let ((__tmp102288
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list59918%_
                                              __tmp102288)))
                                       (let _%loop59925%_ ((_%tail59927%_
                                                            _%precedence-list59918%_)
                                                           (_%head59928%_ '()))
                                         (let* ((_%$%tail5992959937%_
                                                 _%tail59927%_)
                                                (_%$%else5993159945%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head59928%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K5993359951%_
                                                 (lambda (_%rest59948%_
                                                          _%hd59949%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd59949%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail59927%_)
                      _%head59928%_)
               (_%loop59925%_
                _%rest59948%_
                (cons _%hd59949%_ _%head59928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%tail5992959937%_)
                                               (let ((_%$%hd5993459954%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%tail5992959937%_)))
                                                     (_%$%tl5993559956%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%tail5992959937%_))))
                                                 (let* ((_%hd59959%_
                                                         _%$%hd5993459954%_)
                                                        (_%rest59961%_
                                                         _%$%tl5993559956%_))
                                                   (_%$%K5993359951%_
                                                    _%rest59961%_
                                                    _%hd59959%_)))
                                               (_%$%else5993159945%_)))))))))
                      (let ((__obj102230 _%klass59908%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj102230
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj102230
                               _%precedence-list59963%_
                               '7
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj102230
                             'precedence-list
                             _%precedence-list59963%_)))
                      _%precedence-list59963%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta59778%_ _%method59779%_)
        (let ((_%$%tab5978059782%_
               (let ((__obj102233 _%meta59778%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102233
                        'gerbil/core#meta-object::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102233 '1 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#meta-object::t
                      __obj102233
                      'methods)))))
          (if _%$%tab5978059782%_
              (let ((_%tab59784%_ _%$%tab5978059782%_))
                (hash-get _%tab59784%_ _%method59779%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta59772%_ _%method59773%_)
        (let ((_%$e59775%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta59772%_
                _%method59773%_)))
          (if _%$e59775%_
              _%$e59775%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta59772%_
               _%method59773%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta59721%_ _%method59722%_)
        (let ((_%$e59724%_ (method-ref _%meta59721%_ 'precedence-list)))
          (if _%$e59724%_
              (let _%loop59729%_ ((_%rest59731%_ (_%$e59724%_ _%meta59721%_)))
                (let* ((_%$%rest5973259740%_ _%rest59731%_)
                       (_%$%else5973459748%_ (lambda () '#f))
                       (_%$%K5973659759%_
                        (lambda (_%rest59751%_ _%klass59752%_)
                          (let* ((_%meta59754%_
                                  (gx#syntax-local-value _%klass59752%_))
                                 (_%$e59756%_
                                  (if (let ()
                                        (declare (not safe))
                                        (class-instance?
                                         gerbil/core/mop~MOP-2#meta-object::t
                                         _%meta59754%_))
                                      (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                       _%meta59754%_
                                       _%method59722%_)
                                      '#f)))
                            (if _%$e59756%_
                                _%$e59756%_
                                (_%loop59729%_ _%rest59751%_))))))
                  (if (pair? _%$%rest5973259740%_)
                      (let ((_%$%hd5973759762%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest5973259740%_)))
                            (_%$%tl5973859764%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest5973259740%_))))
                        (let* ((_%klass59767%_ _%$%hd5973759762%_)
                               (_%rest59769%_ _%$%tl5973859764%_))
                          (_%$%K5973659759%_ _%rest59769%_ _%klass59767%_)))
                      (_%$%else5973459748%_))))
              '#f))))
    (define gerbil/core/contract~ClassMeta#call-meta-object
      (lambda (_%meta59711%_ _%method59712%_ . _%args59713%_)
        (let ((_%$e59715%_
               (gerbil/core/contract~ClassMeta#get-meta-object-method
                _%meta59711%_
                _%method59712%_)))
          (if _%$e59715%_
              (apply _%$e59715%_ _%meta59711%_ _%args59713%_)
              (error '"missing meta object method"
                     'meta-object:
                     _%meta59711%_
                     'method:
                     'method)))))))
