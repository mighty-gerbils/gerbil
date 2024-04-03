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
    (lambda _%$args45368%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45368%_)))
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
    (lambda (_%id45349%_)
      (if (gx#identifier? _%id45349%_)
          (let ((_%t4535145353%_ (gx#syntax-local-value _%id45349%_ false)))
            (if _%t4535145353%_
                (let* ((_%t45357%_ _%t4535145353%_)
                       (_%$e45360%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45357%_))))
                  (if _%$e45360%_
                      _%$e45360%_
                      (let ((_%$e45364%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45357%_))))
                        (if _%$e45364%_
                            _%$e45364%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45357%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45329%_ _%id45331%_)
      (let _%loop45333%_ ((_%t45336%_
                           (gx#syntax-local-value _%id45331%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45336%_))
            (let () _%t45336%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45336%_))
                (let () _%t45336%_)
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45336%_))
                    (let ((__tmp80139
                           (gx#syntax-local-value
                            (let ((__obj80001 _%t45336%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj80001
                                     'gerbil/core/contract~TypeReference#type-reference::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj80001
                                     '1
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                   __obj80001
                                   'identifier)))
                            false)))
                      (declare (not safe))
                      (_%loop45333%_ __tmp80139))
                    (if (let () (declare (not safe)) (not _%t45336%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unresolved type"
                           _%stx45329%_
                           _%id45331%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type; expected class, interface or type reference"
                           _%stx45329%_
                           _%id45331%_
                           _%t45336%_)))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45305%_ _%id45307%_)
      (let _%loop45309%_ ((_%id45312%_ _%id45307%_)
                          (_%t45314%_
                           (gx#syntax-local-value _%id45307%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45314%_))
            (let () _%id45312%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45314%_))
                (let () _%id45312%_)
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45314%_))
                    (let ()
                      (let* ((_%id45322%_
                              (let ((__obj80002 _%t45314%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80002
                                       'gerbil/core/contract~TypeReference#type-reference::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80002
                                       '1
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                     __obj80002
                                     'identifier))))
                             (__tmp80140
                              (gx#syntax-local-value _%id45322%_ false)))
                        (declare (not safe))
                        (_%loop45309%_ _%id45322%_ __tmp80140)))
                    (if (let () (declare (not safe)) (not _%t45314%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unresolved type"
                           _%stx45305%_
                           _%id45312%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type; expected class, interface or type reference"
                           _%stx45305%_
                           _%id45312%_
                           _%t45314%_)))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45292%_ _%id45294%_)
      (let ((_%t45296%_
             (let ()
               (declare (not safe))
               (|gerbil/core/contract~TypeReference[1]#resolve-type|
                _%stx45292%_
                _%id45294%_))))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45296%_))
            (let ((__obj80003 _%t45296%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj80003
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj80003 '12 '#f '#f))
                  (class-slot-ref
                   gerbil/core/mop~MOP-2#class-type-info::t
                   __obj80003
                   'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45296%_))
                (let ((__obj80004 _%t45296%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj80004
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj80004 '4 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj80004
                       'instance-type)))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"unexpected type; expected class, interface or type reference"
                   _%stx45292%_
                   _%id45294%_
                   _%t45296%_)))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45372%_)
      (let* ((_%g4537645394%_
              (lambda (_%g4537745390%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4537745390%_)))
             (_%g4537545449%_
              (lambda (_%g4537745398%_)
                (if (gx#stx-pair? _%g4537745398%_)
                    (let ((_%e4538245401%_ (gx#syntax-e _%g4537745398%_)))
                      (let ((_%hd4538145405%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4538245401%_)))
                            (_%tl4538045408%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4538245401%_))))
                        (if (gx#stx-pair? _%tl4538045408%_)
                            (let ((_%e4538545411%_
                                   (gx#syntax-e _%tl4538045408%_)))
                              (let ((_%hd4538445415%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4538545411%_)))
                                    (_%tl4538345418%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4538545411%_))))
                                (if (gx#stx-pair? _%tl4538345418%_)
                                    (let ((_%e4538845421%_
                                           (gx#syntax-e _%tl4538345418%_)))
                                      (let ((_%hd4538745425%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4538845421%_)))
                                            (_%tl4538645428%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4538845421%_))))
                                        (if (gx#stx-null? _%tl4538645428%_)
                                            ((lambda (_%L45431%_ _%L45433%_)
                                               (if (and (gx#identifier?
                                                         _%L45433%_)
                                                        (gx#identifier?
                                                         _%L45431%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45433%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45431%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4537645394%_
                                                    _%g4537745398%_)))
                                             _%hd4538745425%_
                                             _%hd4538445415%_)
                                            (_%g4537645394%_
                                             _%g4537745398%_))))
                                    (_%g4537645394%_ _%g4537745398%_))))
                            (_%g4537645394%_ _%g4537745398%_))))
                    (_%g4537645394%_ _%g4537745398%_)))))
        (_%g4537545449%_ _%$stx45372%_)))))
