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
    (lambda _%$args50030%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args50030%_)))
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
    (lambda (_%id50012%_)
      (if (gx#identifier? _%id50012%_)
          (let ((_%$%t5001450016%_ (gx#syntax-local-value _%id50012%_ false)))
            (if _%$%t5001450016%_
                (let* ((_%t50019%_ _%$%t5001450016%_)
                       (_%$e50022%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t50019%_))))
                  (if _%$e50022%_
                      _%$e50022%_
                      (let ((_%$e50026%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t50019%_))))
                        (if _%$e50026%_
                            _%$e50026%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t50019%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx49992%_ _%id49994%_)
      (let _%loop49996%_ ((_%t49999%_
                           (gx#syntax-local-value _%id49994%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49999%_))
            _%t49999%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49999%_))
                _%t49999%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49999%_))
                    (_%loop49996%_
                     (gx#syntax-local-value
                      (let ((__obj101225 _%t49999%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj101225
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj101225
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj101225 'identifier)))
                      false))
                    (if (not _%t49999%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49992%_
                         _%id49994%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49992%_
                         _%id49994%_
                         _%t49999%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx49968%_ _%id49970%_)
      (let _%loop49972%_ ((_%id49975%_ _%id49970%_)
                          (_%t49977%_
                           (gx#syntax-local-value _%id49970%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49977%_))
            _%id49975%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49977%_))
                _%id49975%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t49977%_))
                    (let ((_%id49985%_
                           (let ((__obj101226 _%t49977%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj101226
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj101226
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj101226
                                  'identifier)))))
                      (_%loop49972%_
                       _%id49985%_
                       (gx#syntax-local-value _%id49985%_ false)))
                    (if (not _%t49977%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx49968%_
                         _%id49975%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx49968%_
                         _%id49975%_
                         _%t49977%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx49955%_ _%id49957%_)
      (let ((_%t49959%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx49955%_
              _%id49957%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t49959%_))
            (let ((__obj101228 _%t49959%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj101228
                     'gerbil/core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj101228 '4 '#f '#f))
                  (unchecked-slot-ref __obj101228 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t49959%_))
                (let ((__obj101227 _%t49959%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj101227
                         'gerbil/core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj101227 '3 '#f '#f))
                      (unchecked-slot-ref __obj101227 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx49955%_
                 _%id49957%_
                 _%t49959%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx50034%_)
      (let* ((_%$%g5003850056%_
              (lambda (_%$%g5003950052%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5003950052%_)))
             (_%$%g5003750111%_
              (lambda (_%$%g5003950060%_)
                (if (gx#stx-pair? _%$%g5003950060%_)
                    (let ((_%$%e5004250063%_ (gx#syntax-e _%$%g5003950060%_)))
                      (let ((_%$%hd5004350067%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5004250063%_)))
                            (_%$%tl5004450070%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5004250063%_))))
                        (if (gx#stx-pair? _%$%tl5004450070%_)
                            (let ((_%$%e5004550073%_
                                   (gx#syntax-e _%$%tl5004450070%_)))
                              (let ((_%$%hd5004650077%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5004550073%_)))
                                    (_%$%tl5004750080%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5004550073%_))))
                                (if (gx#stx-pair? _%$%tl5004750080%_)
                                    (let ((_%$%e5004850083%_
                                           (gx#syntax-e _%$%tl5004750080%_)))
                                      (let ((_%$%hd5004950087%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5004850083%_)))
                                            (_%$%tl5005050090%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5004850083%_))))
                                        (if (gx#stx-null? _%$%tl5005050090%_)
                                            (if (and (gx#identifier?
                                                      _%$%hd5004650077%_)
                                                     (gx#identifier?
                                                      _%$%hd5004950087%_))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'defsyntax)
                                                      (cons _%$%hd5004650077%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'make-type-reference)
                                (cons 'identifier:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _%$%hd5004950087%_
                                                        '()))
                                            '())))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5003850056%_
                                                 _%$%g5003950060%_))
                                            (_%$%g5003850056%_
                                             _%$%g5003950060%_))))
                                    (_%$%g5003850056%_ _%$%g5003950060%_))))
                            (_%$%g5003850056%_ _%$%g5003950060%_))))
                    (_%$%g5003850056%_ _%$%g5003950060%_)))))
        (_%$%g5003750111%_ _%$stx50034%_)))))
