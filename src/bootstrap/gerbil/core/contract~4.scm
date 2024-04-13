(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g82597_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45160%_)
        (let* ((_%g4516345181%_
                (lambda (_%g4516445177%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4516445177%_)))
               (_%g4516245376%_
                (lambda (_%g4516445185%_)
                  (if (gx#stx-pair? _%g4516445185%_)
                      (let ((_%e4516745188%_ (gx#syntax-e _%g4516445185%_)))
                        (let ((_%hd4516845192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4516745188%_)))
                              (_%tl4516945195%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4516745188%_))))
                          (if (gx#stx-pair? _%tl4516945195%_)
                              (let ((_%e4517045198%_
                                     (gx#syntax-e _%tl4516945195%_)))
                                (let ((_%hd4517145202%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4517045198%_)))
                                      (_%tl4517245205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4517045198%_))))
                                  (if (gx#stx-pair? _%tl4517245205%_)
                                      (let ((_%e4517345208%_
                                             (gx#syntax-e _%tl4517245205%_)))
                                        (let ((_%hd4517445212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4517345208%_)))
                                              (_%tl4517545215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4517345208%_))))
                                          (if (gx#stx-null? _%tl4517545215%_)
                                              ((lambda (_%L45218%_ _%L45220%_)
                                                 (if (gx#identifier?
                                                      _%L45218%_)
                                                     (let ((_%meta45237%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45160%_
                                                               _%L45218%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45237%_))
                                                           (let* ((_%g4524245257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4524345253%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4524345253%_)))
                          (_%g4524145304%_
                           (lambda (_%g4524345261%_)
                             (if (gx#stx-pair? _%g4524345261%_)
                                 (let ((_%e4524645264%_
                                        (gx#syntax-e _%g4524345261%_)))
                                   (let ((_%hd4524745268%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4524645264%_)))
                                         (_%tl4524845271%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4524645264%_))))
                                     (if (gx#stx-pair? _%tl4524845271%_)
                                         (let ((_%e4524945274%_
                                                (gx#syntax-e
                                                 _%tl4524845271%_)))
                                           (let ((_%hd4525045278%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4524945274%_)))
                                                 (_%tl4525145281%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4524945274%_))))
                                             (if (gx#stx-null?
                                                  _%tl4525145281%_)
                                                 ((lambda (_%L45284%_
                                                           _%L45286%_)
                                                    (if (let ((__tmp82595
                                                               (let ((__obj82456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45237%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82456
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82456
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj82456 'id)))))
                  (declare (not safe))
                  (##memq __tmp82595 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45286%_ '()))
                            (cons _%L45220%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45286%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45220%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L45284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L45286%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4525045278%_
                                                  _%hd4524745268%_)
                                                 (_%g4524245257%_
                                                  _%g4524345261%_))))
                                         (_%g4524245257%_ _%g4524345261%_))))
                                 (_%g4524245257%_ _%g4524345261%_)))))
                     (_%g4524145304%_
                      (list (let ((__obj82457 _%meta45237%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82457
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82457
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj82457
                                   'type-descriptor)))
                            (let ((__obj82458 _%meta45237%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82458
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82458
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj82458
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45237%_))
                       (let* ((_%g4531045325%_
                               (lambda (_%g4531145321%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4531145321%_)))
                              (_%g4530945370%_
                               (lambda (_%g4531145329%_)
                                 (if (gx#stx-pair? _%g4531145329%_)
                                     (let ((_%e4531445332%_
                                            (gx#syntax-e _%g4531145329%_)))
                                       (let ((_%hd4531545336%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4531445332%_)))
                                             (_%tl4531645339%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4531445332%_))))
                                         (if (gx#stx-pair? _%tl4531645339%_)
                                             (let ((_%e4531745342%_
                                                    (gx#syntax-e
                                                     _%tl4531645339%_)))
                                               (let ((_%hd4531845346%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4531745342%_)))
                                                     (_%tl4531945349%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4531745342%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4531945349%_)
                                                     ((lambda (_%L45352%_
                                                               _%L45354%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45354%_ '()))
                            (cons (cons _%L45352%_ (cons _%L45220%_ '()))
                                  '()))))
              _%hd4531845346%_
              _%hd4531545336%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4531045325%_
                                                      _%g4531145329%_))))
                                             (_%g4531045325%_
                                              _%g4531145329%_))))
                                     (_%g4531045325%_ _%g4531145329%_)))))
                         (_%g4530945370%_
                          (list (let ((__obj82455 _%meta45237%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj82455
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj82455
                                         '4
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj82455
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45160%_
                                   _%L45218%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45160%_
                        _%L45218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4516345181%_
                                                      _%g4516445185%_)))
                                               _%hd4517445212%_
                                               _%hd4517145202%_)
                                              (_%g4516345181%_
                                               _%g4516445185%_))))
                                      (_%g4516345181%_ _%g4516445185%_))))
                              (_%g4516345181%_ _%g4516445185%_))))
                      (_%g4516345181%_ _%g4516445185%_)))))
          (_%g4516245376%_ _%stx45160%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45380%_)
        (let* ((_%g4538345401%_
                (lambda (_%g4538445397%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4538445397%_)))
               (_%g4538245595%_
                (lambda (_%g4538445405%_)
                  (if (gx#stx-pair? _%g4538445405%_)
                      (let ((_%e4538745408%_ (gx#syntax-e _%g4538445405%_)))
                        (let ((_%hd4538845412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4538745408%_)))
                              (_%tl4538945415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4538745408%_))))
                          (if (gx#stx-pair? _%tl4538945415%_)
                              (let ((_%e4539045418%_
                                     (gx#syntax-e _%tl4538945415%_)))
                                (let ((_%hd4539145422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4539045418%_)))
                                      (_%tl4539245425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4539045418%_))))
                                  (if (gx#stx-pair? _%tl4539245425%_)
                                      (let ((_%e4539345428%_
                                             (gx#syntax-e _%tl4539245425%_)))
                                        (let ((_%hd4539445432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4539345428%_)))
                                              (_%tl4539545435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4539345428%_))))
                                          (if (gx#stx-null? _%tl4539545435%_)
                                              ((lambda (_%L45438%_ _%L45440%_)
                                                 (if (gx#identifier?
                                                      _%L45438%_)
                                                     (let ((_%meta45456%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45380%_
                                                               _%L45438%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45456%_))
                                                           (let* ((_%g4546145476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4546245472%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4546245472%_)))
                          (_%g4546045523%_
                           (lambda (_%g4546245480%_)
                             (if (gx#stx-pair? _%g4546245480%_)
                                 (let ((_%e4546545483%_
                                        (gx#syntax-e _%g4546245480%_)))
                                   (let ((_%hd4546645487%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4546545483%_)))
                                         (_%tl4546745490%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4546545483%_))))
                                     (if (gx#stx-pair? _%tl4546745490%_)
                                         (let ((_%e4546845493%_
                                                (gx#syntax-e
                                                 _%tl4546745490%_)))
                                           (let ((_%hd4546945497%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4546845493%_)))
                                                 (_%tl4547045500%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4546845493%_))))
                                             (if (gx#stx-null?
                                                  _%tl4547045500%_)
                                                 ((lambda (_%L45503%_
                                                           _%L45505%_)
                                                    (if (let ((__tmp82596
                                                               (let ((__obj82460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45456%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82460
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82460
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj82460 'id)))))
                  (declare (not safe))
                  (##memq __tmp82596 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45505%_ '()))
                            (cons _%L45440%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45505%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45440%_ '()))
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
                                    (cons (cons _%L45503%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons '"bad cast"
                                                (cons _%L45440%_
                                                      (cons _%L45503%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4546945497%_
                                                  _%hd4546645487%_)
                                                 (_%g4546145476%_
                                                  _%g4546245480%_))))
                                         (_%g4546145476%_ _%g4546245480%_))))
                                 (_%g4546145476%_ _%g4546245480%_)))))
                     (_%g4546045523%_
                      (list (let ((__obj82461 _%meta45456%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82461
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82461
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj82461
                                   'type-descriptor)))
                            (let ((__obj82462 _%meta45456%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82462
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82462
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj82462
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45456%_))
                       (let* ((_%g4552945544%_
                               (lambda (_%g4553045540%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4553045540%_)))
                              (_%g4552845589%_
                               (lambda (_%g4553045548%_)
                                 (if (gx#stx-pair? _%g4553045548%_)
                                     (let ((_%e4553345551%_
                                            (gx#syntax-e _%g4553045548%_)))
                                       (let ((_%hd4553445555%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4553345551%_)))
                                             (_%tl4553545558%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4553345551%_))))
                                         (if (gx#stx-pair? _%tl4553545558%_)
                                             (let ((_%e4553645561%_
                                                    (gx#syntax-e
                                                     _%tl4553545558%_)))
                                               (let ((_%hd4553745565%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4553645561%_)))
                                                     (_%tl4553845568%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4553645561%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4553845568%_)
                                                     ((lambda (_%L45571%_
                                                               _%L45573%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45573%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45440%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L45571%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4553745565%_
              _%hd4553445555%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4552945544%_
                                                      _%g4553045548%_))))
                                             (_%g4552945544%_
                                              _%g4553045548%_))))
                                     (_%g4552945544%_ _%g4553045548%_)))))
                         (_%g4552845589%_
                          (list (let ((__obj82459 _%meta45456%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj82459
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj82459
                                         '4
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj82459
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45380%_
                                   _%L45438%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45380%_
                        _%L45438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4538345401%_
                                                      _%g4538445405%_)))
                                               _%hd4539445432%_
                                               _%hd4539145422%_)
                                              (_%g4538345401%_
                                               _%g4538445405%_))))
                                      (_%g4538345401%_ _%g4538445405%_))))
                              (_%g4538345401%_ _%g4538445405%_))))
                      (_%g4538345401%_ _%g4538445405%_)))))
          (_%g4538245595%_ _%stx45380%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45599%_)
        (let* ((_%g4560245620%_
                (lambda (_%g4560345616%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4560345616%_)))
               (_%g4560145706%_
                (lambda (_%g4560345624%_)
                  (if (gx#stx-pair? _%g4560345624%_)
                      (let ((_%e4560645627%_ (gx#syntax-e _%g4560345624%_)))
                        (let ((_%hd4560745631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4560645627%_)))
                              (_%tl4560845634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4560645627%_))))
                          (if (gx#stx-pair? _%tl4560845634%_)
                              (let ((_%e4560945637%_
                                     (gx#syntax-e _%tl4560845634%_)))
                                (let ((_%hd4561045641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4560945637%_)))
                                      (_%tl4561145644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4560945637%_))))
                                  (if (gx#stx-pair? _%tl4561145644%_)
                                      (let ((_%e4561245647%_
                                             (gx#syntax-e _%tl4561145644%_)))
                                        (let ((_%hd4561345651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4561245647%_)))
                                              (_%tl4561445654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4561245647%_))))
                                          (if (gx#stx-null? _%tl4561445654%_)
                                              ((lambda (_%L45657%_ _%L45659%_)
                                                 (if (gx#identifier?
                                                      _%L45657%_)
                                                     (let* ((_%g4567545683%_
                                                             (lambda (_%g4567645679%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4567645679%_)))
                                                            (_%g4567445702%_
                                                             (lambda (_%g4567645687%_)
                                                               ((lambda (_%L45690%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L45690%_ '()))
                                      (cons _%L45659%_ '()))))
                        _%g4567645687%_))))
               (_%g4567445702%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45599%_
                   _%L45657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4560245620%_
                                                      _%g4560345624%_)))
                                               _%hd4561345651%_
                                               _%hd4561045641%_)
                                              (_%g4560245620%_
                                               _%g4560345624%_))))
                                      (_%g4560245620%_ _%g4560345624%_))))
                              (_%g4560245620%_ _%g4560345624%_))))
                      (_%g4560245620%_ _%g4560345624%_)))))
          (_%g4560145706%_ _%stx45599%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45710%_)
        (let* ((_%__stx7716077161%_ _%$stx45710%_)
               (_%g4571545751%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7716077161%_))))
          (let ((_%__kont7716377164%_
                 (lambda (_%L45869%_ _%L45871%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L45871%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L45869%_
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
                           (cons _%L45871%_
                                 (cons _%L45869%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7716577166%_
                 (lambda (_%L45808%_ _%L45810%_ _%L45811%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L45811%_ (cons _%L45810%_ '())))
                               (cons _%L45808%_ '()))))))
            (if (gx#stx-pair? _%__stx7716077161%_)
                (let ((_%e4571945839%_ (gx#syntax-e _%__stx7716077161%_)))
                  (let ((_%tl4572145846%_
                         (let () (declare (not safe)) (##cdr _%e4571945839%_)))
                        (_%hd4572045843%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4571945839%_))))
                    (if (gx#stx-pair? _%tl4572145846%_)
                        (let ((_%e4572245849%_ (gx#syntax-e _%tl4572145846%_)))
                          (let ((_%tl4572445856%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4572245849%_)))
                                (_%hd4572345853%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4572245849%_))))
                            (if (gx#stx-pair? _%tl4572445856%_)
                                (let ((_%e4572545859%_
                                       (gx#syntax-e _%tl4572445856%_)))
                                  (let ((_%tl4572745866%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4572545859%_)))
                                        (_%hd4572645863%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4572545859%_))))
                                    (if (gx#stx-null? _%tl4572745866%_)
                                        (_%__kont7716377164%_
                                         _%hd4572645863%_
                                         _%hd4572345853%_)
                                        (if (gx#stx-pair? _%tl4572745866%_)
                                            (let ((_%e4574045788%_
                                                   (gx#syntax-e
                                                    _%tl4572745866%_)))
                                              (let ((_%tl4574245795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4574045788%_)))
                                                    (_%hd4574145792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4574045788%_))))
                                                (if (gx#identifier?
                                                     _%hd4574145792%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g82597_|
                                                         _%hd4574145792%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4574245795%_)
                                                            (let ((_%e4574345798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4574245795%_)))
                      (let ((_%tl4574545805%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4574345798%_)))
                            (_%hd4574445802%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4574345798%_))))
                        (if (gx#stx-null? _%tl4574545805%_)
                            (_%__kont7716577166%_
                             _%hd4574445802%_
                             _%hd4572645863%_
                             _%hd4572345853%_)
                            (let () (declare (not safe)) (_%g4571545751%_)))))
                    (let () (declare (not safe)) (_%g4571545751%_)))
                (let () (declare (not safe)) (_%g4571545751%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4571545751%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4571545751%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4571545751%_)))))
                        (let () (declare (not safe)) (_%g4571545751%_)))))
                (let () (declare (not safe)) (_%g4571545751%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx45890%_)
        (let ((_%g4589345900%_
               (lambda (_%g4589445896%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4589445896%_))))
          (_%g4589345900%_ _%$stx45890%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx45904%_)
        (let ((_%g4590745914%_
               (lambda (_%g4590845910%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4590845910%_))))
          (_%g4590745914%_ _%$stx45904%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx45918%_)
        (let* ((_%g4592245936%_
                (lambda (_%g4592345932%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4592345932%_)))
               (_%g4592145977%_
                (lambda (_%g4592345940%_)
                  (if (gx#stx-pair? _%g4592345940%_)
                      (let ((_%e4592545943%_ (gx#syntax-e _%g4592345940%_)))
                        (let ((_%hd4592645947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4592545943%_)))
                              (_%tl4592745950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4592545943%_))))
                          (if (gx#stx-pair? _%tl4592745950%_)
                              (let ((_%e4592845953%_
                                     (gx#syntax-e _%tl4592745950%_)))
                                (let ((_%hd4592945957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4592845953%_)))
                                      (_%tl4593045960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4592845953%_))))
                                  (if (gx#stx-null? _%tl4593045960%_)
                                      ((lambda (_%L45963%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L45963%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L45963%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4592945957%_)
                                      (_%g4592245936%_ _%g4592345940%_))))
                              (_%g4592245936%_ _%g4592345940%_))))
                      (_%g4592245936%_ _%g4592345940%_)))))
          (_%g4592145977%_ _%$stx45918%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx45981%_)
        (let* ((_%g4598446007%_
                (lambda (_%g4598546003%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4598546003%_)))
               (_%g4598346131%_
                (lambda (_%g4598546011%_)
                  (if (gx#stx-pair? _%g4598546011%_)
                      (let ((_%e4599046014%_ (gx#syntax-e _%g4598546011%_)))
                        (let ((_%hd4599146018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4599046014%_)))
                              (_%tl4599246021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4599046014%_))))
                          (if (gx#stx-pair? _%tl4599246021%_)
                              (let ((_%e4599346024%_
                                     (gx#syntax-e _%tl4599246021%_)))
                                (let ((_%hd4599446028%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4599346024%_)))
                                      (_%tl4599546031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4599346024%_))))
                                  (if (gx#stx-pair? _%tl4599546031%_)
                                      (let ((_%e4599646034%_
                                             (gx#syntax-e _%tl4599546031%_)))
                                        (let ((_%hd4599746038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4599646034%_)))
                                              (_%tl4599846041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4599646034%_))))
                                          (if (gx#stx-pair? _%tl4599846041%_)
                                              (let ((_%e4599946044%_
                                                     (gx#syntax-e
                                                      _%tl4599846041%_)))
                                                (let ((_%hd4600046048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4599946044%_)))
                                                      (_%tl4600146051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4599946044%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4600146051%_)
                                                      ((lambda (_%L46054%_
                                                                _%L46056%_
                                                                _%L46057%_
                                                                _%L46058%_)
                                                         (let* ((_%g4607846086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4607946082%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4607946082%_)))
                        (_%g4607746105%_
                         (lambda (_%g4607946090%_)
                           ((lambda (_%L46093%_)
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
                                (cons _%L46093%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L46056%_ '()))
                                      (cons 'value:
                                            (cons _%L46054%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4607946090%_))))
                   (_%g4607746105%_
                    (let ((_%$e46117%_
                           (let ((_%$e46109%_ (gx#stx-source _%L46057%_)))
                             (if _%$e46109%_
                                 _%$e46109%_
                                 (let ((_%$e46113%_
                                        (gx#stx-source _%stx45981%_)))
                                   (if _%$e46113%_
                                       _%$e46113%_
                                       (gx#stx-source _%L46058%_)))))))
                      (if _%$e46117%_
                          ((lambda (_%locat46121%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4612346125%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46121%_
                                   '#t
                                   _%g4612346125%_)))))
                           _%$e46117%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4600046048%_
               _%hd4599746038%_
               _%hd4599446028%_
               _%hd4599146018%_)
              (_%g4598446007%_ _%g4598546011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4598446007%_
                                               _%g4598546011%_))))
                                      (_%g4598446007%_ _%g4598546011%_))))
                              (_%g4598446007%_ _%g4598546011%_))))
                      (_%g4598446007%_ _%g4598546011%_)))))
          (_%g4598346131%_ _%stx45981%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46135%_)
        (let* ((_%g4613846153%_
                (lambda (_%g4613946149%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4613946149%_)))
               (_%g4613746249%_
                (lambda (_%g4613946157%_)
                  (if (gx#stx-pair? _%g4613946157%_)
                      (let ((_%e4614246160%_ (gx#syntax-e _%g4613946157%_)))
                        (let ((_%hd4614346164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4614246160%_)))
                              (_%tl4614446167%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4614246160%_))))
                          (if (gx#stx-pair? _%tl4614446167%_)
                              (let ((_%e4614546170%_
                                     (gx#syntax-e _%tl4614446167%_)))
                                (let ((_%hd4614646174%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4614546170%_)))
                                      (_%tl4614746177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4614546170%_))))
                                  (if (gx#stx-null? _%tl4614746177%_)
                                      ((lambda (_%L46180%_ _%L46182%_)
                                         (let* ((_%g4619646204%_
                                                 (lambda (_%g4619746200%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4619746200%_)))
                                                (_%g4619546223%_
                                                 (lambda (_%g4619746208%_)
                                                   ((lambda (_%L46211%_)
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
                                                        (cons _%L46211%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L46180%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4619746208%_))))
                                           (_%g4619546223%_
                                            (let ((_%$e46235%_
                                                   (let ((_%$e46227%_
                                                          (gx#stx-source
                                                           _%L46180%_)))
                                                     (if _%$e46227%_
                                                         _%$e46227%_
                                                         (let ((_%$e46231%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46135%_)))
                   (if _%$e46231%_ _%$e46231%_ (gx#stx-source _%L46182%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46235%_
                                                  ((lambda (_%locat46239%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4624146243%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46239%_
                                                           '#t
                                                           _%g4624146243%_)))))
                                                   _%$e46235%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4614646174%_
                                       _%hd4614346164%_)
                                      (_%g4613846153%_ _%g4613946157%_))))
                              (_%g4613846153%_ _%g4613946157%_))))
                      (_%g4613846153%_ _%g4613946157%_)))))
          (_%g4613746249%_ _%stx46135%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46253%_)
        (let* ((_%g4625746271%_
                (lambda (_%g4625846267%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4625846267%_)))
               (_%g4625646312%_
                (lambda (_%g4625846275%_)
                  (if (gx#stx-pair? _%g4625846275%_)
                      (let ((_%e4626046278%_ (gx#syntax-e _%g4625846275%_)))
                        (let ((_%hd4626146282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4626046278%_)))
                              (_%tl4626246285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4626046278%_))))
                          (if (gx#stx-pair? _%tl4626246285%_)
                              (let ((_%e4626346288%_
                                     (gx#syntax-e _%tl4626246285%_)))
                                (let ((_%hd4626446292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4626346288%_)))
                                      (_%tl4626546295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4626346288%_))))
                                  (if (gx#stx-null? _%tl4626546295%_)
                                      ((lambda (_%L46298%_)
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
                         (cons _%L46298%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4626446292%_)
                                      (_%g4625746271%_ _%g4625846275%_))))
                              (_%g4625746271%_ _%g4625846275%_))))
                      (_%g4625746271%_ _%g4625846275%_)))))
          (_%g4625646312%_ _%$stx46253%_))))))
