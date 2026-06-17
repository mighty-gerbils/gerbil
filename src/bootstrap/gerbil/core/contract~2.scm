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
    (lambda _%$args51007%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args51007%_)))
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
    (lambda (_%id50989%_)
      (if (gx#identifier? _%id50989%_)
          (let ((_%$%t5099150993%_ (gx#syntax-local-value _%id50989%_ false)))
            (if _%$%t5099150993%_
                (let* ((_%t50996%_ _%$%t5099150993%_)
                       (_%$e50999%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t50996%_))))
                  (if _%$e50999%_
                      _%$e50999%_
                      (let ((_%$e51003%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t50996%_))))
                        (if _%$e51003%_
                            _%$e51003%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t50996%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx50969%_ _%id50971%_)
      (let _%loop50973%_ ((_%t50976%_
                           (gx#syntax-local-value _%id50971%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t50976%_))
            _%t50976%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t50976%_))
                _%t50976%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t50976%_))
                    (_%loop50973%_
                     (gx#syntax-local-value
                      (let ((__obj102202 _%t50976%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj102202
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj102202
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj102202 'identifier)))
                      false))
                    (if (not _%t50976%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx50969%_
                         _%id50971%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx50969%_
                         _%id50971%_
                         _%t50976%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx50945%_ _%id50947%_)
      (let _%loop50949%_ ((_%id50952%_ _%id50947%_)
                          (_%t50954%_
                           (gx#syntax-local-value _%id50947%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t50954%_))
            _%id50952%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t50954%_))
                _%id50952%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t50954%_))
                    (let ((_%id50962%_
                           (let ((__obj102203 _%t50954%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj102203
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj102203
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj102203
                                  'identifier)))))
                      (_%loop50949%_
                       _%id50962%_
                       (gx#syntax-local-value _%id50962%_ false)))
                    (if (not _%t50954%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx50945%_
                         _%id50952%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx50945%_
                         _%id50952%_
                         _%t50954%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx50932%_ _%id50934%_)
      (let ((_%t50936%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx50932%_
              _%id50934%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t50936%_))
            (let ((__obj102205 _%t50936%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj102205
                     'gerbil/core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj102205 '4 '#f '#f))
                  (unchecked-slot-ref __obj102205 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t50936%_))
                (let ((__obj102204 _%t50936%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj102204
                         'gerbil/core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj102204 '3 '#f '#f))
                      (unchecked-slot-ref __obj102204 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx50932%_
                 _%id50934%_
                 _%t50936%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx51011%_)
      (let* ((_%$%g5101551033%_
              (lambda (_%$%g5101651029%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5101651029%_)))
             (_%$%g5101451088%_
              (lambda (_%$%g5101651037%_)
                (if (gx#stx-pair? _%$%g5101651037%_)
                    (let ((_%$%e5101951040%_ (gx#syntax-e _%$%g5101651037%_)))
                      (let ((_%$%hd5102051044%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5101951040%_)))
                            (_%$%tl5102151047%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5101951040%_))))
                        (if (gx#stx-pair? _%$%tl5102151047%_)
                            (let ((_%$%e5102251050%_
                                   (gx#syntax-e _%$%tl5102151047%_)))
                              (let ((_%$%hd5102351054%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5102251050%_)))
                                    (_%$%tl5102451057%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5102251050%_))))
                                (if (gx#stx-pair? _%$%tl5102451057%_)
                                    (let ((_%$%e5102551060%_
                                           (gx#syntax-e _%$%tl5102451057%_)))
                                      (let ((_%$%hd5102651064%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5102551060%_)))
                                            (_%$%tl5102751067%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5102551060%_))))
                                        (if (gx#stx-null? _%$%tl5102751067%_)
                                            (if (and (gx#identifier?
                                                      _%$%hd5102351054%_)
                                                     (gx#identifier?
                                                      _%$%hd5102651064%_))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'defsyntax)
                                                      (cons _%$%hd5102351054%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'make-type-reference)
                                (cons 'identifier:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _%$%hd5102651064%_
                                                        '()))
                                            '())))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5101551033%_
                                                 _%$%g5101651037%_))
                                            (_%$%g5101551033%_
                                             _%$%g5101651037%_))))
                                    (_%$%g5101551033%_ _%$%g5101651037%_))))
                            (_%$%g5101551033%_ _%$%g5101651037%_))))
                    (_%$%g5101551033%_ _%$%g5101651037%_)))))
        (_%$%g5101451088%_ _%$stx51011%_)))))
