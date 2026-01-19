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
    (lambda _%$args48675%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args48675%_)))
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
    (lambda (_%id48656%_)
      (if (gx#identifier? _%id48656%_)
          (let ((_%t4865848660%_ (gx#syntax-local-value _%id48656%_ false)))
            (if _%t4865848660%_
                (let* ((_%t48664%_ _%t4865848660%_)
                       (_%$e48667%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t48664%_))))
                  (if _%$e48667%_
                      _%$e48667%_
                      (let ((_%$e48671%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t48664%_))))
                        (if _%$e48671%_
                            _%$e48671%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t48664%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx48636%_ _%id48638%_)
      (let _%loop48640%_ ((_%t48643%_
                           (gx#syntax-local-value _%id48638%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48643%_))
            _%t48643%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48643%_))
                _%t48643%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t48643%_))
                    (_%loop48640%_
                     (gx#syntax-local-value
                      (let ((__obj92119 _%t48643%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj92119
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj92119
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj92119 'identifier)))
                      false))
                    (if (not _%t48643%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx48636%_
                         _%id48638%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx48636%_
                         _%id48638%_
                         _%t48643%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx48612%_ _%id48614%_)
      (let _%loop48616%_ ((_%id48619%_ _%id48614%_)
                          (_%t48621%_
                           (gx#syntax-local-value _%id48614%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48621%_))
            _%id48619%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48621%_))
                _%id48619%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t48621%_))
                    (let ((_%id48629%_
                           (let ((__obj92120 _%t48621%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj92120
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj92120
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj92120
                                  'identifier)))))
                      (_%loop48616%_
                       _%id48629%_
                       (gx#syntax-local-value _%id48629%_ false)))
                    (if (not _%t48621%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx48612%_
                         _%id48619%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx48612%_
                         _%id48619%_
                         _%t48621%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx48599%_ _%id48601%_)
      (let ((_%t48603%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx48599%_
              _%id48601%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48603%_))
            (let ((__obj92122 _%t48603%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj92122
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj92122 '3 '#f '#f))
                  (unchecked-slot-ref __obj92122 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48603%_))
                (let ((__obj92121 _%t48603%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj92121
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj92121 '3 '#f '#f))
                      (unchecked-slot-ref __obj92121 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx48599%_
                 _%id48601%_
                 _%t48603%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx48679%_)
      (let* ((_%g4868348701%_
              (lambda (_%g4868448697%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4868448697%_)))
             (_%g4868248756%_
              (lambda (_%g4868448705%_)
                (if (gx#stx-pair? _%g4868448705%_)
                    (let ((_%e4868748708%_ (gx#syntax-e _%g4868448705%_)))
                      (let ((_%hd4868848712%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4868748708%_)))
                            (_%tl4868948715%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4868748708%_))))
                        (if (gx#stx-pair? _%tl4868948715%_)
                            (let ((_%e4869048718%_
                                   (gx#syntax-e _%tl4868948715%_)))
                              (let ((_%hd4869148722%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4869048718%_)))
                                    (_%tl4869248725%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4869048718%_))))
                                (if (gx#stx-pair? _%tl4869248725%_)
                                    (let ((_%e4869348728%_
                                           (gx#syntax-e _%tl4869248725%_)))
                                      (let ((_%hd4869448732%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4869348728%_)))
                                            (_%tl4869548735%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4869348728%_))))
                                        (if (gx#stx-null? _%tl4869548735%_)
                                            ((lambda (_%L48738%_ _%L48740%_)
                                               (if (and (gx#identifier?
                                                         _%L48740%_)
                                                        (gx#identifier?
                                                         _%L48738%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L48740%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L48738%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4868348701%_
                                                    _%g4868448705%_)))
                                             _%hd4869448732%_
                                             _%hd4869148722%_)
                                            (_%g4868348701%_
                                             _%g4868448705%_))))
                                    (_%g4868348701%_ _%g4868448705%_))))
                            (_%g4868348701%_ _%g4868448705%_))))
                    (_%g4868348701%_ _%g4868448705%_)))))
        (_%g4868248756%_ _%$stx48679%_)))))
