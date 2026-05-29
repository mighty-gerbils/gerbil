(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1779967236)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass58835%_)
        (let ((_%$e58837%_
               (let ((__obj101162 _%klass58835%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101162
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101162 '7 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101162
                      'precedence-list)))))
          (if _%$e58837%_
              _%$e58837%_
              (let ((_g101222_
                     (c4-linearize
                      '()
                      (let ((__obj101163 _%klass58835%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj101163
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj101163
                               '5
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj101163
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id58841%_)
                        (cons _%klass-id58841%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id58841%_))))
                      'struct:
                      (lambda (_%klass-id58843%_)
                        (let ((__obj101164
                               (gx#syntax-local-value _%klass-id58843%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj101164
                                 'gerbil/core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj101164
                                 '9
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj101164
                               'struct?))))
                      'eq:
                      gx#free-identifier=?)))
                (begin
                  (let ((_g101223_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g101222_)
                               (##values-length _g101222_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g101223_ 2)))
                        (error "Context expects 2 values" _g101223_)))
                  (let ((_%precedence-list58845%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g101222_ 0)))
                        (_%base-struct58846%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g101222_ 1))))
                    (let ((_%precedence-list58890%_
                           (if (let ((__tmp101224
                                      (let ((__obj101165 _%klass58835%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj101165
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj101165
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj101165
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp101224 '(t object class)))
                               _%precedence-list58845%_
                               (if (member ':object
                                           _%precedence-list58845%_
                                           gx#free-identifier=?)
                                   _%precedence-list58845%_
                                   (if (let ((__obj101166 _%klass58835%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj101166
                                                'gerbil/core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj101166
                                                '11
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj101166
                                              'system?)))
                                       (if (member ':t
                                                   _%precedence-list58845%_
                                                   gx#free-identifier=?)
                                           _%precedence-list58845%_
                                           (let ((__tmp101225
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list58845%_
                                              __tmp101225)))
                                       (let _%loop58852%_ ((_%tail58854%_
                                                            _%precedence-list58845%_)
                                                           (_%head58855%_ '()))
                                         (let* ((_%tail5885658864%_
                                                 _%tail58854%_)
                                                (_%else5885858872%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head58855%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%K5886058878%_
                                                 (lambda (_%rest58875%_
                                                          _%hd58876%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd58876%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail58854%_)
                      _%head58855%_)
               (_%loop58852%_
                _%rest58875%_
                (cons _%hd58876%_ _%head58855%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%tail5885658864%_)
                                               (let ((_%hd5886158881%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%tail5885658864%_)))
                                                     (_%tl5886258883%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%tail5885658864%_))))
                                                 (let* ((_%hd58886%_
                                                         _%hd5886158881%_)
                                                        (_%rest58888%_
                                                         _%tl5886258883%_))
                                                   (_%K5886058878%_
                                                    _%rest58888%_
                                                    _%hd58886%_)))
                                               (_%else5885858872%_)))))))))
                      (let ((__obj101167 _%klass58835%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj101167
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj101167
                               _%precedence-list58890%_
                               '7
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj101167
                             'precedence-list
                             _%precedence-list58890%_)))
                      _%precedence-list58890%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta58705%_ _%method58706%_)
        (let ((_%tab5870758709%_
               (let ((__obj101170 _%meta58705%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101170
                        'gerbil/core#meta-object::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101170 '1 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#meta-object::t
                      __obj101170
                      'methods)))))
          (if _%tab5870758709%_
              (let ((_%tab58711%_ _%tab5870758709%_))
                (hash-get _%tab58711%_ _%method58706%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta58699%_ _%method58700%_)
        (let ((_%$e58702%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta58699%_
                _%method58700%_)))
          (if _%$e58702%_
              _%$e58702%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta58699%_
               _%method58700%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta58648%_ _%method58649%_)
        (let ((_%$e58651%_ (method-ref _%meta58648%_ 'precedence-list)))
          (if _%$e58651%_
              (let _%loop58656%_ ((_%rest58658%_ (_%$e58651%_ _%meta58648%_)))
                (let* ((_%rest5865958667%_ _%rest58658%_)
                       (_%else5866158675%_ (lambda () '#f))
                       (_%K5866358686%_
                        (lambda (_%rest58678%_ _%klass58679%_)
                          (let* ((_%meta58681%_
                                  (gx#syntax-local-value _%klass58679%_))
                                 (_%$e58683%_
                                  (if (let ()
                                        (declare (not safe))
                                        (class-instance?
                                         gerbil/core/mop~MOP-2#meta-object::t
                                         _%meta58681%_))
                                      (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                       _%meta58681%_
                                       _%method58649%_)
                                      '#f)))
                            (if _%$e58683%_
                                _%$e58683%_
                                (_%loop58656%_ _%rest58678%_))))))
                  (if (pair? _%rest5865958667%_)
                      (let ((_%hd5866458689%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest5865958667%_)))
                            (_%tl5866558691%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest5865958667%_))))
                        (let* ((_%klass58694%_ _%hd5866458689%_)
                               (_%rest58696%_ _%tl5866558691%_))
                          (_%K5866358686%_ _%rest58696%_ _%klass58694%_)))
                      (_%else5866158675%_))))
              '#f))))
    (define gerbil/core/contract~ClassMeta#call-meta-object
      (lambda (_%meta58638%_ _%method58639%_ . _%args58640%_)
        (let ((_%$e58642%_
               (gerbil/core/contract~ClassMeta#get-meta-object-method
                _%meta58638%_
                _%method58639%_)))
          (if _%$e58642%_
              (apply _%$e58642%_ _%meta58638%_ _%args58640%_)
              (error '"missing meta object method"
                     'meta-object:
                     _%meta58638%_
                     'method:
                     'method)))))))
