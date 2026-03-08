(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1773009252)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass58439%_)
        (let ((_%$e58441%_
               (let ((__obj100659 _%klass58439%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100659
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100659 '7 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100659
                      'precedence-list)))))
          (if _%$e58441%_
              _%$e58441%_
              (let ((_g100719_
                     (c4-linearize
                      '()
                      (let ((__obj100660 _%klass58439%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj100660
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj100660
                               '5
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj100660
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id58445%_)
                        (cons _%klass-id58445%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id58445%_))))
                      'struct:
                      (lambda (_%klass-id58447%_)
                        (let ((__obj100661
                               (gx#syntax-local-value _%klass-id58447%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj100661
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj100661
                                 '9
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj100661
                               'struct?))))
                      'eq:
                      gx#free-identifier=?)))
                (begin
                  (let ((_g100720_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g100719_)
                               (##values-length _g100719_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g100720_ 2)))
                        (error "Context expects 2 values" _g100720_)))
                  (let ((_%precedence-list58449%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g100719_ 0)))
                        (_%base-struct58450%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g100719_ 1))))
                    (let ((_%precedence-list58494%_
                           (if (let ((__tmp100721
                                      (let ((__obj100662 _%klass58439%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj100662
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj100662
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj100662
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp100721 '(t object class)))
                               _%precedence-list58449%_
                               (if (member ':object
                                           _%precedence-list58449%_
                                           gx#free-identifier=?)
                                   _%precedence-list58449%_
                                   (if (let ((__obj100663 _%klass58439%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj100663
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj100663
                                                '11
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj100663
                                              'system?)))
                                       (if (member ':t
                                                   _%precedence-list58449%_
                                                   gx#free-identifier=?)
                                           _%precedence-list58449%_
                                           (let ((__tmp100722
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list58449%_
                                              __tmp100722)))
                                       (let _%loop58456%_ ((_%tail58458%_
                                                            _%precedence-list58449%_)
                                                           (_%head58459%_ '()))
                                         (let* ((_%tail5846058468%_
                                                 _%tail58458%_)
                                                (_%else5846258476%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head58459%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%K5846458482%_
                                                 (lambda (_%rest58479%_
                                                          _%hd58480%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd58480%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail58458%_)
                      _%head58459%_)
               (_%loop58456%_
                _%rest58479%_
                (cons _%hd58480%_ _%head58459%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%tail5846058468%_)
                                               (let ((_%hd5846558485%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%tail5846058468%_)))
                                                     (_%tl5846658487%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%tail5846058468%_))))
                                                 (let* ((_%hd58490%_
                                                         _%hd5846558485%_)
                                                        (_%rest58492%_
                                                         _%tl5846658487%_))
                                                   (_%K5846458482%_
                                                    _%rest58492%_
                                                    _%hd58490%_)))
                                               (_%else5846258476%_)))))))))
                      (let ((__obj100664 _%klass58439%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj100664
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj100664
                               _%precedence-list58494%_
                               '7
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj100664
                             'precedence-list
                             _%precedence-list58494%_)))
                      _%precedence-list58494%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta58309%_ _%method58310%_)
        (let ((_%tab5831158313%_
               (let ((__obj100667 _%meta58309%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100667
                        'gerbil.core#meta-object::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100667 '1 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#meta-object::t
                      __obj100667
                      'methods)))))
          (if _%tab5831158313%_
              (let ((_%tab58315%_ _%tab5831158313%_))
                (hash-get _%tab58315%_ _%method58310%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta58303%_ _%method58304%_)
        (let ((_%$e58306%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta58303%_
                _%method58304%_)))
          (if _%$e58306%_
              _%$e58306%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta58303%_
               _%method58304%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta58252%_ _%method58253%_)
        (let ((_%$e58255%_ (method-ref _%meta58252%_ 'precedence-list)))
          (if _%$e58255%_
              ((lambda (_%get-precedence-list58258%_)
                 (let _%loop58260%_ ((_%rest58262%_
                                      (_%get-precedence-list58258%_
                                       _%meta58252%_)))
                   (let* ((_%rest5826358271%_ _%rest58262%_)
                          (_%else5826558279%_ (lambda () '#f))
                          (_%K5826758290%_
                           (lambda (_%rest58282%_ _%klass58283%_)
                             (let* ((_%meta58285%_
                                     (gx#syntax-local-value _%klass58283%_))
                                    (_%$e58287%_
                                     (if (let ()
                                           (declare (not safe))
                                           (class-instance?
                                            gerbil/core/mop~MOP-2#meta-object::t
                                            _%meta58285%_))
                                         (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                          _%meta58285%_
                                          _%method58253%_)
                                         '#f)))
                               (if _%$e58287%_
                                   _%$e58287%_
                                   (_%loop58260%_ _%rest58282%_))))))
                     (if (pair? _%rest5826358271%_)
                         (let ((_%hd5826858293%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%rest5826358271%_)))
                               (_%tl5826958295%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%rest5826358271%_))))
                           (let* ((_%klass58298%_ _%hd5826858293%_)
                                  (_%rest58300%_ _%tl5826958295%_))
                             (_%K5826758290%_ _%rest58300%_ _%klass58298%_)))
                         (_%else5826558279%_)))))
               _%$e58255%_)
              '#f))))))
