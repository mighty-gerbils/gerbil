(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g100218_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g100219_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g100220_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx49995%_)
        (let* ((_%g4999850016%_
                (lambda (_%g4999950012%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4999950012%_)))
               (_%g4999750211%_
                (lambda (_%g4999950020%_)
                  (if (gx#stx-pair? _%g4999950020%_)
                      (let ((_%e5000250023%_ (gx#syntax-e _%g4999950020%_)))
                        (let ((_%hd5000350027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5000250023%_)))
                              (_%tl5000450030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5000250023%_))))
                          (if (gx#stx-pair? _%tl5000450030%_)
                              (let ((_%e5000550033%_
                                     (gx#syntax-e _%tl5000450030%_)))
                                (let ((_%hd5000650037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5000550033%_)))
                                      (_%tl5000750040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5000550033%_))))
                                  (if (gx#stx-pair? _%tl5000750040%_)
                                      (let ((_%e5000850043%_
                                             (gx#syntax-e _%tl5000750040%_)))
                                        (let ((_%hd5000950047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5000850043%_)))
                                              (_%tl5001050050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5000850043%_))))
                                          (if (gx#stx-null? _%tl5001050050%_)
                                              ((lambda (_%g5000050053%_
                                                        _%g5000150055%_)
                                                 (if (gx#identifier?
                                                      _%g5000050053%_)
                                                     (let ((_%meta50072%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49995%_
                                                               _%g5000050053%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta50072%_))
                                                           (let* ((_%g5007750092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g5007850088%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5007850088%_)))
                          (_%g5007650139%_
                           (lambda (_%g5007850096%_)
                             (if (gx#stx-pair? _%g5007850096%_)
                                 (let ((_%e5008150099%_
                                        (gx#syntax-e _%g5007850096%_)))
                                   (let ((_%hd5008250103%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5008150099%_)))
                                         (_%tl5008350106%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5008150099%_))))
                                     (if (gx#stx-pair? _%tl5008350106%_)
                                         (let ((_%e5008450109%_
                                                (gx#syntax-e
                                                 _%tl5008350106%_)))
                                           (let ((_%hd5008550113%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5008450109%_)))
                                                 (_%tl5008650116%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5008450109%_))))
                                             (if (gx#stx-null?
                                                  _%tl5008650116%_)
                                                 ((lambda (_%g5007950119%_
                                                           _%g5008050121%_)
                                                    (if (let ((__tmp100216
                                                               (let ((__obj100041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta50072%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj100041
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj100041
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj100041 'id)))))
                  (declare (not safe))
                  (##memq __tmp100216 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5008050121%_ '()))
                            (cons _%g5000150055%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5008050121%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5000150055%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g5007950119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g5000150055%_
                                                (cons (cons _%g5007950119%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '()))
              (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd5008550113%_
                                                  _%hd5008250103%_)
                                                 (_%g5007750092%_
                                                  _%g5007850096%_))))
                                         (_%g5007750092%_ _%g5007850096%_))))
                                 (_%g5007750092%_ _%g5007850096%_)))))
                     (_%g5007650139%_
                      (list (let ((__obj100042 _%meta50072%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100042
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100042
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100042
                                   'type-descriptor)))
                            (let ((__obj100043 _%meta50072%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100043
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100043
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100043
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta50072%_))
                       (let* ((_%g5014550160%_
                               (lambda (_%g5014650156%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5014650156%_)))
                              (_%g5014450205%_
                               (lambda (_%g5014650164%_)
                                 (if (gx#stx-pair? _%g5014650164%_)
                                     (let ((_%e5014950167%_
                                            (gx#syntax-e _%g5014650164%_)))
                                       (let ((_%hd5015050171%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5014950167%_)))
                                             (_%tl5015150174%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5014950167%_))))
                                         (if (gx#stx-pair? _%tl5015150174%_)
                                             (let ((_%e5015250177%_
                                                    (gx#syntax-e
                                                     _%tl5015150174%_)))
                                               (let ((_%hd5015350181%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5015250177%_)))
                                                     (_%tl5015450184%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5015250177%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5015450184%_)
                                                     ((lambda (_%g5014750187%_
                                                               _%g5014850189%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5014850189%_ '()))
                            (cons (cons _%g5014750187%_
                                        (cons _%g5000150055%_ '()))
                                  '()))))
              _%hd5015350181%_
              _%hd5015050171%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5014550160%_
                                                      _%g5014650164%_))))
                                             (_%g5014550160%_
                                              _%g5014650164%_))))
                                     (_%g5014550160%_ _%g5014650164%_)))))
                         (_%g5014450205%_
                          (list (let ((__obj100040 _%meta50072%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100040
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100040
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj100040
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49995%_
                                   _%g5000050053%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49995%_
                        _%g5000050053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4999850016%_
                                                      _%g4999950020%_)))
                                               _%hd5000950047%_
                                               _%hd5000650037%_)
                                              (_%g4999850016%_
                                               _%g4999950020%_))))
                                      (_%g4999850016%_ _%g4999950020%_))))
                              (_%g4999850016%_ _%g4999950020%_))))
                      (_%g4999850016%_ _%g4999950020%_)))))
          (_%g4999750211%_ _%stx49995%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx50215%_)
        (let* ((_%g5021850236%_
                (lambda (_%g5021950232%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5021950232%_)))
               (_%g5021750430%_
                (lambda (_%g5021950240%_)
                  (if (gx#stx-pair? _%g5021950240%_)
                      (let ((_%e5022250243%_ (gx#syntax-e _%g5021950240%_)))
                        (let ((_%hd5022350247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5022250243%_)))
                              (_%tl5022450250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5022250243%_))))
                          (if (gx#stx-pair? _%tl5022450250%_)
                              (let ((_%e5022550253%_
                                     (gx#syntax-e _%tl5022450250%_)))
                                (let ((_%hd5022650257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5022550253%_)))
                                      (_%tl5022750260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5022550253%_))))
                                  (if (gx#stx-pair? _%tl5022750260%_)
                                      (let ((_%e5022850263%_
                                             (gx#syntax-e _%tl5022750260%_)))
                                        (let ((_%hd5022950267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5022850263%_)))
                                              (_%tl5023050270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5022850263%_))))
                                          (if (gx#stx-null? _%tl5023050270%_)
                                              ((lambda (_%g5022050273%_
                                                        _%g5022150275%_)
                                                 (if (gx#identifier?
                                                      _%g5022050273%_)
                                                     (let ((_%meta50291%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx50215%_
                                                               _%g5022050273%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta50291%_))
                                                           (let* ((_%g5029650311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g5029750307%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5029750307%_)))
                          (_%g5029550358%_
                           (lambda (_%g5029750315%_)
                             (if (gx#stx-pair? _%g5029750315%_)
                                 (let ((_%e5030050318%_
                                        (gx#syntax-e _%g5029750315%_)))
                                   (let ((_%hd5030150322%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5030050318%_)))
                                         (_%tl5030250325%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5030050318%_))))
                                     (if (gx#stx-pair? _%tl5030250325%_)
                                         (let ((_%e5030350328%_
                                                (gx#syntax-e
                                                 _%tl5030250325%_)))
                                           (let ((_%hd5030450332%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5030350328%_)))
                                                 (_%tl5030550335%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5030350328%_))))
                                             (if (gx#stx-null?
                                                  _%tl5030550335%_)
                                                 ((lambda (_%g5029850338%_
                                                           _%g5029950340%_)
                                                    (if (let ((__tmp100217
                                                               (let ((__obj100045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta50291%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj100045
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj100045
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj100045 'id)))))
                  (declare (not safe))
                  (##memq __tmp100217 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5029950340%_ '()))
                            (cons _%g5022150275%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5029950340%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5022150275%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'or)
                              (cons (cons (gx#datum->syntax '#f 'not)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons _%g5029850338%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g5022150275%_
                                                (cons (cons _%g5029850338%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '()))
              (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd5030450332%_
                                                  _%hd5030150322%_)
                                                 (_%g5029650311%_
                                                  _%g5029750315%_))))
                                         (_%g5029650311%_ _%g5029750315%_))))
                                 (_%g5029650311%_ _%g5029750315%_)))))
                     (_%g5029550358%_
                      (list (let ((__obj100046 _%meta50291%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100046
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100046
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100046
                                   'type-descriptor)))
                            (let ((__obj100047 _%meta50291%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100047
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100047
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100047
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta50291%_))
                       (let* ((_%g5036450379%_
                               (lambda (_%g5036550375%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5036550375%_)))
                              (_%g5036350424%_
                               (lambda (_%g5036550383%_)
                                 (if (gx#stx-pair? _%g5036550383%_)
                                     (let ((_%e5036850386%_
                                            (gx#syntax-e _%g5036550383%_)))
                                       (let ((_%hd5036950390%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5036850386%_)))
                                             (_%tl5037050393%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5036850386%_))))
                                         (if (gx#stx-pair? _%tl5037050393%_)
                                             (let ((_%e5037150396%_
                                                    (gx#syntax-e
                                                     _%tl5037050393%_)))
                                               (let ((_%hd5037250400%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5037150396%_)))
                                                     (_%tl5037350403%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5037150396%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5037350403%_)
                                                     ((lambda (_%g5036650406%_
                                                               _%g5036750408%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5036750408%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5022150275%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g5036650406%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd5037250400%_
              _%hd5036950390%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5036450379%_
                                                      _%g5036550383%_))))
                                             (_%g5036450379%_
                                              _%g5036550383%_))))
                                     (_%g5036450379%_ _%g5036550383%_)))))
                         (_%g5036350424%_
                          (list (let ((__obj100044 _%meta50291%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100044
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100044
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj100044
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx50215%_
                                   _%g5022050273%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx50215%_
                        _%g5022050273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5021850236%_
                                                      _%g5021950240%_)))
                                               _%hd5022950267%_
                                               _%hd5022650257%_)
                                              (_%g5021850236%_
                                               _%g5021950240%_))))
                                      (_%g5021850236%_ _%g5021950240%_))))
                              (_%g5021850236%_ _%g5021950240%_))))
                      (_%g5021850236%_ _%g5021950240%_)))))
          (_%g5021750430%_ _%stx50215%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx50434%_)
        (let* ((_%g5043750455%_
                (lambda (_%g5043850451%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5043850451%_)))
               (_%g5043650541%_
                (lambda (_%g5043850459%_)
                  (if (gx#stx-pair? _%g5043850459%_)
                      (let ((_%e5044150462%_ (gx#syntax-e _%g5043850459%_)))
                        (let ((_%hd5044250466%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5044150462%_)))
                              (_%tl5044350469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5044150462%_))))
                          (if (gx#stx-pair? _%tl5044350469%_)
                              (let ((_%e5044450472%_
                                     (gx#syntax-e _%tl5044350469%_)))
                                (let ((_%hd5044550476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5044450472%_)))
                                      (_%tl5044650479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5044450472%_))))
                                  (if (gx#stx-pair? _%tl5044650479%_)
                                      (let ((_%e5044750482%_
                                             (gx#syntax-e _%tl5044650479%_)))
                                        (let ((_%hd5044850486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5044750482%_)))
                                              (_%tl5044950489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5044750482%_))))
                                          (if (gx#stx-null? _%tl5044950489%_)
                                              ((lambda (_%g5043950492%_
                                                        _%g5044050494%_)
                                                 (if (gx#identifier?
                                                      _%g5043950492%_)
                                                     (let* ((_%g5051050518%_
                                                             (lambda (_%g5051150514%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g5051150514%_)))
                                                            (_%g5050950537%_
                                                             (lambda (_%g5051150522%_)
                                                               ((lambda (_%g5051250525%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g5051250525%_ '()))
                                      (cons _%g5044050494%_ '()))))
                        _%g5051150522%_))))
               (_%g5050950537%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx50434%_
                   _%g5043950492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5043750455%_
                                                      _%g5043850459%_)))
                                               _%hd5044850486%_
                                               _%hd5044550476%_)
                                              (_%g5043750455%_
                                               _%g5043850459%_))))
                                      (_%g5043750455%_ _%g5043850459%_))))
                              (_%g5043750455%_ _%g5043850459%_))))
                      (_%g5043750455%_ _%g5043850459%_)))))
          (_%g5043650541%_ _%stx50434%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx50545%_)
        (let* ((_%__stx9338793388%_ _%$stx50545%_)
               (_%g5055150635%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9338793388%_))))
          (let ((_%__kont9339093391%_
                 (lambda (_%g5055350939%_
                          _%g5055450941%_
                          _%g5055550942%_
                          _%g5055650943%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5055650943%_
                                           (cons _%g5055450941%_
                                                 (foldr (lambda (_%g5096750970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5096850973%_)
                  (cons _%g5096750970%_ _%g5096850973%_))
                '()
                _%g5055350939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5055550942%_ '())))))
                (_%__kont9339493395%_
                 (lambda (_%g5058150817%_
                          _%g5058250819%_
                          _%g5058350820%_
                          _%g5058450821%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5058450821%_
                                           (cons _%g5058250819%_
                                                 (foldr (lambda (_%g5084550848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5084650851%_)
                  (cons _%g5084550848%_ _%g5084650851%_))
                '()
                _%g5058150817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5058350820%_ '())))))
                (_%__kont9339893399%_
                 (lambda (_%g5060950700%_ _%g5061050702%_ _%g5061150703%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5061150703%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5061050702%_
                                                       (foldr (lambda (_%g5072350726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5072450729%_)
                        (cons _%g5072350726%_ _%g5072450729%_))
                      '()
                      _%g5060950700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9351293513%_
                    (lambda (_%e5061250642%_
                             _%hd5061350646%_
                             _%tl5061450649%_
                             _%e5061550652%_
                             _%hd5061650656%_
                             _%tl5061750659%_
                             _%e5061850662%_
                             _%hd5061950666%_
                             _%tl5062050669%_
                             _%__splice9340093401%_
                             _%target5062150672%_
                             _%tl5062350675%_)
                      (letrec ((_%loop5062450678%_
                                (lambda (_%hd5062250682%_ _%rest5062850685%_)
                                  (if (gx#stx-pair? _%hd5062250682%_)
                                      (let ((_%e5062550687%_
                                             (gx#syntax-e _%hd5062250682%_)))
                                        (let ((_%lp-tl5062750694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5062550687%_)))
                                              (_%lp-hd5062650691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5062550687%_))))
                                          (_%loop5062450678%_
                                           _%lp-tl5062750694%_
                                           (cons _%lp-hd5062650691%_
                                                 _%rest5062850685%_))))
                                      (let ((_%rest5062950697%_
                                             (reverse _%rest5062850685%_)))
                                        (_%__kont9339893399%_
                                         _%rest5062950697%_
                                         _%hd5061950666%_
                                         _%hd5061650656%_))))))
                        (_%loop5062450678%_ _%target5062150672%_ '()))))
                   (_%__match9348693487%_
                    (lambda (_%e5058550739%_
                             _%hd5058650743%_
                             _%tl5058750746%_
                             _%e5058850749%_
                             _%hd5058950753%_
                             _%tl5059050756%_
                             _%e5059150759%_
                             _%hd5059250763%_
                             _%tl5059350766%_
                             _%e5059450769%_
                             _%hd5059550773%_
                             _%tl5059650776%_
                             _%e5059750779%_
                             _%hd5059850783%_
                             _%tl5059950786%_
                             _%__splice9339693397%_
                             _%target5060050789%_
                             _%tl5060250792%_)
                      (letrec ((_%loop5060350795%_
                                (lambda (_%hd5060150799%_ _%rest5060750802%_)
                                  (if (gx#stx-pair? _%hd5060150799%_)
                                      (let ((_%e5060450804%_
                                             (gx#syntax-e _%hd5060150799%_)))
                                        (let ((_%lp-tl5060650811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5060450804%_)))
                                              (_%lp-hd5060550808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5060450804%_))))
                                          (_%loop5060350795%_
                                           _%lp-tl5060650811%_
                                           (cons _%lp-hd5060550808%_
                                                 _%rest5060750802%_))))
                                      (let ((_%rest5060850814%_
                                             (reverse _%rest5060750802%_)))
                                        (_%__kont9339493395%_
                                         _%rest5060850814%_
                                         _%hd5059850783%_
                                         _%hd5059550773%_
                                         _%hd5058950753%_))))))
                        (_%loop5060350795%_ _%target5060050789%_ '()))))
                   (_%__match9344493445%_
                    (lambda (_%e5055750861%_
                             _%hd5055850865%_
                             _%tl5055950868%_
                             _%e5056050871%_
                             _%hd5056150875%_
                             _%tl5056250878%_
                             _%e5056350881%_
                             _%hd5056450885%_
                             _%tl5056550888%_
                             _%e5056650891%_
                             _%hd5056750895%_
                             _%tl5056850898%_
                             _%e5056950901%_
                             _%hd5057050905%_
                             _%tl5057150908%_
                             _%__splice9339293393%_
                             _%target5057250911%_
                             _%tl5057450914%_)
                      (letrec ((_%loop5057550917%_
                                (lambda (_%hd5057350921%_ _%rest5057950924%_)
                                  (if (gx#stx-pair? _%hd5057350921%_)
                                      (let ((_%e5057650926%_
                                             (gx#syntax-e _%hd5057350921%_)))
                                        (let ((_%lp-tl5057850933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5057650926%_)))
                                              (_%lp-hd5057750930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5057650926%_))))
                                          (_%loop5057550917%_
                                           _%lp-tl5057850933%_
                                           (cons _%lp-hd5057750930%_
                                                 _%rest5057950924%_))))
                                      (let ((_%rest5058050936%_
                                             (reverse _%rest5057950924%_)))
                                        (_%__kont9339093391%_
                                         _%rest5058050936%_
                                         _%hd5057050905%_
                                         _%hd5056750895%_
                                         _%hd5056150875%_))))))
                        (_%loop5057550917%_ _%target5057250911%_ '())))))
              (if (gx#stx-pair? _%__stx9338793388%_)
                  (let ((_%e5055750861%_ (gx#syntax-e _%__stx9338793388%_)))
                    (let ((_%tl5055950868%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5055750861%_)))
                          (_%hd5055850865%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5055750861%_))))
                      (if (gx#stx-pair? _%tl5055950868%_)
                          (let ((_%e5056050871%_
                                 (gx#syntax-e _%tl5055950868%_)))
                            (let ((_%tl5056250878%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5056050871%_)))
                                  (_%hd5056150875%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5056050871%_))))
                              (if (gx#stx-pair? _%tl5056250878%_)
                                  (let ((_%e5056350881%_
                                         (gx#syntax-e _%tl5056250878%_)))
                                    (let ((_%tl5056550888%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5056350881%_)))
                                          (_%hd5056450885%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5056350881%_))))
                                      (if (gx#identifier? _%hd5056450885%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g100218_|
                                               _%hd5056450885%_)
                                              (if (gx#stx-pair?
                                                   _%tl5056550888%_)
                                                  (let ((_%e5056650891%_
                                                         (gx#syntax-e
                                                          _%tl5056550888%_)))
                                                    (let ((_%tl5056850898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5056650891%_)))
                                                          (_%hd5056750895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5056650891%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5056850898%_)
                                                          (let ((_%e5056950901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5056850898%_)))
                    (let ((_%tl5057150908%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5056950901%_)))
                          (_%hd5057050905%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5056950901%_))))
                      (if (gx#stx-pair/null? _%tl5057150908%_)
                          (let ((_%__splice9339293393%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5057150908%_
                                  '0)))
                            (let ((_%tl5057450914%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9339293393%_ '1)))
                                  (_%target5057250911%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9339293393%_
                                      '0))))
                              (if (gx#stx-null? _%tl5057450914%_)
                                  (_%__match9344493445%_
                                   _%e5055750861%_
                                   _%hd5055850865%_
                                   _%tl5055950868%_
                                   _%e5056050871%_
                                   _%hd5056150875%_
                                   _%tl5056250878%_
                                   _%e5056350881%_
                                   _%hd5056450885%_
                                   _%tl5056550888%_
                                   _%e5056650891%_
                                   _%hd5056750895%_
                                   _%tl5056850898%_
                                   _%e5056950901%_
                                   _%hd5057050905%_
                                   _%tl5057150908%_
                                   _%__splice9339293393%_
                                   _%target5057250911%_
                                   _%tl5057450914%_)
                                  (if (gx#stx-pair/null? _%tl5056550888%_)
                                      (let ((_%__splice9340093401%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5056550888%_
                                              '0)))
                                        (let ((_%tl5062350675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9340093401%_
                                                  '1)))
                                              (_%target5062150672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9340093401%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5062350675%_)
                                              (_%__match9351293513%_
                                               _%e5055750861%_
                                               _%hd5055850865%_
                                               _%tl5055950868%_
                                               _%e5056050871%_
                                               _%hd5056150875%_
                                               _%tl5056250878%_
                                               _%e5056350881%_
                                               _%hd5056450885%_
                                               _%tl5056550888%_
                                               _%__splice9340093401%_
                                               _%target5062150672%_
                                               _%tl5062350675%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5055150635%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5055150635%_))))))
                          (if (gx#stx-pair/null? _%tl5056550888%_)
                              (let ((_%__splice9340093401%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5056550888%_
                                      '0)))
                                (let ((_%tl5062350675%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9340093401%_
                                          '1)))
                                      (_%target5062150672%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9340093401%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5062350675%_)
                                      (_%__match9351293513%_
                                       _%e5055750861%_
                                       _%hd5055850865%_
                                       _%tl5055950868%_
                                       _%e5056050871%_
                                       _%hd5056150875%_
                                       _%tl5056250878%_
                                       _%e5056350881%_
                                       _%hd5056450885%_
                                       _%tl5056550888%_
                                       _%__splice9340093401%_
                                       _%target5062150672%_
                                       _%tl5062350675%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5055150635%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5055150635%_))))))
                  (if (gx#stx-pair/null? _%tl5056550888%_)
                      (let ((_%__splice9340093401%_
                             (gx#syntax-split-splice->vector
                              _%tl5056550888%_
                              '0)))
                        (let ((_%tl5062350675%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9340093401%_ '1)))
                              (_%target5062150672%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9340093401%_ '0))))
                          (if (gx#stx-null? _%tl5062350675%_)
                              (_%__match9351293513%_
                               _%e5055750861%_
                               _%hd5055850865%_
                               _%tl5055950868%_
                               _%e5056050871%_
                               _%hd5056150875%_
                               _%tl5056250878%_
                               _%e5056350881%_
                               _%hd5056450885%_
                               _%tl5056550888%_
                               _%__splice9340093401%_
                               _%target5062150672%_
                               _%tl5062350675%_)
                              (let ()
                                (declare (not safe))
                                (_%g5055150635%_)))))
                      (let () (declare (not safe)) (_%g5055150635%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5056550888%_)
                                                      (let ((_%__splice9340093401%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5056550888%_
                                                              '0)))
                                                        (let ((_%tl5062350675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9340093401%_ '1)))
                      (_%target5062150672%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9340093401%_ '0))))
                  (if (gx#stx-null? _%tl5062350675%_)
                      (_%__match9351293513%_
                       _%e5055750861%_
                       _%hd5055850865%_
                       _%tl5055950868%_
                       _%e5056050871%_
                       _%hd5056150875%_
                       _%tl5056250878%_
                       _%e5056350881%_
                       _%hd5056450885%_
                       _%tl5056550888%_
                       _%__splice9340093401%_
                       _%target5062150672%_
                       _%tl5062350675%_)
                      (let () (declare (not safe)) (_%g5055150635%_)))))
              (let () (declare (not safe)) (_%g5055150635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g100219_|
                                                   _%hd5056450885%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5056550888%_)
                                                      (let ((_%e5059450769%_
                                                             (gx#syntax-e
                                                              _%tl5056550888%_)))
                                                        (let ((_%tl5059650776%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5059450769%_)))
                      (_%hd5059550773%_
                       (let () (declare (not safe)) (##car _%e5059450769%_))))
                  (if (gx#stx-pair? _%tl5059650776%_)
                      (let ((_%e5059750779%_ (gx#syntax-e _%tl5059650776%_)))
                        (let ((_%tl5059950786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5059750779%_)))
                              (_%hd5059850783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5059750779%_))))
                          (if (gx#stx-pair/null? _%tl5059950786%_)
                              (let ((_%__splice9339693397%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5059950786%_
                                      '0)))
                                (let ((_%tl5060250792%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9339693397%_
                                          '1)))
                                      (_%target5060050789%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9339693397%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5060250792%_)
                                      (_%__match9348693487%_
                                       _%e5055750861%_
                                       _%hd5055850865%_
                                       _%tl5055950868%_
                                       _%e5056050871%_
                                       _%hd5056150875%_
                                       _%tl5056250878%_
                                       _%e5056350881%_
                                       _%hd5056450885%_
                                       _%tl5056550888%_
                                       _%e5059450769%_
                                       _%hd5059550773%_
                                       _%tl5059650776%_
                                       _%e5059750779%_
                                       _%hd5059850783%_
                                       _%tl5059950786%_
                                       _%__splice9339693397%_
                                       _%target5060050789%_
                                       _%tl5060250792%_)
                                      (if (gx#stx-pair/null? _%tl5056550888%_)
                                          (let ((_%__splice9340093401%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5056550888%_
                                                  '0)))
                                            (let ((_%tl5062350675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9340093401%_
                                                      '1)))
                                                  (_%target5062150672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9340093401%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5062350675%_)
                                                  (_%__match9351293513%_
                                                   _%e5055750861%_
                                                   _%hd5055850865%_
                                                   _%tl5055950868%_
                                                   _%e5056050871%_
                                                   _%hd5056150875%_
                                                   _%tl5056250878%_
                                                   _%e5056350881%_
                                                   _%hd5056450885%_
                                                   _%tl5056550888%_
                                                   _%__splice9340093401%_
                                                   _%target5062150672%_
                                                   _%tl5062350675%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5055150635%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5055150635%_))))))
                              (if (gx#stx-pair/null? _%tl5056550888%_)
                                  (let ((_%__splice9340093401%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5056550888%_
                                          '0)))
                                    (let ((_%tl5062350675%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9340093401%_
                                              '1)))
                                          (_%target5062150672%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9340093401%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5062350675%_)
                                          (_%__match9351293513%_
                                           _%e5055750861%_
                                           _%hd5055850865%_
                                           _%tl5055950868%_
                                           _%e5056050871%_
                                           _%hd5056150875%_
                                           _%tl5056250878%_
                                           _%e5056350881%_
                                           _%hd5056450885%_
                                           _%tl5056550888%_
                                           _%__splice9340093401%_
                                           _%target5062150672%_
                                           _%tl5062350675%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5055150635%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5055150635%_))))))
                      (if (gx#stx-pair/null? _%tl5056550888%_)
                          (let ((_%__splice9340093401%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5056550888%_
                                  '0)))
                            (let ((_%tl5062350675%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9340093401%_ '1)))
                                  (_%target5062150672%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9340093401%_
                                      '0))))
                              (if (gx#stx-null? _%tl5062350675%_)
                                  (_%__match9351293513%_
                                   _%e5055750861%_
                                   _%hd5055850865%_
                                   _%tl5055950868%_
                                   _%e5056050871%_
                                   _%hd5056150875%_
                                   _%tl5056250878%_
                                   _%e5056350881%_
                                   _%hd5056450885%_
                                   _%tl5056550888%_
                                   _%__splice9340093401%_
                                   _%target5062150672%_
                                   _%tl5062350675%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5055150635%_)))))
                          (let () (declare (not safe)) (_%g5055150635%_))))))
              (if (gx#stx-pair/null? _%tl5056550888%_)
                  (let ((_%__splice9340093401%_
                         (gx#syntax-split-splice->vector _%tl5056550888%_ '0)))
                    (let ((_%tl5062350675%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9340093401%_ '1)))
                          (_%target5062150672%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9340093401%_ '0))))
                      (if (gx#stx-null? _%tl5062350675%_)
                          (_%__match9351293513%_
                           _%e5055750861%_
                           _%hd5055850865%_
                           _%tl5055950868%_
                           _%e5056050871%_
                           _%hd5056150875%_
                           _%tl5056250878%_
                           _%e5056350881%_
                           _%hd5056450885%_
                           _%tl5056550888%_
                           _%__splice9340093401%_
                           _%target5062150672%_
                           _%tl5062350675%_)
                          (let () (declare (not safe)) (_%g5055150635%_)))))
                  (let () (declare (not safe)) (_%g5055150635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5056550888%_)
                                                      (let ((_%__splice9340093401%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5056550888%_
                                                              '0)))
                                                        (let ((_%tl5062350675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9340093401%_ '1)))
                      (_%target5062150672%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9340093401%_ '0))))
                  (if (gx#stx-null? _%tl5062350675%_)
                      (_%__match9351293513%_
                       _%e5055750861%_
                       _%hd5055850865%_
                       _%tl5055950868%_
                       _%e5056050871%_
                       _%hd5056150875%_
                       _%tl5056250878%_
                       _%e5056350881%_
                       _%hd5056450885%_
                       _%tl5056550888%_
                       _%__splice9340093401%_
                       _%target5062150672%_
                       _%tl5062350675%_)
                      (let () (declare (not safe)) (_%g5055150635%_)))))
              (let () (declare (not safe)) (_%g5055150635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5056550888%_)
                                              (let ((_%__splice9340093401%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5056550888%_
                                                      '0)))
                                                (let ((_%tl5062350675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9340093401%_
                                                          '1)))
                                                      (_%target5062150672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9340093401%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5062350675%_)
                                                      (_%__match9351293513%_
                                                       _%e5055750861%_
                                                       _%hd5055850865%_
                                                       _%tl5055950868%_
                                                       _%e5056050871%_
                                                       _%hd5056150875%_
                                                       _%tl5056250878%_
                                                       _%e5056350881%_
                                                       _%hd5056450885%_
                                                       _%tl5056550888%_
                                                       _%__splice9340093401%_
                                                       _%target5062150672%_
                                                       _%tl5062350675%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5055150635%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5055150635%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5055150635%_)))))
                          (let () (declare (not safe)) (_%g5055150635%_)))))
                  (let () (declare (not safe)) (_%g5055150635%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx50983%_)
        (let* ((_%__stx9351593516%_ _%$stx50983%_)
               (_%g5098851024%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9351593516%_))))
          (let ((_%__kont9351893519%_
                 (lambda (_%g5099051142%_ _%g5099151144%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5099151144%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5099051142%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'val)
                                                             '()))
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'contract-violation!)
                           (cons _%g5099151144%_
                                 (cons _%g5099051142%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9352093521%_
                 (lambda (_%g5100151081%_ _%g5100251083%_ _%g5100351084%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5100351084%_
                                           (cons _%g5100251083%_ '())))
                               (cons _%g5100151081%_ '()))))))
            (if (gx#stx-pair? _%__stx9351593516%_)
                (let ((_%e5099251112%_ (gx#syntax-e _%__stx9351593516%_)))
                  (let ((_%tl5099451119%_
                         (let () (declare (not safe)) (##cdr _%e5099251112%_)))
                        (_%hd5099351116%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5099251112%_))))
                    (if (gx#stx-pair? _%tl5099451119%_)
                        (let ((_%e5099551122%_ (gx#syntax-e _%tl5099451119%_)))
                          (let ((_%tl5099751129%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5099551122%_)))
                                (_%hd5099651126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5099551122%_))))
                            (if (gx#stx-pair? _%tl5099751129%_)
                                (let ((_%e5099851132%_
                                       (gx#syntax-e _%tl5099751129%_)))
                                  (let ((_%tl5100051139%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5099851132%_)))
                                        (_%hd5099951136%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5099851132%_))))
                                    (if (gx#stx-null? _%tl5100051139%_)
                                        (_%__kont9351893519%_
                                         _%hd5099951136%_
                                         _%hd5099651126%_)
                                        (if (gx#stx-pair? _%tl5100051139%_)
                                            (let ((_%e5101351061%_
                                                   (gx#syntax-e
                                                    _%tl5100051139%_)))
                                              (let ((_%tl5101551068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5101351061%_)))
                                                    (_%hd5101451065%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5101351061%_))))
                                                (if (gx#identifier?
                                                     _%hd5101451065%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g100220_|
                                                         _%hd5101451065%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5101551068%_)
                                                            (let ((_%e5101651071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5101551068%_)))
                      (let ((_%tl5101851078%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5101651071%_)))
                            (_%hd5101751075%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5101651071%_))))
                        (if (gx#stx-null? _%tl5101851078%_)
                            (_%__kont9352093521%_
                             _%hd5101751075%_
                             _%hd5099951136%_
                             _%hd5099651126%_)
                            (let () (declare (not safe)) (_%g5098851024%_)))))
                    (let () (declare (not safe)) (_%g5098851024%_)))
                (let () (declare (not safe)) (_%g5098851024%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5098851024%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5098851024%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5098851024%_)))))
                        (let () (declare (not safe)) (_%g5098851024%_)))))
                (let () (declare (not safe)) (_%g5098851024%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx51163%_)
        (let ((_%g5116651173%_
               (lambda (_%g5116751169%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5116751169%_))))
          (_%g5116651173%_ _%$stx51163%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx51177%_)
        (let ((_%g5118051187%_
               (lambda (_%g5118151183%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5118151183%_))))
          (_%g5118051187%_ _%$stx51177%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx51191%_)
        (let* ((_%g5119551209%_
                (lambda (_%g5119651205%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5119651205%_)))
               (_%g5119451250%_
                (lambda (_%g5119651213%_)
                  (if (gx#stx-pair? _%g5119651213%_)
                      (let ((_%e5119851216%_ (gx#syntax-e _%g5119651213%_)))
                        (let ((_%hd5119951220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5119851216%_)))
                              (_%tl5120051223%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5119851216%_))))
                          (if (gx#stx-pair? _%tl5120051223%_)
                              (let ((_%e5120151226%_
                                     (gx#syntax-e _%tl5120051223%_)))
                                (let ((_%hd5120251230%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5120151226%_)))
                                      (_%tl5120351233%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5120151226%_))))
                                  (if (gx#stx-null? _%tl5120351233%_)
                                      ((lambda (_%g5119751236%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g5119751236%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g5119751236%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5120251230%_)
                                      (_%g5119551209%_ _%g5119651213%_))))
                              (_%g5119551209%_ _%g5119651213%_))))
                      (_%g5119551209%_ _%g5119651213%_)))))
          (_%g5119451250%_ _%$stx51191%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx51254%_)
        (let* ((_%g5125751280%_
                (lambda (_%g5125851276%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5125851276%_)))
               (_%g5125651404%_
                (lambda (_%g5125851284%_)
                  (if (gx#stx-pair? _%g5125851284%_)
                      (let ((_%e5126351287%_ (gx#syntax-e _%g5125851284%_)))
                        (let ((_%hd5126451291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5126351287%_)))
                              (_%tl5126551294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5126351287%_))))
                          (if (gx#stx-pair? _%tl5126551294%_)
                              (let ((_%e5126651297%_
                                     (gx#syntax-e _%tl5126551294%_)))
                                (let ((_%hd5126751301%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5126651297%_)))
                                      (_%tl5126851304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5126651297%_))))
                                  (if (gx#stx-pair? _%tl5126851304%_)
                                      (let ((_%e5126951307%_
                                             (gx#syntax-e _%tl5126851304%_)))
                                        (let ((_%hd5127051311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5126951307%_)))
                                              (_%tl5127151314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5126951307%_))))
                                          (if (gx#stx-pair? _%tl5127151314%_)
                                              (let ((_%e5127251317%_
                                                     (gx#syntax-e
                                                      _%tl5127151314%_)))
                                                (let ((_%hd5127351321%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5127251317%_)))
                                                      (_%tl5127451324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5127251317%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5127451324%_)
                                                      ((lambda (_%g5125951327%_
                                                                _%g5126051329%_
                                                                _%g5126151330%_
                                                                _%g5126251331%_)
                                                         (let* ((_%g5135151359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5135251355%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5135251355%_)))
                        (_%g5135051378%_
                         (lambda (_%g5135251363%_)
                           ((lambda (_%g5135351366%_)
                              (cons (gx#datum->syntax '#f 'abort!)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'raise-contract-violation-error)
                                                (cons '"contract violation"
                                                      (cons 'context:
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g5135351366%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5126051329%_ '()))
                                      (cons 'value:
                                            (cons _%g5125951327%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5135251363%_))))
                   (_%g5135051378%_
                    (let ((_%$e51390%_
                           (let ((_%$e51382%_ (gx#stx-source _%g5126151330%_)))
                             (if _%$e51382%_
                                 _%$e51382%_
                                 (let ((_%$e51386%_
                                        (gx#stx-source _%stx51254%_)))
                                   (if _%$e51386%_
                                       _%$e51386%_
                                       (gx#stx-source _%g5126251331%_)))))))
                      (if _%$e51390%_
                          ((lambda (_%locat51394%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5139651398%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat51394%_
                                   '#t
                                   _%g5139651398%_)))))
                           _%$e51390%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5127351321%_
               _%hd5127051311%_
               _%hd5126751301%_
               _%hd5126451291%_)
              (_%g5125751280%_ _%g5125851284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5125751280%_
                                               _%g5125851284%_))))
                                      (_%g5125751280%_ _%g5125851284%_))))
                              (_%g5125751280%_ _%g5125851284%_))))
                      (_%g5125751280%_ _%g5125851284%_)))))
          (_%g5125651404%_ _%stx51254%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx51408%_)
        (let* ((_%g5141151426%_
                (lambda (_%g5141251422%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5141251422%_)))
               (_%g5141051522%_
                (lambda (_%g5141251430%_)
                  (if (gx#stx-pair? _%g5141251430%_)
                      (let ((_%e5141551433%_ (gx#syntax-e _%g5141251430%_)))
                        (let ((_%hd5141651437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5141551433%_)))
                              (_%tl5141751440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5141551433%_))))
                          (if (gx#stx-pair? _%tl5141751440%_)
                              (let ((_%e5141851443%_
                                     (gx#syntax-e _%tl5141751440%_)))
                                (let ((_%hd5141951447%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5141851443%_)))
                                      (_%tl5142051450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5141851443%_))))
                                  (if (gx#stx-null? _%tl5142051450%_)
                                      ((lambda (_%g5141351453%_
                                                _%g5141451455%_)
                                         (let* ((_%g5146951477%_
                                                 (lambda (_%g5147051473%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5147051473%_)))
                                                (_%g5146851496%_
                                                 (lambda (_%g5147051481%_)
                                                   ((lambda (_%g5147151484%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'abort!)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'raise-contract-violation-error)
                                (cons '"nil (#f) derefence"
                                      (cons 'context:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%g5147151484%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g5141351453%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5147051481%_))))
                                           (_%g5146851496%_
                                            (let ((_%$e51508%_
                                                   (let ((_%$e51500%_
                                                          (gx#stx-source
                                                           _%g5141351453%_)))
                                                     (if _%$e51500%_
                                                         _%$e51500%_
                                                         (let ((_%$e51504%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx51408%_)))
                   (if _%$e51504%_
                       _%$e51504%_
                       (gx#stx-source _%g5141451455%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e51508%_
                                                  ((lambda (_%locat51512%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5151451516%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat51512%_
                                                           '#t
                                                           _%g5151451516%_)))))
                                                   _%$e51508%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5141951447%_
                                       _%hd5141651437%_)
                                      (_%g5141151426%_ _%g5141251430%_))))
                              (_%g5141151426%_ _%g5141251430%_))))
                      (_%g5141151426%_ _%g5141251430%_)))))
          (_%g5141051522%_ _%stx51408%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx51526%_)
        (let* ((_%g5153051544%_
                (lambda (_%g5153151540%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5153151540%_)))
               (_%g5152951585%_
                (lambda (_%g5153151548%_)
                  (if (gx#stx-pair? _%g5153151548%_)
                      (let ((_%e5153351551%_ (gx#syntax-e _%g5153151548%_)))
                        (let ((_%hd5153451555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5153351551%_)))
                              (_%tl5153551558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5153351551%_))))
                          (if (gx#stx-pair? _%tl5153551558%_)
                              (let ((_%e5153651561%_
                                     (gx#syntax-e _%tl5153551558%_)))
                                (let ((_%hd5153751565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5153651561%_)))
                                      (_%tl5153851568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5153651561%_))))
                                  (if (gx#stx-null? _%tl5153851568%_)
                                      ((lambda (_%g5153251571%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@abort)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _%g5153251571%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5153751565%_)
                                      (_%g5153051544%_ _%g5153151548%_))))
                              (_%g5153051544%_ _%g5153151548%_))))
                      (_%g5153051544%_ _%g5153151548%_)))))
          (_%g5152951585%_ _%$stx51526%_))))))
