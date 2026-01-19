(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1768865818)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass56374%_)
      (let ((_%$e56376%_
             (let ((__obj92144 _%klass56374%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj92144
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj92144 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj92144
                    'precedence-list)))))
        (if _%$e56376%_
            _%$e56376%_
            (let ((_g92200_
                   (c4-linearize
                    '()
                    (let ((__obj92145 _%klass56374%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92145
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92145 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92145
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id56380%_)
                      (cons _%klass-id56380%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id56380%_))))
                    'struct:
                    (lambda (_%klass-id56382%_)
                      (let ((__obj92146
                             (gx#syntax-local-value _%klass-id56382%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj92146
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj92146
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj92146
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g92201_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g92200_)
                             (##values-length _g92200_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g92201_ 2)))
                      (error "Context expects 2 values" _g92201_)))
                (let ((_%precedence-list56384%_
                       (let () (declare (not safe)) (##values-ref _g92200_ 0)))
                      (_%base-struct56385%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g92200_ 1))))
                  (let ((_%precedence-list56429%_
                         (if (let ((__tmp92202
                                    (let ((__obj92147 _%klass56374%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj92147
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj92147
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj92147
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp92202 '(t object class)))
                             _%precedence-list56384%_
                             (if (member ':object
                                         _%precedence-list56384%_
                                         gx#free-identifier=?)
                                 _%precedence-list56384%_
                                 (if (let ((__obj92148 _%klass56374%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj92148
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj92148
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj92148
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list56384%_
                                                 gx#free-identifier=?)
                                         _%precedence-list56384%_
                                         (let ((__tmp92203
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list56384%_
                                            __tmp92203)))
                                     (let _%loop56391%_ ((_%tail56393%_
                                                          _%precedence-list56384%_)
                                                         (_%head56394%_ '()))
                                       (let* ((_%tail5639556403%_
                                               _%tail56393%_)
                                              (_%else5639756411%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head56394%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5639956417%_
                                               (lambda (_%rest56414%_
                                                        _%hd56415%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd56415%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail56393%_)
                    _%head56394%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop56391%_
                                                      _%rest56414%_
                                                      (cons _%hd56415%_
                                                            _%head56394%_))))))
                                         (if (pair? _%tail5639556403%_)
                                             (let ((_%hd5640056420%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5639556403%_)))
                                                   (_%tl5640156422%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5639556403%_))))
                                               (let* ((_%hd56425%_
                                                       _%hd5640056420%_)
                                                      (_%rest56427%_
                                                       _%tl5640156422%_))
                                                 (_%K5639956417%_
                                                  _%rest56427%_
                                                  _%hd56425%_)))
                                             (_%else5639756411%_)))))))))
                    (let ((__obj92149 _%klass56374%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92149
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj92149
                             _%precedence-list56429%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92149
                           'precedence-list
                           _%precedence-list56429%_)))
                    _%precedence-list56429%_)))))))))
