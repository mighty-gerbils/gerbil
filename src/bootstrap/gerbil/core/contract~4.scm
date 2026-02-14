(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g109206_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g109207_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g109208_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx59181%_)
        (let* ((_%g5918459202%_
                (lambda (_%g5918559198%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5918559198%_)))
               (_%g5918359397%_
                (lambda (_%g5918559206%_)
                  (if (gx#stx-pair? _%g5918559206%_)
                      (let ((_%e5918859209%_ (gx#syntax-e _%g5918559206%_)))
                        (let ((_%hd5918959213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5918859209%_)))
                              (_%tl5919059216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5918859209%_))))
                          (if (gx#stx-pair? _%tl5919059216%_)
                              (let ((_%e5919159219%_
                                     (gx#syntax-e _%tl5919059216%_)))
                                (let ((_%hd5919259223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5919159219%_)))
                                      (_%tl5919359226%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5919159219%_))))
                                  (if (gx#stx-pair? _%tl5919359226%_)
                                      (let ((_%e5919459229%_
                                             (gx#syntax-e _%tl5919359226%_)))
                                        (let ((_%hd5919559233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5919459229%_)))
                                              (_%tl5919659236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5919459229%_))))
                                          (if (gx#stx-null? _%tl5919659236%_)
                                              ((lambda (_%g5918659239%_
                                                        _%g5918759241%_)
                                                 (if (gx#identifier?
                                                      _%g5918659239%_)
                                                     (let ((_%meta59258%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx59181%_
                                                               _%g5918659239%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta59258%_))
                                                           (let* ((_%g5926359278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g5926459274%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5926459274%_)))
                          (_%g5926259325%_
                           (lambda (_%g5926459282%_)
                             (if (gx#stx-pair? _%g5926459282%_)
                                 (let ((_%e5926759285%_
                                        (gx#syntax-e _%g5926459282%_)))
                                   (let ((_%hd5926859289%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5926759285%_)))
                                         (_%tl5926959292%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5926759285%_))))
                                     (if (gx#stx-pair? _%tl5926959292%_)
                                         (let ((_%e5927059295%_
                                                (gx#syntax-e
                                                 _%tl5926959292%_)))
                                           (let ((_%hd5927159299%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5927059295%_)))
                                                 (_%tl5927259302%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5927059295%_))))
                                             (if (gx#stx-null?
                                                  _%tl5927259302%_)
                                                 ((lambda (_%g5926559305%_
                                                           _%g5926659307%_)
                                                    (if (let ((__tmp109204
                                                               (let ((__obj109033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta59258%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj109033
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj109033
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj109033 'id)))))
                  (declare (not safe))
                  (##memq __tmp109204 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5926659307%_ '()))
                            (cons _%g5918759241%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5926659307%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5918759241%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g5926559305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g5918759241%_
                                                (cons (cons _%g5926559305%_
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
                                                  _%hd5927159299%_
                                                  _%hd5926859289%_)
                                                 (_%g5926359278%_
                                                  _%g5926459282%_))))
                                         (_%g5926359278%_ _%g5926459282%_))))
                                 (_%g5926359278%_ _%g5926459282%_)))))
                     (_%g5926259325%_
                      (list (let ((__obj109034 _%meta59258%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj109034
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj109034
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj109034
                                   'type-descriptor)))
                            (let ((__obj109035 _%meta59258%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj109035
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj109035
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj109035
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta59258%_))
                       (let* ((_%g5933159346%_
                               (lambda (_%g5933259342%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5933259342%_)))
                              (_%g5933059391%_
                               (lambda (_%g5933259350%_)
                                 (if (gx#stx-pair? _%g5933259350%_)
                                     (let ((_%e5933559353%_
                                            (gx#syntax-e _%g5933259350%_)))
                                       (let ((_%hd5933659357%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5933559353%_)))
                                             (_%tl5933759360%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5933559353%_))))
                                         (if (gx#stx-pair? _%tl5933759360%_)
                                             (let ((_%e5933859363%_
                                                    (gx#syntax-e
                                                     _%tl5933759360%_)))
                                               (let ((_%hd5933959367%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5933859363%_)))
                                                     (_%tl5934059370%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5933859363%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5934059370%_)
                                                     ((lambda (_%g5933359373%_
                                                               _%g5933459375%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5933459375%_ '()))
                            (cons (cons _%g5933359373%_
                                        (cons _%g5918759241%_ '()))
                                  '()))))
              _%hd5933959367%_
              _%hd5933659357%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5933159346%_
                                                      _%g5933259350%_))))
                                             (_%g5933159346%_
                                              _%g5933259350%_))))
                                     (_%g5933159346%_ _%g5933259350%_)))))
                         (_%g5933059391%_
                          (list (let ((__obj109032 _%meta59258%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj109032
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj109032
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj109032
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx59181%_
                                   _%g5918659239%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx59181%_
                        _%g5918659239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5918459202%_
                                                      _%g5918559206%_)))
                                               _%hd5919559233%_
                                               _%hd5919259223%_)
                                              (_%g5918459202%_
                                               _%g5918559206%_))))
                                      (_%g5918459202%_ _%g5918559206%_))))
                              (_%g5918459202%_ _%g5918559206%_))))
                      (_%g5918459202%_ _%g5918559206%_)))))
          (_%g5918359397%_ _%stx59181%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx59401%_)
        (let* ((_%g5940459422%_
                (lambda (_%g5940559418%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5940559418%_)))
               (_%g5940359616%_
                (lambda (_%g5940559426%_)
                  (if (gx#stx-pair? _%g5940559426%_)
                      (let ((_%e5940859429%_ (gx#syntax-e _%g5940559426%_)))
                        (let ((_%hd5940959433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5940859429%_)))
                              (_%tl5941059436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5940859429%_))))
                          (if (gx#stx-pair? _%tl5941059436%_)
                              (let ((_%e5941159439%_
                                     (gx#syntax-e _%tl5941059436%_)))
                                (let ((_%hd5941259443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5941159439%_)))
                                      (_%tl5941359446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5941159439%_))))
                                  (if (gx#stx-pair? _%tl5941359446%_)
                                      (let ((_%e5941459449%_
                                             (gx#syntax-e _%tl5941359446%_)))
                                        (let ((_%hd5941559453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5941459449%_)))
                                              (_%tl5941659456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5941459449%_))))
                                          (if (gx#stx-null? _%tl5941659456%_)
                                              ((lambda (_%g5940659459%_
                                                        _%g5940759461%_)
                                                 (if (gx#identifier?
                                                      _%g5940659459%_)
                                                     (let ((_%meta59477%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx59401%_
                                                               _%g5940659459%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta59477%_))
                                                           (let* ((_%g5948259497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g5948359493%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5948359493%_)))
                          (_%g5948159544%_
                           (lambda (_%g5948359501%_)
                             (if (gx#stx-pair? _%g5948359501%_)
                                 (let ((_%e5948659504%_
                                        (gx#syntax-e _%g5948359501%_)))
                                   (let ((_%hd5948759508%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5948659504%_)))
                                         (_%tl5948859511%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5948659504%_))))
                                     (if (gx#stx-pair? _%tl5948859511%_)
                                         (let ((_%e5948959514%_
                                                (gx#syntax-e
                                                 _%tl5948859511%_)))
                                           (let ((_%hd5949059518%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5948959514%_)))
                                                 (_%tl5949159521%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5948959514%_))))
                                             (if (gx#stx-null?
                                                  _%tl5949159521%_)
                                                 ((lambda (_%g5948459524%_
                                                           _%g5948559526%_)
                                                    (if (let ((__tmp109205
                                                               (let ((__obj109037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta59477%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj109037
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj109037
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj109037 'id)))))
                  (declare (not safe))
                  (##memq __tmp109205 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5948559526%_ '()))
                            (cons _%g5940759461%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5948559526%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5940759461%_ '()))
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
                                    (cons (cons _%g5948459524%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g5940759461%_
                                                (cons (cons _%g5948459524%_
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
                                                  _%hd5949059518%_
                                                  _%hd5948759508%_)
                                                 (_%g5948259497%_
                                                  _%g5948359501%_))))
                                         (_%g5948259497%_ _%g5948359501%_))))
                                 (_%g5948259497%_ _%g5948359501%_)))))
                     (_%g5948159544%_
                      (list (let ((__obj109038 _%meta59477%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj109038
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj109038
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj109038
                                   'type-descriptor)))
                            (let ((__obj109039 _%meta59477%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj109039
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj109039
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj109039
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta59477%_))
                       (let* ((_%g5955059565%_
                               (lambda (_%g5955159561%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5955159561%_)))
                              (_%g5954959610%_
                               (lambda (_%g5955159569%_)
                                 (if (gx#stx-pair? _%g5955159569%_)
                                     (let ((_%e5955459572%_
                                            (gx#syntax-e _%g5955159569%_)))
                                       (let ((_%hd5955559576%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5955459572%_)))
                                             (_%tl5955659579%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5955459572%_))))
                                         (if (gx#stx-pair? _%tl5955659579%_)
                                             (let ((_%e5955759582%_
                                                    (gx#syntax-e
                                                     _%tl5955659579%_)))
                                               (let ((_%hd5955859586%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5955759582%_)))
                                                     (_%tl5955959589%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5955759582%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5955959589%_)
                                                     ((lambda (_%g5955259592%_
                                                               _%g5955359594%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5955359594%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5940759461%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g5955259592%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd5955859586%_
              _%hd5955559576%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5955059565%_
                                                      _%g5955159569%_))))
                                             (_%g5955059565%_
                                              _%g5955159569%_))))
                                     (_%g5955059565%_ _%g5955159569%_)))))
                         (_%g5954959610%_
                          (list (let ((__obj109036 _%meta59477%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj109036
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj109036
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj109036
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx59401%_
                                   _%g5940659459%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx59401%_
                        _%g5940659459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5940459422%_
                                                      _%g5940559426%_)))
                                               _%hd5941559453%_
                                               _%hd5941259443%_)
                                              (_%g5940459422%_
                                               _%g5940559426%_))))
                                      (_%g5940459422%_ _%g5940559426%_))))
                              (_%g5940459422%_ _%g5940559426%_))))
                      (_%g5940459422%_ _%g5940559426%_)))))
          (_%g5940359616%_ _%stx59401%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx59620%_)
        (let* ((_%g5962359641%_
                (lambda (_%g5962459637%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5962459637%_)))
               (_%g5962259727%_
                (lambda (_%g5962459645%_)
                  (if (gx#stx-pair? _%g5962459645%_)
                      (let ((_%e5962759648%_ (gx#syntax-e _%g5962459645%_)))
                        (let ((_%hd5962859652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5962759648%_)))
                              (_%tl5962959655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5962759648%_))))
                          (if (gx#stx-pair? _%tl5962959655%_)
                              (let ((_%e5963059658%_
                                     (gx#syntax-e _%tl5962959655%_)))
                                (let ((_%hd5963159662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5963059658%_)))
                                      (_%tl5963259665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5963059658%_))))
                                  (if (gx#stx-pair? _%tl5963259665%_)
                                      (let ((_%e5963359668%_
                                             (gx#syntax-e _%tl5963259665%_)))
                                        (let ((_%hd5963459672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5963359668%_)))
                                              (_%tl5963559675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5963359668%_))))
                                          (if (gx#stx-null? _%tl5963559675%_)
                                              ((lambda (_%g5962559678%_
                                                        _%g5962659680%_)
                                                 (if (gx#identifier?
                                                      _%g5962559678%_)
                                                     (let* ((_%g5969659704%_
                                                             (lambda (_%g5969759700%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g5969759700%_)))
                                                            (_%g5969559723%_
                                                             (lambda (_%g5969759708%_)
                                                               ((lambda (_%g5969859711%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g5969859711%_ '()))
                                      (cons _%g5962659680%_ '()))))
                        _%g5969759708%_))))
               (_%g5969559723%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx59620%_
                   _%g5962559678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5962359641%_
                                                      _%g5962459645%_)))
                                               _%hd5963459672%_
                                               _%hd5963159662%_)
                                              (_%g5962359641%_
                                               _%g5962459645%_))))
                                      (_%g5962359641%_ _%g5962459645%_))))
                              (_%g5962359641%_ _%g5962459645%_))))
                      (_%g5962359641%_ _%g5962459645%_)))))
          (_%g5962259727%_ _%stx59620%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx59731%_)
        (let* ((_%__stx102379102380%_ _%$stx59731%_)
               (_%g5973759821%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx102379102380%_))))
          (let ((_%__kont102382102383%_
                 (lambda (_%g5973960125%_
                          _%g5974060127%_
                          _%g5974160128%_
                          _%g5974260129%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5974260129%_
                                           (cons _%g5974060127%_
                                                 (foldr (lambda (_%g6015360156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6015460159%_)
                  (cons _%g6015360156%_ _%g6015460159%_))
                '()
                _%g5973960125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5974160128%_ '())))))
                (_%__kont102386102387%_
                 (lambda (_%g5976760003%_
                          _%g5976860005%_
                          _%g5976960006%_
                          _%g5977060007%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5977060007%_
                                           (cons _%g5976860005%_
                                                 (foldr (lambda (_%g6003160034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6003260037%_)
                  (cons _%g6003160034%_ _%g6003260037%_))
                '()
                _%g5976760003%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5976960006%_ '())))))
                (_%__kont102390102391%_
                 (lambda (_%g5979559886%_ _%g5979659888%_ _%g5979759889%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5979759889%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5979659888%_
                                                       (foldr (lambda (_%g5990959912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5991059915%_)
                        (cons _%g5990959912%_ _%g5991059915%_))
                      '()
                      _%g5979559886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match102504102505%_
                    (lambda (_%e5979859828%_
                             _%hd5979959832%_
                             _%tl5980059835%_
                             _%e5980159838%_
                             _%hd5980259842%_
                             _%tl5980359845%_
                             _%e5980459848%_
                             _%hd5980559852%_
                             _%tl5980659855%_
                             _%__splice102392102393%_
                             _%target5980759858%_
                             _%tl5980959861%_)
                      (letrec ((_%loop5981059864%_
                                (lambda (_%hd5980859868%_ _%rest5981459871%_)
                                  (if (gx#stx-pair? _%hd5980859868%_)
                                      (let ((_%e5981159873%_
                                             (gx#syntax-e _%hd5980859868%_)))
                                        (let ((_%lp-tl5981359880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5981159873%_)))
                                              (_%lp-hd5981259877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5981159873%_))))
                                          (_%loop5981059864%_
                                           _%lp-tl5981359880%_
                                           (cons _%lp-hd5981259877%_
                                                 _%rest5981459871%_))))
                                      (let ((_%rest5981559883%_
                                             (reverse _%rest5981459871%_)))
                                        (_%__kont102390102391%_
                                         _%rest5981559883%_
                                         _%hd5980559852%_
                                         _%hd5980259842%_))))))
                        (_%loop5981059864%_ _%target5980759858%_ '()))))
                   (_%__match102478102479%_
                    (lambda (_%e5977159925%_
                             _%hd5977259929%_
                             _%tl5977359932%_
                             _%e5977459935%_
                             _%hd5977559939%_
                             _%tl5977659942%_
                             _%e5977759945%_
                             _%hd5977859949%_
                             _%tl5977959952%_
                             _%e5978059955%_
                             _%hd5978159959%_
                             _%tl5978259962%_
                             _%e5978359965%_
                             _%hd5978459969%_
                             _%tl5978559972%_
                             _%__splice102388102389%_
                             _%target5978659975%_
                             _%tl5978859978%_)
                      (letrec ((_%loop5978959981%_
                                (lambda (_%hd5978759985%_ _%rest5979359988%_)
                                  (if (gx#stx-pair? _%hd5978759985%_)
                                      (let ((_%e5979059990%_
                                             (gx#syntax-e _%hd5978759985%_)))
                                        (let ((_%lp-tl5979259997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5979059990%_)))
                                              (_%lp-hd5979159994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5979059990%_))))
                                          (_%loop5978959981%_
                                           _%lp-tl5979259997%_
                                           (cons _%lp-hd5979159994%_
                                                 _%rest5979359988%_))))
                                      (let ((_%rest5979460000%_
                                             (reverse _%rest5979359988%_)))
                                        (_%__kont102386102387%_
                                         _%rest5979460000%_
                                         _%hd5978459969%_
                                         _%hd5978159959%_
                                         _%hd5977559939%_))))))
                        (_%loop5978959981%_ _%target5978659975%_ '()))))
                   (_%__match102436102437%_
                    (lambda (_%e5974360047%_
                             _%hd5974460051%_
                             _%tl5974560054%_
                             _%e5974660057%_
                             _%hd5974760061%_
                             _%tl5974860064%_
                             _%e5974960067%_
                             _%hd5975060071%_
                             _%tl5975160074%_
                             _%e5975260077%_
                             _%hd5975360081%_
                             _%tl5975460084%_
                             _%e5975560087%_
                             _%hd5975660091%_
                             _%tl5975760094%_
                             _%__splice102384102385%_
                             _%target5975860097%_
                             _%tl5976060100%_)
                      (letrec ((_%loop5976160103%_
                                (lambda (_%hd5975960107%_ _%rest5976560110%_)
                                  (if (gx#stx-pair? _%hd5975960107%_)
                                      (let ((_%e5976260112%_
                                             (gx#syntax-e _%hd5975960107%_)))
                                        (let ((_%lp-tl5976460119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5976260112%_)))
                                              (_%lp-hd5976360116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5976260112%_))))
                                          (_%loop5976160103%_
                                           _%lp-tl5976460119%_
                                           (cons _%lp-hd5976360116%_
                                                 _%rest5976560110%_))))
                                      (let ((_%rest5976660122%_
                                             (reverse _%rest5976560110%_)))
                                        (_%__kont102382102383%_
                                         _%rest5976660122%_
                                         _%hd5975660091%_
                                         _%hd5975360081%_
                                         _%hd5974760061%_))))))
                        (_%loop5976160103%_ _%target5975860097%_ '())))))
              (if (gx#stx-pair? _%__stx102379102380%_)
                  (let ((_%e5974360047%_ (gx#syntax-e _%__stx102379102380%_)))
                    (let ((_%tl5974560054%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5974360047%_)))
                          (_%hd5974460051%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5974360047%_))))
                      (if (gx#stx-pair? _%tl5974560054%_)
                          (let ((_%e5974660057%_
                                 (gx#syntax-e _%tl5974560054%_)))
                            (let ((_%tl5974860064%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5974660057%_)))
                                  (_%hd5974760061%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5974660057%_))))
                              (if (gx#stx-pair? _%tl5974860064%_)
                                  (let ((_%e5974960067%_
                                         (gx#syntax-e _%tl5974860064%_)))
                                    (let ((_%tl5975160074%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5974960067%_)))
                                          (_%hd5975060071%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5974960067%_))))
                                      (if (gx#identifier? _%hd5975060071%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g109206_|
                                               _%hd5975060071%_)
                                              (if (gx#stx-pair?
                                                   _%tl5975160074%_)
                                                  (let ((_%e5975260077%_
                                                         (gx#syntax-e
                                                          _%tl5975160074%_)))
                                                    (let ((_%tl5975460084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5975260077%_)))
                                                          (_%hd5975360081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5975260077%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5975460084%_)
                                                          (let ((_%e5975560087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5975460084%_)))
                    (let ((_%tl5975760094%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5975560087%_)))
                          (_%hd5975660091%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5975560087%_))))
                      (if (gx#stx-pair/null? _%tl5975760094%_)
                          (let ((_%__splice102384102385%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5975760094%_
                                  '0)))
                            (let ((_%tl5976060100%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102384102385%_
                                      '1)))
                                  (_%target5975860097%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102384102385%_
                                      '0))))
                              (if (gx#stx-null? _%tl5976060100%_)
                                  (_%__match102436102437%_
                                   _%e5974360047%_
                                   _%hd5974460051%_
                                   _%tl5974560054%_
                                   _%e5974660057%_
                                   _%hd5974760061%_
                                   _%tl5974860064%_
                                   _%e5974960067%_
                                   _%hd5975060071%_
                                   _%tl5975160074%_
                                   _%e5975260077%_
                                   _%hd5975360081%_
                                   _%tl5975460084%_
                                   _%e5975560087%_
                                   _%hd5975660091%_
                                   _%tl5975760094%_
                                   _%__splice102384102385%_
                                   _%target5975860097%_
                                   _%tl5976060100%_)
                                  (if (gx#stx-pair/null? _%tl5975160074%_)
                                      (let ((_%__splice102392102393%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5975160074%_
                                              '0)))
                                        (let ((_%tl5980959861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice102392102393%_
                                                  '1)))
                                              (_%target5980759858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice102392102393%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5980959861%_)
                                              (_%__match102504102505%_
                                               _%e5974360047%_
                                               _%hd5974460051%_
                                               _%tl5974560054%_
                                               _%e5974660057%_
                                               _%hd5974760061%_
                                               _%tl5974860064%_
                                               _%e5974960067%_
                                               _%hd5975060071%_
                                               _%tl5975160074%_
                                               _%__splice102392102393%_
                                               _%target5980759858%_
                                               _%tl5980959861%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5973759821%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5973759821%_))))))
                          (if (gx#stx-pair/null? _%tl5975160074%_)
                              (let ((_%__splice102392102393%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5975160074%_
                                      '0)))
                                (let ((_%tl5980959861%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102392102393%_
                                          '1)))
                                      (_%target5980759858%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102392102393%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5980959861%_)
                                      (_%__match102504102505%_
                                       _%e5974360047%_
                                       _%hd5974460051%_
                                       _%tl5974560054%_
                                       _%e5974660057%_
                                       _%hd5974760061%_
                                       _%tl5974860064%_
                                       _%e5974960067%_
                                       _%hd5975060071%_
                                       _%tl5975160074%_
                                       _%__splice102392102393%_
                                       _%target5980759858%_
                                       _%tl5980959861%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5973759821%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5973759821%_))))))
                  (if (gx#stx-pair/null? _%tl5975160074%_)
                      (let ((_%__splice102392102393%_
                             (gx#syntax-split-splice->vector
                              _%tl5975160074%_
                              '0)))
                        (let ((_%tl5980959861%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102392102393%_ '1)))
                              (_%target5980759858%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102392102393%_ '0))))
                          (if (gx#stx-null? _%tl5980959861%_)
                              (_%__match102504102505%_
                               _%e5974360047%_
                               _%hd5974460051%_
                               _%tl5974560054%_
                               _%e5974660057%_
                               _%hd5974760061%_
                               _%tl5974860064%_
                               _%e5974960067%_
                               _%hd5975060071%_
                               _%tl5975160074%_
                               _%__splice102392102393%_
                               _%target5980759858%_
                               _%tl5980959861%_)
                              (let ()
                                (declare (not safe))
                                (_%g5973759821%_)))))
                      (let () (declare (not safe)) (_%g5973759821%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5975160074%_)
                                                      (let ((_%__splice102392102393%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5975160074%_
                                                              '0)))
                                                        (let ((_%tl5980959861%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice102392102393%_ '1)))
                      (_%target5980759858%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice102392102393%_ '0))))
                  (if (gx#stx-null? _%tl5980959861%_)
                      (_%__match102504102505%_
                       _%e5974360047%_
                       _%hd5974460051%_
                       _%tl5974560054%_
                       _%e5974660057%_
                       _%hd5974760061%_
                       _%tl5974860064%_
                       _%e5974960067%_
                       _%hd5975060071%_
                       _%tl5975160074%_
                       _%__splice102392102393%_
                       _%target5980759858%_
                       _%tl5980959861%_)
                      (let () (declare (not safe)) (_%g5973759821%_)))))
              (let () (declare (not safe)) (_%g5973759821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g109207_|
                                                   _%hd5975060071%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5975160074%_)
                                                      (let ((_%e5978059955%_
                                                             (gx#syntax-e
                                                              _%tl5975160074%_)))
                                                        (let ((_%tl5978259962%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5978059955%_)))
                      (_%hd5978159959%_
                       (let () (declare (not safe)) (##car _%e5978059955%_))))
                  (if (gx#stx-pair? _%tl5978259962%_)
                      (let ((_%e5978359965%_ (gx#syntax-e _%tl5978259962%_)))
                        (let ((_%tl5978559972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5978359965%_)))
                              (_%hd5978459969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5978359965%_))))
                          (if (gx#stx-pair/null? _%tl5978559972%_)
                              (let ((_%__splice102388102389%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5978559972%_
                                      '0)))
                                (let ((_%tl5978859978%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102388102389%_
                                          '1)))
                                      (_%target5978659975%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102388102389%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5978859978%_)
                                      (_%__match102478102479%_
                                       _%e5974360047%_
                                       _%hd5974460051%_
                                       _%tl5974560054%_
                                       _%e5974660057%_
                                       _%hd5974760061%_
                                       _%tl5974860064%_
                                       _%e5974960067%_
                                       _%hd5975060071%_
                                       _%tl5975160074%_
                                       _%e5978059955%_
                                       _%hd5978159959%_
                                       _%tl5978259962%_
                                       _%e5978359965%_
                                       _%hd5978459969%_
                                       _%tl5978559972%_
                                       _%__splice102388102389%_
                                       _%target5978659975%_
                                       _%tl5978859978%_)
                                      (if (gx#stx-pair/null? _%tl5975160074%_)
                                          (let ((_%__splice102392102393%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5975160074%_
                                                  '0)))
                                            (let ((_%tl5980959861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice102392102393%_
                                                      '1)))
                                                  (_%target5980759858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice102392102393%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5980959861%_)
                                                  (_%__match102504102505%_
                                                   _%e5974360047%_
                                                   _%hd5974460051%_
                                                   _%tl5974560054%_
                                                   _%e5974660057%_
                                                   _%hd5974760061%_
                                                   _%tl5974860064%_
                                                   _%e5974960067%_
                                                   _%hd5975060071%_
                                                   _%tl5975160074%_
                                                   _%__splice102392102393%_
                                                   _%target5980759858%_
                                                   _%tl5980959861%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5973759821%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5973759821%_))))))
                              (if (gx#stx-pair/null? _%tl5975160074%_)
                                  (let ((_%__splice102392102393%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5975160074%_
                                          '0)))
                                    (let ((_%tl5980959861%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102392102393%_
                                              '1)))
                                          (_%target5980759858%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102392102393%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5980959861%_)
                                          (_%__match102504102505%_
                                           _%e5974360047%_
                                           _%hd5974460051%_
                                           _%tl5974560054%_
                                           _%e5974660057%_
                                           _%hd5974760061%_
                                           _%tl5974860064%_
                                           _%e5974960067%_
                                           _%hd5975060071%_
                                           _%tl5975160074%_
                                           _%__splice102392102393%_
                                           _%target5980759858%_
                                           _%tl5980959861%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5973759821%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5973759821%_))))))
                      (if (gx#stx-pair/null? _%tl5975160074%_)
                          (let ((_%__splice102392102393%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5975160074%_
                                  '0)))
                            (let ((_%tl5980959861%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102392102393%_
                                      '1)))
                                  (_%target5980759858%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102392102393%_
                                      '0))))
                              (if (gx#stx-null? _%tl5980959861%_)
                                  (_%__match102504102505%_
                                   _%e5974360047%_
                                   _%hd5974460051%_
                                   _%tl5974560054%_
                                   _%e5974660057%_
                                   _%hd5974760061%_
                                   _%tl5974860064%_
                                   _%e5974960067%_
                                   _%hd5975060071%_
                                   _%tl5975160074%_
                                   _%__splice102392102393%_
                                   _%target5980759858%_
                                   _%tl5980959861%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5973759821%_)))))
                          (let () (declare (not safe)) (_%g5973759821%_))))))
              (if (gx#stx-pair/null? _%tl5975160074%_)
                  (let ((_%__splice102392102393%_
                         (gx#syntax-split-splice->vector _%tl5975160074%_ '0)))
                    (let ((_%tl5980959861%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102392102393%_ '1)))
                          (_%target5980759858%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102392102393%_ '0))))
                      (if (gx#stx-null? _%tl5980959861%_)
                          (_%__match102504102505%_
                           _%e5974360047%_
                           _%hd5974460051%_
                           _%tl5974560054%_
                           _%e5974660057%_
                           _%hd5974760061%_
                           _%tl5974860064%_
                           _%e5974960067%_
                           _%hd5975060071%_
                           _%tl5975160074%_
                           _%__splice102392102393%_
                           _%target5980759858%_
                           _%tl5980959861%_)
                          (let () (declare (not safe)) (_%g5973759821%_)))))
                  (let () (declare (not safe)) (_%g5973759821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5975160074%_)
                                                      (let ((_%__splice102392102393%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5975160074%_
                                                              '0)))
                                                        (let ((_%tl5980959861%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice102392102393%_ '1)))
                      (_%target5980759858%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice102392102393%_ '0))))
                  (if (gx#stx-null? _%tl5980959861%_)
                      (_%__match102504102505%_
                       _%e5974360047%_
                       _%hd5974460051%_
                       _%tl5974560054%_
                       _%e5974660057%_
                       _%hd5974760061%_
                       _%tl5974860064%_
                       _%e5974960067%_
                       _%hd5975060071%_
                       _%tl5975160074%_
                       _%__splice102392102393%_
                       _%target5980759858%_
                       _%tl5980959861%_)
                      (let () (declare (not safe)) (_%g5973759821%_)))))
              (let () (declare (not safe)) (_%g5973759821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5975160074%_)
                                              (let ((_%__splice102392102393%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5975160074%_
                                                      '0)))
                                                (let ((_%tl5980959861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice102392102393%_
                                                          '1)))
                                                      (_%target5980759858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice102392102393%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5980959861%_)
                                                      (_%__match102504102505%_
                                                       _%e5974360047%_
                                                       _%hd5974460051%_
                                                       _%tl5974560054%_
                                                       _%e5974660057%_
                                                       _%hd5974760061%_
                                                       _%tl5974860064%_
                                                       _%e5974960067%_
                                                       _%hd5975060071%_
                                                       _%tl5975160074%_
                                                       _%__splice102392102393%_
                                                       _%target5980759858%_
                                                       _%tl5980959861%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5973759821%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5973759821%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5973759821%_)))))
                          (let () (declare (not safe)) (_%g5973759821%_)))))
                  (let () (declare (not safe)) (_%g5973759821%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx60169%_)
        (let* ((_%__stx102507102508%_ _%$stx60169%_)
               (_%g6017460210%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx102507102508%_))))
          (let ((_%__kont102510102511%_
                 (lambda (_%g6017660328%_ _%g6017760330%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g6017760330%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g6017660328%_
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
                           (cons _%g6017760330%_
                                 (cons _%g6017660328%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont102512102513%_
                 (lambda (_%g6018760267%_ _%g6018860269%_ _%g6018960270%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g6018960270%_
                                           (cons _%g6018860269%_ '())))
                               (cons _%g6018760267%_ '()))))))
            (if (gx#stx-pair? _%__stx102507102508%_)
                (let ((_%e6017860298%_ (gx#syntax-e _%__stx102507102508%_)))
                  (let ((_%tl6018060305%_
                         (let () (declare (not safe)) (##cdr _%e6017860298%_)))
                        (_%hd6017960302%_
                         (let ()
                           (declare (not safe))
                           (##car _%e6017860298%_))))
                    (if (gx#stx-pair? _%tl6018060305%_)
                        (let ((_%e6018160308%_ (gx#syntax-e _%tl6018060305%_)))
                          (let ((_%tl6018360315%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6018160308%_)))
                                (_%hd6018260312%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6018160308%_))))
                            (if (gx#stx-pair? _%tl6018360315%_)
                                (let ((_%e6018460318%_
                                       (gx#syntax-e _%tl6018360315%_)))
                                  (let ((_%tl6018660325%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6018460318%_)))
                                        (_%hd6018560322%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6018460318%_))))
                                    (if (gx#stx-null? _%tl6018660325%_)
                                        (_%__kont102510102511%_
                                         _%hd6018560322%_
                                         _%hd6018260312%_)
                                        (if (gx#stx-pair? _%tl6018660325%_)
                                            (let ((_%e6019960247%_
                                                   (gx#syntax-e
                                                    _%tl6018660325%_)))
                                              (let ((_%tl6020160254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6019960247%_)))
                                                    (_%hd6020060251%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6019960247%_))))
                                                (if (gx#identifier?
                                                     _%hd6020060251%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g109208_|
                                                         _%hd6020060251%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6020160254%_)
                                                            (let ((_%e6020260257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6020160254%_)))
                      (let ((_%tl6020460264%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6020260257%_)))
                            (_%hd6020360261%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6020260257%_))))
                        (if (gx#stx-null? _%tl6020460264%_)
                            (_%__kont102512102513%_
                             _%hd6020360261%_
                             _%hd6018560322%_
                             _%hd6018260312%_)
                            (let () (declare (not safe)) (_%g6017460210%_)))))
                    (let () (declare (not safe)) (_%g6017460210%_)))
                (let () (declare (not safe)) (_%g6017460210%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6017460210%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6017460210%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6017460210%_)))))
                        (let () (declare (not safe)) (_%g6017460210%_)))))
                (let () (declare (not safe)) (_%g6017460210%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx60349%_)
        (let ((_%g6035260359%_
               (lambda (_%g6035360355%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g6035360355%_))))
          (_%g6035260359%_ _%$stx60349%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx60363%_)
        (let ((_%g6036660373%_
               (lambda (_%g6036760369%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g6036760369%_))))
          (_%g6036660373%_ _%$stx60363%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx60377%_)
        (let* ((_%g6038160395%_
                (lambda (_%g6038260391%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6038260391%_)))
               (_%g6038060436%_
                (lambda (_%g6038260399%_)
                  (if (gx#stx-pair? _%g6038260399%_)
                      (let ((_%e6038460402%_ (gx#syntax-e _%g6038260399%_)))
                        (let ((_%hd6038560406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6038460402%_)))
                              (_%tl6038660409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6038460402%_))))
                          (if (gx#stx-pair? _%tl6038660409%_)
                              (let ((_%e6038760412%_
                                     (gx#syntax-e _%tl6038660409%_)))
                                (let ((_%hd6038860416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6038760412%_)))
                                      (_%tl6038960419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6038760412%_))))
                                  (if (gx#stx-null? _%tl6038960419%_)
                                      ((lambda (_%g6038360422%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g6038360422%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g6038360422%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd6038860416%_)
                                      (_%g6038160395%_ _%g6038260399%_))))
                              (_%g6038160395%_ _%g6038260399%_))))
                      (_%g6038160395%_ _%g6038260399%_)))))
          (_%g6038060436%_ _%$stx60377%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx60440%_)
        (let* ((_%g6044360466%_
                (lambda (_%g6044460462%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6044460462%_)))
               (_%g6044260590%_
                (lambda (_%g6044460470%_)
                  (if (gx#stx-pair? _%g6044460470%_)
                      (let ((_%e6044960473%_ (gx#syntax-e _%g6044460470%_)))
                        (let ((_%hd6045060477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6044960473%_)))
                              (_%tl6045160480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6044960473%_))))
                          (if (gx#stx-pair? _%tl6045160480%_)
                              (let ((_%e6045260483%_
                                     (gx#syntax-e _%tl6045160480%_)))
                                (let ((_%hd6045360487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6045260483%_)))
                                      (_%tl6045460490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6045260483%_))))
                                  (if (gx#stx-pair? _%tl6045460490%_)
                                      (let ((_%e6045560493%_
                                             (gx#syntax-e _%tl6045460490%_)))
                                        (let ((_%hd6045660497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6045560493%_)))
                                              (_%tl6045760500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6045560493%_))))
                                          (if (gx#stx-pair? _%tl6045760500%_)
                                              (let ((_%e6045860503%_
                                                     (gx#syntax-e
                                                      _%tl6045760500%_)))
                                                (let ((_%hd6045960507%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6045860503%_)))
                                                      (_%tl6046060510%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6045860503%_))))
                                                  (if (gx#stx-null?
                                                       _%tl6046060510%_)
                                                      ((lambda (_%g6044560513%_
                                                                _%g6044660515%_
                                                                _%g6044760516%_
                                                                _%g6044860517%_)
                                                         (let* ((_%g6053760545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g6053860541%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g6053860541%_)))
                        (_%g6053660564%_
                         (lambda (_%g6053860549%_)
                           ((lambda (_%g6053960552%_)
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
                                (cons _%g6053960552%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g6044660515%_ '()))
                                      (cons 'value:
                                            (cons _%g6044560513%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g6053860549%_))))
                   (_%g6053660564%_
                    (let ((_%$e60576%_
                           (let ((_%$e60568%_ (gx#stx-source _%g6044760516%_)))
                             (if _%$e60568%_
                                 _%$e60568%_
                                 (let ((_%$e60572%_
                                        (gx#stx-source _%stx60440%_)))
                                   (if _%$e60572%_
                                       _%$e60572%_
                                       (gx#stx-source _%g6044860517%_)))))))
                      (if _%$e60576%_
                          ((lambda (_%locat60580%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g6058260584%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat60580%_
                                   '#t
                                   _%g6058260584%_)))))
                           _%$e60576%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd6045960507%_
               _%hd6045660497%_
               _%hd6045360487%_
               _%hd6045060477%_)
              (_%g6044360466%_ _%g6044460470%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g6044360466%_
                                               _%g6044460470%_))))
                                      (_%g6044360466%_ _%g6044460470%_))))
                              (_%g6044360466%_ _%g6044460470%_))))
                      (_%g6044360466%_ _%g6044460470%_)))))
          (_%g6044260590%_ _%stx60440%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx60594%_)
        (let* ((_%g6059760612%_
                (lambda (_%g6059860608%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6059860608%_)))
               (_%g6059660708%_
                (lambda (_%g6059860616%_)
                  (if (gx#stx-pair? _%g6059860616%_)
                      (let ((_%e6060160619%_ (gx#syntax-e _%g6059860616%_)))
                        (let ((_%hd6060260623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6060160619%_)))
                              (_%tl6060360626%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6060160619%_))))
                          (if (gx#stx-pair? _%tl6060360626%_)
                              (let ((_%e6060460629%_
                                     (gx#syntax-e _%tl6060360626%_)))
                                (let ((_%hd6060560633%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6060460629%_)))
                                      (_%tl6060660636%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6060460629%_))))
                                  (if (gx#stx-null? _%tl6060660636%_)
                                      ((lambda (_%g6059960639%_
                                                _%g6060060641%_)
                                         (let* ((_%g6065560663%_
                                                 (lambda (_%g6065660659%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g6065660659%_)))
                                                (_%g6065460682%_
                                                 (lambda (_%g6065660667%_)
                                                   ((lambda (_%g6065760670%_)
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
                                                        (cons _%g6065760670%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g6059960639%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g6065660667%_))))
                                           (_%g6065460682%_
                                            (let ((_%$e60694%_
                                                   (let ((_%$e60686%_
                                                          (gx#stx-source
                                                           _%g6059960639%_)))
                                                     (if _%$e60686%_
                                                         _%$e60686%_
                                                         (let ((_%$e60690%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx60594%_)))
                   (if _%$e60690%_
                       _%$e60690%_
                       (gx#stx-source _%g6060060641%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e60694%_
                                                  ((lambda (_%locat60698%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g6070060702%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat60698%_
                                                           '#t
                                                           _%g6070060702%_)))))
                                                   _%$e60694%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd6060560633%_
                                       _%hd6060260623%_)
                                      (_%g6059760612%_ _%g6059860616%_))))
                              (_%g6059760612%_ _%g6059860616%_))))
                      (_%g6059760612%_ _%g6059860616%_)))))
          (_%g6059660708%_ _%stx60594%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx60712%_)
        (let* ((_%g6071660730%_
                (lambda (_%g6071760726%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6071760726%_)))
               (_%g6071560771%_
                (lambda (_%g6071760734%_)
                  (if (gx#stx-pair? _%g6071760734%_)
                      (let ((_%e6071960737%_ (gx#syntax-e _%g6071760734%_)))
                        (let ((_%hd6072060741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6071960737%_)))
                              (_%tl6072160744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6071960737%_))))
                          (if (gx#stx-pair? _%tl6072160744%_)
                              (let ((_%e6072260747%_
                                     (gx#syntax-e _%tl6072160744%_)))
                                (let ((_%hd6072360751%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6072260747%_)))
                                      (_%tl6072460754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6072260747%_))))
                                  (if (gx#stx-null? _%tl6072460754%_)
                                      ((lambda (_%g6071860757%_)
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
                         (cons _%g6071860757%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd6072360751%_)
                                      (_%g6071660730%_ _%g6071760734%_))))
                              (_%g6071660730%_ _%g6071760734%_))))
                      (_%g6071660730%_ _%g6071760734%_)))))
          (_%g6071560771%_ _%$stx60712%_))))))
