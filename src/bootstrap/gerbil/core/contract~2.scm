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
    (lambda _%$args45171%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45171%_)))
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
    (lambda (_%id45152%_)
      (if (gx#identifier? _%id45152%_)
          (let ((_%t4515445156%_ (gx#syntax-local-value _%id45152%_ false)))
            (if _%t4515445156%_
                (let* ((_%t45160%_ _%t4515445156%_)
                       (_%$e45163%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45160%_))))
                  (if _%$e45163%_
                      _%$e45163%_
                      (let ((_%$e45167%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45160%_))))
                        (if _%$e45167%_
                            _%$e45167%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45160%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45132%_ _%id45134%_)
      (let _%loop45136%_ ((_%t45139%_
                           (gx#syntax-local-value _%id45134%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45139%_))
            _%t45139%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45139%_))
                _%t45139%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45139%_))
                    (_%loop45136%_
                     (gx#syntax-local-value
                      (let ((__obj83954 _%t45139%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj83954
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj83954
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj83954 'identifier)))
                      false))
                    (if (not _%t45139%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45132%_
                         _%id45134%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45132%_
                         _%id45134%_
                         _%t45139%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45108%_ _%id45110%_)
      (let _%loop45112%_ ((_%id45115%_ _%id45110%_)
                          (_%t45117%_
                           (gx#syntax-local-value _%id45110%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45117%_))
            _%id45115%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45117%_))
                _%id45115%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45117%_))
                    (let ((_%id45125%_
                           (let ((__obj83955 _%t45117%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj83955
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj83955
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj83955
                                  'identifier)))))
                      (_%loop45112%_
                       _%id45125%_
                       (gx#syntax-local-value _%id45125%_ false)))
                    (if (not _%t45117%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45108%_
                         _%id45115%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45108%_
                         _%id45115%_
                         _%t45117%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45095%_ _%id45097%_)
      (let ((_%t45099%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx45095%_
              _%id45097%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45099%_))
            (let ((__obj83957 _%t45099%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj83957
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj83957 '12 '#f '#f))
                  (unchecked-slot-ref __obj83957 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45099%_))
                (let ((__obj83956 _%t45099%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj83956
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj83956 '4 '#f '#f))
                      (unchecked-slot-ref __obj83956 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx45095%_
                 _%id45097%_
                 _%t45099%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45175%_)
      (let* ((_%g4517945197%_
              (lambda (_%g4518045193%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4518045193%_)))
             (_%g4517845252%_
              (lambda (_%g4518045201%_)
                (if (gx#stx-pair? _%g4518045201%_)
                    (let ((_%e4518345204%_ (gx#syntax-e _%g4518045201%_)))
                      (let ((_%hd4518445208%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4518345204%_)))
                            (_%tl4518545211%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4518345204%_))))
                        (if (gx#stx-pair? _%tl4518545211%_)
                            (let ((_%e4518645214%_
                                   (gx#syntax-e _%tl4518545211%_)))
                              (let ((_%hd4518745218%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4518645214%_)))
                                    (_%tl4518845221%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4518645214%_))))
                                (if (gx#stx-pair? _%tl4518845221%_)
                                    (let ((_%e4518945224%_
                                           (gx#syntax-e _%tl4518845221%_)))
                                      (let ((_%hd4519045228%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4518945224%_)))
                                            (_%tl4519145231%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4518945224%_))))
                                        (if (gx#stx-null? _%tl4519145231%_)
                                            ((lambda (_%L45234%_ _%L45236%_)
                                               (if (and (gx#identifier?
                                                         _%L45236%_)
                                                        (gx#identifier?
                                                         _%L45234%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45236%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45234%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4517945197%_
                                                    _%g4518045201%_)))
                                             _%hd4519045228%_
                                             _%hd4518745218%_)
                                            (_%g4517945197%_
                                             _%g4518045201%_))))
                                    (_%g4517945197%_ _%g4518045201%_))))
                            (_%g4517945197%_ _%g4518045201%_))))
                    (_%g4517945197%_ _%g4518045201%_)))))
        (_%g4517845252%_ _%$stx45175%_)))))
