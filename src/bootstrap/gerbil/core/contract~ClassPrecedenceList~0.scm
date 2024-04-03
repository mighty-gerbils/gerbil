(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassPrecedenceList::timestamp 1712124230)
  (begin
    (define gerbil/core/contract~ClassPrecedenceList#_g80094_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80095_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80097_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80098_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80099_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#!class-precedence-list
      (lambda (_%klass51595%_)
        (let ((_%$e51597%_
               (let ((__obj80037 _%klass51595%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80037
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80037 '5 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80037
                      'precedence-list)))))
          (if _%$e51597%_
              _%$e51597%_
              (let ()
                (let ((_g80090_
                       (c4-linearize
                        '()
                        (let ((__obj80038 _%klass51595%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj80038
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj80038
                                 '3
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj80038
                               'super)))
                        'get-precedence-list:
                        (lambda (_%klass-id51601%_)
                          (cons _%klass-id51601%_
                                (let ((__tmp80092
                                       (gx#syntax-local-value
                                        _%klass-id51601%_)))
                                  (declare (not safe))
                                  (gerbil/core/contract~ClassPrecedenceList#!class-precedence-list
                                   __tmp80092))))
                        'struct:
                        (lambda (_%klass-id51603%_)
                          (let ((__obj80039
                                 (gx#syntax-local-value _%klass-id51603%_)))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj80039
                                   'gerbil.core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj80039
                                   '7
                                   '#f
                                   '#f))
                                (class-slot-ref
                                 gerbil/core/mop~MOP-2#class-type-info::t
                                 __obj80039
                                 'struct?))))
                        'eq:
                        gx#free-identifier=?
                        'get-name:
                        gx#stx-e)))
                  (begin
                    (let ((_g80091_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g80090_)
                                 (##vector-length _g80090_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g80091_ 2)))
                          (error "Context expects 2 values" _g80091_)))
                    (let ((_%precedence-list51605%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g80090_ 0)))
                          (_%base-struct51606%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g80090_ 1))))
                      (let ((_%precedence-list51650%_
                             (if (let ((__tmp80093
                                        (let ((__obj80040 _%klass51595%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj80040
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj80040
                                                 '1
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj80040
                                               'id)))))
                                   (declare (not safe))
                                   (##memq __tmp80093 '(t object class)))
                                 (let () _%precedence-list51605%_)
                                 (if (member gerbil/core/contract~ClassPrecedenceList#_g80094_
                                             _%precedence-list51605%_
                                             gx#free-identifier=?)
                                     (let () _%precedence-list51605%_)
                                     (if (let ((__obj80041 _%klass51595%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj80041
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj80041
                                                  '9
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj80041
                                                'system?)))
                                         (let ()
                                           (if (member gerbil/core/contract~ClassPrecedenceList#_g80095_
                                                       _%precedence-list51605%_
                                                       gx#free-identifier=?)
                                               _%precedence-list51605%_
                                               (let ((__tmp80096
                                                      (cons gerbil/core/contract~ClassPrecedenceList#_g80095_
                                                            '())))
                                                 (declare (not safe))
                                                 (##append
                                                  _%precedence-list51605%_
                                                  __tmp80096))))
                                         (let ()
                                           (let _%loop51612%_ ((_%tail51614%_
                                                                _%precedence-list51605%_)
                                                               (_%head51615%_
                                                                '()))
                                             (let* ((_%tail5161651624%_
                                                     _%tail51614%_)
                                                    (_%else5161851632%_
                                                     (lambda ()
                                                       (foldl cons
                                                              (cons gerbil/core/contract~ClassPrecedenceList#_g80097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gerbil/core/contract~ClassPrecedenceList#_g80098_
                                  '()))
                      _%head51615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%K5162051638%_
                                                     (lambda (_%rest51635%_
                                                              _%hd51636%_)
                                                       (if (gx#free-identifier=?
                                                            _%hd51636%_
                                                            (gx#datum->syntax
                                                             '#f
                                                             ':t))
                                                           (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gerbil/core/contract~ClassPrecedenceList#_g80099_
                                _%tail51614%_)
                          _%head51615%_)
                   (let ((__tmp80100 (cons _%hd51636%_ _%head51615%_)))
                     (declare (not safe))
                     (_%loop51612%_ _%rest51635%_ __tmp80100))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _%tail5161651624%_))
                                                   (let ((_%hd5162151641%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%tail5161651624%_)))
                                                         (_%tl5162251643%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%tail5161651624%_))))
                                                     (let* ((_%hd51646%_
                                                             _%hd5162151641%_)
                                                            (_%rest51648%_
                                                             _%tl5162251643%_))
                                                       (declare (not safe))
                                                       (_%K5162051638%_
                                                        _%rest51648%_
                                                        _%hd51646%_)))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%else5161851632%_)))))))))))
                        (let ((__obj80042 _%klass51595%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj80042
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 __obj80042
                                 _%precedence-list51650%_
                                 '5
                                 '#f
                                 '#f))
                              (class-slot-set!
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj80042
                               'precedence-list
                               _%precedence-list51650%_)))
                        _%precedence-list51650%_)))))))))))
