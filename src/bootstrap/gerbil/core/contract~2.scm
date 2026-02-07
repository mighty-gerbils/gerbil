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
    (lambda _%$args49548%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49548%_)))
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
    (lambda (_%id49530%_)
      (if (gx#identifier? _%id49530%_)
          (let ((_%t4953249534%_ (gx#syntax-local-value _%id49530%_ false)))
            (if _%t4953249534%_
                (let* ((_%t49537%_ _%t4953249534%_)
                       (_%$e49540%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49537%_))))
                  (if _%$e49540%_
                      _%$e49540%_
                      (let ((_%$e49544%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49537%_))))
                        (if _%$e49544%_
                            _%$e49544%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49537%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49510%_ _%id49512%_)
      (let _%loop49514%_ ((_%t49517%_
                           (gx#syntax-local-value _%id49512%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49517%_))
            _%t49517%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49517%_))
                _%t49517%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49517%_))
                    (_%loop49514%_
                     (gx#syntax-local-value
                      (let ((__obj97539 _%t49517%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj97539
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj97539
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj97539 'identifier)))
                      false))
                    (if (not _%t49517%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49510%_
                         _%id49512%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49510%_
                         _%id49512%_
                         _%t49517%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49486%_ _%id49488%_)
      (let _%loop49490%_ ((_%id49493%_ _%id49488%_)
                          (_%t49495%_
                           (gx#syntax-local-value _%id49488%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49495%_))
            _%id49493%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49495%_))
                _%id49493%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49495%_))
                    (let ((_%id49503%_
                           (let ((__obj97540 _%t49495%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj97540
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj97540
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj97540
                                  'identifier)))))
                      (_%loop49490%_
                       _%id49503%_
                       (gx#syntax-local-value _%id49503%_ false)))
                    (if (not _%t49495%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49486%_
                         _%id49493%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49486%_
                         _%id49493%_
                         _%t49495%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49473%_ _%id49475%_)
      (let ((_%t49477%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49473%_
              _%id49475%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49477%_))
            (let ((__obj97542 _%t49477%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj97542
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj97542 '3 '#f '#f))
                  (unchecked-slot-ref __obj97542 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49477%_))
                (let ((__obj97541 _%t49477%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj97541
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj97541 '3 '#f '#f))
                      (unchecked-slot-ref __obj97541 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49473%_
                 _%id49475%_
                 _%t49477%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49552%_)
      (let* ((_%g4955649574%_
              (lambda (_%g4955749570%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4955749570%_)))
             (_%g4955549629%_
              (lambda (_%g4955749578%_)
                (if (gx#stx-pair? _%g4955749578%_)
                    (let ((_%e4956049581%_ (gx#syntax-e _%g4955749578%_)))
                      (let ((_%hd4956149585%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4956049581%_)))
                            (_%tl4956249588%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4956049581%_))))
                        (if (gx#stx-pair? _%tl4956249588%_)
                            (let ((_%e4956349591%_
                                   (gx#syntax-e _%tl4956249588%_)))
                              (let ((_%hd4956449595%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4956349591%_)))
                                    (_%tl4956549598%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4956349591%_))))
                                (if (gx#stx-pair? _%tl4956549598%_)
                                    (let ((_%e4956649601%_
                                           (gx#syntax-e _%tl4956549598%_)))
                                      (let ((_%hd4956749605%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4956649601%_)))
                                            (_%tl4956849608%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4956649601%_))))
                                        (if (gx#stx-null? _%tl4956849608%_)
                                            ((lambda (_%g4955849611%_
                                                      _%g4955949613%_)
                                               (if (and (gx#identifier?
                                                         _%g4955949613%_)
                                                        (gx#identifier?
                                                         _%g4955849611%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g4955949613%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g4955849611%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4955649574%_
                                                    _%g4955749578%_)))
                                             _%hd4956749605%_
                                             _%hd4956449595%_)
                                            (_%g4955649574%_
                                             _%g4955749578%_))))
                                    (_%g4955649574%_ _%g4955749578%_))))
                            (_%g4955649574%_ _%g4955749578%_))))
                    (_%g4955649574%_ _%g4955749578%_)))))
        (_%g4955549629%_ _%$stx49552%_)))))
