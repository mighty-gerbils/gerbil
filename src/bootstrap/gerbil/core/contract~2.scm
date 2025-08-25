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
    (lambda _%$args48220%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args48220%_)))
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
    (lambda (_%id48201%_)
      (if (gx#identifier? _%id48201%_)
          (let ((_%t4820348205%_ (gx#syntax-local-value _%id48201%_ false)))
            (if _%t4820348205%_
                (let* ((_%t48209%_ _%t4820348205%_)
                       (_%$e48212%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t48209%_))))
                  (if _%$e48212%_
                      _%$e48212%_
                      (let ((_%$e48216%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t48209%_))))
                        (if _%$e48216%_
                            _%$e48216%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t48209%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx48181%_ _%id48183%_)
      (let _%loop48185%_ ((_%t48188%_
                           (gx#syntax-local-value _%id48183%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48188%_))
            _%t48188%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48188%_))
                _%t48188%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t48188%_))
                    (_%loop48185%_
                     (gx#syntax-local-value
                      (let ((__obj91273 _%t48188%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj91273
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj91273
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj91273 'identifier)))
                      false))
                    (if (not _%t48188%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx48181%_
                         _%id48183%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx48181%_
                         _%id48183%_
                         _%t48188%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx48157%_ _%id48159%_)
      (let _%loop48161%_ ((_%id48164%_ _%id48159%_)
                          (_%t48166%_
                           (gx#syntax-local-value _%id48159%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48166%_))
            _%id48164%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48166%_))
                _%id48164%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t48166%_))
                    (let ((_%id48174%_
                           (let ((__obj91274 _%t48166%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj91274
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj91274
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj91274
                                  'identifier)))))
                      (_%loop48161%_
                       _%id48174%_
                       (gx#syntax-local-value _%id48174%_ false)))
                    (if (not _%t48166%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx48157%_
                         _%id48164%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx48157%_
                         _%id48164%_
                         _%t48166%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx48144%_ _%id48146%_)
      (let ((_%t48148%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx48144%_
              _%id48146%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48148%_))
            (let ((__obj91276 _%t48148%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj91276
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj91276 '12 '#f '#f))
                  (unchecked-slot-ref __obj91276 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48148%_))
                (let ((__obj91275 _%t48148%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj91275
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj91275 '7 '#f '#f))
                      (unchecked-slot-ref __obj91275 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx48144%_
                 _%id48146%_
                 _%t48148%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx48224%_)
      (let* ((_%g4822848246%_
              (lambda (_%g4822948242%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4822948242%_)))
             (_%g4822748301%_
              (lambda (_%g4822948250%_)
                (if (gx#stx-pair? _%g4822948250%_)
                    (let ((_%e4823248253%_ (gx#syntax-e _%g4822948250%_)))
                      (let ((_%hd4823348257%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4823248253%_)))
                            (_%tl4823448260%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4823248253%_))))
                        (if (gx#stx-pair? _%tl4823448260%_)
                            (let ((_%e4823548263%_
                                   (gx#syntax-e _%tl4823448260%_)))
                              (let ((_%hd4823648267%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4823548263%_)))
                                    (_%tl4823748270%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4823548263%_))))
                                (if (gx#stx-pair? _%tl4823748270%_)
                                    (let ((_%e4823848273%_
                                           (gx#syntax-e _%tl4823748270%_)))
                                      (let ((_%hd4823948277%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4823848273%_)))
                                            (_%tl4824048280%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4823848273%_))))
                                        (if (gx#stx-null? _%tl4824048280%_)
                                            ((lambda (_%L48283%_ _%L48285%_)
                                               (if (and (gx#identifier?
                                                         _%L48285%_)
                                                        (gx#identifier?
                                                         _%L48283%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L48285%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L48283%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4822848246%_
                                                    _%g4822948250%_)))
                                             _%hd4823948277%_
                                             _%hd4823648267%_)
                                            (_%g4822848246%_
                                             _%g4822948250%_))))
                                    (_%g4822848246%_ _%g4822948250%_))))
                            (_%g4822848246%_ _%g4822948250%_))))
                    (_%g4822848246%_ _%g4822948250%_)))))
        (_%g4822748301%_ _%$stx48224%_)))))
