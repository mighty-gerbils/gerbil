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
    (lambda _%$args45141%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45141%_)))
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
    (lambda (_%id45122%_)
      (if (gx#identifier? _%id45122%_)
          (let ((_%t4512445126%_ (gx#syntax-local-value _%id45122%_ false)))
            (if _%t4512445126%_
                (let* ((_%t45130%_ _%t4512445126%_)
                       (_%$e45133%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45130%_))))
                  (if _%$e45133%_
                      _%$e45133%_
                      (let ((_%$e45137%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45130%_))))
                        (if _%$e45137%_
                            _%$e45137%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45130%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45102%_ _%id45104%_)
      (let _%loop45106%_ ((_%t45109%_
                           (gx#syntax-local-value _%id45104%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45109%_))
            _%t45109%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45109%_))
                _%t45109%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45109%_))
                    (_%loop45106%_
                     (gx#syntax-local-value
                      (let ((__obj84734 _%t45109%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84734
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84734
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj84734 'identifier)))
                      false))
                    (if (not _%t45109%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45102%_
                         _%id45104%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45102%_
                         _%id45104%_
                         _%t45109%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45078%_ _%id45080%_)
      (let _%loop45082%_ ((_%id45085%_ _%id45080%_)
                          (_%t45087%_
                           (gx#syntax-local-value _%id45080%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45087%_))
            _%id45085%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45087%_))
                _%id45085%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45087%_))
                    (let ((_%id45095%_
                           (let ((__obj84735 _%t45087%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj84735
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj84735
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj84735
                                  'identifier)))))
                      (_%loop45082%_
                       _%id45095%_
                       (gx#syntax-local-value _%id45095%_ false)))
                    (if (not _%t45087%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45078%_
                         _%id45085%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45078%_
                         _%id45085%_
                         _%t45087%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45065%_ _%id45067%_)
      (let ((_%t45069%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx45065%_
              _%id45067%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45069%_))
            (let ((__obj84737 _%t45069%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj84737
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj84737 '12 '#f '#f))
                  (unchecked-slot-ref __obj84737 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45069%_))
                (let ((__obj84736 _%t45069%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj84736
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj84736 '5 '#f '#f))
                      (unchecked-slot-ref __obj84736 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx45065%_
                 _%id45067%_
                 _%t45069%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45145%_)
      (let* ((_%g4514945167%_
              (lambda (_%g4515045163%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4515045163%_)))
             (_%g4514845222%_
              (lambda (_%g4515045171%_)
                (if (gx#stx-pair? _%g4515045171%_)
                    (let ((_%e4515345174%_ (gx#syntax-e _%g4515045171%_)))
                      (let ((_%hd4515445178%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4515345174%_)))
                            (_%tl4515545181%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4515345174%_))))
                        (if (gx#stx-pair? _%tl4515545181%_)
                            (let ((_%e4515645184%_
                                   (gx#syntax-e _%tl4515545181%_)))
                              (let ((_%hd4515745188%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4515645184%_)))
                                    (_%tl4515845191%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4515645184%_))))
                                (if (gx#stx-pair? _%tl4515845191%_)
                                    (let ((_%e4515945194%_
                                           (gx#syntax-e _%tl4515845191%_)))
                                      (let ((_%hd4516045198%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4515945194%_)))
                                            (_%tl4516145201%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4515945194%_))))
                                        (if (gx#stx-null? _%tl4516145201%_)
                                            ((lambda (_%L45204%_ _%L45206%_)
                                               (if (and (gx#identifier?
                                                         _%L45206%_)
                                                        (gx#identifier?
                                                         _%L45204%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45206%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45204%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4514945167%_
                                                    _%g4515045171%_)))
                                             _%hd4516045198%_
                                             _%hd4515745188%_)
                                            (_%g4514945167%_
                                             _%g4515045171%_))))
                                    (_%g4514945167%_ _%g4515045171%_))))
                            (_%g4514945167%_ _%g4515045171%_))))
                    (_%g4514945167%_ _%g4515045171%_)))))
        (_%g4514845222%_ _%$stx45145%_)))))
