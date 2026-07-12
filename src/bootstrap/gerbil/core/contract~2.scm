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
    (lambda _%$args51010%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args51010%_)))
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
    (lambda (_%id50992%_)
      (if (gx#identifier? _%id50992%_)
          (let ((_%$%t5099450996%_ (gx#syntax-local-value _%id50992%_ false)))
            (if _%$%t5099450996%_
                (let* ((_%t50999%_ _%$%t5099450996%_)
                       (_%$e51002%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t50999%_))))
                  (if _%$e51002%_
                      _%$e51002%_
                      (let ((_%$e51006%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t50999%_))))
                        (if _%$e51006%_
                            _%$e51006%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t50999%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx50972%_ _%id50974%_)
      (let _%loop50976%_ ((_%t50979%_
                           (gx#syntax-local-value _%id50974%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t50979%_))
            _%t50979%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t50979%_))
                _%t50979%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t50979%_))
                    (_%loop50976%_
                     (gx#syntax-local-value
                      (let ((__obj102192 _%t50979%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj102192
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj102192
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj102192 'identifier)))
                      false))
                    (if (not _%t50979%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx50972%_
                         _%id50974%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx50972%_
                         _%id50974%_
                         _%t50979%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx50948%_ _%id50950%_)
      (let _%loop50952%_ ((_%id50955%_ _%id50950%_)
                          (_%t50957%_
                           (gx#syntax-local-value _%id50950%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t50957%_))
            _%id50955%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t50957%_))
                _%id50955%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t50957%_))
                    (let ((_%id50965%_
                           (let ((__obj102193 _%t50957%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj102193
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj102193
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj102193
                                  'identifier)))))
                      (_%loop50952%_
                       _%id50965%_
                       (gx#syntax-local-value _%id50965%_ false)))
                    (if (not _%t50957%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx50948%_
                         _%id50955%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx50948%_
                         _%id50955%_
                         _%t50957%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx50935%_ _%id50937%_)
      (let ((_%t50939%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx50935%_
              _%id50937%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t50939%_))
            (let ((__obj102195 _%t50939%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj102195
                     'gerbil/core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj102195 '4 '#f '#f))
                  (unchecked-slot-ref __obj102195 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t50939%_))
                (let ((__obj102194 _%t50939%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj102194
                         'gerbil/core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj102194 '3 '#f '#f))
                      (unchecked-slot-ref __obj102194 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx50935%_
                 _%id50937%_
                 _%t50939%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx51014%_)
      (let* ((_%$%g5101851036%_
              (lambda (_%$%g5101951032%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5101951032%_)))
             (_%$%g5101751091%_
              (lambda (_%$%g5101951040%_)
                (if (gx#stx-pair? _%$%g5101951040%_)
                    (let ((_%$%e5102251043%_ (gx#syntax-e _%$%g5101951040%_)))
                      (let ((_%$%hd5102351047%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5102251043%_)))
                            (_%$%tl5102451050%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5102251043%_))))
                        (if (gx#stx-pair? _%$%tl5102451050%_)
                            (let ((_%$%e5102551053%_
                                   (gx#syntax-e _%$%tl5102451050%_)))
                              (let ((_%$%hd5102651057%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5102551053%_)))
                                    (_%$%tl5102751060%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5102551053%_))))
                                (if (gx#stx-pair? _%$%tl5102751060%_)
                                    (let ((_%$%e5102851063%_
                                           (gx#syntax-e _%$%tl5102751060%_)))
                                      (let ((_%$%hd5102951067%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5102851063%_)))
                                            (_%$%tl5103051070%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5102851063%_))))
                                        (if (gx#stx-null? _%$%tl5103051070%_)
                                            (if (and (gx#identifier?
                                                      _%$%hd5102651057%_)
                                                     (gx#identifier?
                                                      _%$%hd5102951067%_))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'defsyntax)
                                                      (cons _%$%hd5102651057%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'make-type-reference)
                                (cons 'identifier:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _%$%hd5102951067%_
                                                        '()))
                                            '())))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5101851036%_
                                                 _%$%g5101951040%_))
                                            (_%$%g5101851036%_
                                             _%$%g5101951040%_))))
                                    (_%$%g5101851036%_ _%$%g5101951040%_))))
                            (_%$%g5101851036%_ _%$%g5101951040%_))))
                    (_%$%g5101851036%_ _%$%g5101951040%_)))))
        (_%$%g5101751091%_ _%$stx51014%_)))))
