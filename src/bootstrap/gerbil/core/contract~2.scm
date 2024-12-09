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
    (lambda _%$args45108%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45108%_)))
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
    (lambda (_%id45089%_)
      (if (gx#identifier? _%id45089%_)
          (let ((_%t4509145093%_ (gx#syntax-local-value _%id45089%_ false)))
            (if _%t4509145093%_
                (let* ((_%t45097%_ _%t4509145093%_)
                       (_%$e45100%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45097%_))))
                  (if _%$e45100%_
                      _%$e45100%_
                      (let ((_%$e45104%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45097%_))))
                        (if _%$e45104%_
                            _%$e45104%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45097%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45069%_ _%id45071%_)
      (let _%loop45073%_ ((_%t45076%_
                           (gx#syntax-local-value _%id45071%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45076%_))
            _%t45076%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45076%_))
                _%t45076%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45076%_))
                    (_%loop45073%_
                     (gx#syntax-local-value
                      (let ((__obj83891 _%t45076%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj83891
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj83891
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj83891 'identifier)))
                      false))
                    (if (not _%t45076%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45069%_
                         _%id45071%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45069%_
                         _%id45071%_
                         _%t45076%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45045%_ _%id45047%_)
      (let _%loop45049%_ ((_%id45052%_ _%id45047%_)
                          (_%t45054%_
                           (gx#syntax-local-value _%id45047%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45054%_))
            _%id45052%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45054%_))
                _%id45052%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45054%_))
                    (let ((_%id45062%_
                           (let ((__obj83892 _%t45054%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj83892
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj83892
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj83892
                                  'identifier)))))
                      (_%loop45049%_
                       _%id45062%_
                       (gx#syntax-local-value _%id45062%_ false)))
                    (if (not _%t45054%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45045%_
                         _%id45052%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45045%_
                         _%id45052%_
                         _%t45054%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45032%_ _%id45034%_)
      (let ((_%t45036%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx45032%_
              _%id45034%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45036%_))
            (let ((__obj83894 _%t45036%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj83894
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj83894 '12 '#f '#f))
                  (unchecked-slot-ref __obj83894 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45036%_))
                (let ((__obj83893 _%t45036%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj83893
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj83893 '4 '#f '#f))
                      (unchecked-slot-ref __obj83893 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx45032%_
                 _%id45034%_
                 _%t45036%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45112%_)
      (let* ((_%g4511645134%_
              (lambda (_%g4511745130%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4511745130%_)))
             (_%g4511545189%_
              (lambda (_%g4511745138%_)
                (if (gx#stx-pair? _%g4511745138%_)
                    (let ((_%e4512045141%_ (gx#syntax-e _%g4511745138%_)))
                      (let ((_%hd4512145145%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4512045141%_)))
                            (_%tl4512245148%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4512045141%_))))
                        (if (gx#stx-pair? _%tl4512245148%_)
                            (let ((_%e4512345151%_
                                   (gx#syntax-e _%tl4512245148%_)))
                              (let ((_%hd4512445155%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4512345151%_)))
                                    (_%tl4512545158%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4512345151%_))))
                                (if (gx#stx-pair? _%tl4512545158%_)
                                    (let ((_%e4512645161%_
                                           (gx#syntax-e _%tl4512545158%_)))
                                      (let ((_%hd4512745165%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4512645161%_)))
                                            (_%tl4512845168%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4512645161%_))))
                                        (if (gx#stx-null? _%tl4512845168%_)
                                            ((lambda (_%L45171%_ _%L45173%_)
                                               (if (and (gx#identifier?
                                                         _%L45173%_)
                                                        (gx#identifier?
                                                         _%L45171%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45173%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45171%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4511645134%_
                                                    _%g4511745138%_)))
                                             _%hd4512745165%_
                                             _%hd4512445155%_)
                                            (_%g4511645134%_
                                             _%g4511745138%_))))
                                    (_%g4511645134%_ _%g4511745138%_))))
                            (_%g4511645134%_ _%g4511745138%_))))
                    (_%g4511645134%_ _%g4511745138%_)))))
        (_%g4511545189%_ _%$stx45112%_)))))
