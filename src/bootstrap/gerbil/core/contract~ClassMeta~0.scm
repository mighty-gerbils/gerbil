(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1712251107)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52218%_)
      (let ((_%$e52220%_
             (let ((__obj80563 _%klass52218%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj80563
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj80563 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj80563
                    'precedence-list)))))
        (if _%$e52220%_
            _%$e52220%_
            (let ((_g80615_
                   (c4-linearize
                    '()
                    (let ((__obj80564 _%klass52218%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80564
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80564 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80564
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52224%_)
                      (cons _%klass-id52224%_
                            (let ((__tmp80617
                                   (gx#syntax-local-value _%klass-id52224%_)))
                              (declare (not safe))
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               __tmp80617))))
                    'struct:
                    (lambda (_%klass-id52226%_)
                      (let ((__obj80565
                             (gx#syntax-local-value _%klass-id52226%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj80565
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj80565
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj80565
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g80616_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g80615_)
                             (##vector-length _g80615_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g80616_ 2)))
                      (error "Context expects 2 values" _g80616_)))
                (let ((_%precedence-list52228%_
                       (let () (declare (not safe)) (##vector-ref _g80615_ 0)))
                      (_%base-struct52229%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g80615_ 1))))
                  (let ((_%precedence-list52273%_
                         (if (let ((__tmp80618
                                    (let ((__obj80566 _%klass52218%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj80566
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj80566
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj80566
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp80618 '(t object class)))
                             (let () _%precedence-list52228%_)
                             (if (member ':object
                                         _%precedence-list52228%_
                                         gx#free-identifier=?)
                                 (let () _%precedence-list52228%_)
                                 (if (let ((__obj80567 _%klass52218%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj80567
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj80567
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj80567
                                            'system?)))
                                     (let ()
                                       (if (member ':t
                                                   _%precedence-list52228%_
                                                   gx#free-identifier=?)
                                           _%precedence-list52228%_
                                           (let ((__tmp80619
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list52228%_
                                              __tmp80619))))
                                     (let _%loop52235%_ ((_%tail52237%_
                                                          _%precedence-list52228%_)
                                                         (_%head52238%_ '()))
                                       (let* ((_%tail5223952247%_
                                               _%tail52237%_)
                                              (_%else5224152255%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52238%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5224352261%_
                                               (lambda (_%rest52258%_
                                                        _%hd52259%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52259%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52237%_)
                    _%head52238%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp80620
                                                            (cons _%hd52259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%head52238%_)))
               (declare (not safe))
               (_%loop52235%_ _%rest52258%_ __tmp80620))))))
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
                    (let ((__obj80568 _%klass52218%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80568
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj80568
                             _%precedence-list52273%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80568
                           'precedence-list
                           _%precedence-list52273%_)))
                    _%precedence-list52273%_)))))))))
