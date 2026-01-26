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
    (lambda _%$args49262%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49262%_)))
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
    (lambda (_%id49244%_)
      (if (gx#identifier? _%id49244%_)
          (let ((_%t4924649248%_ (gx#syntax-local-value _%id49244%_ false)))
            (if _%t4924649248%_
                (let* ((_%t49251%_ _%t4924649248%_)
                       (_%$e49254%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49251%_))))
                  (if _%$e49254%_
                      _%$e49254%_
                      (let ((_%$e49258%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49251%_))))
                        (if _%$e49258%_
                            _%$e49258%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49251%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49224%_ _%id49226%_)
      (let _%loop49228%_ ((_%t49231%_
                           (gx#syntax-local-value _%id49226%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49231%_))
            _%t49231%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49231%_))
                _%t49231%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49231%_))
                    (_%loop49228%_
                     (gx#syntax-local-value
                      (let ((__obj92500 _%t49231%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj92500
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj92500
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj92500 'identifier)))
                      false))
                    (if (not _%t49231%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49224%_
                         _%id49226%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49224%_
                         _%id49226%_
                         _%t49231%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49200%_ _%id49202%_)
      (let _%loop49204%_ ((_%id49207%_ _%id49202%_)
                          (_%t49209%_
                           (gx#syntax-local-value _%id49202%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49209%_))
            _%id49207%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49209%_))
                _%id49207%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49209%_))
                    (let ((_%id49217%_
                           (let ((__obj92501 _%t49209%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj92501
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj92501
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj92501
                                  'identifier)))))
                      (_%loop49204%_
                       _%id49217%_
                       (gx#syntax-local-value _%id49217%_ false)))
                    (if (not _%t49209%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49200%_
                         _%id49207%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49200%_
                         _%id49207%_
                         _%t49209%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49187%_ _%id49189%_)
      (let ((_%t49191%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49187%_
              _%id49189%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49191%_))
            (let ((__obj92503 _%t49191%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj92503
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj92503 '3 '#f '#f))
                  (unchecked-slot-ref __obj92503 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49191%_))
                (let ((__obj92502 _%t49191%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj92502
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj92502 '3 '#f '#f))
                      (unchecked-slot-ref __obj92502 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49187%_
                 _%id49189%_
                 _%t49191%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49266%_)
      (let* ((_%g4927049288%_
              (lambda (_%g4927149284%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4927149284%_)))
             (_%g4926949343%_
              (lambda (_%g4927149292%_)
                (if (gx#stx-pair? _%g4927149292%_)
                    (let ((_%e4927449295%_ (gx#syntax-e _%g4927149292%_)))
                      (let ((_%hd4927549299%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4927449295%_)))
                            (_%tl4927649302%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4927449295%_))))
                        (if (gx#stx-pair? _%tl4927649302%_)
                            (let ((_%e4927749305%_
                                   (gx#syntax-e _%tl4927649302%_)))
                              (let ((_%hd4927849309%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4927749305%_)))
                                    (_%tl4927949312%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4927749305%_))))
                                (if (gx#stx-pair? _%tl4927949312%_)
                                    (let ((_%e4928049315%_
                                           (gx#syntax-e _%tl4927949312%_)))
                                      (let ((_%hd4928149319%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4928049315%_)))
                                            (_%tl4928249322%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4928049315%_))))
                                        (if (gx#stx-null? _%tl4928249322%_)
                                            ((lambda (_%g4927249325%_
                                                      _%g4927349327%_)
                                               (if (and (gx#identifier?
                                                         _%g4927349327%_)
                                                        (gx#identifier?
                                                         _%g4927249325%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g4927349327%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g4927249325%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4927049288%_
                                                    _%g4927149292%_)))
                                             _%hd4928149319%_
                                             _%hd4927849309%_)
                                            (_%g4927049288%_
                                             _%g4927149292%_))))
                                    (_%g4927049288%_ _%g4927149292%_))))
                            (_%g4927049288%_ _%g4927149292%_))))
                    (_%g4927049288%_ _%g4927149292%_)))))
        (_%g4926949343%_ _%$stx49266%_)))))
