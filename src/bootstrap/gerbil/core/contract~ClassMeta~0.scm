(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1742237308)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52409%_)
      (let ((_%$e52411%_
             (let ((__obj84857 _%klass52409%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj84857
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj84857 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj84857
                    'precedence-list)))))
        (if _%$e52411%_
            _%$e52411%_
            (let ((_g84913_
                   (c4-linearize
                    '()
                    (let ((__obj84858 _%klass52409%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84858
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84858 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84858
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52415%_)
                      (cons _%klass-id52415%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52415%_))))
                    'struct:
                    (lambda (_%klass-id52417%_)
                      (let ((__obj84859
                             (gx#syntax-local-value _%klass-id52417%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84859
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84859
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj84859
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g84914_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g84913_)
                             (##values-length _g84913_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g84914_ 2)))
                      (error "Context expects 2 values" _g84914_)))
                (let ((_%precedence-list52419%_
                       (let () (declare (not safe)) (##values-ref _g84913_ 0)))
                      (_%base-struct52420%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g84913_ 1))))
                  (let ((_%precedence-list52464%_
                         (if (let ((__tmp84915
                                    (let ((__obj84860 _%klass52409%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj84860
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj84860
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj84860
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp84915 '(t object class)))
                             _%precedence-list52419%_
                             (if (member ':object
                                         _%precedence-list52419%_
                                         gx#free-identifier=?)
                                 _%precedence-list52419%_
                                 (if (let ((__obj84861 _%klass52409%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj84861
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj84861
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj84861
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52419%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52419%_
                                         (let ((__tmp84916
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52419%_
                                            __tmp84916)))
                                     (let _%loop52426%_ ((_%tail52428%_
                                                          _%precedence-list52419%_)
                                                         (_%head52429%_ '()))
                                       (let* ((_%tail5243052438%_
                                               _%tail52428%_)
                                              (_%else5243252446%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52429%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5243452452%_
                                               (lambda (_%rest52449%_
                                                        _%hd52450%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52450%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52428%_)
                    _%head52429%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52426%_
                                                      _%rest52449%_
                                                      (cons _%hd52450%_
                                                            _%head52429%_))))))
                                         (if (pair? _%tail5243052438%_)
                                             (let ((_%hd5243552455%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5243052438%_)))
                                                   (_%tl5243652457%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5243052438%_))))
                                               (let* ((_%hd52460%_
                                                       _%hd5243552455%_)
                                                      (_%rest52462%_
                                                       _%tl5243652457%_))
                                                 (_%K5243452452%_
                                                  _%rest52462%_
                                                  _%hd52460%_)))
                                             (_%else5243252446%_)))))))))
                    (let ((__obj84862 _%klass52409%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84862
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj84862
                             _%precedence-list52464%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84862
                           'precedence-list
                           _%precedence-list52464%_)))
                    _%precedence-list52464%_)))))))))
