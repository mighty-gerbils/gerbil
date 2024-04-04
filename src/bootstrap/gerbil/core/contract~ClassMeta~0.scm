(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1712246551)
  (begin
    (define gerbil/core/contract~ClassMeta#_g80645_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassMeta#_g80646_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassMeta#_g80648_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassMeta#_g80649_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassMeta#_g80650_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass52218%_)
        (let ((_%$e52220%_
               (let ((__obj80588 _%klass52218%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80588
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80588 '5 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80588
                      'precedence-list)))))
          (if _%$e52220%_
              _%$e52220%_
              (let ((_g80641_
                     (c4-linearize
                      '()
                      (let ((__obj80589 _%klass52218%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj80589
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj80589
                               '3
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj80589
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id52224%_)
                        (cons _%klass-id52224%_
                              (let ((__tmp80643
                                     (gx#syntax-local-value
                                      _%klass-id52224%_)))
                                (declare (not safe))
                                (gerbil/core/contract~ClassMeta#!class-precedence-list
                                 __tmp80643))))
                      'struct:
                      (lambda (_%klass-id52226%_)
                        (let ((__obj80590
                               (gx#syntax-local-value _%klass-id52226%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj80590
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj80590
                                 '7
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj80590
                               'struct?))))
                      'eq:
                      gx#free-identifier=?
                      'get-name:
                      gx#stx-e)))
                (begin
                  (let ((_g80642_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g80641_)
                               (##vector-length _g80641_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g80642_ 2)))
                        (error "Context expects 2 values" _g80642_)))
                  (let ((_%precedence-list52228%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g80641_ 0)))
                        (_%base-struct52229%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g80641_ 1))))
                    (let ((_%precedence-list52273%_
                           (if (let ((__tmp80644
                                      (let ((__obj80591 _%klass52218%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj80591
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj80591
                                               '1
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj80591
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp80644 '(t object class)))
                               (let () _%precedence-list52228%_)
                               (if (member gerbil/core/contract~ClassMeta#_g80645_
                                           _%precedence-list52228%_
                                           gx#free-identifier=?)
                                   (let () _%precedence-list52228%_)
                                   (if (let ((__obj80592 _%klass52218%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj80592
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj80592
                                                '9
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj80592
                                              'system?)))
                                       (let ()
                                         (if (member gerbil/core/contract~ClassMeta#_g80646_
                                                     _%precedence-list52228%_
                                                     gx#free-identifier=?)
                                             _%precedence-list52228%_
                                             (let ((__tmp80647
                                                    (cons gerbil/core/contract~ClassMeta#_g80646_
                                                          '())))
                                               (declare (not safe))
                                               (##append
                                                _%precedence-list52228%_
                                                __tmp80647))))
                                       (let _%loop52235%_ ((_%tail52237%_
                                                            _%precedence-list52228%_)
                                                           (_%head52238%_ '()))
                                         (let* ((_%tail5223952247%_
                                                 _%tail52237%_)
                                                (_%else5224152255%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons gerbil/core/contract~ClassMeta#_g80648_
                                                                (cons gerbil/core/contract~ClassMeta#_g80649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%head52238%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%K5224352261%_
                                                 (lambda (_%rest52258%_
                                                          _%hd52259%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd52259%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':t))
                                                       (foldl cons
                                                              (cons gerbil/core/contract~ClassMeta#_g80650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tail52237%_)
                      _%head52238%_)
               (let ((__tmp80651 (cons _%hd52259%_ _%head52238%_)))
                 (declare (not safe))
                 (_%loop52235%_ _%rest52258%_ __tmp80651))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##pair? _%tail5223952247%_))
                                               (let ((_%hd5224452264%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%tail5223952247%_)))
                                                     (_%tl5224552266%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%tail5223952247%_))))
                                                 (let* ((_%hd52269%_
                                                         _%hd5224452264%_)
                                                        (_%rest52271%_
                                                         _%tl5224552266%_))
                                                   (declare (not safe))
                                                   (_%K5224352261%_
                                                    _%rest52271%_
                                                    _%hd52269%_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%else5224152255%_))))))))))
                      (let ((__obj80593 _%klass52218%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj80593
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj80593
                               _%precedence-list52273%_
                               '5
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj80593
                             'precedence-list
                             _%precedence-list52273%_)))
                      _%precedence-list52273%_))))))))))
