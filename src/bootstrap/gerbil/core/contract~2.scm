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
    (lambda _%$args45135%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45135%_)))
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
    (lambda (_%id45116%_)
      (if (gx#identifier? _%id45116%_)
          (let ((_%t4511845120%_ (gx#syntax-local-value _%id45116%_ false)))
            (if _%t4511845120%_
                (let* ((_%t45124%_ _%t4511845120%_)
                       (_%$e45127%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45124%_))))
                  (if _%$e45127%_
                      _%$e45127%_
                      (let ((_%$e45131%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45124%_))))
                        (if _%$e45131%_
                            _%$e45131%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45124%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45096%_ _%id45098%_)
      (let _%loop45100%_ ((_%t45103%_
                           (gx#syntax-local-value _%id45098%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45103%_))
            _%t45103%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45103%_))
                _%t45103%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45103%_))
                    (_%loop45100%_
                     (gx#syntax-local-value
                      (let ((__obj84813 _%t45103%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84813
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84813
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj84813 'identifier)))
                      false))
                    (if (not _%t45103%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45096%_
                         _%id45098%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45096%_
                         _%id45098%_
                         _%t45103%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45072%_ _%id45074%_)
      (let _%loop45076%_ ((_%id45079%_ _%id45074%_)
                          (_%t45081%_
                           (gx#syntax-local-value _%id45074%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45081%_))
            _%id45079%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45081%_))
                _%id45079%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45081%_))
                    (let ((_%id45089%_
                           (let ((__obj84814 _%t45081%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj84814
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj84814
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj84814
                                  'identifier)))))
                      (_%loop45076%_
                       _%id45089%_
                       (gx#syntax-local-value _%id45089%_ false)))
                    (if (not _%t45081%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45072%_
                         _%id45079%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45072%_
                         _%id45079%_
                         _%t45081%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45059%_ _%id45061%_)
      (let ((_%t45063%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx45059%_
              _%id45061%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45063%_))
            (let ((__obj84816 _%t45063%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj84816
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj84816 '12 '#f '#f))
                  (unchecked-slot-ref __obj84816 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45063%_))
                (let ((__obj84815 _%t45063%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj84815
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj84815 '7 '#f '#f))
                      (unchecked-slot-ref __obj84815 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx45059%_
                 _%id45061%_
                 _%t45063%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45139%_)
      (let* ((_%g4514345161%_
              (lambda (_%g4514445157%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4514445157%_)))
             (_%g4514245216%_
              (lambda (_%g4514445165%_)
                (if (gx#stx-pair? _%g4514445165%_)
                    (let ((_%e4514745168%_ (gx#syntax-e _%g4514445165%_)))
                      (let ((_%hd4514845172%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4514745168%_)))
                            (_%tl4514945175%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4514745168%_))))
                        (if (gx#stx-pair? _%tl4514945175%_)
                            (let ((_%e4515045178%_
                                   (gx#syntax-e _%tl4514945175%_)))
                              (let ((_%hd4515145182%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4515045178%_)))
                                    (_%tl4515245185%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4515045178%_))))
                                (if (gx#stx-pair? _%tl4515245185%_)
                                    (let ((_%e4515345188%_
                                           (gx#syntax-e _%tl4515245185%_)))
                                      (let ((_%hd4515445192%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4515345188%_)))
                                            (_%tl4515545195%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4515345188%_))))
                                        (if (gx#stx-null? _%tl4515545195%_)
                                            ((lambda (_%L45198%_ _%L45200%_)
                                               (if (and (gx#identifier?
                                                         _%L45200%_)
                                                        (gx#identifier?
                                                         _%L45198%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45200%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45198%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4514345161%_
                                                    _%g4514445165%_)))
                                             _%hd4515445192%_
                                             _%hd4515145182%_)
                                            (_%g4514345161%_
                                             _%g4514445165%_))))
                                    (_%g4514345161%_ _%g4514445165%_))))
                            (_%g4514345161%_ _%g4514445165%_))))
                    (_%g4514345161%_ _%g4514445165%_)))))
        (_%g4514245216%_ _%$stx45139%_)))))
