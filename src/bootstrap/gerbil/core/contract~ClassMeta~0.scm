(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1712846030)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52408%_)
      (let ((_%$e52410%_
             (let ((__obj82243 _%klass52408%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj82243
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj82243 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj82243
                    'precedence-list)))))
        (if _%$e52410%_
            _%$e52410%_
            (let ((_g82290_
                   (c4-linearize
                    '()
                    (let ((__obj82244 _%klass52408%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82244
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj82244 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82244
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52414%_)
                      (cons _%klass-id52414%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52414%_))))
                    'struct:
                    (lambda (_%klass-id52416%_)
                      (let ((__obj82245
                             (gx#syntax-local-value _%klass-id52416%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj82245
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj82245
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj82245
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g82291_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g82290_)
                             (##vector-length _g82290_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g82291_ 2)))
                      (error "Context expects 2 values" _g82291_)))
                (let ((_%precedence-list52418%_
                       (let () (declare (not safe)) (##vector-ref _g82290_ 0)))
                      (_%base-struct52419%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g82290_ 1))))
                  (let ((_%precedence-list52463%_
                         (if (let ((__tmp82292
                                    (let ((__obj82246 _%klass52408%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj82246
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj82246
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj82246
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp82292 '(t object class)))
                             _%precedence-list52418%_
                             (if (member ':object
                                         _%precedence-list52418%_
                                         gx#free-identifier=?)
                                 _%precedence-list52418%_
                                 (if (let ((__obj82247 _%klass52408%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj82247
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj82247
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj82247
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52418%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52418%_
                                         (let ((__tmp82293
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52418%_
                                            __tmp82293)))
                                     (let _%loop52425%_ ((_%tail52427%_
                                                          _%precedence-list52418%_)
                                                         (_%head52428%_ '()))
                                       (let* ((_%tail5242952437%_
                                               _%tail52427%_)
                                              (_%else5243152445%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52428%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5243352451%_
                                               (lambda (_%rest52448%_
                                                        _%hd52449%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52449%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52427%_)
                    _%head52428%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52425%_
                                                      _%rest52448%_
                                                      (cons _%hd52449%_
                                                            _%head52428%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _%tail5242952437%_))
                                             (let ((_%hd5243452454%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5242952437%_)))
                                                   (_%tl5243552456%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5242952437%_))))
                                               (let* ((_%hd52459%_
                                                       _%hd5243452454%_)
                                                      (_%rest52461%_
                                                       _%tl5243552456%_))
                                                 (_%K5243352451%_
                                                  _%rest52461%_
                                                  _%hd52459%_)))
                                             (_%else5243152445%_)))))))))
                    (let ((__obj82248 _%klass52408%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82248
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj82248
                             _%precedence-list52463%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82248
                           'precedence-list
                           _%precedence-list52463%_)))
                    _%precedence-list52463%_)))))))))
