(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1771037602)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass66837%_)
      (let ((_%$e66839%_
             (let ((__obj109053 _%klass66837%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj109053
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj109053 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj109053
                    'precedence-list)))))
        (if _%$e66839%_
            _%$e66839%_
            (let ((_g109110_
                   (c4-linearize
                    '()
                    (let ((__obj109054 _%klass66837%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj109054
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj109054 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj109054
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id66843%_)
                      (cons _%klass-id66843%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id66843%_))))
                    'struct:
                    (lambda (_%klass-id66845%_)
                      (let ((__obj109055
                             (gx#syntax-local-value _%klass-id66845%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj109055
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj109055
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj109055
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g109111_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g109110_)
                             (##values-length _g109110_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g109111_ 2)))
                      (error "Context expects 2 values" _g109111_)))
                (let ((_%precedence-list66847%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g109110_ 0)))
                      (_%base-struct66848%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g109110_ 1))))
                  (let ((_%precedence-list66892%_
                         (if (let ((__tmp109112
                                    (let ((__obj109056 _%klass66837%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj109056
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj109056
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj109056
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp109112 '(t object class)))
                             _%precedence-list66847%_
                             (if (member ':object
                                         _%precedence-list66847%_
                                         gx#free-identifier=?)
                                 _%precedence-list66847%_
                                 (if (let ((__obj109057 _%klass66837%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj109057
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj109057
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj109057
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list66847%_
                                                 gx#free-identifier=?)
                                         _%precedence-list66847%_
                                         (let ((__tmp109113
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list66847%_
                                            __tmp109113)))
                                     (let _%loop66854%_ ((_%tail66856%_
                                                          _%precedence-list66847%_)
                                                         (_%head66857%_ '()))
                                       (let* ((_%tail6685866866%_
                                               _%tail66856%_)
                                              (_%else6686066874%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head66857%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K6686266880%_
                                               (lambda (_%rest66877%_
                                                        _%hd66878%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd66878%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail66856%_)
                    _%head66857%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop66854%_
                                                      _%rest66877%_
                                                      (cons _%hd66878%_
                                                            _%head66857%_))))))
                                         (if (pair? _%tail6685866866%_)
                                             (let ((_%hd6686366883%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail6685866866%_)))
                                                   (_%tl6686466885%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail6685866866%_))))
                                               (let* ((_%hd66888%_
                                                       _%hd6686366883%_)
                                                      (_%rest66890%_
                                                       _%tl6686466885%_))
                                                 (_%K6686266880%_
                                                  _%rest66890%_
                                                  _%hd66888%_)))
                                             (_%else6686066874%_)))))))))
                    (let ((__obj109058 _%klass66837%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj109058
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj109058
                             _%precedence-list66892%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj109058
                           'precedence-list
                           _%precedence-list66892%_)))
                    _%precedence-list66892%_)))))))))
