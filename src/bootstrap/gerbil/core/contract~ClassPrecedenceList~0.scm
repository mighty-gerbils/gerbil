(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassPrecedenceList::timestamp 1712093472)
  (begin
    (define gerbil/core/contract~ClassPrecedenceList#_g80028_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80029_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80031_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80032_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80033_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#!class-precedence-list
      (lambda (_%klass51537%_)
        (let ((_%$e51539%_
               (let ((__obj79972 _%klass51537%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj79972
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj79972 '5 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj79972
                      'precedence-list)))))
          (if _%$e51539%_
              _%$e51539%_
              (let ()
                (let ((_g80024_
                       (c4-linearize
                        '()
                        (let ((__obj79973 _%klass51537%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj79973
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj79973
                                 '3
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj79973
                               'super)))
                        'get-precedence-list:
                        (lambda (_%klass-id51543%_)
                          (cons _%klass-id51543%_
                                (let ((__tmp80026
                                       (gx#syntax-local-value
                                        _%klass-id51543%_)))
                                  (declare (not safe))
                                  (gerbil/core/contract~ClassPrecedenceList#!class-precedence-list
                                   __tmp80026))))
                        'struct:
                        (lambda (_%klass-id51545%_)
                          (let ((__obj79974
                                 (gx#syntax-local-value _%klass-id51545%_)))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj79974
                                   'gerbil.core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj79974
                                   '7
                                   '#f
                                   '#f))
                                (class-slot-ref
                                 gerbil/core/mop~MOP-2#class-type-info::t
                                 __obj79974
                                 'struct?))))
                        'eq:
                        gx#free-identifier=?
                        'get-name:
                        gx#stx-e)))
                  (begin
                    (let ((_g80025_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g80024_)
                                 (##vector-length _g80024_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g80025_ 2)))
                          (error "Context expects 2 values" _g80025_)))
                    (let ((_%precedence-list51547%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g80024_ 0)))
                          (_%base-struct51548%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g80024_ 1))))
                      (let ((_%precedence-list51592%_
                             (if (let ((__tmp80027
                                        (let ((__obj79975 _%klass51537%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj79975
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj79975
                                                 '1
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj79975
                                               'id)))))
                                   (declare (not safe))
                                   (##memq __tmp80027 '(t object class)))
                                 (let () _%precedence-list51547%_)
                                 (if (member gerbil/core/contract~ClassPrecedenceList#_g80028_
                                             _%precedence-list51547%_
                                             gx#free-identifier=?)
                                     (let () _%precedence-list51547%_)
                                     (if (let ((__obj79976 _%klass51537%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj79976
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj79976
                                                  '9
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj79976
                                                'system?)))
                                         (let ()
                                           (if (member gerbil/core/contract~ClassPrecedenceList#_g80029_
                                                       _%precedence-list51547%_
                                                       gx#free-identifier=?)
                                               _%precedence-list51547%_
                                               (let ((__tmp80030
                                                      (cons gerbil/core/contract~ClassPrecedenceList#_g80029_
                                                            '())))
                                                 (declare (not safe))
                                                 (##append
                                                  _%precedence-list51547%_
                                                  __tmp80030))))
                                         (let ()
                                           (let _%loop51554%_ ((_%tail51556%_
                                                                _%precedence-list51547%_)
                                                               (_%head51557%_
                                                                '()))
                                             (let* ((_%tail5155851566%_
                                                     _%tail51556%_)
                                                    (_%else5156051574%_
                                                     (lambda ()
                                                       (foldl cons
                                                              (cons gerbil/core/contract~ClassPrecedenceList#_g80031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gerbil/core/contract~ClassPrecedenceList#_g80032_
                                  '()))
                      _%head51557%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%K5156251580%_
                                                     (lambda (_%rest51577%_
                                                              _%hd51578%_)
                                                       (if (gx#free-identifier=?
                                                            _%hd51578%_
                                                            (gx#datum->syntax
                                                             '#f
                                                             ':t))
                                                           (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gerbil/core/contract~ClassPrecedenceList#_g80033_
                                _%tail51556%_)
                          _%head51557%_)
                   (let ((__tmp80034 (cons _%hd51578%_ _%head51557%_)))
                     (declare (not safe))
                     (_%loop51554%_ _%rest51577%_ __tmp80034))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _%tail5155851566%_))
                                                   (let ((_%hd5156351583%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%tail5155851566%_)))
                                                         (_%tl5156451585%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%tail5155851566%_))))
                                                     (let* ((_%hd51588%_
                                                             _%hd5156351583%_)
                                                            (_%rest51590%_
                                                             _%tl5156451585%_))
                                                       (declare (not safe))
                                                       (_%K5156251580%_
                                                        _%rest51590%_
                                                        _%hd51588%_)))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%else5156051574%_)))))))))))
                        (let ((__obj79977 _%klass51537%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj79977
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 __obj79977
                                 _%precedence-list51592%_
                                 '5
                                 '#f
                                 '#f))
                              (class-slot-set!
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj79977
                               'precedence-list
                               _%precedence-list51592%_)))
                        _%precedence-list51592%_)))))))))))
