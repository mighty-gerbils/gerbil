(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1771036660)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass240652%_)
      (let ((_%$e240654%_
             (let ((__obj282868 _%klass240652%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj282868
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj282868 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj282868
                    'precedence-list)))))
        (if _%$e240654%_
            _%$e240654%_
            (let ((_g282925_
                   (c4-linearize
                    '()
                    (let ((__obj282869 _%klass240652%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj282869
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj282869 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj282869
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id240658%_)
                      (cons _%klass-id240658%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id240658%_))))
                    'struct:
                    (lambda (_%klass-id240660%_)
                      (let ((__obj282870
                             (gx#syntax-local-value _%klass-id240660%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj282870
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj282870
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj282870
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g282926_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g282925_)
                             (##values-length _g282925_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g282926_ 2)))
                      (error "Context expects 2 values" _g282926_)))
                (let ((_%precedence-list240662%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g282925_ 0)))
                      (_%base-struct240663%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g282925_ 1))))
                  (let ((_%precedence-list240707%_
                         (if (let ((__tmp282927
                                    (let ((__obj282871 _%klass240652%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj282871
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj282871
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj282871
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp282927 '(t object class)))
                             _%precedence-list240662%_
                             (if (member ':object
                                         _%precedence-list240662%_
                                         gx#free-identifier=?)
                                 _%precedence-list240662%_
                                 (if (let ((__obj282872 _%klass240652%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj282872
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj282872
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj282872
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list240662%_
                                                 gx#free-identifier=?)
                                         _%precedence-list240662%_
                                         (let ((__tmp282928
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list240662%_
                                            __tmp282928)))
                                     (let _%loop240669%_ ((_%tail240671%_
                                                           _%precedence-list240662%_)
                                                          (_%head240672%_ '()))
                                       (let* ((_%tail240673240681%_
                                               _%tail240671%_)
                                              (_%else240675240689%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head240672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K240677240695%_
                                               (lambda (_%rest240692%_
                                                        _%hd240693%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd240693%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail240671%_)
                    _%head240672%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop240669%_
                                                      _%rest240692%_
                                                      (cons _%hd240693%_
                                                            _%head240672%_))))))
                                         (if (pair? _%tail240673240681%_)
                                             (let ((_%hd240678240698%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail240673240681%_)))
                                                   (_%tl240679240700%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail240673240681%_))))
                                               (let* ((_%hd240703%_
                                                       _%hd240678240698%_)
                                                      (_%rest240705%_
                                                       _%tl240679240700%_))
                                                 (_%K240677240695%_
                                                  _%rest240705%_
                                                  _%hd240703%_)))
                                             (_%else240675240689%_)))))))))
                    (let ((__obj282873 _%klass240652%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj282873
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj282873
                             _%precedence-list240707%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj282873
                           'precedence-list
                           _%precedence-list240707%_)))
                    _%precedence-list240707%_)))))))))
