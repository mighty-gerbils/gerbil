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
    (lambda _%$args49909%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49909%_)))
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
    (lambda (_%id49891%_)
      (if (gx#identifier? _%id49891%_)
          (let ((_%t4989349895%_ (gx#syntax-local-value _%id49891%_ false)))
            (if _%t4989349895%_
                (let* ((_%t49898%_ _%t4989349895%_)
                       (_%$e49901%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49898%_))))
                  (if _%$e49901%_
                      _%$e49901%_
                      (let ((_%$e49905%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49898%_))))
                        (if _%$e49905%_
                            _%$e49905%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49898%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49871%_ _%id49873%_)
      (let _%loop49875%_ ((_%t49878%_
                           (gx#syntax-local-value _%id49873%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49878%_))
            _%t49878%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49878%_))
                _%t49878%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49878%_))
                    (_%loop49875%_
                     (gx#syntax-local-value
                      (let ((__obj100036 _%t49878%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj100036
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj100036
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj100036 'identifier)))
                      false))
                    (if (not _%t49878%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49871%_
                         _%id49873%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49871%_
                         _%id49873%_
                         _%t49878%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49847%_ _%id49849%_)
      (let _%loop49851%_ ((_%id49854%_ _%id49849%_)
                          (_%t49856%_
                           (gx#syntax-local-value _%id49849%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49856%_))
            _%id49854%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49856%_))
                _%id49854%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49856%_))
                    (let ((_%id49864%_
                           (let ((__obj100037 _%t49856%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj100037
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj100037
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj100037
                                  'identifier)))))
                      (_%loop49851%_
                       _%id49864%_
                       (gx#syntax-local-value _%id49864%_ false)))
                    (if (not _%t49856%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49847%_
                         _%id49854%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49847%_
                         _%id49854%_
                         _%t49856%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49834%_ _%id49836%_)
      (let ((_%t49838%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49834%_
              _%id49836%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49838%_))
            (let ((__obj100039 _%t49838%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj100039
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj100039 '3 '#f '#f))
                  (unchecked-slot-ref __obj100039 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49838%_))
                (let ((__obj100038 _%t49838%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj100038
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj100038 '3 '#f '#f))
                      (unchecked-slot-ref __obj100038 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49834%_
                 _%id49836%_
                 _%t49838%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49913%_)
      (let* ((_%g4991749935%_
              (lambda (_%g4991849931%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4991849931%_)))
             (_%g4991649990%_
              (lambda (_%g4991849939%_)
                (if (gx#stx-pair? _%g4991849939%_)
                    (let ((_%e4992149942%_ (gx#syntax-e _%g4991849939%_)))
                      (let ((_%hd4992249946%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4992149942%_)))
                            (_%tl4992349949%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4992149942%_))))
                        (if (gx#stx-pair? _%tl4992349949%_)
                            (let ((_%e4992449952%_
                                   (gx#syntax-e _%tl4992349949%_)))
                              (let ((_%hd4992549956%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4992449952%_)))
                                    (_%tl4992649959%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4992449952%_))))
                                (if (gx#stx-pair? _%tl4992649959%_)
                                    (let ((_%e4992749962%_
                                           (gx#syntax-e _%tl4992649959%_)))
                                      (let ((_%hd4992849966%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4992749962%_)))
                                            (_%tl4992949969%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4992749962%_))))
                                        (if (gx#stx-null? _%tl4992949969%_)
                                            ((lambda (_%g4991949972%_
                                                      _%g4992049974%_)
                                               (if (and (gx#identifier?
                                                         _%g4992049974%_)
                                                        (gx#identifier?
                                                         _%g4991949972%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g4992049974%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g4991949972%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4991749935%_
                                                    _%g4991849939%_)))
                                             _%hd4992849966%_
                                             _%hd4992549956%_)
                                            (_%g4991749935%_
                                             _%g4991849939%_))))
                                    (_%g4991749935%_ _%g4991849939%_))))
                            (_%g4991749935%_ _%g4991849939%_))))
                    (_%g4991749935%_ _%g4991849939%_)))))
        (_%g4991649990%_ _%$stx49913%_)))))
