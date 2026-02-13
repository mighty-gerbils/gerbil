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
    (lambda _%$args49498%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49498%_)))
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
    (lambda (_%id49480%_)
      (if (gx#identifier? _%id49480%_)
          (let ((_%t4948249484%_ (gx#syntax-local-value _%id49480%_ false)))
            (if _%t4948249484%_
                (let* ((_%t49487%_ _%t4948249484%_)
                       (_%$e49490%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49487%_))))
                  (if _%$e49490%_
                      _%$e49490%_
                      (let ((_%$e49494%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49487%_))))
                        (if _%$e49494%_
                            _%$e49494%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49487%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49460%_ _%id49462%_)
      (let _%loop49464%_ ((_%t49467%_
                           (gx#syntax-local-value _%id49462%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49467%_))
            _%t49467%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49467%_))
                _%t49467%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49467%_))
                    (_%loop49464%_
                     (gx#syntax-local-value
                      (let ((__obj99431 _%t49467%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj99431
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj99431
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj99431 'identifier)))
                      false))
                    (if (not _%t49467%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49460%_
                         _%id49462%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49460%_
                         _%id49462%_
                         _%t49467%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49436%_ _%id49438%_)
      (let _%loop49440%_ ((_%id49443%_ _%id49438%_)
                          (_%t49445%_
                           (gx#syntax-local-value _%id49438%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49445%_))
            _%id49443%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49445%_))
                _%id49443%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49445%_))
                    (let ((_%id49453%_
                           (let ((__obj99432 _%t49445%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj99432
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj99432
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj99432
                                  'identifier)))))
                      (_%loop49440%_
                       _%id49453%_
                       (gx#syntax-local-value _%id49453%_ false)))
                    (if (not _%t49445%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49436%_
                         _%id49443%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49436%_
                         _%id49443%_
                         _%t49445%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49423%_ _%id49425%_)
      (let ((_%t49427%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49423%_
              _%id49425%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49427%_))
            (let ((__obj99434 _%t49427%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj99434
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj99434 '3 '#f '#f))
                  (unchecked-slot-ref __obj99434 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49427%_))
                (let ((__obj99433 _%t49427%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj99433
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj99433 '3 '#f '#f))
                      (unchecked-slot-ref __obj99433 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49423%_
                 _%id49425%_
                 _%t49427%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49502%_)
      (let* ((_%g4950649524%_
              (lambda (_%g4950749520%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4950749520%_)))
             (_%g4950549579%_
              (lambda (_%g4950749528%_)
                (if (gx#stx-pair? _%g4950749528%_)
                    (let ((_%e4951049531%_ (gx#syntax-e _%g4950749528%_)))
                      (let ((_%hd4951149535%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4951049531%_)))
                            (_%tl4951249538%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4951049531%_))))
                        (if (gx#stx-pair? _%tl4951249538%_)
                            (let ((_%e4951349541%_
                                   (gx#syntax-e _%tl4951249538%_)))
                              (let ((_%hd4951449545%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4951349541%_)))
                                    (_%tl4951549548%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4951349541%_))))
                                (if (gx#stx-pair? _%tl4951549548%_)
                                    (let ((_%e4951649551%_
                                           (gx#syntax-e _%tl4951549548%_)))
                                      (let ((_%hd4951749555%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4951649551%_)))
                                            (_%tl4951849558%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4951649551%_))))
                                        (if (gx#stx-null? _%tl4951849558%_)
                                            ((lambda (_%g4950849561%_
                                                      _%g4950949563%_)
                                               (if (and (gx#identifier?
                                                         _%g4950949563%_)
                                                        (gx#identifier?
                                                         _%g4950849561%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g4950949563%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g4950849561%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4950649524%_
                                                    _%g4950749528%_)))
                                             _%hd4951749555%_
                                             _%hd4951449545%_)
                                            (_%g4950649524%_
                                             _%g4950749528%_))))
                                    (_%g4950649524%_ _%g4950749528%_))))
                            (_%g4950649524%_ _%g4950749528%_))))
                    (_%g4950649524%_ _%g4950749528%_)))))
        (_%g4950549579%_ _%$stx49502%_)))))
