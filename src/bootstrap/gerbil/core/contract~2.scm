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
    (lambda _%$args232910%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args232910%_)))
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
    (lambda (_%id232892%_)
      (if (gx#identifier? _%id232892%_)
          (let ((_%t232894232896%_ (gx#syntax-local-value _%id232892%_ false)))
            (if _%t232894232896%_
                (let* ((_%t232899%_ _%t232894232896%_)
                       (_%$e232902%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t232899%_))))
                  (if _%$e232902%_
                      _%$e232902%_
                      (let ((_%$e232906%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t232899%_))))
                        (if _%$e232906%_
                            _%$e232906%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t232899%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx232872%_ _%id232874%_)
      (let _%loop232876%_ ((_%t232879%_
                            (gx#syntax-local-value _%id232874%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t232879%_))
            _%t232879%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t232879%_))
                _%t232879%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t232879%_))
                    (_%loop232876%_
                     (gx#syntax-local-value
                      (let ((__obj282843 _%t232879%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj282843
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj282843
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj282843 'identifier)))
                      false))
                    (if (not _%t232879%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx232872%_
                         _%id232874%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx232872%_
                         _%id232874%_
                         _%t232879%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx232848%_ _%id232850%_)
      (let _%loop232852%_ ((_%id232855%_ _%id232850%_)
                           (_%t232857%_
                            (gx#syntax-local-value _%id232850%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t232857%_))
            _%id232855%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t232857%_))
                _%id232855%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t232857%_))
                    (let ((_%id232865%_
                           (let ((__obj282844 _%t232857%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj282844
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj282844
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj282844
                                  'identifier)))))
                      (_%loop232852%_
                       _%id232865%_
                       (gx#syntax-local-value _%id232865%_ false)))
                    (if (not _%t232857%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx232848%_
                         _%id232855%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx232848%_
                         _%id232855%_
                         _%t232857%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx232835%_ _%id232837%_)
      (let ((_%t232839%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx232835%_
              _%id232837%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t232839%_))
            (let ((__obj282846 _%t232839%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj282846
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj282846 '3 '#f '#f))
                  (unchecked-slot-ref __obj282846 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t232839%_))
                (let ((__obj282845 _%t232839%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj282845
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj282845 '3 '#f '#f))
                      (unchecked-slot-ref __obj282845 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx232835%_
                 _%id232837%_
                 _%t232839%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx232914%_)
      (let* ((_%g232918232936%_
              (lambda (_%g232919232932%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g232919232932%_)))
             (_%g232917232991%_
              (lambda (_%g232919232940%_)
                (if (gx#stx-pair? _%g232919232940%_)
                    (let ((_%e232922232943%_ (gx#syntax-e _%g232919232940%_)))
                      (let ((_%hd232923232947%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232922232943%_)))
                            (_%tl232924232950%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232922232943%_))))
                        (if (gx#stx-pair? _%tl232924232950%_)
                            (let ((_%e232925232953%_
                                   (gx#syntax-e _%tl232924232950%_)))
                              (let ((_%hd232926232957%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232925232953%_)))
                                    (_%tl232927232960%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232925232953%_))))
                                (if (gx#stx-pair? _%tl232927232960%_)
                                    (let ((_%e232928232963%_
                                           (gx#syntax-e _%tl232927232960%_)))
                                      (let ((_%hd232929232967%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232928232963%_)))
                                            (_%tl232930232970%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232928232963%_))))
                                        (if (gx#stx-null? _%tl232930232970%_)
                                            ((lambda (_%g232920232973%_
                                                      _%g232921232975%_)
                                               (if (and (gx#identifier?
                                                         _%g232921232975%_)
                                                        (gx#identifier?
                                                         _%g232920232973%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g232921232975%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g232920232973%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232918232936%_
                                                    _%g232919232940%_)))
                                             _%hd232929232967%_
                                             _%hd232926232957%_)
                                            (_%g232918232936%_
                                             _%g232919232940%_))))
                                    (_%g232918232936%_ _%g232919232940%_))))
                            (_%g232918232936%_ _%g232919232940%_))))
                    (_%g232918232936%_ _%g232919232940%_)))))
        (_%g232917232991%_ _%$stx232914%_)))))
