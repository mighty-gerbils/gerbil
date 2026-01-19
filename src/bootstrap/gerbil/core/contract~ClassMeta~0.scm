(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1768863407)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass56344%_)
      (let ((_%$e56346%_
             (let ((__obj92114 _%klass56344%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj92114
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj92114 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj92114
                    'precedence-list)))))
        (if _%$e56346%_
            _%$e56346%_
            (let ((_g92170_
                   (c4-linearize
                    '()
                    (let ((__obj92115 _%klass56344%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92115
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92115 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92115
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id56350%_)
                      (cons _%klass-id56350%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id56350%_))))
                    'struct:
                    (lambda (_%klass-id56352%_)
                      (let ((__obj92116
                             (gx#syntax-local-value _%klass-id56352%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj92116
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj92116
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj92116
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g92171_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g92170_)
                             (##values-length _g92170_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g92171_ 2)))
                      (error "Context expects 2 values" _g92171_)))
                (let ((_%precedence-list56354%_
                       (let () (declare (not safe)) (##values-ref _g92170_ 0)))
                      (_%base-struct56355%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g92170_ 1))))
                  (let ((_%precedence-list56399%_
                         (if (let ((__tmp92172
                                    (let ((__obj92117 _%klass56344%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj92117
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj92117
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj92117
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp92172 '(t object class)))
                             _%precedence-list56354%_
                             (if (member ':object
                                         _%precedence-list56354%_
                                         gx#free-identifier=?)
                                 _%precedence-list56354%_
                                 (if (let ((__obj92118 _%klass56344%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj92118
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj92118
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj92118
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list56354%_
                                                 gx#free-identifier=?)
                                         _%precedence-list56354%_
                                         (let ((__tmp92173
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list56354%_
                                            __tmp92173)))
                                     (let _%loop56361%_ ((_%tail56363%_
                                                          _%precedence-list56354%_)
                                                         (_%head56364%_ '()))
                                       (let* ((_%tail5636556373%_
                                               _%tail56363%_)
                                              (_%else5636756381%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head56364%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5636956387%_
                                               (lambda (_%rest56384%_
                                                        _%hd56385%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd56385%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail56363%_)
                    _%head56364%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop56361%_
                                                      _%rest56384%_
                                                      (cons _%hd56385%_
                                                            _%head56364%_))))))
                                         (if (pair? _%tail5636556373%_)
                                             (let ((_%hd5637056390%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5636556373%_)))
                                                   (_%tl5637156392%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5636556373%_))))
                                               (let* ((_%hd56395%_
                                                       _%hd5637056390%_)
                                                      (_%rest56397%_
                                                       _%tl5637156392%_))
                                                 (_%K5636956387%_
                                                  _%rest56397%_
                                                  _%hd56395%_)))
                                             (_%else5636756381%_)))))))))
                    (let ((__obj92119 _%klass56344%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92119
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj92119
                             _%precedence-list56399%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92119
                           'precedence-list
                           _%precedence-list56399%_)))
                    _%precedence-list56399%_)))))))))
