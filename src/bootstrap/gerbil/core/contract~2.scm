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
    (lambda _%$args45313%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45313%_)))
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
    (lambda (_%id45294%_)
      (if (gx#identifier? _%id45294%_)
          (let ((_%t4529645298%_ (gx#syntax-local-value _%id45294%_ false)))
            (if _%t4529645298%_
                (let* ((_%t45302%_ _%t4529645298%_)
                       (_%$e45305%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45302%_))))
                  (if _%$e45305%_
                      _%$e45305%_
                      (let ((_%$e45309%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45302%_))))
                        (if _%$e45309%_
                            _%$e45309%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45302%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45274%_ _%id45276%_)
      (let _%loop45278%_ ((_%t45281%_
                           (gx#syntax-local-value _%id45276%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45281%_))
            (let () _%t45281%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45281%_))
                (let () _%t45281%_)
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45281%_))
                    (let ()
                      (let ((__tmp80013
                             (gx#syntax-local-value
                              (let ((__obj79871 _%t45281%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79871
                                       'gerbil/core/contract~TypeReference#type-reference::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79871
                                       '1
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                     __obj79871
                                     'identifier)))
                              false)))
                        (declare (not safe))
                        (_%loop45278%_ __tmp80013)))
                    (if (let () (declare (not safe)) (not _%t45281%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unresolved type"
                           _%stx45274%_
                           _%id45276%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type; expected class, interface or type reference"
                           _%stx45274%_
                           _%id45276%_
                           _%t45281%_)))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45261%_ _%id45263%_)
      (let ((_%t45265%_
             (let ()
               (declare (not safe))
               (|gerbil/core/contract~TypeReference[1]#resolve-type|
                _%stx45261%_
                _%id45263%_))))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45265%_))
            (let ()
              (let ((__obj79872 _%t45265%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj79872
                       'gerbil.core#class-type-info::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref __obj79872 '12 '#f '#f))
                    (class-slot-ref
                     gerbil/core/mop~MOP-2#class-type-info::t
                     __obj79872
                     'type-descriptor))))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45265%_))
                (let ()
                  (let ((__obj79873 _%t45265%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj79873
                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj79873 '4 '#f '#f))
                        (class-slot-ref
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         __obj79873
                         'instance-type))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"unexpected type; expected class, interface or type reference"
                   _%stx45261%_
                   _%id45263%_
                   _%t45265%_)))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45317%_)
      (let* ((_%g4532145339%_
              (lambda (_%g4532245335%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4532245335%_)))
             (_%g4532045394%_
              (lambda (_%g4532245343%_)
                (if (gx#stx-pair? _%g4532245343%_)
                    (let ((_%e4532745346%_ (gx#syntax-e _%g4532245343%_)))
                      (let ((_%hd4532645350%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4532745346%_)))
                            (_%tl4532545353%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4532745346%_))))
                        (if (gx#stx-pair? _%tl4532545353%_)
                            (let ((_%e4533045356%_
                                   (gx#syntax-e _%tl4532545353%_)))
                              (let ((_%hd4532945360%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4533045356%_)))
                                    (_%tl4532845363%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4533045356%_))))
                                (if (gx#stx-pair? _%tl4532845363%_)
                                    (let ((_%e4533345366%_
                                           (gx#syntax-e _%tl4532845363%_)))
                                      (let ((_%hd4533245370%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4533345366%_)))
                                            (_%tl4533145373%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4533345366%_))))
                                        (if (gx#stx-null? _%tl4533145373%_)
                                            ((lambda (_%L45376%_ _%L45378%_)
                                               (if (and (gx#identifier?
                                                         _%L45378%_)
                                                        (gx#identifier?
                                                         _%L45376%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45378%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45376%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4532145339%_
                                                    _%g4532245343%_)))
                                             _%hd4533245370%_
                                             _%hd4532945360%_)
                                            (_%g4532145339%_
                                             _%g4532245343%_))))
                                    (_%g4532145339%_ _%g4532245343%_))))
                            (_%g4532145339%_ _%g4532245343%_))))
                    (_%g4532145339%_ _%g4532245343%_)))))
        (_%g4532045394%_ _%$stx45317%_)))))
