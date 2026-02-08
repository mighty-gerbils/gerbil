(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeReference[1]#type-reference::t|
    (make-class-type
     'gerbil/core/contract~TypeReference#type-reference::t
     'type-reference
     (list)
     '(identifier)
     '()
     '#f))
  (define |gerbil/core/contract~TypeReference[1]#type-reference?|
    (make-class-predicate
     |gerbil/core/contract~TypeReference[1]#type-reference::t|))
  (define |gerbil/core/contract~TypeReference[1]#make-type-reference|
    (lambda _%$args49555%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49555%_)))
  (define |gerbil/core/contract~TypeReference[1]#type-reference-identifier|
    (make-class-slot-accessor
     |gerbil/core/contract~TypeReference[1]#type-reference::t|
     'identifier))
  (define |gerbil/core/contract~TypeReference[1]#type-reference-identifier-set!|
    (make-class-slot-mutator
     |gerbil/core/contract~TypeReference[1]#type-reference::t|
     'identifier))
  (define |gerbil/core/contract~TypeReference[1]#&type-reference-identifier|
    (make-class-slot-unchecked-accessor
     |gerbil/core/contract~TypeReference[1]#type-reference::t|
     'identifier))
  (define |gerbil/core/contract~TypeReference[1]#&type-reference-identifier-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/contract~TypeReference[1]#type-reference::t|
     'identifier))
  (define |gerbil/core/contract~TypeReference[1]#type-identifier?|
    (lambda (_%id49537%_)
      (if (gx#identifier? _%id49537%_)
          (let ((_%t4953949541%_ (gx#syntax-local-value _%id49537%_ false)))
            (if _%t4953949541%_
                (let* ((_%t49544%_ _%t4953949541%_)
                       (_%$e49547%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49544%_))))
                  (if _%$e49547%_
                      _%$e49547%_
                      (let ((_%$e49551%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49544%_))))
                        (if _%$e49551%_
                            _%$e49551%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49544%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49517%_ _%id49519%_)
      (let _%loop49521%_ ((_%t49524%_
                           (gx#syntax-local-value _%id49519%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49524%_))
            _%t49524%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49524%_))
                _%t49524%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49524%_))
                    (_%loop49521%_
                     (gx#syntax-local-value
                      (let ((__obj97621 _%t49524%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj97621
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj97621
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj97621 'identifier)))
                      false))
                    (if (not _%t49524%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49517%_
                         _%id49519%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49517%_
                         _%id49519%_
                         _%t49524%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49493%_ _%id49495%_)
      (let _%loop49497%_ ((_%id49500%_ _%id49495%_)
                          (_%t49502%_
                           (gx#syntax-local-value _%id49495%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49502%_))
            _%id49500%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49502%_))
                _%id49500%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49502%_))
                    (let ((_%id49510%_
                           (let ((__obj97622 _%t49502%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj97622
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj97622
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj97622
                                  'identifier)))))
                      (_%loop49497%_
                       _%id49510%_
                       (gx#syntax-local-value _%id49510%_ false)))
                    (if (not _%t49502%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49493%_
                         _%id49500%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49493%_
                         _%id49500%_
                         _%t49502%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49480%_ _%id49482%_)
      (let ((_%t49484%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49480%_
              _%id49482%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49484%_))
            (let ((__obj97624 _%t49484%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj97624
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj97624 '3 '#f '#f))
                  (unchecked-slot-ref __obj97624 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49484%_))
                (let ((__obj97623 _%t49484%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj97623
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj97623 '3 '#f '#f))
                      (unchecked-slot-ref __obj97623 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49480%_
                 _%id49482%_
                 _%t49484%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49559%_)
      (let* ((_%g4956349581%_
              (lambda (_%g4956449577%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4956449577%_)))
             (_%g4956249636%_
              (lambda (_%g4956449585%_)
                (if (gx#stx-pair? _%g4956449585%_)
                    (let ((_%e4956749588%_ (gx#syntax-e _%g4956449585%_)))
                      (let ((_%hd4956849592%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4956749588%_)))
                            (_%tl4956949595%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4956749588%_))))
                        (if (gx#stx-pair? _%tl4956949595%_)
                            (let ((_%e4957049598%_
                                   (gx#syntax-e _%tl4956949595%_)))
                              (let ((_%hd4957149602%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4957049598%_)))
                                    (_%tl4957249605%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4957049598%_))))
                                (if (gx#stx-pair? _%tl4957249605%_)
                                    (let ((_%e4957349608%_
                                           (gx#syntax-e _%tl4957249605%_)))
                                      (let ((_%hd4957449612%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4957349608%_)))
                                            (_%tl4957549615%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4957349608%_))))
                                        (if (gx#stx-null? _%tl4957549615%_)
                                            ((lambda (_%g4956549618%_
                                                      _%g4956649620%_)
                                               (if (and (gx#identifier?
                                                         _%g4956649620%_)
                                                        (gx#identifier?
                                                         _%g4956549618%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g4956649620%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g4956549618%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4956349581%_
                                                    _%g4956449585%_)))
                                             _%hd4957449612%_
                                             _%hd4957149602%_)
                                            (_%g4956349581%_
                                             _%g4956449585%_))))
                                    (_%g4956349581%_ _%g4956449585%_))))
                            (_%g4956349581%_ _%g4956449585%_))))
                    (_%g4956349581%_ _%g4956449585%_)))))
        (_%g4956249636%_ _%$stx49559%_)))))
