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
    (lambda _%$args45074%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45074%_)))
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
    (lambda (_%id45055%_)
      (if (gx#identifier? _%id45055%_)
          (let ((_%t4505745059%_ (gx#syntax-local-value _%id45055%_ false)))
            (if _%t4505745059%_
                (let* ((_%t45063%_ _%t4505745059%_)
                       (_%$e45066%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45063%_))))
                  (if _%$e45066%_
                      _%$e45066%_
                      (let ((_%$e45070%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45063%_))))
                        (if _%$e45070%_
                            _%$e45070%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45063%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45035%_ _%id45037%_)
      (let _%loop45039%_ ((_%t45042%_
                           (gx#syntax-local-value _%id45037%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45042%_))
            _%t45042%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45042%_))
                _%t45042%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45042%_))
                    (_%loop45039%_
                     (gx#syntax-local-value
                      (let ((__obj82451 _%t45042%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj82451
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj82451
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj82451 'identifier)))
                      false))
                    (if (not _%t45042%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45035%_
                         _%id45037%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45035%_
                         _%id45037%_
                         _%t45042%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45011%_ _%id45013%_)
      (let _%loop45015%_ ((_%id45018%_ _%id45013%_)
                          (_%t45020%_
                           (gx#syntax-local-value _%id45013%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45020%_))
            _%id45018%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45020%_))
                _%id45018%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45020%_))
                    (let ((_%id45028%_
                           (let ((__obj82452 _%t45020%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj82452
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj82452
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj82452
                                  'identifier)))))
                      (_%loop45015%_
                       _%id45028%_
                       (gx#syntax-local-value _%id45028%_ false)))
                    (if (not _%t45020%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45011%_
                         _%id45018%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45011%_
                         _%id45018%_
                         _%t45020%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx44998%_ _%id45000%_)
      (let ((_%t45002%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx44998%_
              _%id45000%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45002%_))
            (let ((__obj82454 _%t45002%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj82454
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj82454 '12 '#f '#f))
                  (unchecked-slot-ref __obj82454 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45002%_))
                (let ((__obj82453 _%t45002%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj82453
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj82453 '4 '#f '#f))
                      (unchecked-slot-ref __obj82453 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx44998%_
                 _%id45000%_
                 _%t45002%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45078%_)
      (let* ((_%g4508245100%_
              (lambda (_%g4508345096%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4508345096%_)))
             (_%g4508145155%_
              (lambda (_%g4508345104%_)
                (if (gx#stx-pair? _%g4508345104%_)
                    (let ((_%e4508645107%_ (gx#syntax-e _%g4508345104%_)))
                      (let ((_%hd4508745111%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4508645107%_)))
                            (_%tl4508845114%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4508645107%_))))
                        (if (gx#stx-pair? _%tl4508845114%_)
                            (let ((_%e4508945117%_
                                   (gx#syntax-e _%tl4508845114%_)))
                              (let ((_%hd4509045121%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4508945117%_)))
                                    (_%tl4509145124%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4508945117%_))))
                                (if (gx#stx-pair? _%tl4509145124%_)
                                    (let ((_%e4509245127%_
                                           (gx#syntax-e _%tl4509145124%_)))
                                      (let ((_%hd4509345131%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4509245127%_)))
                                            (_%tl4509445134%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4509245127%_))))
                                        (if (gx#stx-null? _%tl4509445134%_)
                                            ((lambda (_%L45137%_ _%L45139%_)
                                               (if (and (gx#identifier?
                                                         _%L45139%_)
                                                        (gx#identifier?
                                                         _%L45137%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45139%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45137%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4508245100%_
                                                    _%g4508345104%_)))
                                             _%hd4509345131%_
                                             _%hd4509045121%_)
                                            (_%g4508245100%_
                                             _%g4508345104%_))))
                                    (_%g4508245100%_ _%g4508345104%_))))
                            (_%g4508245100%_ _%g4508345104%_))))
                    (_%g4508245100%_ _%g4508345104%_)))))
        (_%g4508145155%_ _%$stx45078%_)))))
