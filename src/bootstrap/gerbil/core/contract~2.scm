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
    (lambda _%$args49305%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49305%_)))
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
    (lambda (_%id49287%_)
      (if (gx#identifier? _%id49287%_)
          (let ((_%t4928949291%_ (gx#syntax-local-value _%id49287%_ false)))
            (if _%t4928949291%_
                (let* ((_%t49294%_ _%t4928949291%_)
                       (_%$e49297%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49294%_))))
                  (if _%$e49297%_
                      _%$e49297%_
                      (let ((_%$e49301%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49294%_))))
                        (if _%$e49301%_
                            _%$e49301%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49294%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49267%_ _%id49269%_)
      (let _%loop49271%_ ((_%t49274%_
                           (gx#syntax-local-value _%id49269%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49274%_))
            _%t49274%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49274%_))
                _%t49274%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49274%_))
                    (_%loop49271%_
                     (gx#syntax-local-value
                      (let ((__obj96982 _%t49274%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj96982
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj96982
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj96982 'identifier)))
                      false))
                    (if (not _%t49274%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49267%_
                         _%id49269%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49267%_
                         _%id49269%_
                         _%t49274%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49243%_ _%id49245%_)
      (let _%loop49247%_ ((_%id49250%_ _%id49245%_)
                          (_%t49252%_
                           (gx#syntax-local-value _%id49245%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49252%_))
            _%id49250%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49252%_))
                _%id49250%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49252%_))
                    (let ((_%id49260%_
                           (let ((__obj96983 _%t49252%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj96983
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj96983
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj96983
                                  'identifier)))))
                      (_%loop49247%_
                       _%id49260%_
                       (gx#syntax-local-value _%id49260%_ false)))
                    (if (not _%t49252%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49243%_
                         _%id49250%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49243%_
                         _%id49250%_
                         _%t49252%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49230%_ _%id49232%_)
      (let ((_%t49234%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49230%_
              _%id49232%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49234%_))
            (let ((__obj96985 _%t49234%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj96985
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj96985 '3 '#f '#f))
                  (unchecked-slot-ref __obj96985 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49234%_))
                (let ((__obj96984 _%t49234%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj96984
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj96984 '3 '#f '#f))
                      (unchecked-slot-ref __obj96984 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49230%_
                 _%id49232%_
                 _%t49234%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49309%_)
      (let* ((_%g4931349331%_
              (lambda (_%g4931449327%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4931449327%_)))
             (_%g4931249386%_
              (lambda (_%g4931449335%_)
                (if (gx#stx-pair? _%g4931449335%_)
                    (let ((_%e4931749338%_ (gx#syntax-e _%g4931449335%_)))
                      (let ((_%hd4931849342%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4931749338%_)))
                            (_%tl4931949345%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4931749338%_))))
                        (if (gx#stx-pair? _%tl4931949345%_)
                            (let ((_%e4932049348%_
                                   (gx#syntax-e _%tl4931949345%_)))
                              (let ((_%hd4932149352%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4932049348%_)))
                                    (_%tl4932249355%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4932049348%_))))
                                (if (gx#stx-pair? _%tl4932249355%_)
                                    (let ((_%e4932349358%_
                                           (gx#syntax-e _%tl4932249355%_)))
                                      (let ((_%hd4932449362%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4932349358%_)))
                                            (_%tl4932549365%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4932349358%_))))
                                        (if (gx#stx-null? _%tl4932549365%_)
                                            ((lambda (_%g4931549368%_
                                                      _%g4931649370%_)
                                               (if (and (gx#identifier?
                                                         _%g4931649370%_)
                                                        (gx#identifier?
                                                         _%g4931549368%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g4931649370%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g4931549368%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4931349331%_
                                                    _%g4931449335%_)))
                                             _%hd4932449362%_
                                             _%hd4932149352%_)
                                            (_%g4931349331%_
                                             _%g4931449335%_))))
                                    (_%g4931349331%_ _%g4931449335%_))))
                            (_%g4931349331%_ _%g4931449335%_))))
                    (_%g4931349331%_ _%g4931449335%_)))))
        (_%g4931249386%_ _%$stx49309%_)))))
