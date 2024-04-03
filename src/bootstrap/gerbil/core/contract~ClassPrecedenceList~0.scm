(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassPrecedenceList::timestamp 1712121894)
  (begin
    (define gerbil/core/contract~ClassPrecedenceList#_g80060_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80061_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80063_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80064_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g80065_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#!class-precedence-list
      (lambda (_%klass51561%_)
        (let ((_%$e51563%_
               (let ((__obj80003 _%klass51561%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80003
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80003 '5 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80003
                      'precedence-list)))))
          (if _%$e51563%_
              _%$e51563%_
              (let ()
                (let ((_g80056_
                       (c4-linearize
                        '()
                        (let ((__obj80004 _%klass51561%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj80004
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj80004
                                 '3
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj80004
                               'super)))
                        'get-precedence-list:
                        (lambda (_%klass-id51567%_)
                          (cons _%klass-id51567%_
                                (let ((__tmp80058
                                       (gx#syntax-local-value
                                        _%klass-id51567%_)))
                                  (declare (not safe))
                                  (gerbil/core/contract~ClassPrecedenceList#!class-precedence-list
                                   __tmp80058))))
                        'struct:
                        (lambda (_%klass-id51569%_)
                          (let ((__obj80005
                                 (gx#syntax-local-value _%klass-id51569%_)))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj80005
                                   'gerbil.core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj80005
                                   '7
                                   '#f
                                   '#f))
                                (class-slot-ref
                                 gerbil/core/mop~MOP-2#class-type-info::t
                                 __obj80005
                                 'struct?))))
                        'eq:
                        gx#free-identifier=?
                        'get-name:
                        gx#stx-e)))
                  (begin
                    (let ((_g80057_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g80056_)
                                 (##vector-length _g80056_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g80057_ 2)))
                          (error "Context expects 2 values" _g80057_)))
                    (let ((_%precedence-list51571%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g80056_ 0)))
                          (_%base-struct51572%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g80056_ 1))))
                      (let ((_%precedence-list51616%_
                             (if (let ((__tmp80059
                                        (let ((__obj80006 _%klass51561%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj80006
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj80006
                                                 '1
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj80006
                                               'id)))))
                                   (declare (not safe))
                                   (##memq __tmp80059 '(t object class)))
                                 (let () _%precedence-list51571%_)
                                 (if (member gerbil/core/contract~ClassPrecedenceList#_g80060_
                                             _%precedence-list51571%_
                                             gx#free-identifier=?)
                                     (let () _%precedence-list51571%_)
                                     (if (let ((__obj80007 _%klass51561%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj80007
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj80007
                                                  '9
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj80007
                                                'system?)))
                                         (let ()
                                           (if (member gerbil/core/contract~ClassPrecedenceList#_g80061_
                                                       _%precedence-list51571%_
                                                       gx#free-identifier=?)
                                               _%precedence-list51571%_
                                               (let ((__tmp80062
                                                      (cons gerbil/core/contract~ClassPrecedenceList#_g80061_
                                                            '())))
                                                 (declare (not safe))
                                                 (##append
                                                  _%precedence-list51571%_
                                                  __tmp80062))))
                                         (let ()
                                           (let _%loop51578%_ ((_%tail51580%_
                                                                _%precedence-list51571%_)
                                                               (_%head51581%_
                                                                '()))
                                             (let* ((_%tail5158251590%_
                                                     _%tail51580%_)
                                                    (_%else5158451598%_
                                                     (lambda ()
                                                       (foldl cons
                                                              (cons gerbil/core/contract~ClassPrecedenceList#_g80063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gerbil/core/contract~ClassPrecedenceList#_g80064_
                                  '()))
                      _%head51581%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%K5158651604%_
                                                     (lambda (_%rest51601%_
                                                              _%hd51602%_)
                                                       (if (gx#free-identifier=?
                                                            _%hd51602%_
                                                            (gx#datum->syntax
                                                             '#f
                                                             ':t))
                                                           (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gerbil/core/contract~ClassPrecedenceList#_g80065_
                                _%tail51580%_)
                          _%head51581%_)
                   (let ((__tmp80066 (cons _%hd51602%_ _%head51581%_)))
                     (declare (not safe))
                     (_%loop51578%_ _%rest51601%_ __tmp80066))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _%tail5158251590%_))
                                                   (let ((_%hd5158751607%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%tail5158251590%_)))
                                                         (_%tl5158851609%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%tail5158251590%_))))
                                                     (let* ((_%hd51612%_
                                                             _%hd5158751607%_)
                                                            (_%rest51614%_
                                                             _%tl5158851609%_))
                                                       (declare (not safe))
                                                       (_%K5158651604%_
                                                        _%rest51614%_
                                                        _%hd51612%_)))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%else5158451598%_)))))))))))
                        (let ((__obj80008 _%klass51561%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj80008
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 __obj80008
                                 _%precedence-list51616%_
                                 '5
                                 '#f
                                 '#f))
                              (class-slot-set!
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj80008
                               'precedence-list
                               _%precedence-list51616%_)))
                        _%precedence-list51616%_)))))))))))
