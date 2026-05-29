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
    (lambda _%$args49937%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49937%_)))
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
    (lambda (_%id49919%_)
      (if (gx#identifier? _%id49919%_)
          (let ((_%t4992149923%_ (gx#syntax-local-value _%id49919%_ false)))
            (if _%t4992149923%_
                (let* ((_%t49926%_ _%t4992149923%_)
                       (_%$e49929%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49926%_))))
                  (if _%$e49929%_
                      _%$e49929%_
                      (let ((_%$e49933%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49926%_))))
                        (if _%$e49933%_
                            _%$e49933%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49926%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49899%_ _%id49901%_)
      (let _%loop49903%_ ((_%t49906%_
                           (gx#syntax-local-value _%id49901%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49906%_))
            _%t49906%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49906%_))
                _%t49906%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49906%_))
                    (_%loop49903%_
                     (gx#syntax-local-value
                      (let ((__obj101129 _%t49906%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj101129
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj101129
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj101129 'identifier)))
                      false))
                    (if (not _%t49906%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49899%_
                         _%id49901%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49899%_
                         _%id49901%_
                         _%t49906%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49875%_ _%id49877%_)
      (let _%loop49879%_ ((_%id49882%_ _%id49877%_)
                          (_%t49884%_
                           (gx#syntax-local-value _%id49877%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49884%_))
            _%id49882%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49884%_))
                _%id49882%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49884%_))
                    (let ((_%id49892%_
                           (let ((__obj101130 _%t49884%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj101130
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj101130
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj101130
                                  'identifier)))))
                      (_%loop49879%_
                       _%id49892%_
                       (gx#syntax-local-value _%id49892%_ false)))
                    (if (not _%t49884%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49875%_
                         _%id49882%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49875%_
                         _%id49882%_
                         _%t49884%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49862%_ _%id49864%_)
      (let ((_%t49866%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49862%_
              _%id49864%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49866%_))
            (let ((__obj101132 _%t49866%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj101132
                     'gerbil/core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj101132 '4 '#f '#f))
                  (unchecked-slot-ref __obj101132 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49866%_))
                (let ((__obj101131 _%t49866%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj101131
                         'gerbil/core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj101131 '3 '#f '#f))
                      (unchecked-slot-ref __obj101131 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49862%_
                 _%id49864%_
                 _%t49866%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49941%_)
      (let* ((_%g4994549963%_
              (lambda (_%g4994649959%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4994649959%_)))
             (_%g4994450018%_
              (lambda (_%g4994649967%_)
                (if (gx#stx-pair? _%g4994649967%_)
                    (let ((_%e4994949970%_ (gx#syntax-e _%g4994649967%_)))
                      (let ((_%hd4995049974%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4994949970%_)))
                            (_%tl4995149977%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4994949970%_))))
                        (if (gx#stx-pair? _%tl4995149977%_)
                            (let ((_%e4995249980%_
                                   (gx#syntax-e _%tl4995149977%_)))
                              (let ((_%hd4995349984%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4995249980%_)))
                                    (_%tl4995449987%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4995249980%_))))
                                (if (gx#stx-pair? _%tl4995449987%_)
                                    (let ((_%e4995549990%_
                                           (gx#syntax-e _%tl4995449987%_)))
                                      (let ((_%hd4995649994%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4995549990%_)))
                                            (_%tl4995749997%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4995549990%_))))
                                        (if (gx#stx-null? _%tl4995749997%_)
                                            (if (and (gx#identifier?
                                                      _%hd4995349984%_)
                                                     (gx#identifier?
                                                      _%hd4995649994%_))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'defsyntax)
                                                      (cons _%hd4995349984%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'make-type-reference)
                                (cons 'identifier:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _%hd4995649994%_ '()))
                                            '())))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4994549963%_
                                                 _%g4994649967%_))
                                            (_%g4994549963%_
                                             _%g4994649967%_))))
                                    (_%g4994549963%_ _%g4994649967%_))))
                            (_%g4994549963%_ _%g4994649967%_))))
                    (_%g4994549963%_ _%g4994649967%_)))))
        (_%g4994450018%_ _%$stx49941%_)))))
