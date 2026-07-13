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
    (lambda _%$args50981%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args50981%_)))
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
    (lambda (_%id50963%_)
      (if (gx#identifier? _%id50963%_)
          (let ((_%$%t5096550967%_ (gx#syntax-local-value _%id50963%_ false)))
            (if _%$%t5096550967%_
                (let* ((_%t50970%_ _%$%t5096550967%_)
                       (_%$e50973%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t50970%_))))
                  (if _%$e50973%_
                      _%$e50973%_
                      (let ((_%$e50977%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t50970%_))))
                        (if _%$e50977%_
                            _%$e50977%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t50970%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx50943%_ _%id50945%_)
      (let _%loop50947%_ ((_%t50950%_
                           (gx#syntax-local-value _%id50945%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t50950%_))
            _%t50950%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t50950%_))
                _%t50950%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t50950%_))
                    (_%loop50947%_
                     (gx#syntax-local-value
                      (let ((__obj102372 _%t50950%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj102372
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj102372
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj102372 'identifier)))
                      false))
                    (if (not _%t50950%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx50943%_
                         _%id50945%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx50943%_
                         _%id50945%_
                         _%t50950%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx50919%_ _%id50921%_)
      (let _%loop50923%_ ((_%id50926%_ _%id50921%_)
                          (_%t50928%_
                           (gx#syntax-local-value _%id50921%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t50928%_))
            _%id50926%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t50928%_))
                _%id50926%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t50928%_))
                    (let ((_%id50936%_
                           (let ((__obj102373 _%t50928%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj102373
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj102373
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj102373
                                  'identifier)))))
                      (_%loop50923%_
                       _%id50936%_
                       (gx#syntax-local-value _%id50936%_ false)))
                    (if (not _%t50928%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx50919%_
                         _%id50926%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx50919%_
                         _%id50926%_
                         _%t50928%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx50906%_ _%id50908%_)
      (let ((_%t50910%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx50906%_
              _%id50908%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t50910%_))
            (let ((__obj102375 _%t50910%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj102375
                     'gerbil/core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj102375 '4 '#f '#f))
                  (unchecked-slot-ref __obj102375 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t50910%_))
                (let ((__obj102374 _%t50910%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj102374
                         'gerbil/core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj102374 '3 '#f '#f))
                      (unchecked-slot-ref __obj102374 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx50906%_
                 _%id50908%_
                 _%t50910%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx50985%_)
      (let* ((_%$%g5098951007%_
              (lambda (_%$%g5099051003%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5099051003%_)))
             (_%$%g5098851062%_
              (lambda (_%$%g5099051011%_)
                (if (gx#stx-pair? _%$%g5099051011%_)
                    (let ((_%$%e5099351014%_ (gx#syntax-e _%$%g5099051011%_)))
                      (let ((_%$%hd5099451018%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5099351014%_)))
                            (_%$%tl5099551021%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5099351014%_))))
                        (if (gx#stx-pair? _%$%tl5099551021%_)
                            (let ((_%$%e5099651024%_
                                   (gx#syntax-e _%$%tl5099551021%_)))
                              (let ((_%$%hd5099751028%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5099651024%_)))
                                    (_%$%tl5099851031%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5099651024%_))))
                                (if (gx#stx-pair? _%$%tl5099851031%_)
                                    (let ((_%$%e5099951034%_
                                           (gx#syntax-e _%$%tl5099851031%_)))
                                      (let ((_%$%hd5100051038%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5099951034%_)))
                                            (_%$%tl5100151041%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5099951034%_))))
                                        (if (gx#stx-null? _%$%tl5100151041%_)
                                            (if (and (gx#identifier?
                                                      _%$%hd5099751028%_)
                                                     (gx#identifier?
                                                      _%$%hd5100051038%_))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'defsyntax)
                                                      (cons _%$%hd5099751028%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'make-type-reference)
                                (cons 'identifier:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _%$%hd5100051038%_
                                                        '()))
                                            '())))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5098951007%_
                                                 _%$%g5099051011%_))
                                            (_%$%g5098951007%_
                                             _%$%g5099051011%_))))
                                    (_%$%g5098951007%_ _%$%g5099051011%_))))
                            (_%$%g5098951007%_ _%$%g5099051011%_))))
                    (_%$%g5098951007%_ _%$%g5099051011%_)))))
        (_%$%g5098851062%_ _%$stx50985%_)))))
