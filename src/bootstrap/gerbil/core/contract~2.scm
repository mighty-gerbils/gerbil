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
    (lambda _%$args49542%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49542%_)))
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
    (lambda (_%id49524%_)
      (if (gx#identifier? _%id49524%_)
          (let ((_%t4952649528%_ (gx#syntax-local-value _%id49524%_ false)))
            (if _%t4952649528%_
                (let* ((_%t49531%_ _%t4952649528%_)
                       (_%$e49534%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49531%_))))
                  (if _%$e49534%_
                      _%$e49534%_
                      (let ((_%$e49538%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49531%_))))
                        (if _%$e49538%_
                            _%$e49538%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49531%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49504%_ _%id49506%_)
      (let _%loop49508%_ ((_%t49511%_
                           (gx#syntax-local-value _%id49506%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49511%_))
            _%t49511%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49511%_))
                _%t49511%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49511%_))
                    (_%loop49508%_
                     (gx#syntax-local-value
                      (let ((__obj97533 _%t49511%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj97533
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj97533
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj97533 'identifier)))
                      false))
                    (if (not _%t49511%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49504%_
                         _%id49506%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49504%_
                         _%id49506%_
                         _%t49511%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49480%_ _%id49482%_)
      (let _%loop49484%_ ((_%id49487%_ _%id49482%_)
                          (_%t49489%_
                           (gx#syntax-local-value _%id49482%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49489%_))
            _%id49487%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49489%_))
                _%id49487%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49489%_))
                    (let ((_%id49497%_
                           (let ((__obj97534 _%t49489%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj97534
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj97534
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj97534
                                  'identifier)))))
                      (_%loop49484%_
                       _%id49497%_
                       (gx#syntax-local-value _%id49497%_ false)))
                    (if (not _%t49489%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49480%_
                         _%id49487%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49480%_
                         _%id49487%_
                         _%t49489%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49467%_ _%id49469%_)
      (let ((_%t49471%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49467%_
              _%id49469%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49471%_))
            (let ((__obj97536 _%t49471%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj97536
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj97536 '3 '#f '#f))
                  (unchecked-slot-ref __obj97536 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49471%_))
                (let ((__obj97535 _%t49471%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj97535
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj97535 '3 '#f '#f))
                      (unchecked-slot-ref __obj97535 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49467%_
                 _%id49469%_
                 _%t49471%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49546%_)
      (let* ((_%g4955049568%_
              (lambda (_%g4955149564%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4955149564%_)))
             (_%g4954949623%_
              (lambda (_%g4955149572%_)
                (if (gx#stx-pair? _%g4955149572%_)
                    (let ((_%e4955449575%_ (gx#syntax-e _%g4955149572%_)))
                      (let ((_%hd4955549579%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4955449575%_)))
                            (_%tl4955649582%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4955449575%_))))
                        (if (gx#stx-pair? _%tl4955649582%_)
                            (let ((_%e4955749585%_
                                   (gx#syntax-e _%tl4955649582%_)))
                              (let ((_%hd4955849589%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4955749585%_)))
                                    (_%tl4955949592%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4955749585%_))))
                                (if (gx#stx-pair? _%tl4955949592%_)
                                    (let ((_%e4956049595%_
                                           (gx#syntax-e _%tl4955949592%_)))
                                      (let ((_%hd4956149599%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4956049595%_)))
                                            (_%tl4956249602%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4956049595%_))))
                                        (if (gx#stx-null? _%tl4956249602%_)
                                            ((lambda (_%g4955249605%_
                                                      _%g4955349607%_)
                                               (if (and (gx#identifier?
                                                         _%g4955349607%_)
                                                        (gx#identifier?
                                                         _%g4955249605%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g4955349607%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g4955249605%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4955049568%_
                                                    _%g4955149572%_)))
                                             _%hd4956149599%_
                                             _%hd4955849589%_)
                                            (_%g4955049568%_
                                             _%g4955149572%_))))
                                    (_%g4955049568%_ _%g4955149572%_))))
                            (_%g4955049568%_ _%g4955149572%_))))
                    (_%g4955049568%_ _%g4955149572%_)))))
        (_%g4954949623%_ _%$stx49546%_)))))
