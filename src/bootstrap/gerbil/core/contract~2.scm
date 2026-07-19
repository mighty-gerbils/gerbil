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
    (lambda _%$args53792%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args53792%_)))
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
    (lambda (_%id53774%_)
      (if (gx#identifier? _%id53774%_)
          (let ((_%$%t5377653778%_ (gx#syntax-local-value _%id53774%_ false)))
            (if _%$%t5377653778%_
                (let* ((_%t53781%_ _%$%t5377653778%_)
                       (_%$e53784%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t53781%_))))
                  (if _%$e53784%_
                      _%$e53784%_
                      (let ((_%$e53788%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t53781%_))))
                        (if _%$e53788%_
                            _%$e53788%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t53781%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx53754%_ _%id53756%_)
      (let _%loop53758%_ ((_%t53761%_
                           (gx#syntax-local-value _%id53756%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t53761%_))
            _%t53761%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t53761%_))
                _%t53761%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t53761%_))
                    (_%loop53758%_
                     (gx#syntax-local-value
                      (let ((__obj104979 _%t53761%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj104979
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj104979
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj104979 'identifier)))
                      false))
                    (if (not _%t53761%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx53754%_
                         _%id53756%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx53754%_
                         _%id53756%_
                         _%t53761%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx53730%_ _%id53732%_)
      (let _%loop53734%_ ((_%id53737%_ _%id53732%_)
                          (_%t53739%_
                           (gx#syntax-local-value _%id53732%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t53739%_))
            _%id53737%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t53739%_))
                _%id53737%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t53739%_))
                    (let ((_%id53747%_
                           (let ((__obj104980 _%t53739%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj104980
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj104980
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj104980
                                  'identifier)))))
                      (_%loop53734%_
                       _%id53747%_
                       (gx#syntax-local-value _%id53747%_ false)))
                    (if (not _%t53739%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx53730%_
                         _%id53737%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx53730%_
                         _%id53737%_
                         _%t53739%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx53717%_ _%id53719%_)
      (let ((_%t53721%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx53717%_
              _%id53719%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t53721%_))
            (let ((__obj104982 _%t53721%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj104982
                     'gerbil/core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj104982 '4 '#f '#f))
                  (unchecked-slot-ref __obj104982 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t53721%_))
                (let ((__obj104981 _%t53721%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj104981
                         'gerbil/core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj104981 '3 '#f '#f))
                      (unchecked-slot-ref __obj104981 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx53717%_
                 _%id53719%_
                 _%t53721%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx53796%_)
      (let* ((_%$%g5380053818%_
              (lambda (_%$%g5380153814%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5380153814%_)))
             (_%$%g5379953873%_
              (lambda (_%$%g5380153822%_)
                (if (gx#stx-pair? _%$%g5380153822%_)
                    (let ((_%$%e5380453825%_ (gx#syntax-e _%$%g5380153822%_)))
                      (let ((_%$%hd5380553829%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5380453825%_)))
                            (_%$%tl5380653832%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5380453825%_))))
                        (if (gx#stx-pair? _%$%tl5380653832%_)
                            (let ((_%$%e5380753835%_
                                   (gx#syntax-e _%$%tl5380653832%_)))
                              (let ((_%$%hd5380853839%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5380753835%_)))
                                    (_%$%tl5380953842%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5380753835%_))))
                                (if (gx#stx-pair? _%$%tl5380953842%_)
                                    (let ((_%$%e5381053845%_
                                           (gx#syntax-e _%$%tl5380953842%_)))
                                      (let ((_%$%hd5381153849%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5381053845%_)))
                                            (_%$%tl5381253852%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5381053845%_))))
                                        (if (gx#stx-null? _%$%tl5381253852%_)
                                            (if (and (gx#identifier?
                                                      _%$%hd5380853839%_)
                                                     (gx#identifier?
                                                      _%$%hd5381153849%_))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'defsyntax)
                                                      (cons _%$%hd5380853839%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'make-type-reference)
                                (cons 'identifier:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _%$%hd5381153849%_
                                                        '()))
                                            '())))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5380053818%_
                                                 _%$%g5380153822%_))
                                            (_%$%g5380053818%_
                                             _%$%g5380153822%_))))
                                    (_%$%g5380053818%_ _%$%g5380153822%_))))
                            (_%$%g5380053818%_ _%$%g5380153822%_))))
                    (_%$%g5380053818%_ _%$%g5380153822%_)))))
        (_%$%g5379953873%_ _%$stx53796%_)))))
