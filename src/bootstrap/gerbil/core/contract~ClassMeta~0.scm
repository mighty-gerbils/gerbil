(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1779274761)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass58449%_)
        (let ((_%$e58451%_
               (let ((__obj100669 _%klass58449%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100669
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100669 '7 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100669
                      'precedence-list)))))
          (if _%$e58451%_
              _%$e58451%_
              (let ((_g100729_
                     (c4-linearize
                      '()
                      (let ((__obj100670 _%klass58449%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj100670
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj100670
                               '5
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj100670
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id58455%_)
                        (cons _%klass-id58455%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id58455%_))))
                      'struct:
                      (lambda (_%klass-id58457%_)
                        (let ((__obj100671
                               (gx#syntax-local-value _%klass-id58457%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj100671
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj100671
                                 '9
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj100671
                               'struct?))))
                      'eq:
                      gx#free-identifier=?)))
                (begin
                  (let ((_g100730_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g100729_)
                               (##values-length _g100729_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g100730_ 2)))
                        (error "Context expects 2 values" _g100730_)))
                  (let ((_%precedence-list58459%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g100729_ 0)))
                        (_%base-struct58460%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g100729_ 1))))
                    (let ((_%precedence-list58504%_
                           (if (let ((__tmp100731
                                      (let ((__obj100672 _%klass58449%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj100672
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj100672
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj100672
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp100731 '(t object class)))
                               _%precedence-list58459%_
                               (if (member ':object
                                           _%precedence-list58459%_
                                           gx#free-identifier=?)
                                   _%precedence-list58459%_
                                   (if (let ((__obj100673 _%klass58449%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj100673
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj100673
                                                '11
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj100673
                                              'system?)))
                                       (if (member ':t
                                                   _%precedence-list58459%_
                                                   gx#free-identifier=?)
                                           _%precedence-list58459%_
                                           (let ((__tmp100732
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list58459%_
                                              __tmp100732)))
                                       (let _%loop58466%_ ((_%tail58468%_
                                                            _%precedence-list58459%_)
                                                           (_%head58469%_ '()))
                                         (let* ((_%tail5847058478%_
                                                 _%tail58468%_)
                                                (_%else5847258486%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head58469%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%K5847458492%_
                                                 (lambda (_%rest58489%_
                                                          _%hd58490%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd58490%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail58468%_)
                      _%head58469%_)
               (_%loop58466%_
                _%rest58489%_
                (cons _%hd58490%_ _%head58469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%tail5847058478%_)
                                               (let ((_%hd5847558495%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%tail5847058478%_)))
                                                     (_%tl5847658497%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%tail5847058478%_))))
                                                 (let* ((_%hd58500%_
                                                         _%hd5847558495%_)
                                                        (_%rest58502%_
                                                         _%tl5847658497%_))
                                                   (_%K5847458492%_
                                                    _%rest58502%_
                                                    _%hd58500%_)))
                                               (_%else5847258486%_)))))))))
                      (let ((__obj100674 _%klass58449%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj100674
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj100674
                               _%precedence-list58504%_
                               '7
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj100674
                             'precedence-list
                             _%precedence-list58504%_)))
                      _%precedence-list58504%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta58319%_ _%method58320%_)
        (let ((_%tab5832158323%_
               (let ((__obj100677 _%meta58319%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100677
                        'gerbil.core#meta-object::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100677 '1 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#meta-object::t
                      __obj100677
                      'methods)))))
          (if _%tab5832158323%_
              (let ((_%tab58325%_ _%tab5832158323%_))
                (hash-get _%tab58325%_ _%method58320%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta58313%_ _%method58314%_)
        (let ((_%$e58316%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta58313%_
                _%method58314%_)))
          (if _%$e58316%_
              _%$e58316%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta58313%_
               _%method58314%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta58262%_ _%method58263%_)
        (let ((_%$e58265%_ (method-ref _%meta58262%_ 'precedence-list)))
          (if _%$e58265%_
              ((lambda (_%get-precedence-list58268%_)
                 (let _%loop58270%_ ((_%rest58272%_
                                      (_%get-precedence-list58268%_
                                       _%meta58262%_)))
                   (let* ((_%rest5827358281%_ _%rest58272%_)
                          (_%else5827558289%_ (lambda () '#f))
                          (_%K5827758300%_
                           (lambda (_%rest58292%_ _%klass58293%_)
                             (let* ((_%meta58295%_
                                     (gx#syntax-local-value _%klass58293%_))
                                    (_%$e58297%_
                                     (if (let ()
                                           (declare (not safe))
                                           (class-instance?
                                            gerbil/core/mop~MOP-2#meta-object::t
                                            _%meta58295%_))
                                         (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                          _%meta58295%_
                                          _%method58263%_)
                                         '#f)))
                               (if _%$e58297%_
                                   _%$e58297%_
                                   (_%loop58270%_ _%rest58292%_))))))
                     (if (pair? _%rest5827358281%_)
                         (let ((_%hd5827858303%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%rest5827358281%_)))
                               (_%tl5827958305%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%rest5827358281%_))))
                           (let* ((_%klass58308%_ _%hd5827858303%_)
                                  (_%rest58310%_ _%tl5827958305%_))
                             (_%K5827758300%_ _%rest58310%_ _%klass58308%_)))
                         (_%else5827558289%_)))))
               _%$e58265%_)
              '#f))))
    (define gerbil/core/contract~ClassMeta#call-meta-object
      (lambda (_%meta58252%_ _%method58253%_ . _%args58254%_)
        (let ((_%$e58256%_
               (gerbil/core/contract~ClassMeta#get-meta-object-method
                _%meta58252%_
                _%method58253%_)))
          (if _%$e58256%_
              ((lambda (_%proc58259%_)
                 (apply _%proc58259%_ _%meta58252%_ _%args58254%_))
               _%$e58256%_)
              (error '"missing meta object method"
                     'meta-object:
                     _%meta58252%_
                     'method:
                     'method)))))))
