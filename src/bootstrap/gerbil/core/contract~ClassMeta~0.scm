(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1713631261)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52327%_)
      (let ((_%$e52329%_
             (let ((__obj83870 _%klass52327%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj83870
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj83870 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj83870
                    'precedence-list)))))
        (if _%$e52329%_
            _%$e52329%_
            (let ((_g83917_
                   (c4-linearize
                    '()
                    (let ((__obj83871 _%klass52327%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj83871
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj83871 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj83871
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52333%_)
                      (cons _%klass-id52333%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52333%_))))
                    'struct:
                    (lambda (_%klass-id52335%_)
                      (let ((__obj83872
                             (gx#syntax-local-value _%klass-id52335%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj83872
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj83872
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj83872
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g83918_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g83917_)
                             (##vector-length _g83917_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g83918_ 2)))
                      (error "Context expects 2 values" _g83918_)))
                (let ((_%precedence-list52337%_
                       (let () (declare (not safe)) (##vector-ref _g83917_ 0)))
                      (_%base-struct52338%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g83917_ 1))))
                  (let ((_%precedence-list52382%_
                         (if (let ((__tmp83919
                                    (let ((__obj83873 _%klass52327%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj83873
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj83873
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj83873
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp83919 '(t object class)))
                             _%precedence-list52337%_
                             (if (member ':object
                                         _%precedence-list52337%_
                                         gx#free-identifier=?)
                                 _%precedence-list52337%_
                                 (if (let ((__obj83874 _%klass52327%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj83874
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj83874
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj83874
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52337%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52337%_
                                         (let ((__tmp83920
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52337%_
                                            __tmp83920)))
                                     (let _%loop52344%_ ((_%tail52346%_
                                                          _%precedence-list52337%_)
                                                         (_%head52347%_ '()))
                                       (let* ((_%tail5234852356%_
                                               _%tail52346%_)
                                              (_%else5235052364%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52347%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5235252370%_
                                               (lambda (_%rest52367%_
                                                        _%hd52368%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52368%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52346%_)
                    _%head52347%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52344%_
                                                      _%rest52367%_
                                                      (cons _%hd52368%_
                                                            _%head52347%_))))))
                                         (if (pair? _%tail5234852356%_)
                                             (let ((_%hd5235352373%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5234852356%_)))
                                                   (_%tl5235452375%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5234852356%_))))
                                               (let* ((_%hd52378%_
                                                       _%hd5235352373%_)
                                                      (_%rest52380%_
                                                       _%tl5235452375%_))
                                                 (_%K5235252370%_
                                                  _%rest52380%_
                                                  _%hd52378%_)))
                                             (_%else5235052364%_)))))))))
                    (let ((__obj83875 _%klass52327%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj83875
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj83875
                             _%precedence-list52382%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj83875
                           'precedence-list
                           _%precedence-list52382%_)))
                    _%precedence-list52382%_)))))))))
