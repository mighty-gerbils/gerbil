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
    (lambda _%$args48209%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args48209%_)))
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
    (lambda (_%id48190%_)
      (if (gx#identifier? _%id48190%_)
          (let ((_%t4819248194%_ (gx#syntax-local-value _%id48190%_ false)))
            (if _%t4819248194%_
                (let* ((_%t48198%_ _%t4819248194%_)
                       (_%$e48201%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t48198%_))))
                  (if _%$e48201%_
                      _%$e48201%_
                      (let ((_%$e48205%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t48198%_))))
                        (if _%$e48205%_
                            _%$e48205%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t48198%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx48170%_ _%id48172%_)
      (let _%loop48174%_ ((_%t48177%_
                           (gx#syntax-local-value _%id48172%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48177%_))
            _%t48177%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48177%_))
                _%t48177%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t48177%_))
                    (_%loop48174%_
                     (gx#syntax-local-value
                      (let ((__obj88234 _%t48177%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj88234
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj88234
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj88234 'identifier)))
                      false))
                    (if (not _%t48177%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx48170%_
                         _%id48172%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx48170%_
                         _%id48172%_
                         _%t48177%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx48146%_ _%id48148%_)
      (let _%loop48150%_ ((_%id48153%_ _%id48148%_)
                          (_%t48155%_
                           (gx#syntax-local-value _%id48148%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48155%_))
            _%id48153%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48155%_))
                _%id48153%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t48155%_))
                    (let ((_%id48163%_
                           (let ((__obj88235 _%t48155%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj88235
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj88235
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj88235
                                  'identifier)))))
                      (_%loop48150%_
                       _%id48163%_
                       (gx#syntax-local-value _%id48163%_ false)))
                    (if (not _%t48155%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx48146%_
                         _%id48153%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx48146%_
                         _%id48153%_
                         _%t48155%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx48133%_ _%id48135%_)
      (let ((_%t48137%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx48133%_
              _%id48135%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48137%_))
            (let ((__obj88237 _%t48137%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj88237
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj88237 '12 '#f '#f))
                  (unchecked-slot-ref __obj88237 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48137%_))
                (let ((__obj88236 _%t48137%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj88236
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj88236 '7 '#f '#f))
                      (unchecked-slot-ref __obj88236 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx48133%_
                 _%id48135%_
                 _%t48137%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx48213%_)
      (let* ((_%g4821748235%_
              (lambda (_%g4821848231%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4821848231%_)))
             (_%g4821648290%_
              (lambda (_%g4821848239%_)
                (if (gx#stx-pair? _%g4821848239%_)
                    (let ((_%e4822148242%_ (gx#syntax-e _%g4821848239%_)))
                      (let ((_%hd4822248246%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4822148242%_)))
                            (_%tl4822348249%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4822148242%_))))
                        (if (gx#stx-pair? _%tl4822348249%_)
                            (let ((_%e4822448252%_
                                   (gx#syntax-e _%tl4822348249%_)))
                              (let ((_%hd4822548256%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4822448252%_)))
                                    (_%tl4822648259%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4822448252%_))))
                                (if (gx#stx-pair? _%tl4822648259%_)
                                    (let ((_%e4822748262%_
                                           (gx#syntax-e _%tl4822648259%_)))
                                      (let ((_%hd4822848266%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4822748262%_)))
                                            (_%tl4822948269%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4822748262%_))))
                                        (if (gx#stx-null? _%tl4822948269%_)
                                            ((lambda (_%L48272%_ _%L48274%_)
                                               (if (and (gx#identifier?
                                                         _%L48274%_)
                                                        (gx#identifier?
                                                         _%L48272%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L48274%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L48272%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4821748235%_
                                                    _%g4821848239%_)))
                                             _%hd4822848266%_
                                             _%hd4822548256%_)
                                            (_%g4821748235%_
                                             _%g4821848239%_))))
                                    (_%g4821748235%_ _%g4821848239%_))))
                            (_%g4821748235%_ _%g4821848239%_))))
                    (_%g4821748235%_ _%g4821848239%_)))))
        (_%g4821648290%_ _%$stx48213%_)))))
