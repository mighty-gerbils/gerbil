(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1734131742)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52426%_)
      (let ((_%$e52428%_
             (let ((__obj83979 _%klass52426%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj83979
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj83979 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj83979
                    'precedence-list)))))
        (if _%$e52428%_
            _%$e52428%_
            (let ((_g84026_
                   (c4-linearize
                    '()
                    (let ((__obj83980 _%klass52426%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj83980
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj83980 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj83980
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52432%_)
                      (cons _%klass-id52432%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52432%_))))
                    'struct:
                    (lambda (_%klass-id52434%_)
                      (let ((__obj83981
                             (gx#syntax-local-value _%klass-id52434%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj83981
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj83981
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj83981
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g84027_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g84026_)
                             (##values-length _g84026_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g84027_ 2)))
                      (error "Context expects 2 values" _g84027_)))
                (let ((_%precedence-list52436%_
                       (let () (declare (not safe)) (##values-ref _g84026_ 0)))
                      (_%base-struct52437%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g84026_ 1))))
                  (let ((_%precedence-list52481%_
                         (if (let ((__tmp84028
                                    (let ((__obj83982 _%klass52426%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj83982
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj83982
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj83982
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp84028 '(t object class)))
                             _%precedence-list52436%_
                             (if (member ':object
                                         _%precedence-list52436%_
                                         gx#free-identifier=?)
                                 _%precedence-list52436%_
                                 (if (let ((__obj83983 _%klass52426%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj83983
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj83983
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj83983
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52436%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52436%_
                                         (let ((__tmp84029
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52436%_
                                            __tmp84029)))
                                     (let _%loop52443%_ ((_%tail52445%_
                                                          _%precedence-list52436%_)
                                                         (_%head52446%_ '()))
                                       (let* ((_%tail5244752455%_
                                               _%tail52445%_)
                                              (_%else5244952463%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52446%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5245152469%_
                                               (lambda (_%rest52466%_
                                                        _%hd52467%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52467%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52445%_)
                    _%head52446%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52443%_
                                                      _%rest52466%_
                                                      (cons _%hd52467%_
                                                            _%head52446%_))))))
                                         (if (pair? _%tail5244752455%_)
                                             (let ((_%hd5245252472%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5244752455%_)))
                                                   (_%tl5245352474%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5244752455%_))))
                                               (let* ((_%hd52477%_
                                                       _%hd5245252472%_)
                                                      (_%rest52479%_
                                                       _%tl5245352474%_))
                                                 (_%K5245152469%_
                                                  _%rest52479%_
                                                  _%hd52477%_)))
                                             (_%else5244952463%_)))))))))
                    (let ((__obj83984 _%klass52426%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj83984
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj83984
                             _%precedence-list52481%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj83984
                           'precedence-list
                           _%precedence-list52481%_)))
                    _%precedence-list52481%_)))))))))
