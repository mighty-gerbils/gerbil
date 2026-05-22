(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1779435571)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass58829%_)
        (let ((_%$e58831%_
               (let ((__obj101115 _%klass58829%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101115
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101115 '7 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101115
                      'precedence-list)))))
          (if _%$e58831%_
              _%$e58831%_
              (let ((_g101175_
                     (c4-linearize
                      '()
                      (let ((__obj101116 _%klass58829%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj101116
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj101116
                               '5
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj101116
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id58835%_)
                        (cons _%klass-id58835%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id58835%_))))
                      'struct:
                      (lambda (_%klass-id58837%_)
                        (let ((__obj101117
                               (gx#syntax-local-value _%klass-id58837%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj101117
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj101117
                                 '9
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj101117
                               'struct?))))
                      'eq:
                      gx#free-identifier=?)))
                (begin
                  (let ((_g101176_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g101175_)
                               (##values-length _g101175_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g101176_ 2)))
                        (error "Context expects 2 values" _g101176_)))
                  (let ((_%precedence-list58839%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g101175_ 0)))
                        (_%base-struct58840%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g101175_ 1))))
                    (let ((_%precedence-list58884%_
                           (if (let ((__tmp101177
                                      (let ((__obj101118 _%klass58829%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj101118
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj101118
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj101118
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp101177 '(t object class)))
                               _%precedence-list58839%_
                               (if (member ':object
                                           _%precedence-list58839%_
                                           gx#free-identifier=?)
                                   _%precedence-list58839%_
                                   (if (let ((__obj101119 _%klass58829%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj101119
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj101119
                                                '11
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj101119
                                              'system?)))
                                       (if (member ':t
                                                   _%precedence-list58839%_
                                                   gx#free-identifier=?)
                                           _%precedence-list58839%_
                                           (let ((__tmp101178
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list58839%_
                                              __tmp101178)))
                                       (let _%loop58846%_ ((_%tail58848%_
                                                            _%precedence-list58839%_)
                                                           (_%head58849%_ '()))
                                         (let* ((_%tail5885058858%_
                                                 _%tail58848%_)
                                                (_%else5885258866%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head58849%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%K5885458872%_
                                                 (lambda (_%rest58869%_
                                                          _%hd58870%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd58870%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail58848%_)
                      _%head58849%_)
               (_%loop58846%_
                _%rest58869%_
                (cons _%hd58870%_ _%head58849%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%tail5885058858%_)
                                               (let ((_%hd5885558875%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%tail5885058858%_)))
                                                     (_%tl5885658877%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%tail5885058858%_))))
                                                 (let* ((_%hd58880%_
                                                         _%hd5885558875%_)
                                                        (_%rest58882%_
                                                         _%tl5885658877%_))
                                                   (_%K5885458872%_
                                                    _%rest58882%_
                                                    _%hd58880%_)))
                                               (_%else5885258866%_)))))))))
                      (let ((__obj101120 _%klass58829%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj101120
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj101120
                               _%precedence-list58884%_
                               '7
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj101120
                             'precedence-list
                             _%precedence-list58884%_)))
                      _%precedence-list58884%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta58699%_ _%method58700%_)
        (let ((_%tab5870158703%_
               (let ((__obj101123 _%meta58699%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101123
                        'gerbil.core#meta-object::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101123 '1 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#meta-object::t
                      __obj101123
                      'methods)))))
          (if _%tab5870158703%_
              (let ((_%tab58705%_ _%tab5870158703%_))
                (hash-get _%tab58705%_ _%method58700%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta58693%_ _%method58694%_)
        (let ((_%$e58696%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta58693%_
                _%method58694%_)))
          (if _%$e58696%_
              _%$e58696%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta58693%_
               _%method58694%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta58642%_ _%method58643%_)
        (let ((_%$e58645%_ (method-ref _%meta58642%_ 'precedence-list)))
          (if _%$e58645%_
              (let _%loop58650%_ ((_%rest58652%_ (_%$e58645%_ _%meta58642%_)))
                (let* ((_%rest5865358661%_ _%rest58652%_)
                       (_%else5865558669%_ (lambda () '#f))
                       (_%K5865758680%_
                        (lambda (_%rest58672%_ _%klass58673%_)
                          (let* ((_%meta58675%_
                                  (gx#syntax-local-value _%klass58673%_))
                                 (_%$e58677%_
                                  (if (let ()
                                        (declare (not safe))
                                        (class-instance?
                                         gerbil/core/mop~MOP-2#meta-object::t
                                         _%meta58675%_))
                                      (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                       _%meta58675%_
                                       _%method58643%_)
                                      '#f)))
                            (if _%$e58677%_
                                _%$e58677%_
                                (_%loop58650%_ _%rest58672%_))))))
                  (if (pair? _%rest5865358661%_)
                      (let ((_%hd5865858683%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest5865358661%_)))
                            (_%tl5865958685%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest5865358661%_))))
                        (let* ((_%klass58688%_ _%hd5865858683%_)
                               (_%rest58690%_ _%tl5865958685%_))
                          (_%K5865758680%_ _%rest58690%_ _%klass58688%_)))
                      (_%else5865558669%_))))
              '#f))))
    (define gerbil/core/contract~ClassMeta#call-meta-object
      (lambda (_%meta58632%_ _%method58633%_ . _%args58634%_)
        (let ((_%$e58636%_
               (gerbil/core/contract~ClassMeta#get-meta-object-method
                _%meta58632%_
                _%method58633%_)))
          (if _%$e58636%_
              (apply _%$e58636%_ _%meta58632%_ _%args58634%_)
              (error '"missing meta object method"
                     'meta-object:
                     _%meta58632%_
                     'method:
                     'method)))))))
