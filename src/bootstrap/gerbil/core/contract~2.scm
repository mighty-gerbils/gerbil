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
    (lambda _%$args49224%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49224%_)))
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
    (lambda (_%id49206%_)
      (if (gx#identifier? _%id49206%_)
          (let ((_%t4920849210%_ (gx#syntax-local-value _%id49206%_ false)))
            (if _%t4920849210%_
                (let* ((_%t49213%_ _%t4920849210%_)
                       (_%$e49216%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49213%_))))
                  (if _%$e49216%_
                      _%$e49216%_
                      (let ((_%$e49220%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49213%_))))
                        (if _%$e49220%_
                            _%$e49220%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49213%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49186%_ _%id49188%_)
      (let _%loop49190%_ ((_%t49193%_
                           (gx#syntax-local-value _%id49188%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49193%_))
            _%t49193%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49193%_))
                _%t49193%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49193%_))
                    (_%loop49190%_
                     (gx#syntax-local-value
                      (let ((__obj92462 _%t49193%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj92462
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj92462
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj92462 'identifier)))
                      false))
                    (if (not _%t49193%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49186%_
                         _%id49188%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49186%_
                         _%id49188%_
                         _%t49193%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49162%_ _%id49164%_)
      (let _%loop49166%_ ((_%id49169%_ _%id49164%_)
                          (_%t49171%_
                           (gx#syntax-local-value _%id49164%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49171%_))
            _%id49169%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49171%_))
                _%id49169%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49171%_))
                    (let ((_%id49179%_
                           (let ((__obj92463 _%t49171%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj92463
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj92463
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj92463
                                  'identifier)))))
                      (_%loop49166%_
                       _%id49179%_
                       (gx#syntax-local-value _%id49179%_ false)))
                    (if (not _%t49171%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49162%_
                         _%id49169%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49162%_
                         _%id49169%_
                         _%t49171%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49149%_ _%id49151%_)
      (let ((_%t49153%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49149%_
              _%id49151%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49153%_))
            (let ((__obj92465 _%t49153%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj92465
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj92465 '3 '#f '#f))
                  (unchecked-slot-ref __obj92465 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49153%_))
                (let ((__obj92464 _%t49153%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj92464
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj92464 '3 '#f '#f))
                      (unchecked-slot-ref __obj92464 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49149%_
                 _%id49151%_
                 _%t49153%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49228%_)
      (let* ((_%g4923249250%_
              (lambda (_%g4923349246%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4923349246%_)))
             (_%g4923149305%_
              (lambda (_%g4923349254%_)
                (if (gx#stx-pair? _%g4923349254%_)
                    (let ((_%e4923649257%_ (gx#syntax-e _%g4923349254%_)))
                      (let ((_%hd4923749261%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4923649257%_)))
                            (_%tl4923849264%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4923649257%_))))
                        (if (gx#stx-pair? _%tl4923849264%_)
                            (let ((_%e4923949267%_
                                   (gx#syntax-e _%tl4923849264%_)))
                              (let ((_%hd4924049271%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4923949267%_)))
                                    (_%tl4924149274%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4923949267%_))))
                                (if (gx#stx-pair? _%tl4924149274%_)
                                    (let ((_%e4924249277%_
                                           (gx#syntax-e _%tl4924149274%_)))
                                      (let ((_%hd4924349281%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4924249277%_)))
                                            (_%tl4924449284%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4924249277%_))))
                                        (if (gx#stx-null? _%tl4924449284%_)
                                            ((lambda (_%g4923449287%_
                                                      _%g4923549289%_)
                                               (if (and (gx#identifier?
                                                         _%g4923549289%_)
                                                        (gx#identifier?
                                                         _%g4923449287%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g4923549289%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g4923449287%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4923249250%_
                                                    _%g4923349254%_)))
                                             _%hd4924349281%_
                                             _%hd4924049271%_)
                                            (_%g4923249250%_
                                             _%g4923349254%_))))
                                    (_%g4923249250%_ _%g4923349254%_))))
                            (_%g4923249250%_ _%g4923349254%_))))
                    (_%g4923249250%_ _%g4923349254%_)))))
        (_%g4923149305%_ _%$stx49228%_)))))
