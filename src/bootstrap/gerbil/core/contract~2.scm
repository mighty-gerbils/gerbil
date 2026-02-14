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
    (lambda _%$args59095%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args59095%_)))
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
    (lambda (_%id59077%_)
      (if (gx#identifier? _%id59077%_)
          (let ((_%t5907959081%_ (gx#syntax-local-value _%id59077%_ false)))
            (if _%t5907959081%_
                (let* ((_%t59084%_ _%t5907959081%_)
                       (_%$e59087%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t59084%_))))
                  (if _%$e59087%_
                      _%$e59087%_
                      (let ((_%$e59091%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t59084%_))))
                        (if _%$e59091%_
                            _%$e59091%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t59084%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx59057%_ _%id59059%_)
      (let _%loop59061%_ ((_%t59064%_
                           (gx#syntax-local-value _%id59059%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t59064%_))
            _%t59064%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t59064%_))
                _%t59064%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t59064%_))
                    (_%loop59061%_
                     (gx#syntax-local-value
                      (let ((__obj109028 _%t59064%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj109028
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj109028
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj109028 'identifier)))
                      false))
                    (if (not _%t59064%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx59057%_
                         _%id59059%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx59057%_
                         _%id59059%_
                         _%t59064%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx59033%_ _%id59035%_)
      (let _%loop59037%_ ((_%id59040%_ _%id59035%_)
                          (_%t59042%_
                           (gx#syntax-local-value _%id59035%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t59042%_))
            _%id59040%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t59042%_))
                _%id59040%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t59042%_))
                    (let ((_%id59050%_
                           (let ((__obj109029 _%t59042%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj109029
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj109029
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj109029
                                  'identifier)))))
                      (_%loop59037%_
                       _%id59050%_
                       (gx#syntax-local-value _%id59050%_ false)))
                    (if (not _%t59042%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx59033%_
                         _%id59040%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx59033%_
                         _%id59040%_
                         _%t59042%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx59020%_ _%id59022%_)
      (let ((_%t59024%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx59020%_
              _%id59022%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t59024%_))
            (let ((__obj109031 _%t59024%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj109031
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj109031 '3 '#f '#f))
                  (unchecked-slot-ref __obj109031 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t59024%_))
                (let ((__obj109030 _%t59024%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj109030
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj109030 '3 '#f '#f))
                      (unchecked-slot-ref __obj109030 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx59020%_
                 _%id59022%_
                 _%t59024%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx59099%_)
      (let* ((_%g5910359121%_
              (lambda (_%g5910459117%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5910459117%_)))
             (_%g5910259176%_
              (lambda (_%g5910459125%_)
                (if (gx#stx-pair? _%g5910459125%_)
                    (let ((_%e5910759128%_ (gx#syntax-e _%g5910459125%_)))
                      (let ((_%hd5910859132%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5910759128%_)))
                            (_%tl5910959135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5910759128%_))))
                        (if (gx#stx-pair? _%tl5910959135%_)
                            (let ((_%e5911059138%_
                                   (gx#syntax-e _%tl5910959135%_)))
                              (let ((_%hd5911159142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5911059138%_)))
                                    (_%tl5911259145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5911059138%_))))
                                (if (gx#stx-pair? _%tl5911259145%_)
                                    (let ((_%e5911359148%_
                                           (gx#syntax-e _%tl5911259145%_)))
                                      (let ((_%hd5911459152%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5911359148%_)))
                                            (_%tl5911559155%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5911359148%_))))
                                        (if (gx#stx-null? _%tl5911559155%_)
                                            ((lambda (_%g5910559158%_
                                                      _%g5910659160%_)
                                               (if (and (gx#identifier?
                                                         _%g5910659160%_)
                                                        (gx#identifier?
                                                         _%g5910559158%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g5910659160%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g5910559158%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g5910359121%_
                                                    _%g5910459125%_)))
                                             _%hd5911459152%_
                                             _%hd5911159142%_)
                                            (_%g5910359121%_
                                             _%g5910459125%_))))
                                    (_%g5910359121%_ _%g5910459125%_))))
                            (_%g5910359121%_ _%g5910459125%_))))
                    (_%g5910359121%_ _%g5910459125%_)))))
        (_%g5910259176%_ _%$stx59099%_)))))
