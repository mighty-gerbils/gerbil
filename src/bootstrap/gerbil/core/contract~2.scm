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
    (lambda _%$args45153%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45153%_)))
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
    (lambda (_%id45134%_)
      (if (gx#identifier? _%id45134%_)
          (let ((_%t4513645138%_ (gx#syntax-local-value _%id45134%_ false)))
            (if _%t4513645138%_
                (let* ((_%t45142%_ _%t4513645138%_)
                       (_%$e45145%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45142%_))))
                  (if _%$e45145%_
                      _%$e45145%_
                      (let ((_%$e45149%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45142%_))))
                        (if _%$e45149%_
                            _%$e45149%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45142%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45114%_ _%id45116%_)
      (let _%loop45118%_ ((_%t45121%_
                           (gx#syntax-local-value _%id45116%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45121%_))
            _%t45121%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45121%_))
                _%t45121%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45121%_))
                    (_%loop45118%_
                     (gx#syntax-local-value
                      (let ((__obj82218 _%t45121%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj82218
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj82218
                               '1
                               '#f
                               '#f))
                            (class-slot-ref
                             |gerbil/core/contract~TypeReference[1]#type-reference::t|
                             __obj82218
                             'identifier)))
                      false))
                    (if (not _%t45121%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45114%_
                         _%id45116%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45114%_
                         _%id45116%_
                         _%t45121%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45090%_ _%id45092%_)
      (let _%loop45094%_ ((_%id45097%_ _%id45092%_)
                          (_%t45099%_
                           (gx#syntax-local-value _%id45092%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45099%_))
            _%id45097%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45099%_))
                _%id45097%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45099%_))
                    (let ((_%id45107%_
                           (let ((__obj82219 _%t45099%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj82219
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj82219
                                    '1
                                    '#f
                                    '#f))
                                 (class-slot-ref
                                  |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                  __obj82219
                                  'identifier)))))
                      (_%loop45094%_
                       _%id45107%_
                       (gx#syntax-local-value _%id45107%_ false)))
                    (if (not _%t45099%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45090%_
                         _%id45097%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45090%_
                         _%id45097%_
                         _%t45099%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45077%_ _%id45079%_)
      (let ((_%t45081%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx45077%_
              _%id45079%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45081%_))
            (let ((__obj82220 _%t45081%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj82220
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj82220 '12 '#f '#f))
                  (class-slot-ref
                   gerbil/core/mop~MOP-2#class-type-info::t
                   __obj82220
                   'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45081%_))
                (let ((__obj82221 _%t45081%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj82221
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj82221 '4 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj82221
                       'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx45077%_
                 _%id45079%_
                 _%t45081%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45157%_)
      (let* ((_%g4516145179%_
              (lambda (_%g4516245175%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4516245175%_)))
             (_%g4516045234%_
              (lambda (_%g4516245183%_)
                (if (gx#stx-pair? _%g4516245183%_)
                    (let ((_%e4516545186%_ (gx#syntax-e _%g4516245183%_)))
                      (let ((_%hd4516645190%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4516545186%_)))
                            (_%tl4516745193%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4516545186%_))))
                        (if (gx#stx-pair? _%tl4516745193%_)
                            (let ((_%e4516845196%_
                                   (gx#syntax-e _%tl4516745193%_)))
                              (let ((_%hd4516945200%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4516845196%_)))
                                    (_%tl4517045203%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4516845196%_))))
                                (if (gx#stx-pair? _%tl4517045203%_)
                                    (let ((_%e4517145206%_
                                           (gx#syntax-e _%tl4517045203%_)))
                                      (let ((_%hd4517245210%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4517145206%_)))
                                            (_%tl4517345213%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4517145206%_))))
                                        (if (gx#stx-null? _%tl4517345213%_)
                                            ((lambda (_%L45216%_ _%L45218%_)
                                               (if (and (gx#identifier?
                                                         _%L45218%_)
                                                        (gx#identifier?
                                                         _%L45216%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45218%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45216%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4516145179%_
                                                    _%g4516245183%_)))
                                             _%hd4517245210%_
                                             _%hd4516945200%_)
                                            (_%g4516145179%_
                                             _%g4516245183%_))))
                                    (_%g4516145179%_ _%g4516245183%_))))
                            (_%g4516145179%_ _%g4516245183%_))))
                    (_%g4516145179%_ _%g4516245183%_)))))
        (_%g4516045234%_ _%$stx45157%_)))))
