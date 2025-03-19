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
    (lambda _%$args45154%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45154%_)))
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
    (lambda (_%id45135%_)
      (if (gx#identifier? _%id45135%_)
          (let ((_%t4513745139%_ (gx#syntax-local-value _%id45135%_ false)))
            (if _%t4513745139%_
                (let* ((_%t45143%_ _%t4513745139%_)
                       (_%$e45146%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45143%_))))
                  (if _%$e45146%_
                      _%$e45146%_
                      (let ((_%$e45150%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45143%_))))
                        (if _%$e45150%_
                            _%$e45150%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45143%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45115%_ _%id45117%_)
      (let _%loop45119%_ ((_%t45122%_
                           (gx#syntax-local-value _%id45117%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45122%_))
            _%t45122%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45122%_))
                _%t45122%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45122%_))
                    (_%loop45119%_
                     (gx#syntax-local-value
                      (let ((__obj84832 _%t45122%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84832
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84832
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj84832 'identifier)))
                      false))
                    (if (not _%t45122%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45115%_
                         _%id45117%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45115%_
                         _%id45117%_
                         _%t45122%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45091%_ _%id45093%_)
      (let _%loop45095%_ ((_%id45098%_ _%id45093%_)
                          (_%t45100%_
                           (gx#syntax-local-value _%id45093%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45100%_))
            _%id45098%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45100%_))
                _%id45098%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45100%_))
                    (let ((_%id45108%_
                           (let ((__obj84833 _%t45100%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj84833
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj84833
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj84833
                                  'identifier)))))
                      (_%loop45095%_
                       _%id45108%_
                       (gx#syntax-local-value _%id45108%_ false)))
                    (if (not _%t45100%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45091%_
                         _%id45098%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45091%_
                         _%id45098%_
                         _%t45100%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45078%_ _%id45080%_)
      (let ((_%t45082%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx45078%_
              _%id45080%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45082%_))
            (let ((__obj84835 _%t45082%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj84835
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj84835 '12 '#f '#f))
                  (unchecked-slot-ref __obj84835 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45082%_))
                (let ((__obj84834 _%t45082%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj84834
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj84834 '7 '#f '#f))
                      (unchecked-slot-ref __obj84834 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx45078%_
                 _%id45080%_
                 _%t45082%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45158%_)
      (let* ((_%g4516245180%_
              (lambda (_%g4516345176%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4516345176%_)))
             (_%g4516145235%_
              (lambda (_%g4516345184%_)
                (if (gx#stx-pair? _%g4516345184%_)
                    (let ((_%e4516645187%_ (gx#syntax-e _%g4516345184%_)))
                      (let ((_%hd4516745191%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4516645187%_)))
                            (_%tl4516845194%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4516645187%_))))
                        (if (gx#stx-pair? _%tl4516845194%_)
                            (let ((_%e4516945197%_
                                   (gx#syntax-e _%tl4516845194%_)))
                              (let ((_%hd4517045201%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4516945197%_)))
                                    (_%tl4517145204%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4516945197%_))))
                                (if (gx#stx-pair? _%tl4517145204%_)
                                    (let ((_%e4517245207%_
                                           (gx#syntax-e _%tl4517145204%_)))
                                      (let ((_%hd4517345211%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4517245207%_)))
                                            (_%tl4517445214%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4517245207%_))))
                                        (if (gx#stx-null? _%tl4517445214%_)
                                            ((lambda (_%L45217%_ _%L45219%_)
                                               (if (and (gx#identifier?
                                                         _%L45219%_)
                                                        (gx#identifier?
                                                         _%L45217%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45219%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45217%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4516245180%_
                                                    _%g4516345184%_)))
                                             _%hd4517345211%_
                                             _%hd4517045201%_)
                                            (_%g4516245180%_
                                             _%g4516345184%_))))
                                    (_%g4516245180%_ _%g4516345184%_))))
                            (_%g4516245180%_ _%g4516345184%_))))
                    (_%g4516245180%_ _%g4516345184%_)))))
        (_%g4516145235%_ _%$stx45158%_)))))
