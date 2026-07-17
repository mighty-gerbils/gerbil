(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1784471358)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass62695%_)
        (let ((_%$e62697%_
               (let ((__obj105012 _%klass62695%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj105012
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj105012 '7 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj105012
                      'precedence-list)))))
          (if _%$e62697%_
              _%$e62697%_
              (let ((_g105072_
                     (c4-linearize
                      '()
                      (let ((__obj105013 _%klass62695%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj105013
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj105013
                               '5
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj105013
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id62701%_)
                        (cons _%klass-id62701%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id62701%_))))
                      'struct:
                      (lambda (_%klass-id62703%_)
                        (let ((__obj105014
                               (gx#syntax-local-value _%klass-id62703%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj105014
                                 'gerbil/core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj105014
                                 '9
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj105014
                               'struct?))))
                      'eq:
                      gx#free-identifier=?
                      'get-name:
                      gx#stx-e)))
                (begin
                  (let ((_g105073_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g105072_)
                               (##values-length _g105072_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g105073_ 2)))
                        (error "Context expects 2 values" _g105073_)))
                  (let ((_%precedence-list62705%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g105072_ 0)))
                        (_%base-struct62706%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g105072_ 1))))
                    (let ((_%precedence-list62750%_
                           (if (let ((__tmp105074
                                      (let ((__obj105015 _%klass62695%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj105015
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj105015
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj105015
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp105074 '(t object class)))
                               _%precedence-list62705%_
                               (if (member ':object
                                           _%precedence-list62705%_
                                           gx#free-identifier=?)
                                   _%precedence-list62705%_
                                   (if (let ((__obj105016 _%klass62695%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj105016
                                                'gerbil/core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj105016
                                                '11
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj105016
                                              'system?)))
                                       (if (member ':t
                                                   _%precedence-list62705%_
                                                   gx#free-identifier=?)
                                           _%precedence-list62705%_
                                           (let ((__tmp105075
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list62705%_
                                              __tmp105075)))
                                       (let _%loop62712%_ ((_%tail62714%_
                                                            _%precedence-list62705%_)
                                                           (_%head62715%_ '()))
                                         (let* ((_%$%tail6271662724%_
                                                 _%tail62714%_)
                                                (_%$%else6271862732%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head62715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K6272062738%_
                                                 (lambda (_%rest62735%_
                                                          _%hd62736%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd62736%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail62714%_)
                      _%head62715%_)
               (_%loop62712%_
                _%rest62735%_
                (cons _%hd62736%_ _%head62715%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%tail6271662724%_)
                                               (let ((_%$%hd6272162741%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%tail6271662724%_)))
                                                     (_%$%tl6272262743%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%tail6271662724%_))))
                                                 (let* ((_%hd62746%_
                                                         _%$%hd6272162741%_)
                                                        (_%rest62748%_
                                                         _%$%tl6272262743%_))
                                                   (_%$%K6272062738%_
                                                    _%rest62748%_
                                                    _%hd62746%_)))
                                               (_%$%else6271862732%_)))))))))
                      (let ((__obj105017 _%klass62695%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj105017
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj105017
                               _%precedence-list62750%_
                               '7
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj105017
                             'precedence-list
                             _%precedence-list62750%_)))
                      _%precedence-list62750%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta62565%_ _%method62566%_)
        (let ((_%$%tab6256762569%_
               (let ((__obj105020 _%meta62565%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj105020
                        'gerbil/core#meta-object::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj105020 '1 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#meta-object::t
                      __obj105020
                      'methods)))))
          (if _%$%tab6256762569%_
              (let ((_%tab62571%_ _%$%tab6256762569%_))
                (hash-get _%tab62571%_ _%method62566%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta62559%_ _%method62560%_)
        (let ((_%$e62562%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta62559%_
                _%method62560%_)))
          (if _%$e62562%_
              _%$e62562%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta62559%_
               _%method62560%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta62508%_ _%method62509%_)
        (let ((_%$e62511%_ (method-ref _%meta62508%_ 'precedence-list)))
          (if _%$e62511%_
              (let _%loop62516%_ ((_%rest62518%_ (_%$e62511%_ _%meta62508%_)))
                (let* ((_%$%rest6251962527%_ _%rest62518%_)
                       (_%$%else6252162535%_ (lambda () '#f))
                       (_%$%K6252362546%_
                        (lambda (_%rest62538%_ _%klass62539%_)
                          (let* ((_%meta62541%_
                                  (gx#syntax-local-value _%klass62539%_))
                                 (_%$e62543%_
                                  (if (let ()
                                        (declare (not safe))
                                        (class-instance?
                                         gerbil/core/mop~MOP-2#meta-object::t
                                         _%meta62541%_))
                                      (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                       _%meta62541%_
                                       _%method62509%_)
                                      '#f)))
                            (if _%$e62543%_
                                _%$e62543%_
                                (_%loop62516%_ _%rest62538%_))))))
                  (if (pair? _%$%rest6251962527%_)
                      (let ((_%$%hd6252462549%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest6251962527%_)))
                            (_%$%tl6252562551%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest6251962527%_))))
                        (let* ((_%klass62554%_ _%$%hd6252462549%_)
                               (_%rest62556%_ _%$%tl6252562551%_))
                          (_%$%K6252362546%_ _%rest62556%_ _%klass62554%_)))
                      (_%$%else6252162535%_))))
              '#f))))
    (define gerbil/core/contract~ClassMeta#call-meta-object
      (lambda (_%meta62498%_ _%method62499%_ . _%args62500%_)
        (let ((_%$e62502%_
               (gerbil/core/contract~ClassMeta#get-meta-object-method
                _%meta62498%_
                _%method62499%_)))
          (if _%$e62502%_
              (apply _%$e62502%_ _%meta62498%_ _%args62500%_)
              (error '"missing meta object method"
                     'meta-object:
                     _%meta62498%_
                     'method:
                     'method)))))))
