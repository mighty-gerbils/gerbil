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
    (lambda _%$args43077%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args43077%_)))
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
    (lambda (_%id43059%_)
      (if (gx#identifier? _%id43059%_)
          (let ((_%$%t4306143063%_ (gx#syntax-local-value _%id43059%_ false)))
            (if _%$%t4306143063%_
                (let* ((_%t43066%_ _%$%t4306143063%_)
                       (_%$e43069%_
                        (gerbil/core/mop~MOP-2#class-type-info? _%t43066%_)))
                  (if _%$e43069%_
                      _%$e43069%_
                      (let ((_%$e43073%_
                             (gerbil/core/contract~InterfaceInfo#interface-info?
                              _%t43066%_)))
                        (if _%$e43073%_
                            _%$e43073%_
                            (|gerbil/core/contract~TypeReference[1]#type-reference?|
                             _%t43066%_)))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx43039%_ _%id43041%_)
      (let _%loop43043%_ ((_%t43046%_
                           (gx#syntax-local-value _%id43041%_ false)))
        (if (gerbil/core/mop~MOP-2#class-type-info? _%t43046%_)
            _%t43046%_
            (if (gerbil/core/contract~InterfaceInfo#interface-info? _%t43046%_)
                _%t43046%_
                (if (|gerbil/core/contract~TypeReference[1]#type-reference?|
                     _%t43046%_)
                    (_%loop43043%_
                     (gx#syntax-local-value
                      (|gerbil/core/contract~TypeReference[1]#type-reference-identifier|
                       _%t43046%_)
                      false))
                    (if (not _%t43046%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx43039%_
                         _%id43041%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx43039%_
                         _%id43041%_
                         _%t43046%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx43015%_ _%id43017%_)
      (let _%loop43019%_ ((_%id43022%_ _%id43017%_)
                          (_%t43024%_
                           (gx#syntax-local-value _%id43017%_ false)))
        (if (gerbil/core/mop~MOP-2#class-type-info? _%t43024%_)
            _%id43022%_
            (if (gerbil/core/contract~InterfaceInfo#interface-info? _%t43024%_)
                _%id43022%_
                (if (|gerbil/core/contract~TypeReference[1]#type-reference?|
                     _%t43024%_)
                    (let ((_%id43032%_
                           (|gerbil/core/contract~TypeReference[1]#type-reference-identifier|
                            _%t43024%_)))
                      (_%loop43019%_
                       _%id43032%_
                       (gx#syntax-local-value _%id43032%_ false)))
                    (if (not _%t43024%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx43015%_
                         _%id43022%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx43015%_
                         _%id43022%_
                         _%t43024%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx43002%_ _%id43004%_)
      (let ((_%t43006%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx43002%_
              _%id43004%_)))
        (if (gerbil/core/mop~MOP-2#class-type-info? _%t43006%_)
            (gerbil/core/mop~MOP-2#!class-type-descriptor _%t43006%_)
            (if (gerbil/core/contract~InterfaceInfo#interface-info? _%t43006%_)
                (gerbil/core/mop~MOP-2#!runtime-type-descriptor _%t43006%_)
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx43002%_
                 _%id43004%_
                 _%t43006%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx43081%_)
      (let* ((_%$%g4308543103%_
              (lambda (_%$%g4308643099%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g4308643099%_)))
             (_%$%g4308443158%_
              (lambda (_%$%g4308643107%_)
                (if (gx#stx-pair? _%$%g4308643107%_)
                    (let ((_%$%e4308943110%_ (gx#syntax-e _%$%g4308643107%_)))
                      (let ((_%$%hd4309043114%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4308943110%_)))
                            (_%$%tl4309143117%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4308943110%_))))
                        (if (gx#stx-pair? _%$%tl4309143117%_)
                            (let ((_%$%e4309243120%_
                                   (gx#syntax-e _%$%tl4309143117%_)))
                              (let ((_%$%hd4309343124%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4309243120%_)))
                                    (_%$%tl4309443127%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4309243120%_))))
                                (if (gx#stx-pair? _%$%tl4309443127%_)
                                    (let ((_%$%e4309543130%_
                                           (gx#syntax-e _%$%tl4309443127%_)))
                                      (let ((_%$%hd4309643134%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4309543130%_)))
                                            (_%$%tl4309743137%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4309543130%_))))
                                        (if (gx#stx-null? _%$%tl4309743137%_)
                                            ((lambda (_%$%g4308743140%_
                                                      _%$%g4308843142%_)
                                               (if (and (gx#identifier?
                                                         _%$%g4308843142%_)
                                                        (gx#identifier?
                                                         _%$%g4308743140%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%$%g4308843142%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%$%g4308743140%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g4308543103%_
                                                    _%$%g4308643107%_)))
                                             _%$%hd4309643134%_
                                             _%$%hd4309343124%_)
                                            (_%$%g4308543103%_
                                             _%$%g4308643107%_))))
                                    (_%$%g4308543103%_ _%$%g4308643107%_))))
                            (_%$%g4308543103%_ _%$%g4308643107%_))))
                    (_%$%g4308543103%_ _%$%g4308643107%_)))))
        (_%$%g4308443158%_ _%$stx43081%_)))))
