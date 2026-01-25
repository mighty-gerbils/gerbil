(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1769382889)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass56966%_)
      (let ((_%$e56968%_
             (let ((__obj92487 _%klass56966%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj92487
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj92487 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj92487
                    'precedence-list)))))
        (if _%$e56968%_
            _%$e56968%_
            (let ((_g92543_
                   (c4-linearize
                    '()
                    (let ((__obj92488 _%klass56966%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92488
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92488 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92488
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id56972%_)
                      (cons _%klass-id56972%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id56972%_))))
                    'struct:
                    (lambda (_%klass-id56974%_)
                      (let ((__obj92489
                             (gx#syntax-local-value _%klass-id56974%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj92489
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj92489
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj92489
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g92544_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g92543_)
                             (##values-length _g92543_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g92544_ 2)))
                      (error "Context expects 2 values" _g92544_)))
                (let ((_%precedence-list56976%_
                       (let () (declare (not safe)) (##values-ref _g92543_ 0)))
                      (_%base-struct56977%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g92543_ 1))))
                  (let ((_%precedence-list57021%_
                         (if (let ((__tmp92545
                                    (let ((__obj92490 _%klass56966%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj92490
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj92490
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj92490
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp92545 '(t object class)))
                             _%precedence-list56976%_
                             (if (member ':object
                                         _%precedence-list56976%_
                                         gx#free-identifier=?)
                                 _%precedence-list56976%_
                                 (if (let ((__obj92491 _%klass56966%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj92491
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj92491
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj92491
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list56976%_
                                                 gx#free-identifier=?)
                                         _%precedence-list56976%_
                                         (let ((__tmp92546
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list56976%_
                                            __tmp92546)))
                                     (let _%loop56983%_ ((_%tail56985%_
                                                          _%precedence-list56976%_)
                                                         (_%head56986%_ '()))
                                       (let* ((_%tail5698756995%_
                                               _%tail56985%_)
                                              (_%else5698957003%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head56986%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5699157009%_
                                               (lambda (_%rest57006%_
                                                        _%hd57007%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd57007%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail56985%_)
                    _%head56986%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop56983%_
                                                      _%rest57006%_
                                                      (cons _%hd57007%_
                                                            _%head56986%_))))))
                                         (if (pair? _%tail5698756995%_)
                                             (let ((_%hd5699257012%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5698756995%_)))
                                                   (_%tl5699357014%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5698756995%_))))
                                               (let* ((_%hd57017%_
                                                       _%hd5699257012%_)
                                                      (_%rest57019%_
                                                       _%tl5699357014%_))
                                                 (_%K5699157009%_
                                                  _%rest57019%_
                                                  _%hd57017%_)))
                                             (_%else5698957003%_)))))))))
                    (let ((__obj92492 _%klass56966%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92492
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj92492
                             _%precedence-list57021%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92492
                           'precedence-list
                           _%precedence-list57021%_)))
                    _%precedence-list57021%_)))))))))
