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
    (lambda _%$args45072%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45072%_)))
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
    (lambda (_%id45053%_)
      (if (gx#identifier? _%id45053%_)
          (let ((_%t4505545057%_ (gx#syntax-local-value _%id45053%_ false)))
            (if _%t4505545057%_
                (let* ((_%t45061%_ _%t4505545057%_)
                       (_%$e45064%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45061%_))))
                  (if _%$e45064%_
                      _%$e45064%_
                      (let ((_%$e45068%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45061%_))))
                        (if _%$e45068%_
                            _%$e45068%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45061%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45033%_ _%id45035%_)
      (let _%loop45037%_ ((_%t45040%_
                           (gx#syntax-local-value _%id45035%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45040%_))
            _%t45040%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45040%_))
                _%t45040%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45040%_))
                    (_%loop45037%_
                     (gx#syntax-local-value
                      (let ((__obj82723 _%t45040%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj82723
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj82723
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj82723 'identifier)))
                      false))
                    (if (not _%t45040%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45033%_
                         _%id45035%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45033%_
                         _%id45035%_
                         _%t45040%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45009%_ _%id45011%_)
      (let _%loop45013%_ ((_%id45016%_ _%id45011%_)
                          (_%t45018%_
                           (gx#syntax-local-value _%id45011%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45018%_))
            _%id45016%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45018%_))
                _%id45016%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45018%_))
                    (let ((_%id45026%_
                           (let ((__obj82724 _%t45018%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj82724
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj82724
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj82724
                                  'identifier)))))
                      (_%loop45013%_
                       _%id45026%_
                       (gx#syntax-local-value _%id45026%_ false)))
                    (if (not _%t45018%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45009%_
                         _%id45016%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45009%_
                         _%id45016%_
                         _%t45018%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx44996%_ _%id44998%_)
      (let ((_%t45000%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx44996%_
              _%id44998%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45000%_))
            (let ((__obj82726 _%t45000%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj82726
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj82726 '12 '#f '#f))
                  (unchecked-slot-ref __obj82726 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45000%_))
                (let ((__obj82725 _%t45000%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj82725
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj82725 '4 '#f '#f))
                      (unchecked-slot-ref __obj82725 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx44996%_
                 _%id44998%_
                 _%t45000%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45076%_)
      (let* ((_%g4508045098%_
              (lambda (_%g4508145094%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4508145094%_)))
             (_%g4507945153%_
              (lambda (_%g4508145102%_)
                (if (gx#stx-pair? _%g4508145102%_)
                    (let ((_%e4508445105%_ (gx#syntax-e _%g4508145102%_)))
                      (let ((_%hd4508545109%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4508445105%_)))
                            (_%tl4508645112%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4508445105%_))))
                        (if (gx#stx-pair? _%tl4508645112%_)
                            (let ((_%e4508745115%_
                                   (gx#syntax-e _%tl4508645112%_)))
                              (let ((_%hd4508845119%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4508745115%_)))
                                    (_%tl4508945122%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4508745115%_))))
                                (if (gx#stx-pair? _%tl4508945122%_)
                                    (let ((_%e4509045125%_
                                           (gx#syntax-e _%tl4508945122%_)))
                                      (let ((_%hd4509145129%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4509045125%_)))
                                            (_%tl4509245132%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4509045125%_))))
                                        (if (gx#stx-null? _%tl4509245132%_)
                                            ((lambda (_%L45135%_ _%L45137%_)
                                               (if (and (gx#identifier?
                                                         _%L45137%_)
                                                        (gx#identifier?
                                                         _%L45135%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45137%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45135%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4508045098%_
                                                    _%g4508145102%_)))
                                             _%hd4509145129%_
                                             _%hd4508845119%_)
                                            (_%g4508045098%_
                                             _%g4508145102%_))))
                                    (_%g4508045098%_ _%g4508145102%_))))
                            (_%g4508045098%_ _%g4508145102%_))))
                    (_%g4508045098%_ _%g4508145102%_)))))
        (_%g4507945153%_ _%$stx45076%_)))))
