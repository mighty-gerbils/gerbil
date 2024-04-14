(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1713453195)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52327%_)
      (let ((_%$e52329%_
             (let ((__obj82748 _%klass52327%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj82748
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj82748 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj82748
                    'precedence-list)))))
        (if _%$e52329%_
            _%$e52329%_
            (let ((_g82795_
                   (c4-linearize
                    '()
                    (let ((__obj82749 _%klass52327%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82749
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj82749 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82749
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52333%_)
                      (cons _%klass-id52333%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52333%_))))
                    'struct:
                    (lambda (_%klass-id52335%_)
                      (let ((__obj82750
                             (gx#syntax-local-value _%klass-id52335%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj82750
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj82750
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj82750
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g82796_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g82795_)
                             (##vector-length _g82795_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g82796_ 2)))
                      (error "Context expects 2 values" _g82796_)))
                (let ((_%precedence-list52337%_
                       (let () (declare (not safe)) (##vector-ref _g82795_ 0)))
                      (_%base-struct52338%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g82795_ 1))))
                  (let ((_%precedence-list52382%_
                         (if (let ((__tmp82797
                                    (let ((__obj82751 _%klass52327%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj82751
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj82751
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj82751
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp82797 '(t object class)))
                             _%precedence-list52337%_
                             (if (member ':object
                                         _%precedence-list52337%_
                                         gx#free-identifier=?)
                                 _%precedence-list52337%_
                                 (if (let ((__obj82752 _%klass52327%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj82752
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj82752
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj82752
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52337%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52337%_
                                         (let ((__tmp82798
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52337%_
                                            __tmp82798)))
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
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _%tail5234852356%_))
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
                    (let ((__obj82753 _%klass52327%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82753
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj82753
                             _%precedence-list52382%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82753
                           'precedence-list
                           _%precedence-list52382%_)))
                    _%precedence-list52382%_)))))))))
