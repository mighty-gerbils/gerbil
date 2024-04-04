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
    (lambda _%$args45333%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45333%_)))
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
    (lambda (_%id45314%_)
      (if (gx#identifier? _%id45314%_)
          (let ((_%t4531645318%_ (gx#syntax-local-value _%id45314%_ false)))
            (if _%t4531645318%_
                (let* ((_%t45322%_ _%t4531645318%_)
                       (_%$e45325%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45322%_))))
                  (if _%$e45325%_
                      _%$e45325%_
                      (let ((_%$e45329%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45322%_))))
                        (if _%$e45329%_
                            _%$e45329%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45322%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45294%_ _%id45296%_)
      (let _%loop45298%_ ((_%t45301%_
                           (gx#syntax-local-value _%id45296%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45301%_))
            (let () _%t45301%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45301%_))
                (let () _%t45301%_)
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45301%_))
                    (let ((__tmp80675
                           (gx#syntax-local-value
                            (let ((__obj80540 _%t45301%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj80540
                                     'gerbil/core/contract~TypeReference#type-reference::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj80540
                                     '1
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                   __obj80540
                                   'identifier)))
                            false)))
                      (declare (not safe))
                      (_%loop45298%_ __tmp80675))
                    (if (let () (declare (not safe)) (not _%t45301%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unresolved type"
                           _%stx45294%_
                           _%id45296%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type; expected class, interface or type reference"
                           _%stx45294%_
                           _%id45296%_
                           _%t45301%_)))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45270%_ _%id45272%_)
      (let _%loop45274%_ ((_%id45277%_ _%id45272%_)
                          (_%t45279%_
                           (gx#syntax-local-value _%id45272%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45279%_))
            (let () _%id45277%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45279%_))
                (let () _%id45277%_)
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45279%_))
                    (let ()
                      (let* ((_%id45287%_
                              (let ((__obj80541 _%t45279%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80541
                                       'gerbil/core/contract~TypeReference#type-reference::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80541
                                       '1
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                     __obj80541
                                     'identifier))))
                             (__tmp80676
                              (gx#syntax-local-value _%id45287%_ false)))
                        (declare (not safe))
                        (_%loop45274%_ _%id45287%_ __tmp80676)))
                    (if (let () (declare (not safe)) (not _%t45279%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unresolved type"
                           _%stx45270%_
                           _%id45277%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type; expected class, interface or type reference"
                           _%stx45270%_
                           _%id45277%_
                           _%t45279%_)))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45257%_ _%id45259%_)
      (let ((_%t45261%_
             (let ()
               (declare (not safe))
               (|gerbil/core/contract~TypeReference[1]#resolve-type|
                _%stx45257%_
                _%id45259%_))))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45261%_))
            (let ((__obj80542 _%t45261%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj80542
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj80542 '12 '#f '#f))
                  (class-slot-ref
                   gerbil/core/mop~MOP-2#class-type-info::t
                   __obj80542
                   'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45261%_))
                (let ((__obj80543 _%t45261%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj80543
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj80543 '4 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj80543
                       'instance-type)))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"unexpected type; expected class, interface or type reference"
                   _%stx45257%_
                   _%id45259%_
                   _%t45261%_)))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45337%_)
      (let* ((_%g4534145359%_
              (lambda (_%g4534245355%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4534245355%_)))
             (_%g4534045414%_
              (lambda (_%g4534245363%_)
                (if (gx#stx-pair? _%g4534245363%_)
                    (let ((_%e4534745366%_ (gx#syntax-e _%g4534245363%_)))
                      (let ((_%hd4534645370%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4534745366%_)))
                            (_%tl4534545373%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4534745366%_))))
                        (if (gx#stx-pair? _%tl4534545373%_)
                            (let ((_%e4535045376%_
                                   (gx#syntax-e _%tl4534545373%_)))
                              (let ((_%hd4534945380%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4535045376%_)))
                                    (_%tl4534845383%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4535045376%_))))
                                (if (gx#stx-pair? _%tl4534845383%_)
                                    (let ((_%e4535345386%_
                                           (gx#syntax-e _%tl4534845383%_)))
                                      (let ((_%hd4535245390%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4535345386%_)))
                                            (_%tl4535145393%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4535345386%_))))
                                        (if (gx#stx-null? _%tl4535145393%_)
                                            ((lambda (_%L45396%_ _%L45398%_)
                                               (if (and (gx#identifier?
                                                         _%L45398%_)
                                                        (gx#identifier?
                                                         _%L45396%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45398%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45396%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4534145359%_
                                                    _%g4534245363%_)))
                                             _%hd4535245390%_
                                             _%hd4534945380%_)
                                            (_%g4534145359%_
                                             _%g4534245363%_))))
                                    (_%g4534145359%_ _%g4534245363%_))))
                            (_%g4534145359%_ _%g4534245363%_))))
                    (_%g4534145359%_ _%g4534245363%_)))))
        (_%g4534045414%_ _%$stx45337%_)))))
