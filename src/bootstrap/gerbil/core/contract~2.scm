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
    (lambda _%$args48595%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args48595%_)))
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
    (lambda (_%id48576%_)
      (if (gx#identifier? _%id48576%_)
          (let ((_%t4857848580%_ (gx#syntax-local-value _%id48576%_ false)))
            (if _%t4857848580%_
                (let* ((_%t48584%_ _%t4857848580%_)
                       (_%$e48587%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t48584%_))))
                  (if _%$e48587%_
                      _%$e48587%_
                      (let ((_%$e48591%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t48584%_))))
                        (if _%$e48591%_
                            _%$e48591%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t48584%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx48556%_ _%id48558%_)
      (let _%loop48560%_ ((_%t48563%_
                           (gx#syntax-local-value _%id48558%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48563%_))
            _%t48563%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48563%_))
                _%t48563%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t48563%_))
                    (_%loop48560%_
                     (gx#syntax-local-value
                      (let ((__obj91648 _%t48563%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj91648
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj91648
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj91648 'identifier)))
                      false))
                    (if (not _%t48563%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx48556%_
                         _%id48558%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx48556%_
                         _%id48558%_
                         _%t48563%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx48532%_ _%id48534%_)
      (let _%loop48536%_ ((_%id48539%_ _%id48534%_)
                          (_%t48541%_
                           (gx#syntax-local-value _%id48534%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48541%_))
            _%id48539%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48541%_))
                _%id48539%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t48541%_))
                    (let ((_%id48549%_
                           (let ((__obj91649 _%t48541%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj91649
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj91649
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj91649
                                  'identifier)))))
                      (_%loop48536%_
                       _%id48549%_
                       (gx#syntax-local-value _%id48549%_ false)))
                    (if (not _%t48541%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx48532%_
                         _%id48539%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx48532%_
                         _%id48539%_
                         _%t48541%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx48519%_ _%id48521%_)
      (let ((_%t48523%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx48519%_
              _%id48521%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48523%_))
            (let ((__obj91651 _%t48523%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj91651
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj91651 '12 '#f '#f))
                  (unchecked-slot-ref __obj91651 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48523%_))
                (let ((__obj91650 _%t48523%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj91650
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj91650 '7 '#f '#f))
                      (unchecked-slot-ref __obj91650 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx48519%_
                 _%id48521%_
                 _%t48523%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx48599%_)
      (let* ((_%g4860348621%_
              (lambda (_%g4860448617%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4860448617%_)))
             (_%g4860248676%_
              (lambda (_%g4860448625%_)
                (if (gx#stx-pair? _%g4860448625%_)
                    (let ((_%e4860748628%_ (gx#syntax-e _%g4860448625%_)))
                      (let ((_%hd4860848632%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4860748628%_)))
                            (_%tl4860948635%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4860748628%_))))
                        (if (gx#stx-pair? _%tl4860948635%_)
                            (let ((_%e4861048638%_
                                   (gx#syntax-e _%tl4860948635%_)))
                              (let ((_%hd4861148642%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4861048638%_)))
                                    (_%tl4861248645%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4861048638%_))))
                                (if (gx#stx-pair? _%tl4861248645%_)
                                    (let ((_%e4861348648%_
                                           (gx#syntax-e _%tl4861248645%_)))
                                      (let ((_%hd4861448652%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4861348648%_)))
                                            (_%tl4861548655%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4861348648%_))))
                                        (if (gx#stx-null? _%tl4861548655%_)
                                            ((lambda (_%L48658%_ _%L48660%_)
                                               (if (and (gx#identifier?
                                                         _%L48660%_)
                                                        (gx#identifier?
                                                         _%L48658%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L48660%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L48658%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4860348621%_
                                                    _%g4860448625%_)))
                                             _%hd4861448652%_
                                             _%hd4861148642%_)
                                            (_%g4860348621%_
                                             _%g4860448625%_))))
                                    (_%g4860348621%_ _%g4860448625%_))))
                            (_%g4860348621%_ _%g4860448625%_))))
                    (_%g4860348621%_ _%g4860448625%_)))))
        (_%g4860248676%_ _%$stx48599%_)))))
