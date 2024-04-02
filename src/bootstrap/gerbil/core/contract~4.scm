(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g80028_|
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
                                                        (if (eq? (let ((__obj79874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%meta45476%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj79874
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj79874
                                  '1
                                  '#f
                                  '#f))
                               (class-slot-ref
                                gerbil/core/mop~MOP-2#class-type-info::t
                                __obj79874
                                'id)))
                         't)
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
                        (list (let ((__obj79875 _%meta45476%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79875
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79875
                                       '12
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79875
                                     'type-descriptor)))
                              (let ((__obj79876 _%meta45476%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79876
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79876
                                       '14
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79876
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
                            (list (let ((__obj79877 _%meta45476%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj79877
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj79877
                                           '4
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj79877
                                         'instance-type)))
                                  (let ((__obj79878 _%meta45476%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj79878
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj79878
                                           '6
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj79878
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
                                                        (if (eq? (let ((__obj79879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%meta45695%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj79879
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj79879
                                  '1
                                  '#f
                                  '#f))
                               (class-slot-ref
                                gerbil/core/mop~MOP-2#class-type-info::t
                                __obj79879
                                'id)))
                         't)
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
                        (list (let ((__obj79880 _%meta45695%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79880
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79880
                                       '12
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79880
                                     'type-descriptor)))
                              (let ((__obj79881 _%meta45695%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79881
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79881
                                       '14
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79881
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
                            (list (let ((__obj79882 _%meta45695%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj79882
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj79882
                                           '4
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj79882
                                         'instance-type)))
                                  (let ((__obj79883 _%meta45695%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj79883
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj79883
                                           '6
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj79883
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
               (_%g4584045987%_
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
                                                     (let ((_%meta45914%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45838%_
                                                               _%L45896%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45914%_))
                                                           (let ()
                                                             (let* ((_%g4591945927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g4592045923%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4592045923%_)))
                            (_%g4591845948%_
                             (lambda (_%g4592045931%_)
                               ((lambda (_%L45934%_)
                                  (let ()
                                    (if (eq? (let ((__obj79884 _%meta45914%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      __obj79884
                                                      'gerbil.core#class-type-info::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      __obj79884
                                                      '1
                                                      '#f
                                                      '#f))
                                                   (class-slot-ref
                                                    gerbil/core/mop~MOP-2#class-type-info::t
                                                    __obj79884
                                                    'id)))
                                             't)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@type)
                                                          (cons _%L45934%_
                                                                '()))
                                                    (cons _%L45898%_ '())))
                                        (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@type)
                                                          (cons _%L45934%_
                                                                '()))
                                                    (cons _%L45898%_ '()))))))
                                _%g4592045931%_))))
                       (_%g4591845948%_
                        (let ((__obj79885 _%meta45914%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj79885
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj79885
                                 '12
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj79885
                               'type-descriptor))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45914%_))
                       (let ()
                         (let* ((_%g4595445962%_
                                 (lambda (_%g4595545958%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g4595545958%_)))
                                (_%g4595345981%_
                                 (lambda (_%g4595545966%_)
                                   ((lambda (_%L45969%_)
                                      (let ()
                                        (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@type)
                                                          (cons _%L45969%_
                                                                '()))
                                                    (cons _%L45898%_ '())))))
                                    _%g4595545966%_))))
                           (_%g4595345981%_
                            (let ((__obj79886 _%meta45914%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj79886
                                     'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj79886
                                     '4
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/contract~InterfaceInfo#interface-info::t
                                   __obj79886
                                   'instance-type))))))
                       (let ()
                         (gx#raise-syntax-error
                          '#f
                          '"not a class type or interface"
                          _%stx45838%_
                          _%L45896%_)))))
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
          (_%g4584045987%_ _%stx45838%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45991%_)
        (let* ((_%__stx7480274803%_ _%$stx45991%_)
               (_%g4599646032%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7480274803%_))))
          (let ((_%__kont7480574806%_
                 (lambda (_%L46150%_ _%L46152%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L46152%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L46150%_
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
                           (cons _%L46152%_
                                 (cons _%L46150%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7480774808%_
                 (lambda (_%L46089%_ _%L46091%_ _%L46092%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L46092%_ (cons _%L46091%_ '())))
                               (cons _%L46089%_ '()))))))
            (if (gx#stx-pair? _%__stx7480274803%_)
                (let ((_%e4600246120%_ (gx#syntax-e _%__stx7480274803%_)))
                  (let ((_%tl4600046127%_
                         (let () (declare (not safe)) (##cdr _%e4600246120%_)))
                        (_%hd4600146124%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4600246120%_))))
                    (if (gx#stx-pair? _%tl4600046127%_)
                        (let ((_%e4600546130%_ (gx#syntax-e _%tl4600046127%_)))
                          (let ((_%tl4600346137%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4600546130%_)))
                                (_%hd4600446134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4600546130%_))))
                            (if (gx#stx-pair? _%tl4600346137%_)
                                (let ((_%e4600846140%_
                                       (gx#syntax-e _%tl4600346137%_)))
                                  (let ((_%tl4600646147%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4600846140%_)))
                                        (_%hd4600746144%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4600846140%_))))
                                    (if (gx#stx-null? _%tl4600646147%_)
                                        (_%__kont7480574806%_
                                         _%hd4600746144%_
                                         _%hd4600446134%_)
                                        (if (gx#stx-pair? _%tl4600646147%_)
                                            (let ((_%e4602346069%_
                                                   (gx#syntax-e
                                                    _%tl4600646147%_)))
                                              (let ((_%tl4602146076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4602346069%_)))
                                                    (_%hd4602246073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4602346069%_))))
                                                (if (gx#identifier?
                                                     _%hd4602246073%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g80028_|
                                                         _%hd4602246073%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4602146076%_)
                                                            (let ((_%e4602646079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4602146076%_)))
                      (let ((_%tl4602446086%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4602646079%_)))
                            (_%hd4602546083%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4602646079%_))))
                        (if (gx#stx-null? _%tl4602446086%_)
                            (_%__kont7480774808%_
                             _%hd4602546083%_
                             _%hd4600746144%_
                             _%hd4600446134%_)
                            (let () (declare (not safe)) (_%g4599646032%_)))))
                    (let () (declare (not safe)) (_%g4599646032%_)))
                (let () (declare (not safe)) (_%g4599646032%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4599646032%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4599646032%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4599646032%_)))))
                        (let () (declare (not safe)) (_%g4599646032%_)))))
                (let () (declare (not safe)) (_%g4599646032%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx46171%_)
        (let ((_%g4617446181%_
               (lambda (_%g4617546177%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4617546177%_))))
          (_%g4617446181%_ _%$stx46171%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx46185%_)
        (let ((_%g4618846195%_
               (lambda (_%g4618946191%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4618946191%_))))
          (_%g4618846195%_ _%$stx46185%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx46199%_)
        (let* ((_%g4620346217%_
                (lambda (_%g4620446213%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4620446213%_)))
               (_%g4620246258%_
                (lambda (_%g4620446221%_)
                  (if (gx#stx-pair? _%g4620446221%_)
                      (let ((_%e4620846224%_ (gx#syntax-e _%g4620446221%_)))
                        (let ((_%hd4620746228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4620846224%_)))
                              (_%tl4620646231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4620846224%_))))
                          (if (gx#stx-pair? _%tl4620646231%_)
                              (let ((_%e4621146234%_
                                     (gx#syntax-e _%tl4620646231%_)))
                                (let ((_%hd4621046238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4621146234%_)))
                                      (_%tl4620946241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4621146234%_))))
                                  (if (gx#stx-null? _%tl4620946241%_)
                                      ((lambda (_%L46244%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46244%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46244%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4621046238%_)
                                      (_%g4620346217%_ _%g4620446221%_))))
                              (_%g4620346217%_ _%g4620446221%_))))
                      (_%g4620346217%_ _%g4620446221%_)))))
          (_%g4620246258%_ _%$stx46199%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46262%_)
        (let* ((_%g4626546288%_
                (lambda (_%g4626646284%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4626646284%_)))
               (_%g4626446412%_
                (lambda (_%g4626646292%_)
                  (if (gx#stx-pair? _%g4626646292%_)
                      (let ((_%e4627346295%_ (gx#syntax-e _%g4626646292%_)))
                        (let ((_%hd4627246299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4627346295%_)))
                              (_%tl4627146302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4627346295%_))))
                          (if (gx#stx-pair? _%tl4627146302%_)
                              (let ((_%e4627646305%_
                                     (gx#syntax-e _%tl4627146302%_)))
                                (let ((_%hd4627546309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4627646305%_)))
                                      (_%tl4627446312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4627646305%_))))
                                  (if (gx#stx-pair? _%tl4627446312%_)
                                      (let ((_%e4627946315%_
                                             (gx#syntax-e _%tl4627446312%_)))
                                        (let ((_%hd4627846319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4627946315%_)))
                                              (_%tl4627746322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4627946315%_))))
                                          (if (gx#stx-pair? _%tl4627746322%_)
                                              (let ((_%e4628246325%_
                                                     (gx#syntax-e
                                                      _%tl4627746322%_)))
                                                (let ((_%hd4628146329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4628246325%_)))
                                                      (_%tl4628046332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4628246325%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4628046332%_)
                                                      ((lambda (_%L46335%_
                                                                _%L46337%_
                                                                _%L46338%_
                                                                _%L46339%_)
                                                         (let* ((_%g4635946367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4636046363%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4636046363%_)))
                        (_%g4635846386%_
                         (lambda (_%g4636046371%_)
                           ((lambda (_%L46374%_)
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
                                  (cons _%L46374%_ '()))
                            (cons 'contract:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%L46337%_ '()))
                                        (cons 'value:
                                              (cons _%L46335%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                            _%g4636046371%_))))
                   (_%g4635846386%_
                    (let ((_%$e46398%_
                           (let ((_%$e46390%_ (gx#stx-source _%L46338%_)))
                             (if _%$e46390%_
                                 _%$e46390%_
                                 (let ((_%$e46394%_
                                        (gx#stx-source _%stx46262%_)))
                                   (if _%$e46394%_
                                       _%$e46394%_
                                       (gx#stx-source _%L46339%_)))))))
                      (if _%$e46398%_
                          ((lambda (_%locat46402%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4640446406%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46402%_
                                   '#t
                                   _%g4640446406%_)))))
                           _%$e46398%_)
                          (let ()
                            (gx#expander-context-id
                             (gx#core-context-top))))))))
               _%hd4628146329%_
               _%hd4627846319%_
               _%hd4627546309%_
               _%hd4627246299%_)
              (_%g4626546288%_ _%g4626646292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4626546288%_
                                               _%g4626646292%_))))
                                      (_%g4626546288%_ _%g4626646292%_))))
                              (_%g4626546288%_ _%g4626646292%_))))
                      (_%g4626546288%_ _%g4626646292%_)))))
          (_%g4626446412%_ _%stx46262%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46416%_)
        (let* ((_%g4641946434%_
                (lambda (_%g4642046430%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4642046430%_)))
               (_%g4641846530%_
                (lambda (_%g4642046438%_)
                  (if (gx#stx-pair? _%g4642046438%_)
                      (let ((_%e4642546441%_ (gx#syntax-e _%g4642046438%_)))
                        (let ((_%hd4642446445%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4642546441%_)))
                              (_%tl4642346448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4642546441%_))))
                          (if (gx#stx-pair? _%tl4642346448%_)
                              (let ((_%e4642846451%_
                                     (gx#syntax-e _%tl4642346448%_)))
                                (let ((_%hd4642746455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4642846451%_)))
                                      (_%tl4642646458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4642846451%_))))
                                  (if (gx#stx-null? _%tl4642646458%_)
                                      ((lambda (_%L46461%_ _%L46463%_)
                                         (let* ((_%g4647746485%_
                                                 (lambda (_%g4647846481%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4647846481%_)))
                                                (_%g4647646504%_
                                                 (lambda (_%g4647846489%_)
                                                   ((lambda (_%L46492%_)
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
                                                          (cons _%L46492%_
                                                                '()))
                                                    (cons 'contract:
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                          (cons _%L46461%_ '()))
                                    '()))
                        (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4647846489%_))))
                                           (_%g4647646504%_
                                            (let ((_%$e46516%_
                                                   (let ((_%$e46508%_
                                                          (gx#stx-source
                                                           _%L46461%_)))
                                                     (if _%$e46508%_
                                                         _%$e46508%_
                                                         (let ((_%$e46512%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46416%_)))
                   (if _%$e46512%_ _%$e46512%_ (gx#stx-source _%L46463%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46516%_
                                                  ((lambda (_%locat46520%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4652246524%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46520%_
                                                           '#t
                                                           _%g4652246524%_)))))
                                                   _%$e46516%_)
                                                  (let ()
                                                    (gx#expander-context-id
                                                     (gx#core-context-top))))))))
                                       _%hd4642746455%_
                                       _%hd4642446445%_)
                                      (_%g4641946434%_ _%g4642046438%_))))
                              (_%g4641946434%_ _%g4642046438%_))))
                      (_%g4641946434%_ _%g4642046438%_)))))
          (_%g4641846530%_ _%stx46416%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46534%_)
        (let* ((_%g4653846552%_
                (lambda (_%g4653946548%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4653946548%_)))
               (_%g4653746593%_
                (lambda (_%g4653946556%_)
                  (if (gx#stx-pair? _%g4653946556%_)
                      (let ((_%e4654346559%_ (gx#syntax-e _%g4653946556%_)))
                        (let ((_%hd4654246563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4654346559%_)))
                              (_%tl4654146566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4654346559%_))))
                          (if (gx#stx-pair? _%tl4654146566%_)
                              (let ((_%e4654646569%_
                                     (gx#syntax-e _%tl4654146566%_)))
                                (let ((_%hd4654546573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4654646569%_)))
                                      (_%tl4654446576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4654646569%_))))
                                  (if (gx#stx-null? _%tl4654446576%_)
                                      ((lambda (_%L46579%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@abort)
                                                           '())
                                                     (cons _%L46579%_ '()))))
                                       _%hd4654546573%_)
                                      (_%g4653846552%_ _%g4653946556%_))))
                              (_%g4653846552%_ _%g4653946556%_))))
                      (_%g4653846552%_ _%g4653946556%_)))))
          (_%g4653746593%_ _%$stx46534%_))))))
