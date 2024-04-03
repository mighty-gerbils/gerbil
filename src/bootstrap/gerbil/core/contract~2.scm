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
    (lambda _%$args45337%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45337%_)))
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
    (lambda (_%id45318%_)
      (if (gx#identifier? _%id45318%_)
          (let ((_%t4532045322%_ (gx#syntax-local-value _%id45318%_ false)))
            (if _%t4532045322%_
                (let* ((_%t45326%_ _%t4532045322%_)
                       (_%$e45329%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45326%_))))
                  (if _%$e45329%_
                      _%$e45329%_
                      (let ((_%$e45333%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45326%_))))
                        (if _%$e45333%_
                            _%$e45333%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45326%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45298%_ _%id45300%_)
      (let _%loop45302%_ ((_%t45305%_
                           (gx#syntax-local-value _%id45300%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45305%_))
            (let () _%t45305%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45305%_))
                (let () _%t45305%_)
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45305%_))
                    (let ()
                      (let ((__tmp80121
                             (gx#syntax-local-value
                              (let ((__obj79982 _%t45305%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79982
                                       'gerbil/core/contract~TypeReference#type-reference::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79982
                                       '1
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                     __obj79982
                                     'identifier)))
                              false)))
                        (declare (not safe))
                        (_%loop45302%_ __tmp80121)))
                    (if (let () (declare (not safe)) (not _%t45305%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unresolved type"
                           _%stx45298%_
                           _%id45300%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type; expected class, interface or type reference"
                           _%stx45298%_
                           _%id45300%_
                           _%t45305%_)))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45274%_ _%id45276%_)
      (let _%loop45278%_ ((_%id45281%_ _%id45276%_)
                          (_%t45283%_
                           (gx#syntax-local-value _%id45276%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45283%_))
            (let () _%id45281%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45283%_))
                (let () _%id45281%_)
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45283%_))
                    (let ()
                      (let* ((_%id45291%_
                              (let ((__obj79983 _%t45283%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79983
                                       'gerbil/core/contract~TypeReference#type-reference::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79983
                                       '1
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                     __obj79983
                                     'identifier))))
                             (__tmp80122
                              (gx#syntax-local-value _%id45291%_ false)))
                        (declare (not safe))
                        (_%loop45278%_ _%id45291%_ __tmp80122)))
                    (if (let () (declare (not safe)) (not _%t45283%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unresolved type"
                           _%stx45274%_
                           _%id45281%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type; expected class, interface or type reference"
                           _%stx45274%_
                           _%id45281%_
                           _%t45283%_)))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45261%_ _%id45263%_)
      (let ((_%t45265%_
             (let ()
               (declare (not safe))
               (|gerbil/core/contract~TypeReference[1]#resolve-type|
                _%stx45261%_
                _%id45263%_))))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45265%_))
            (let ()
              (let ((__obj79984 _%t45265%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj79984
                       'gerbil.core#class-type-info::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref __obj79984 '12 '#f '#f))
                    (class-slot-ref
                     gerbil/core/mop~MOP-2#class-type-info::t
                     __obj79984
                     'type-descriptor))))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45265%_))
                (let ()
                  (let ((__obj79985 _%t45265%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj79985
                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj79985 '4 '#f '#f))
                        (class-slot-ref
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         __obj79985
                         'instance-type))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"unexpected type; expected class, interface or type reference"
                   _%stx45261%_
                   _%id45263%_
                   _%t45265%_)))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45341%_)
      (let* ((_%g4534545363%_
              (lambda (_%g4534645359%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4534645359%_)))
             (_%g4534445418%_
              (lambda (_%g4534645367%_)
                (if (gx#stx-pair? _%g4534645367%_)
                    (let ((_%e4535145370%_ (gx#syntax-e _%g4534645367%_)))
                      (let ((_%hd4535045374%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4535145370%_)))
                            (_%tl4534945377%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4535145370%_))))
                        (if (gx#stx-pair? _%tl4534945377%_)
                            (let ((_%e4535445380%_
                                   (gx#syntax-e _%tl4534945377%_)))
                              (let ((_%hd4535345384%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4535445380%_)))
                                    (_%tl4535245387%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4535445380%_))))
                                (if (gx#stx-pair? _%tl4535245387%_)
                                    (let ((_%e4535745390%_
                                           (gx#syntax-e _%tl4535245387%_)))
                                      (let ((_%hd4535645394%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4535745390%_)))
                                            (_%tl4535545397%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4535745390%_))))
                                        (if (gx#stx-null? _%tl4535545397%_)
                                            ((lambda (_%L45400%_ _%L45402%_)
                                               (if (and (gx#identifier?
                                                         _%L45402%_)
                                                        (gx#identifier?
                                                         _%L45400%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45402%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45400%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4534545363%_
                                                    _%g4534645367%_)))
                                             _%hd4535645394%_
                                             _%hd4535345384%_)
                                            (_%g4534545363%_
                                             _%g4534645367%_))))
                                    (_%g4534545363%_ _%g4534645367%_))))
                            (_%g4534545363%_ _%g4534645367%_))))
                    (_%g4534545363%_ _%g4534645367%_)))))
        (_%g4534445418%_ _%$stx45341%_)))))
