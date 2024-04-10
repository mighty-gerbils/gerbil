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
    (lambda _%$args45158%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45158%_)))
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
    (lambda (_%id45139%_)
      (if (gx#identifier? _%id45139%_)
          (let ((_%t4514145143%_ (gx#syntax-local-value _%id45139%_ false)))
            (if _%t4514145143%_
                (let* ((_%t45147%_ _%t4514145143%_)
                       (_%$e45150%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45147%_))))
                  (if _%$e45150%_
                      _%$e45150%_
                      (let ((_%$e45154%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45147%_))))
                        (if _%$e45154%_
                            _%$e45154%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45147%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45119%_ _%id45121%_)
      (let _%loop45123%_ ((_%t45126%_
                           (gx#syntax-local-value _%id45121%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45126%_))
            _%t45126%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45126%_))
                _%t45126%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45126%_))
                    (_%loop45123%_
                     (gx#syntax-local-value
                      (let ((__obj80808 _%t45126%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj80808
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj80808
                               '1
                               '#f
                               '#f))
                            (class-slot-ref
                             |gerbil/core/contract~TypeReference[1]#type-reference::t|
                             __obj80808
                             'identifier)))
                      false))
                    (if (not _%t45126%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45119%_
                         _%id45121%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45119%_
                         _%id45121%_
                         _%t45126%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45095%_ _%id45097%_)
      (let _%loop45099%_ ((_%id45102%_ _%id45097%_)
                          (_%t45104%_
                           (gx#syntax-local-value _%id45097%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45104%_))
            _%id45102%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45104%_))
                _%id45102%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45104%_))
                    (let ((_%id45112%_
                           (let ((__obj80809 _%t45104%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj80809
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj80809
                                    '1
                                    '#f
                                    '#f))
                                 (class-slot-ref
                                  |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                  __obj80809
                                  'identifier)))))
                      (_%loop45099%_
                       _%id45112%_
                       (gx#syntax-local-value _%id45112%_ false)))
                    (if (not _%t45104%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45095%_
                         _%id45102%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45095%_
                         _%id45102%_
                         _%t45104%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45082%_ _%id45084%_)
      (let ((_%t45086%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx45082%_
              _%id45084%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45086%_))
            (let ((__obj80810 _%t45086%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj80810
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj80810 '12 '#f '#f))
                  (class-slot-ref
                   gerbil/core/mop~MOP-2#class-type-info::t
                   __obj80810
                   'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45086%_))
                (let ((__obj80811 _%t45086%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj80811
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj80811 '4 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj80811
                       'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx45082%_
                 _%id45084%_
                 _%t45086%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45162%_)
      (let* ((_%g4516645184%_
              (lambda (_%g4516745180%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4516745180%_)))
             (_%g4516545239%_
              (lambda (_%g4516745188%_)
                (if (gx#stx-pair? _%g4516745188%_)
                    (let ((_%e4517045191%_ (gx#syntax-e _%g4516745188%_)))
                      (let ((_%hd4517145195%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4517045191%_)))
                            (_%tl4517245198%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4517045191%_))))
                        (if (gx#stx-pair? _%tl4517245198%_)
                            (let ((_%e4517345201%_
                                   (gx#syntax-e _%tl4517245198%_)))
                              (let ((_%hd4517445205%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4517345201%_)))
                                    (_%tl4517545208%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4517345201%_))))
                                (if (gx#stx-pair? _%tl4517545208%_)
                                    (let ((_%e4517645211%_
                                           (gx#syntax-e _%tl4517545208%_)))
                                      (let ((_%hd4517745215%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4517645211%_)))
                                            (_%tl4517845218%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4517645211%_))))
                                        (if (gx#stx-null? _%tl4517845218%_)
                                            ((lambda (_%L45221%_ _%L45223%_)
                                               (if (and (gx#identifier?
                                                         _%L45223%_)
                                                        (gx#identifier?
                                                         _%L45221%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45223%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45221%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4516645184%_
                                                    _%g4516745188%_)))
                                             _%hd4517745215%_
                                             _%hd4517445205%_)
                                            (_%g4516645184%_
                                             _%g4516745188%_))))
                                    (_%g4516645184%_ _%g4516745188%_))))
                            (_%g4516645184%_ _%g4516745188%_))))
                    (_%g4516645184%_ _%g4516745188%_)))))
        (_%g4516545239%_ _%$stx45162%_)))))
