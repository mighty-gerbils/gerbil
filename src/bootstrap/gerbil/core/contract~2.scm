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
    (lambda _%$args49931%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49931%_)))
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
    (lambda (_%id49913%_)
      (if (gx#identifier? _%id49913%_)
          (let ((_%t4991549917%_ (gx#syntax-local-value _%id49913%_ false)))
            (if _%t4991549917%_
                (let* ((_%t49920%_ _%t4991549917%_)
                       (_%$e49923%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49920%_))))
                  (if _%$e49923%_
                      _%$e49923%_
                      (let ((_%$e49927%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49920%_))))
                        (if _%$e49927%_
                            _%$e49927%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49920%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49893%_ _%id49895%_)
      (let _%loop49897%_ ((_%t49900%_
                           (gx#syntax-local-value _%id49895%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49900%_))
            _%t49900%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49900%_))
                _%t49900%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49900%_))
                    (_%loop49897%_
                     (gx#syntax-local-value
                      (let ((__obj100630 _%t49900%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj100630
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj100630
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj100630 'identifier)))
                      false))
                    (if (not _%t49900%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49893%_
                         _%id49895%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49893%_
                         _%id49895%_
                         _%t49900%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49869%_ _%id49871%_)
      (let _%loop49873%_ ((_%id49876%_ _%id49871%_)
                          (_%t49878%_
                           (gx#syntax-local-value _%id49871%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49878%_))
            _%id49876%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49878%_))
                _%id49876%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49878%_))
                    (let ((_%id49886%_
                           (let ((__obj100631 _%t49878%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj100631
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj100631
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj100631
                                  'identifier)))))
                      (_%loop49873%_
                       _%id49886%_
                       (gx#syntax-local-value _%id49886%_ false)))
                    (if (not _%t49878%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49869%_
                         _%id49876%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49869%_
                         _%id49876%_
                         _%t49878%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49856%_ _%id49858%_)
      (let ((_%t49860%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49856%_
              _%id49858%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49860%_))
            (let ((__obj100633 _%t49860%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj100633
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj100633 '4 '#f '#f))
                  (unchecked-slot-ref __obj100633 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49860%_))
                (let ((__obj100632 _%t49860%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj100632
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj100632 '3 '#f '#f))
                      (unchecked-slot-ref __obj100632 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49856%_
                 _%id49858%_
                 _%t49860%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49935%_)
      (let* ((_%g4993949957%_
              (lambda (_%g4994049953%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4994049953%_)))
             (_%g4993850012%_
              (lambda (_%g4994049961%_)
                (if (gx#stx-pair? _%g4994049961%_)
                    (let ((_%e4994349964%_ (gx#syntax-e _%g4994049961%_)))
                      (let ((_%hd4994449968%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4994349964%_)))
                            (_%tl4994549971%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4994349964%_))))
                        (if (gx#stx-pair? _%tl4994549971%_)
                            (let ((_%e4994649974%_
                                   (gx#syntax-e _%tl4994549971%_)))
                              (let ((_%hd4994749978%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4994649974%_)))
                                    (_%tl4994849981%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4994649974%_))))
                                (if (gx#stx-pair? _%tl4994849981%_)
                                    (let ((_%e4994949984%_
                                           (gx#syntax-e _%tl4994849981%_)))
                                      (let ((_%hd4995049988%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4994949984%_)))
                                            (_%tl4995149991%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4994949984%_))))
                                        (if (gx#stx-null? _%tl4995149991%_)
                                            ((lambda (_%g4994149994%_
                                                      _%g4994249996%_)
                                               (if (and (gx#identifier?
                                                         _%g4994249996%_)
                                                        (gx#identifier?
                                                         _%g4994149994%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g4994249996%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g4994149994%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4993949957%_
                                                    _%g4994049961%_)))
                                             _%hd4995049988%_
                                             _%hd4994749978%_)
                                            (_%g4993949957%_
                                             _%g4994049961%_))))
                                    (_%g4993949957%_ _%g4994049961%_))))
                            (_%g4993949957%_ _%g4994049961%_))))
                    (_%g4993949957%_ _%g4994049961%_)))))
        (_%g4993850012%_ _%$stx49935%_)))))
