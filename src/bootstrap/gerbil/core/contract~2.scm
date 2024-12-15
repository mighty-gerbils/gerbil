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
    (lambda _%$args45137%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args45137%_)))
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
    (lambda (_%id45118%_)
      (if (gx#identifier? _%id45118%_)
          (let ((_%t4512045122%_ (gx#syntax-local-value _%id45118%_ false)))
            (if _%t4512045122%_
                (let* ((_%t45126%_ _%t4512045122%_)
                       (_%$e45129%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t45126%_))))
                  (if _%$e45129%_
                      _%$e45129%_
                      (let ((_%$e45133%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t45126%_))))
                        (if _%$e45133%_
                            _%$e45133%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t45126%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx45098%_ _%id45100%_)
      (let _%loop45102%_ ((_%t45105%_
                           (gx#syntax-local-value _%id45100%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45105%_))
            _%t45105%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45105%_))
                _%t45105%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45105%_))
                    (_%loop45102%_
                     (gx#syntax-local-value
                      (let ((__obj84723 _%t45105%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84723
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84723
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj84723 'identifier)))
                      false))
                    (if (not _%t45105%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45098%_
                         _%id45100%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45098%_
                         _%id45100%_
                         _%t45105%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx45074%_ _%id45076%_)
      (let _%loop45078%_ ((_%id45081%_ _%id45076%_)
                          (_%t45083%_
                           (gx#syntax-local-value _%id45076%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45083%_))
            _%id45081%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45083%_))
                _%id45081%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t45083%_))
                    (let ((_%id45091%_
                           (let ((__obj84724 _%t45083%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj84724
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj84724
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj84724
                                  'identifier)))))
                      (_%loop45078%_
                       _%id45091%_
                       (gx#syntax-local-value _%id45091%_ false)))
                    (if (not _%t45083%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx45074%_
                         _%id45081%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx45074%_
                         _%id45081%_
                         _%t45083%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx45061%_ _%id45063%_)
      (let ((_%t45065%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx45061%_
              _%id45063%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t45065%_))
            (let ((__obj84726 _%t45065%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj84726
                     'gerbil.core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj84726 '12 '#f '#f))
                  (unchecked-slot-ref __obj84726 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t45065%_))
                (let ((__obj84725 _%t45065%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj84725
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj84725 '5 '#f '#f))
                      (unchecked-slot-ref __obj84725 'instance-type)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx45061%_
                 _%id45063%_
                 _%t45065%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx45141%_)
      (let* ((_%g4514545163%_
              (lambda (_%g4514645159%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4514645159%_)))
             (_%g4514445218%_
              (lambda (_%g4514645167%_)
                (if (gx#stx-pair? _%g4514645167%_)
                    (let ((_%e4514945170%_ (gx#syntax-e _%g4514645167%_)))
                      (let ((_%hd4515045174%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4514945170%_)))
                            (_%tl4515145177%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4514945170%_))))
                        (if (gx#stx-pair? _%tl4515145177%_)
                            (let ((_%e4515245180%_
                                   (gx#syntax-e _%tl4515145177%_)))
                              (let ((_%hd4515345184%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4515245180%_)))
                                    (_%tl4515445187%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4515245180%_))))
                                (if (gx#stx-pair? _%tl4515445187%_)
                                    (let ((_%e4515545190%_
                                           (gx#syntax-e _%tl4515445187%_)))
                                      (let ((_%hd4515645194%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4515545190%_)))
                                            (_%tl4515745197%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4515545190%_))))
                                        (if (gx#stx-null? _%tl4515745197%_)
                                            ((lambda (_%L45200%_ _%L45202%_)
                                               (if (and (gx#identifier?
                                                         _%L45202%_)
                                                        (gx#identifier?
                                                         _%L45200%_))
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%L45202%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-type-reference)
                                   (cons 'identifier:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote-syntax)
                                                     (cons _%L45200%_ '()))
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g4514545163%_
                                                    _%g4514645167%_)))
                                             _%hd4515645194%_
                                             _%hd4515345184%_)
                                            (_%g4514545163%_
                                             _%g4514645167%_))))
                                    (_%g4514545163%_ _%g4514645167%_))))
                            (_%g4514545163%_ _%g4514645167%_))))
                    (_%g4514545163%_ _%g4514645167%_)))))
        (_%g4514445218%_ _%$stx45141%_)))))
