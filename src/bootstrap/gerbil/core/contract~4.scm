(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g80106_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45399%_)
        (let* ((_%g4540245420%_
                (lambda (_%g4540345416%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4540345416%_)))
               (_%g4540145615%_
                (lambda (_%g4540345424%_)
                  (if (gx#stx-pair? _%g4540345424%_)
                      (let ((_%e4540845427%_ (gx#syntax-e _%g4540345424%_)))
                        (let ((_%hd4540745431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4540845427%_)))
                              (_%tl4540645434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4540845427%_))))
                          (if (gx#stx-pair? _%tl4540645434%_)
                              (let ((_%e4541145437%_
                                     (gx#syntax-e _%tl4540645434%_)))
                                (let ((_%hd4541045441%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4541145437%_)))
                                      (_%tl4540945444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4541145437%_))))
                                  (if (gx#stx-pair? _%tl4540945444%_)
                                      (let ((_%e4541445447%_
                                             (gx#syntax-e _%tl4540945444%_)))
                                        (let ((_%hd4541345451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4541445447%_)))
                                              (_%tl4541245454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4541445447%_))))
                                          (if (gx#stx-null? _%tl4541245454%_)
                                              ((lambda (_%L45457%_ _%L45459%_)
                                                 (if (gx#identifier?
                                                      _%L45457%_)
                                                     (let ((_%meta45476%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45399%_
                                                               _%L45457%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45476%_))
                                                           (let ()
                                                             (let* ((_%g4548145496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g4548245492%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4548245492%_)))
                            (_%g4548045543%_
                             (lambda (_%g4548245500%_)
                               (if (gx#stx-pair? _%g4548245500%_)
                                   (let ((_%e4548745503%_
                                          (gx#syntax-e _%g4548245500%_)))
                                     (let ((_%hd4548645507%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4548745503%_)))
                                           (_%tl4548545510%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4548745503%_))))
                                       (if (gx#stx-pair? _%tl4548545510%_)
                                           (let ((_%e4549045513%_
                                                  (gx#syntax-e
                                                   _%tl4548545510%_)))
                                             (let ((_%hd4548945517%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4549045513%_)))
                                                   (_%tl4548845520%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4549045513%_))))
                                               (if (gx#stx-null?
                                                    _%tl4548845520%_)
                                                   ((lambda (_%L45523%_
                                                             _%L45525%_)
                                                      (let ()
                                                        (if (let ((__tmp80104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__obj79953 _%meta45476%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj79953
                                    'gerbil.core#class-type-info::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj79953
                                    '1
                                    '#f
                                    '#f))
                                 (class-slot-ref
                                  gerbil/core/mop~MOP-2#class-type-info::t
                                  __obj79953
                                  'id)))))
                      (declare (not safe))
                      (##memq __tmp80104 '(t void)))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45525%_ '()))
                                (cons _%L45459%_ '())))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45525%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45459%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _%L45523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'val) '()))
                            (cons (gx#datum->syntax '#f 'val)
                                  (cons (cons (gx#datum->syntax '#f 'error)
                                              (cons '"bad cast"
                                                    (cons _%L45525%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd4548945517%_
                                                    _%hd4548645507%_)
                                                   (_%g4548145496%_
                                                    _%g4548245500%_))))
                                           (_%g4548145496%_ _%g4548245500%_))))
                                   (_%g4548145496%_ _%g4548245500%_)))))
                       (_%g4548045543%_
                        (list (let ((__obj79954 _%meta45476%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79954
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79954
                                       '12
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79954
                                     'type-descriptor)))
                              (let ((__obj79955 _%meta45476%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79955
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79955
                                       '14
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79955
                                     'predicate)))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45476%_))
                       (let ()
                         (let* ((_%g4554945564%_
                                 (lambda (_%g4555045560%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g4555045560%_)))
                                (_%g4554845609%_
                                 (lambda (_%g4555045568%_)
                                   (if (gx#stx-pair? _%g4555045568%_)
                                       (let ((_%e4555545571%_
                                              (gx#syntax-e _%g4555045568%_)))
                                         (let ((_%hd4555445575%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4555545571%_)))
                                               (_%tl4555345578%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4555545571%_))))
                                           (if (gx#stx-pair? _%tl4555345578%_)
                                               (let ((_%e4555845581%_
                                                      (gx#syntax-e
                                                       _%tl4555345578%_)))
                                                 (let ((_%hd4555745585%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4555845581%_)))
                                                       (_%tl4555645588%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4555845581%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4555645588%_)
                                                       ((lambda (_%L45591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L45593%_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45593%_ '()))
                                (cons (cons _%L45591%_ (cons _%L45459%_ '()))
                                      '())))))
                _%hd4555745585%_
                _%hd4555445575%_)
               (_%g4554945564%_ _%g4555045568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4554945564%_
                                                _%g4555045568%_))))
                                       (_%g4554945564%_ _%g4555045568%_)))))
                           (_%g4554845609%_
                            (list (let ((__obj79956 _%meta45476%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj79956
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj79956
                                           '4
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj79956
                                         'instance-type)))
                                  (let ((__obj79957 _%meta45476%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj79957
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj79957
                                           '6
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj79957
                                         'instance-constructor)))))))
                       (let ()
                         (gx#raise-syntax-error
                          '#f
                          '"not a class type or interface"
                          _%stx45399%_
                          _%L45457%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4540245420%_
                                                      _%g4540345424%_)))
                                               _%hd4541345451%_
                                               _%hd4541045441%_)
                                              (_%g4540245420%_
                                               _%g4540345424%_))))
                                      (_%g4540245420%_ _%g4540345424%_))))
                              (_%g4540245420%_ _%g4540345424%_))))
                      (_%g4540245420%_ _%g4540345424%_)))))
          (_%g4540145615%_ _%stx45399%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45619%_)
        (let* ((_%g4562245640%_
                (lambda (_%g4562345636%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4562345636%_)))
               (_%g4562145834%_
                (lambda (_%g4562345644%_)
                  (if (gx#stx-pair? _%g4562345644%_)
                      (let ((_%e4562845647%_ (gx#syntax-e _%g4562345644%_)))
                        (let ((_%hd4562745651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4562845647%_)))
                              (_%tl4562645654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4562845647%_))))
                          (if (gx#stx-pair? _%tl4562645654%_)
                              (let ((_%e4563145657%_
                                     (gx#syntax-e _%tl4562645654%_)))
                                (let ((_%hd4563045661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4563145657%_)))
                                      (_%tl4562945664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4563145657%_))))
                                  (if (gx#stx-pair? _%tl4562945664%_)
                                      (let ((_%e4563445667%_
                                             (gx#syntax-e _%tl4562945664%_)))
                                        (let ((_%hd4563345671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4563445667%_)))
                                              (_%tl4563245674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4563445667%_))))
                                          (if (gx#stx-null? _%tl4563245674%_)
                                              ((lambda (_%L45677%_ _%L45679%_)
                                                 (if (gx#identifier?
                                                      _%L45677%_)
                                                     (let ((_%meta45695%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45619%_
                                                               _%L45677%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45695%_))
                                                           (let ()
                                                             (let* ((_%g4570045715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g4570145711%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4570145711%_)))
                            (_%g4569945762%_
                             (lambda (_%g4570145719%_)
                               (if (gx#stx-pair? _%g4570145719%_)
                                   (let ((_%e4570645722%_
                                          (gx#syntax-e _%g4570145719%_)))
                                     (let ((_%hd4570545726%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4570645722%_)))
                                           (_%tl4570445729%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4570645722%_))))
                                       (if (gx#stx-pair? _%tl4570445729%_)
                                           (let ((_%e4570945732%_
                                                  (gx#syntax-e
                                                   _%tl4570445729%_)))
                                             (let ((_%hd4570845736%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4570945732%_)))
                                                   (_%tl4570745739%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4570945732%_))))
                                               (if (gx#stx-null?
                                                    _%tl4570745739%_)
                                                   ((lambda (_%L45742%_
                                                             _%L45744%_)
                                                      (let ()
                                                        (if (let ((__tmp80105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__obj79958 _%meta45695%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj79958
                                    'gerbil.core#class-type-info::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj79958
                                    '1
                                    '#f
                                    '#f))
                                 (class-slot-ref
                                  gerbil/core/mop~MOP-2#class-type-info::t
                                  __obj79958
                                  'id)))))
                      (declare (not safe))
                      (##memq __tmp80105 '(t void)))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45744%_ '()))
                                (cons _%L45679%_ '())))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45744%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45679%_ '()))
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
                                        (cons (cons _%L45742%_
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
                                                    (cons _%L45679%_
                                                          (cons _%L45742%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'val)
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd4570845736%_
                                                    _%hd4570545726%_)
                                                   (_%g4570045715%_
                                                    _%g4570145719%_))))
                                           (_%g4570045715%_ _%g4570145719%_))))
                                   (_%g4570045715%_ _%g4570145719%_)))))
                       (_%g4569945762%_
                        (list (let ((__obj79959 _%meta45695%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79959
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79959
                                       '12
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79959
                                     'type-descriptor)))
                              (let ((__obj79960 _%meta45695%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79960
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79960
                                       '14
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79960
                                     'predicate)))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45695%_))
                       (let ()
                         (let* ((_%g4576845783%_
                                 (lambda (_%g4576945779%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g4576945779%_)))
                                (_%g4576745828%_
                                 (lambda (_%g4576945787%_)
                                   (if (gx#stx-pair? _%g4576945787%_)
                                       (let ((_%e4577445790%_
                                              (gx#syntax-e _%g4576945787%_)))
                                         (let ((_%hd4577345794%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4577445790%_)))
                                               (_%tl4577245797%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4577445790%_))))
                                           (if (gx#stx-pair? _%tl4577245797%_)
                                               (let ((_%e4577745800%_
                                                      (gx#syntax-e
                                                       _%tl4577245797%_)))
                                                 (let ((_%hd4577645804%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4577745800%_)))
                                                       (_%tl4577545807%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4577745800%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4577545807%_)
                                                       ((lambda (_%L45810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L45812%_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45812%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45679%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'and)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'val)
                            (cons (cons _%L45810%_
                                        (cons (gx#datum->syntax '#f 'val) '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))
                _%hd4577645804%_
                _%hd4577345794%_)
               (_%g4576845783%_ _%g4576945787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4576845783%_
                                                _%g4576945787%_))))
                                       (_%g4576845783%_ _%g4576945787%_)))))
                           (_%g4576745828%_
                            (list (let ((__obj79961 _%meta45695%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj79961
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj79961
                                           '4
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj79961
                                         'instance-type)))
                                  (let ((__obj79962 _%meta45695%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj79962
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj79962
                                           '6
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj79962
                                         'instance-constructor)))))))
                       (let ()
                         (gx#raise-syntax-error
                          '#f
                          '"not a class type or interface"
                          _%stx45619%_
                          _%L45677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4562245640%_
                                                      _%g4562345644%_)))
                                               _%hd4563345671%_
                                               _%hd4563045661%_)
                                              (_%g4562245640%_
                                               _%g4562345644%_))))
                                      (_%g4562245640%_ _%g4562345644%_))))
                              (_%g4562245640%_ _%g4562345644%_))))
                      (_%g4562245640%_ _%g4562345644%_)))))
          (_%g4562145834%_ _%stx45619%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45838%_)
        (let* ((_%g4584145859%_
                (lambda (_%g4584245855%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4584245855%_)))
               (_%g4584045945%_
                (lambda (_%g4584245863%_)
                  (if (gx#stx-pair? _%g4584245863%_)
                      (let ((_%e4584745866%_ (gx#syntax-e _%g4584245863%_)))
                        (let ((_%hd4584645870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4584745866%_)))
                              (_%tl4584545873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4584745866%_))))
                          (if (gx#stx-pair? _%tl4584545873%_)
                              (let ((_%e4585045876%_
                                     (gx#syntax-e _%tl4584545873%_)))
                                (let ((_%hd4584945880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4585045876%_)))
                                      (_%tl4584845883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4585045876%_))))
                                  (if (gx#stx-pair? _%tl4584845883%_)
                                      (let ((_%e4585345886%_
                                             (gx#syntax-e _%tl4584845883%_)))
                                        (let ((_%hd4585245890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4585345886%_)))
                                              (_%tl4585145893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4585345886%_))))
                                          (if (gx#stx-null? _%tl4585145893%_)
                                              ((lambda (_%L45896%_ _%L45898%_)
                                                 (if (gx#identifier?
                                                      _%L45896%_)
                                                     (let* ((_%g4591445922%_
                                                             (lambda (_%g4591545918%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4591545918%_)))
                                                            (_%g4591345941%_
                                                             (lambda (_%g4591545926%_)
                                                               ((lambda (_%L45929%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'begin-annotation)
                                  (cons (cons (gx#datum->syntax '#f '@type)
                                              (cons _%L45929%_ '()))
                                        (cons _%L45898%_ '())))))
                        _%g4591545926%_))))
               (_%g4591345941%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45838%_
                   _%L45896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4584145859%_
                                                      _%g4584245863%_)))
                                               _%hd4585245890%_
                                               _%hd4584945880%_)
                                              (_%g4584145859%_
                                               _%g4584245863%_))))
                                      (_%g4584145859%_ _%g4584245863%_))))
                              (_%g4584145859%_ _%g4584245863%_))))
                      (_%g4584145859%_ _%g4584245863%_)))))
          (_%g4584045945%_ _%stx45838%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45949%_)
        (let* ((_%__stx7488174882%_ _%$stx45949%_)
               (_%g4595445990%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7488174882%_))))
          (let ((_%__kont7488474885%_
                 (lambda (_%L46108%_ _%L46110%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L46110%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L46108%_
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
                           (cons _%L46110%_
                                 (cons _%L46108%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7488674887%_
                 (lambda (_%L46047%_ _%L46049%_ _%L46050%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L46050%_ (cons _%L46049%_ '())))
                               (cons _%L46047%_ '()))))))
            (if (gx#stx-pair? _%__stx7488174882%_)
                (let ((_%e4596046078%_ (gx#syntax-e _%__stx7488174882%_)))
                  (let ((_%tl4595846085%_
                         (let () (declare (not safe)) (##cdr _%e4596046078%_)))
                        (_%hd4595946082%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4596046078%_))))
                    (if (gx#stx-pair? _%tl4595846085%_)
                        (let ((_%e4596346088%_ (gx#syntax-e _%tl4595846085%_)))
                          (let ((_%tl4596146095%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4596346088%_)))
                                (_%hd4596246092%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4596346088%_))))
                            (if (gx#stx-pair? _%tl4596146095%_)
                                (let ((_%e4596646098%_
                                       (gx#syntax-e _%tl4596146095%_)))
                                  (let ((_%tl4596446105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4596646098%_)))
                                        (_%hd4596546102%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4596646098%_))))
                                    (if (gx#stx-null? _%tl4596446105%_)
                                        (_%__kont7488474885%_
                                         _%hd4596546102%_
                                         _%hd4596246092%_)
                                        (if (gx#stx-pair? _%tl4596446105%_)
                                            (let ((_%e4598146027%_
                                                   (gx#syntax-e
                                                    _%tl4596446105%_)))
                                              (let ((_%tl4597946034%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4598146027%_)))
                                                    (_%hd4598046031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4598146027%_))))
                                                (if (gx#identifier?
                                                     _%hd4598046031%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g80106_|
                                                         _%hd4598046031%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4597946034%_)
                                                            (let ((_%e4598446037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4597946034%_)))
                      (let ((_%tl4598246044%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4598446037%_)))
                            (_%hd4598346041%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4598446037%_))))
                        (if (gx#stx-null? _%tl4598246044%_)
                            (_%__kont7488674887%_
                             _%hd4598346041%_
                             _%hd4596546102%_
                             _%hd4596246092%_)
                            (let () (declare (not safe)) (_%g4595445990%_)))))
                    (let () (declare (not safe)) (_%g4595445990%_)))
                (let () (declare (not safe)) (_%g4595445990%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4595445990%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4595445990%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4595445990%_)))))
                        (let () (declare (not safe)) (_%g4595445990%_)))))
                (let () (declare (not safe)) (_%g4595445990%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx46129%_)
        (let ((_%g4613246139%_
               (lambda (_%g4613346135%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4613346135%_))))
          (_%g4613246139%_ _%$stx46129%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx46143%_)
        (let ((_%g4614646153%_
               (lambda (_%g4614746149%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4614746149%_))))
          (_%g4614646153%_ _%$stx46143%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx46157%_)
        (let* ((_%g4616146175%_
                (lambda (_%g4616246171%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4616246171%_)))
               (_%g4616046216%_
                (lambda (_%g4616246179%_)
                  (if (gx#stx-pair? _%g4616246179%_)
                      (let ((_%e4616646182%_ (gx#syntax-e _%g4616246179%_)))
                        (let ((_%hd4616546186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4616646182%_)))
                              (_%tl4616446189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4616646182%_))))
                          (if (gx#stx-pair? _%tl4616446189%_)
                              (let ((_%e4616946192%_
                                     (gx#syntax-e _%tl4616446189%_)))
                                (let ((_%hd4616846196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4616946192%_)))
                                      (_%tl4616746199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4616946192%_))))
                                  (if (gx#stx-null? _%tl4616746199%_)
                                      ((lambda (_%L46202%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46202%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46202%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4616846196%_)
                                      (_%g4616146175%_ _%g4616246179%_))))
                              (_%g4616146175%_ _%g4616246179%_))))
                      (_%g4616146175%_ _%g4616246179%_)))))
          (_%g4616046216%_ _%$stx46157%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46220%_)
        (let* ((_%g4622346246%_
                (lambda (_%g4622446242%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4622446242%_)))
               (_%g4622246370%_
                (lambda (_%g4622446250%_)
                  (if (gx#stx-pair? _%g4622446250%_)
                      (let ((_%e4623146253%_ (gx#syntax-e _%g4622446250%_)))
                        (let ((_%hd4623046257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4623146253%_)))
                              (_%tl4622946260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4623146253%_))))
                          (if (gx#stx-pair? _%tl4622946260%_)
                              (let ((_%e4623446263%_
                                     (gx#syntax-e _%tl4622946260%_)))
                                (let ((_%hd4623346267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4623446263%_)))
                                      (_%tl4623246270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4623446263%_))))
                                  (if (gx#stx-pair? _%tl4623246270%_)
                                      (let ((_%e4623746273%_
                                             (gx#syntax-e _%tl4623246270%_)))
                                        (let ((_%hd4623646277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4623746273%_)))
                                              (_%tl4623546280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4623746273%_))))
                                          (if (gx#stx-pair? _%tl4623546280%_)
                                              (let ((_%e4624046283%_
                                                     (gx#syntax-e
                                                      _%tl4623546280%_)))
                                                (let ((_%hd4623946287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4624046283%_)))
                                                      (_%tl4623846290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4624046283%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4623846290%_)
                                                      ((lambda (_%L46293%_
                                                                _%L46295%_
                                                                _%L46296%_
                                                                _%L46297%_)
                                                         (let* ((_%g4631746325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4631846321%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4631846321%_)))
                        (_%g4631646344%_
                         (lambda (_%g4631846329%_)
                           ((lambda (_%L46332%_)
                              (let ()
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
                                  (cons _%L46332%_ '()))
                            (cons 'contract:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%L46295%_ '()))
                                        (cons 'value:
                                              (cons _%L46293%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                            _%g4631846329%_))))
                   (_%g4631646344%_
                    (let ((_%$e46356%_
                           (let ((_%$e46348%_ (gx#stx-source _%L46296%_)))
                             (if _%$e46348%_
                                 _%$e46348%_
                                 (let ((_%$e46352%_
                                        (gx#stx-source _%stx46220%_)))
                                   (if _%$e46352%_
                                       _%$e46352%_
                                       (gx#stx-source _%L46297%_)))))))
                      (if _%$e46356%_
                          ((lambda (_%locat46360%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4636246364%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46360%_
                                   '#t
                                   _%g4636246364%_)))))
                           _%$e46356%_)
                          (let ()
                            (gx#expander-context-id
                             (gx#core-context-top))))))))
               _%hd4623946287%_
               _%hd4623646277%_
               _%hd4623346267%_
               _%hd4623046257%_)
              (_%g4622346246%_ _%g4622446250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4622346246%_
                                               _%g4622446250%_))))
                                      (_%g4622346246%_ _%g4622446250%_))))
                              (_%g4622346246%_ _%g4622446250%_))))
                      (_%g4622346246%_ _%g4622446250%_)))))
          (_%g4622246370%_ _%stx46220%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46374%_)
        (let* ((_%g4637746392%_
                (lambda (_%g4637846388%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4637846388%_)))
               (_%g4637646488%_
                (lambda (_%g4637846396%_)
                  (if (gx#stx-pair? _%g4637846396%_)
                      (let ((_%e4638346399%_ (gx#syntax-e _%g4637846396%_)))
                        (let ((_%hd4638246403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4638346399%_)))
                              (_%tl4638146406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4638346399%_))))
                          (if (gx#stx-pair? _%tl4638146406%_)
                              (let ((_%e4638646409%_
                                     (gx#syntax-e _%tl4638146406%_)))
                                (let ((_%hd4638546413%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4638646409%_)))
                                      (_%tl4638446416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4638646409%_))))
                                  (if (gx#stx-null? _%tl4638446416%_)
                                      ((lambda (_%L46419%_ _%L46421%_)
                                         (let* ((_%g4643546443%_
                                                 (lambda (_%g4643646439%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4643646439%_)))
                                                (_%g4643446462%_
                                                 (lambda (_%g4643646447%_)
                                                   ((lambda (_%L46450%_)
                                                      (let ()
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
                                                          (cons _%L46450%_
                                                                '()))
                                                    (cons 'contract:
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                          (cons _%L46419%_ '()))
                                    '()))
                        (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4643646447%_))))
                                           (_%g4643446462%_
                                            (let ((_%$e46474%_
                                                   (let ((_%$e46466%_
                                                          (gx#stx-source
                                                           _%L46419%_)))
                                                     (if _%$e46466%_
                                                         _%$e46466%_
                                                         (let ((_%$e46470%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46374%_)))
                   (if _%$e46470%_ _%$e46470%_ (gx#stx-source _%L46421%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46474%_
                                                  ((lambda (_%locat46478%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4648046482%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46478%_
                                                           '#t
                                                           _%g4648046482%_)))))
                                                   _%$e46474%_)
                                                  (let ()
                                                    (gx#expander-context-id
                                                     (gx#core-context-top))))))))
                                       _%hd4638546413%_
                                       _%hd4638246403%_)
                                      (_%g4637746392%_ _%g4637846396%_))))
                              (_%g4637746392%_ _%g4637846396%_))))
                      (_%g4637746392%_ _%g4637846396%_)))))
          (_%g4637646488%_ _%stx46374%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46492%_)
        (let* ((_%g4649646510%_
                (lambda (_%g4649746506%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4649746506%_)))
               (_%g4649546551%_
                (lambda (_%g4649746514%_)
                  (if (gx#stx-pair? _%g4649746514%_)
                      (let ((_%e4650146517%_ (gx#syntax-e _%g4649746514%_)))
                        (let ((_%hd4650046521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4650146517%_)))
                              (_%tl4649946524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4650146517%_))))
                          (if (gx#stx-pair? _%tl4649946524%_)
                              (let ((_%e4650446527%_
                                     (gx#syntax-e _%tl4649946524%_)))
                                (let ((_%hd4650346531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4650446527%_)))
                                      (_%tl4650246534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4650446527%_))))
                                  (if (gx#stx-null? _%tl4650246534%_)
                                      ((lambda (_%L46537%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@abort)
                                                           '())
                                                     (cons _%L46537%_ '()))))
                                       _%hd4650346531%_)
                                      (_%g4649646510%_ _%g4649746514%_))))
                              (_%g4649646510%_ _%g4649746514%_))))
                      (_%g4649646510%_ _%g4649746514%_)))))
          (_%g4649546551%_ _%$stx46492%_))))))
