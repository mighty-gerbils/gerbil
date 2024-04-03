(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassPrecedenceList::timestamp 1712147673)
  (begin
    (define gerbil/core/contract~ClassPrecedenceList#_g80078_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80079_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80081_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80082_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80083_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#!class-precedence-list
      (lambda (_%klass51582%_)
        (let ((_%$e51584%_
               (let ((__obj80021 _%klass51582%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80021
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80021 '5 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80021
                      'precedence-list)))))
          (if _%$e51584%_
              _%$e51584%_
              (let ((_g80074_
                     (c4-linearize
                      '()
                      (let ((__obj80022 _%klass51582%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj80022
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj80022
                               '3
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj80022
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id51588%_)
                        (cons _%klass-id51588%_
                              (let ((__tmp80076
                                     (gx#syntax-local-value
                                      _%klass-id51588%_)))
                                (declare (not safe))
                                (gerbil/core/contract~ClassPrecedenceList#!class-precedence-list
                                 __tmp80076))))
                      'struct:
                      (lambda (_%klass-id51590%_)
                        (let ((__obj80023
                               (gx#syntax-local-value _%klass-id51590%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj80023
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj80023
                                 '7
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj80023
                               'struct?))))
                      'eq:
                      gx#free-identifier=?
                      'get-name:
                      gx#stx-e)))
                (begin
                  (let ((_g80075_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g80074_)
                               (##vector-length _g80074_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g80075_ 2)))
                        (error "Context expects 2 values" _g80075_)))
                  (let ((_%precedence-list51592%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g80074_ 0)))
                        (_%base-struct51593%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g80074_ 1))))
                    (let ((_%precedence-list51637%_
                           (if (let ((__tmp80077
                                      (let ((__obj80024 _%klass51582%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj80024
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj80024
                                               '1
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj80024
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp80077 '(t object class)))
                               (let () _%precedence-list51592%_)
                               (if (member gerbil/core/contract~ClassPrecedenceList#_g80078_
                                           _%precedence-list51592%_
                                           gx#free-identifier=?)
                                   (let () _%precedence-list51592%_)
                                   (if (let ((__obj80025 _%klass51582%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj80025
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj80025
                                                '9
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj80025
                                              'system?)))
                                       (let ()
                                         (if (member gerbil/core/contract~ClassPrecedenceList#_g80079_
                                                     _%precedence-list51592%_
                                                     gx#free-identifier=?)
                                             _%precedence-list51592%_
                                             (let ((__tmp80080
                                                    (cons gerbil/core/contract~ClassPrecedenceList#_g80079_
                                                          '())))
                                               (declare (not safe))
                                               (##append
                                                _%precedence-list51592%_
                                                __tmp80080))))
                                       (let _%loop51599%_ ((_%tail51601%_
                                                            _%precedence-list51592%_)
                                                           (_%head51602%_ '()))
                                         (let* ((_%tail5160351611%_
                                                 _%tail51601%_)
                                                (_%else5160551619%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons gerbil/core/contract~ClassPrecedenceList#_g80081_
                                                                (cons gerbil/core/contract~ClassPrecedenceList#_g80082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%head51602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%K5160751625%_
                                                 (lambda (_%rest51622%_
                                                          _%hd51623%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd51623%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':t))
                                                       (foldl cons
                                                              (cons gerbil/core/contract~ClassPrecedenceList#_g80083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tail51601%_)
                      _%head51602%_)
               (let ((__tmp80084 (cons _%hd51623%_ _%head51602%_)))
                 (declare (not safe))
                 (_%loop51599%_ _%rest51622%_ __tmp80084))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##pair? _%tail5160351611%_))
                                               (let ((_%hd5160851628%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%tail5160351611%_)))
                                                     (_%tl5160951630%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%tail5160351611%_))))
                                                 (let* ((_%hd51633%_
                                                         _%hd5160851628%_)
                                                        (_%rest51635%_
                                                         _%tl5160951630%_))
                                                   (declare (not safe))
                                                   (_%K5160751625%_
                                                    _%rest51635%_
                                                    _%hd51633%_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%else5160551619%_))))))))))
                      (let ((__obj80026 _%klass51582%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj80026
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj80026
                               _%precedence-list51637%_
                               '5
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj80026
                             'precedence-list
                             _%precedence-list51637%_)))
                      _%precedence-list51637%_))))))))))
