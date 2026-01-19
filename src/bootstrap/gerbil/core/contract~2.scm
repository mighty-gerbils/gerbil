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
    (lambda _%$args48645%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args48645%_)))
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
    (lambda (_%id48626%_)
      (if (gx#identifier? _%id48626%_)
          (let ((_%t4862848630%_ (gx#syntax-local-value _%id48626%_ false)))
            (if _%t4862848630%_
                (let* ((_%t48634%_ _%t4862848630%_)
                       (_%$e48637%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t48634%_))))
                  (if _%$e48637%_
                      _%$e48637%_
                      (let ((_%$e48641%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t48634%_))))
                        (if _%$e48641%_
                            _%$e48641%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t48634%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx48606%_ _%id48608%_)
      (let _%loop48610%_ ((_%t48613%_
                           (gx#syntax-local-value _%id48608%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48613%_))
            _%t48613%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48613%_))
                _%t48613%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t48613%_))
                    (_%loop48610%_
                     (gx#syntax-local-value
                      (let ((__obj92089 _%t48613%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj92089
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj92089
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj92089 'identifier)))
                      false))
                    (if (not _%t48613%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx48606%_
                         _%id48608%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx48606%_
                         _%id48608%_
                         _%t48613%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx48582%_ _%id48584%_)
      (let _%loop48586%_ ((_%id48589%_ _%id48584%_)
                          (_%t48591%_
                           (gx#syntax-local-value _%id48584%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48591%_))
            _%id48589%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48591%_))
                _%id48589%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t48591%_))
                    (let ((_%id48599%_
                           (let ((__obj92090 _%t48591%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj92090
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj92090
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj92090
                                  'identifier)))))
                      (_%loop48586%_
                       _%id48599%_
                       (gx#syntax-local-value _%id48599%_ false)))
                    (if (not _%t48591%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx48582%_
                         _%id48589%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx48582%_
                         _%id48589%_
                         _%t48591%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx48569%_ _%id48571%_)
      (let ((_%t48573%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx48569%_
              _%id48571%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t48573%_))
            (let ((__obj92092 _%t48573%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj92092
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj92092 '3 '#f '#f))
                  (unchecked-slot-ref __obj92092 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t48573%_))
                (let ((__obj92091 _%t48573%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj92091
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj92091 '3 '#f '#f))
                      (unchecked-slot-ref __obj92091 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx48569%_
                 _%id48571%_
                 _%t48573%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx48649%_)
      (let* ((_%g4865348671%_
              (lambda (_%g4865448667%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4865448667%_)))
             (_%g4865248726%_
              (lambda (_%g4865448675%_)
                (if (gx#stx-pair? _%g4865448675%_)
                    (let ((_%e4865748678%_ (gx#syntax-e _%g4865448675%_)))
                      (let ((_%hd4865848682%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4865748678%_)))
                            (_%tl4865948685%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4865748678%_))))
                        (if (gx#stx-pair? _%tl4865948685%_)
                            (let ((_%e4866048688%_
                                   (gx#syntax-e _%tl4865948685%_)))
                              (let ((_%hd4866148692%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4866048688%_)))
                                    (_%tl4866248695%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4866048688%_))))
                                (if (gx#stx-pair? _%tl4866248695%_)
                                    (let ((_%e4866348698%_
                                           (gx#syntax-e _%tl4866248695%_)))
                                      (let ((_%hd4866448702%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4866348698%_)))
                                            (_%tl4866548705%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4866348698%_))))
                                        (if (gx#stx-null? _%tl4866548705%_)
                                            ((lambda (_%L48708%_ _%L48710%_)
                                               (if (and (gx#identifier?
                                                         _%L48710%_)
                                                        (gx#identifier?
                                                         _%L48708%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L48710%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L48708%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4865348671%_
                                                    _%g4865448675%_)))
                                             _%hd4866448702%_
                                             _%hd4866148692%_)
                                            (_%g4865348671%_
                                             _%g4865448675%_))))
                                    (_%g4865348671%_ _%g4865448675%_))))
                            (_%g4865348671%_ _%g4865448675%_))))
                    (_%g4865348671%_ _%g4865448675%_)))))
        (_%g4865248726%_ _%$stx48649%_)))))
