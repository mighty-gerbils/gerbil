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
    (lambda _%$args49890%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args49890%_)))
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
    (lambda (_%id49872%_)
      (if (gx#identifier? _%id49872%_)
          (let ((_%t4987449876%_ (gx#syntax-local-value _%id49872%_ false)))
            (if _%t4987449876%_
                (let* ((_%t49879%_ _%t4987449876%_)
                       (_%$e49882%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t49879%_))))
                  (if _%$e49882%_
                      _%$e49882%_
                      (let ((_%$e49886%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t49879%_))))
                        (if _%$e49886%_
                            _%$e49886%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t49879%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49852%_ _%id49854%_)
      (let _%loop49856%_ ((_%t49859%_
                           (gx#syntax-local-value _%id49854%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49859%_))
            _%t49859%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49859%_))
                _%t49859%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49859%_))
                    (_%loop49856%_
                     (gx#syntax-local-value
                      (let ((__obj100017 _%t49859%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj100017
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj100017
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj100017 'identifier)))
                      false))
                    (if (not _%t49859%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49852%_
                         _%id49854%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49852%_
                         _%id49854%_
                         _%t49859%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49828%_ _%id49830%_)
      (let _%loop49832%_ ((_%id49835%_ _%id49830%_)
                          (_%t49837%_
                           (gx#syntax-local-value _%id49830%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49837%_))
            _%id49835%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49837%_))
                _%id49835%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49837%_))
                    (let ((_%id49845%_
                           (let ((__obj100018 _%t49837%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj100018
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj100018
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj100018
                                  'identifier)))))
                      (_%loop49832%_
                       _%id49845%_
                       (gx#syntax-local-value _%id49845%_ false)))
                    (if (not _%t49837%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49828%_
                         _%id49835%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49828%_
                         _%id49835%_
                         _%t49837%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49815%_ _%id49817%_)
      (let ((_%t49819%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49815%_
              _%id49817%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49819%_))
            (let ((__obj100020 _%t49819%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj100020
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj100020 '3 '#f '#f))
                  (unchecked-slot-ref __obj100020 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49819%_))
                (let ((__obj100019 _%t49819%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj100019
                         'gerbil.core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj100019 '3 '#f '#f))
                      (unchecked-slot-ref __obj100019 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49815%_
                 _%id49817%_
                 _%t49819%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx49894%_)
      (let* ((_%g4989849916%_
              (lambda (_%g4989949912%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4989949912%_)))
             (_%g4989749971%_
              (lambda (_%g4989949920%_)
                (if (gx#stx-pair? _%g4989949920%_)
                    (let ((_%e4990249923%_ (gx#syntax-e _%g4989949920%_)))
                      (let ((_%hd4990349927%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4990249923%_)))
                            (_%tl4990449930%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4990249923%_))))
                        (if (gx#stx-pair? _%tl4990449930%_)
                            (let ((_%e4990549933%_
                                   (gx#syntax-e _%tl4990449930%_)))
                              (let ((_%hd4990649937%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4990549933%_)))
                                    (_%tl4990749940%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4990549933%_))))
                                (if (gx#stx-pair? _%tl4990749940%_)
                                    (let ((_%e4990849943%_
                                           (gx#syntax-e _%tl4990749940%_)))
                                      (let ((_%hd4990949947%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4990849943%_)))
                                            (_%tl4991049950%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4990849943%_))))
                                        (if (gx#stx-null? _%tl4991049950%_)
                                            ((lambda (_%g4990049953%_
                                                      _%g4990149955%_)
                                               (if (and (gx#identifier?
                                                         _%g4990149955%_)
                                                        (gx#identifier?
                                                         _%g4990049953%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g4990149955%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%g4990049953%_
                                                           '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4989849916%_
                                                    _%g4989949920%_)))
                                             _%hd4990949947%_
                                             _%hd4990649937%_)
                                            (_%g4989849916%_
                                             _%g4989949920%_))))
                                    (_%g4989849916%_ _%g4989949920%_))))
                            (_%g4989849916%_ _%g4989949920%_))))
                    (_%g4989849916%_ _%g4989949920%_)))))
        (_%g4989749971%_ _%$stx49894%_)))))
