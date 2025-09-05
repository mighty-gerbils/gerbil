(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g91810_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx48681%_)
        (let* ((_%g4868448702%_
                (lambda (_%g4868548698%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4868548698%_)))
               (_%g4868348897%_
                (lambda (_%g4868548706%_)
                  (if (gx#stx-pair? _%g4868548706%_)
                      (let ((_%e4868848709%_ (gx#syntax-e _%g4868548706%_)))
                        (let ((_%hd4868948713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4868848709%_)))
                              (_%tl4869048716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4868848709%_))))
                          (if (gx#stx-pair? _%tl4869048716%_)
                              (let ((_%e4869148719%_
                                     (gx#syntax-e _%tl4869048716%_)))
                                (let ((_%hd4869248723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4869148719%_)))
                                      (_%tl4869348726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4869148719%_))))
                                  (if (gx#stx-pair? _%tl4869348726%_)
                                      (let ((_%e4869448729%_
                                             (gx#syntax-e _%tl4869348726%_)))
                                        (let ((_%hd4869548733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4869448729%_)))
                                              (_%tl4869648736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4869448729%_))))
                                          (if (gx#stx-null? _%tl4869648736%_)
                                              ((lambda (_%L48739%_ _%L48741%_)
                                                 (if (gx#identifier?
                                                      _%L48739%_)
                                                     (let ((_%meta48758%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx48681%_
                                                               _%L48739%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta48758%_))
                                                           (let* ((_%g4876348778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4876448774%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4876448774%_)))
                          (_%g4876248825%_
                           (lambda (_%g4876448782%_)
                             (if (gx#stx-pair? _%g4876448782%_)
                                 (let ((_%e4876748785%_
                                        (gx#syntax-e _%g4876448782%_)))
                                   (let ((_%hd4876848789%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4876748785%_)))
                                         (_%tl4876948792%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4876748785%_))))
                                     (if (gx#stx-pair? _%tl4876948792%_)
                                         (let ((_%e4877048795%_
                                                (gx#syntax-e
                                                 _%tl4876948792%_)))
                                           (let ((_%hd4877148799%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4877048795%_)))
                                                 (_%tl4877248802%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4877048795%_))))
                                             (if (gx#stx-null?
                                                  _%tl4877248802%_)
                                                 ((lambda (_%L48805%_
                                                           _%L48807%_)
                                                    (if (let ((__tmp91808
                                                               (let ((__obj91653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta48758%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj91653
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj91653
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj91653 'id)))))
                  (declare (not safe))
                  (##memq __tmp91808 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48807%_ '()))
                            (cons _%L48741%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48807%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48741%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L48805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L48807%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4877148799%_
                                                  _%hd4876848789%_)
                                                 (_%g4876348778%_
                                                  _%g4876448782%_))))
                                         (_%g4876348778%_ _%g4876448782%_))))
                                 (_%g4876348778%_ _%g4876448782%_)))))
                     (_%g4876248825%_
                      (list (let ((__obj91654 _%meta48758%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj91654
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj91654
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj91654
                                   'type-descriptor)))
                            (let ((__obj91655 _%meta48758%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj91655
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj91655
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj91655
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta48758%_))
                       (let* ((_%g4883148846%_
                               (lambda (_%g4883248842%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4883248842%_)))
                              (_%g4883048891%_
                               (lambda (_%g4883248850%_)
                                 (if (gx#stx-pair? _%g4883248850%_)
                                     (let ((_%e4883548853%_
                                            (gx#syntax-e _%g4883248850%_)))
                                       (let ((_%hd4883648857%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4883548853%_)))
                                             (_%tl4883748860%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4883548853%_))))
                                         (if (gx#stx-pair? _%tl4883748860%_)
                                             (let ((_%e4883848863%_
                                                    (gx#syntax-e
                                                     _%tl4883748860%_)))
                                               (let ((_%hd4883948867%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4883848863%_)))
                                                     (_%tl4884048870%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4883848863%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4884048870%_)
                                                     ((lambda (_%L48873%_
                                                               _%L48875%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L48875%_ '()))
                            (cons (cons _%L48873%_ (cons _%L48741%_ '()))
                                  '()))))
              _%hd4883948867%_
              _%hd4883648857%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4883148846%_
                                                      _%g4883248850%_))))
                                             (_%g4883148846%_
                                              _%g4883248850%_))))
                                     (_%g4883148846%_ _%g4883248850%_)))))
                         (_%g4883048891%_
                          (list (let ((__obj91652 _%meta48758%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj91652
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj91652
                                         '7
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj91652
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx48681%_
                                   _%L48739%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx48681%_
                        _%L48739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4868448702%_
                                                      _%g4868548706%_)))
                                               _%hd4869548733%_
                                               _%hd4869248723%_)
                                              (_%g4868448702%_
                                               _%g4868548706%_))))
                                      (_%g4868448702%_ _%g4868548706%_))))
                              (_%g4868448702%_ _%g4868548706%_))))
                      (_%g4868448702%_ _%g4868548706%_)))))
          (_%g4868348897%_ _%stx48681%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx48901%_)
        (let* ((_%g4890448922%_
                (lambda (_%g4890548918%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4890548918%_)))
               (_%g4890349116%_
                (lambda (_%g4890548926%_)
                  (if (gx#stx-pair? _%g4890548926%_)
                      (let ((_%e4890848929%_ (gx#syntax-e _%g4890548926%_)))
                        (let ((_%hd4890948933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4890848929%_)))
                              (_%tl4891048936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4890848929%_))))
                          (if (gx#stx-pair? _%tl4891048936%_)
                              (let ((_%e4891148939%_
                                     (gx#syntax-e _%tl4891048936%_)))
                                (let ((_%hd4891248943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4891148939%_)))
                                      (_%tl4891348946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4891148939%_))))
                                  (if (gx#stx-pair? _%tl4891348946%_)
                                      (let ((_%e4891448949%_
                                             (gx#syntax-e _%tl4891348946%_)))
                                        (let ((_%hd4891548953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4891448949%_)))
                                              (_%tl4891648956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4891448949%_))))
                                          (if (gx#stx-null? _%tl4891648956%_)
                                              ((lambda (_%L48959%_ _%L48961%_)
                                                 (if (gx#identifier?
                                                      _%L48959%_)
                                                     (let ((_%meta48977%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx48901%_
                                                               _%L48959%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta48977%_))
                                                           (let* ((_%g4898248997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4898348993%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4898348993%_)))
                          (_%g4898149044%_
                           (lambda (_%g4898349001%_)
                             (if (gx#stx-pair? _%g4898349001%_)
                                 (let ((_%e4898649004%_
                                        (gx#syntax-e _%g4898349001%_)))
                                   (let ((_%hd4898749008%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4898649004%_)))
                                         (_%tl4898849011%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4898649004%_))))
                                     (if (gx#stx-pair? _%tl4898849011%_)
                                         (let ((_%e4898949014%_
                                                (gx#syntax-e
                                                 _%tl4898849011%_)))
                                           (let ((_%hd4899049018%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4898949014%_)))
                                                 (_%tl4899149021%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4898949014%_))))
                                             (if (gx#stx-null?
                                                  _%tl4899149021%_)
                                                 ((lambda (_%L49024%_
                                                           _%L49026%_)
                                                    (if (let ((__tmp91809
                                                               (let ((__obj91657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta48977%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj91657
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj91657
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj91657 'id)))))
                  (declare (not safe))
                  (##memq __tmp91809 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L49026%_ '()))
                            (cons _%L48961%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L49026%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48961%_ '()))
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
                                    (cons (cons _%L49024%_
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
                                                (cons _%L48961%_
                                                      (cons _%L49024%_
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
                                                  _%hd4899049018%_
                                                  _%hd4898749008%_)
                                                 (_%g4898248997%_
                                                  _%g4898349001%_))))
                                         (_%g4898248997%_ _%g4898349001%_))))
                                 (_%g4898248997%_ _%g4898349001%_)))))
                     (_%g4898149044%_
                      (list (let ((__obj91658 _%meta48977%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj91658
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj91658
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj91658
                                   'type-descriptor)))
                            (let ((__obj91659 _%meta48977%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj91659
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj91659
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj91659
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta48977%_))
                       (let* ((_%g4905049065%_
                               (lambda (_%g4905149061%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4905149061%_)))
                              (_%g4904949110%_
                               (lambda (_%g4905149069%_)
                                 (if (gx#stx-pair? _%g4905149069%_)
                                     (let ((_%e4905449072%_
                                            (gx#syntax-e _%g4905149069%_)))
                                       (let ((_%hd4905549076%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4905449072%_)))
                                             (_%tl4905649079%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4905449072%_))))
                                         (if (gx#stx-pair? _%tl4905649079%_)
                                             (let ((_%e4905749082%_
                                                    (gx#syntax-e
                                                     _%tl4905649079%_)))
                                               (let ((_%hd4905849086%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4905749082%_)))
                                                     (_%tl4905949089%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4905749082%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4905949089%_)
                                                     ((lambda (_%L49092%_
                                                               _%L49094%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L49094%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48961%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L49092%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4905849086%_
              _%hd4905549076%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4905049065%_
                                                      _%g4905149069%_))))
                                             (_%g4905049065%_
                                              _%g4905149069%_))))
                                     (_%g4905049065%_ _%g4905149069%_)))))
                         (_%g4904949110%_
                          (list (let ((__obj91656 _%meta48977%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj91656
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj91656
                                         '7
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj91656
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx48901%_
                                   _%L48959%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx48901%_
                        _%L48959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4890448922%_
                                                      _%g4890548926%_)))
                                               _%hd4891548953%_
                                               _%hd4891248943%_)
                                              (_%g4890448922%_
                                               _%g4890548926%_))))
                                      (_%g4890448922%_ _%g4890548926%_))))
                              (_%g4890448922%_ _%g4890548926%_))))
                      (_%g4890448922%_ _%g4890548926%_)))))
          (_%g4890349116%_ _%stx48901%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx49120%_)
        (let* ((_%g4912349141%_
                (lambda (_%g4912449137%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4912449137%_)))
               (_%g4912249227%_
                (lambda (_%g4912449145%_)
                  (if (gx#stx-pair? _%g4912449145%_)
                      (let ((_%e4912749148%_ (gx#syntax-e _%g4912449145%_)))
                        (let ((_%hd4912849152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4912749148%_)))
                              (_%tl4912949155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4912749148%_))))
                          (if (gx#stx-pair? _%tl4912949155%_)
                              (let ((_%e4913049158%_
                                     (gx#syntax-e _%tl4912949155%_)))
                                (let ((_%hd4913149162%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4913049158%_)))
                                      (_%tl4913249165%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4913049158%_))))
                                  (if (gx#stx-pair? _%tl4913249165%_)
                                      (let ((_%e4913349168%_
                                             (gx#syntax-e _%tl4913249165%_)))
                                        (let ((_%hd4913449172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4913349168%_)))
                                              (_%tl4913549175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4913349168%_))))
                                          (if (gx#stx-null? _%tl4913549175%_)
                                              ((lambda (_%L49178%_ _%L49180%_)
                                                 (if (gx#identifier?
                                                      _%L49178%_)
                                                     (let* ((_%g4919649204%_
                                                             (lambda (_%g4919749200%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4919749200%_)))
                                                            (_%g4919549223%_
                                                             (lambda (_%g4919749208%_)
                                                               ((lambda (_%L49211%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L49211%_ '()))
                                      (cons _%L49180%_ '()))))
                        _%g4919749208%_))))
               (_%g4919549223%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx49120%_
                   _%L49178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4912349141%_
                                                      _%g4912449145%_)))
                                               _%hd4913449172%_
                                               _%hd4913149162%_)
                                              (_%g4912349141%_
                                               _%g4912449145%_))))
                                      (_%g4912349141%_ _%g4912449145%_))))
                              (_%g4912349141%_ _%g4912449145%_))))
                      (_%g4912349141%_ _%g4912449145%_)))))
          (_%g4912249227%_ _%stx49120%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx49231%_)
        (let* ((_%__stx8578185782%_ _%$stx49231%_)
               (_%g4923649272%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8578185782%_))))
          (let ((_%__kont8578485785%_
                 (lambda (_%L49390%_ _%L49392%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L49392%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L49390%_
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
                           (cons _%L49392%_
                                 (cons _%L49390%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8578685787%_
                 (lambda (_%L49329%_ _%L49331%_ _%L49332%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L49332%_ (cons _%L49331%_ '())))
                               (cons _%L49329%_ '()))))))
            (if (gx#stx-pair? _%__stx8578185782%_)
                (let ((_%e4924049360%_ (gx#syntax-e _%__stx8578185782%_)))
                  (let ((_%tl4924249367%_
                         (let () (declare (not safe)) (##cdr _%e4924049360%_)))
                        (_%hd4924149364%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4924049360%_))))
                    (if (gx#stx-pair? _%tl4924249367%_)
                        (let ((_%e4924349370%_ (gx#syntax-e _%tl4924249367%_)))
                          (let ((_%tl4924549377%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4924349370%_)))
                                (_%hd4924449374%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4924349370%_))))
                            (if (gx#stx-pair? _%tl4924549377%_)
                                (let ((_%e4924649380%_
                                       (gx#syntax-e _%tl4924549377%_)))
                                  (let ((_%tl4924849387%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4924649380%_)))
                                        (_%hd4924749384%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4924649380%_))))
                                    (if (gx#stx-null? _%tl4924849387%_)
                                        (_%__kont8578485785%_
                                         _%hd4924749384%_
                                         _%hd4924449374%_)
                                        (if (gx#stx-pair? _%tl4924849387%_)
                                            (let ((_%e4926149309%_
                                                   (gx#syntax-e
                                                    _%tl4924849387%_)))
                                              (let ((_%tl4926349316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4926149309%_)))
                                                    (_%hd4926249313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4926149309%_))))
                                                (if (gx#identifier?
                                                     _%hd4926249313%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g91810_|
                                                         _%hd4926249313%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4926349316%_)
                                                            (let ((_%e4926449319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4926349316%_)))
                      (let ((_%tl4926649326%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4926449319%_)))
                            (_%hd4926549323%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4926449319%_))))
                        (if (gx#stx-null? _%tl4926649326%_)
                            (_%__kont8578685787%_
                             _%hd4926549323%_
                             _%hd4924749384%_
                             _%hd4924449374%_)
                            (let () (declare (not safe)) (_%g4923649272%_)))))
                    (let () (declare (not safe)) (_%g4923649272%_)))
                (let () (declare (not safe)) (_%g4923649272%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4923649272%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4923649272%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4923649272%_)))))
                        (let () (declare (not safe)) (_%g4923649272%_)))))
                (let () (declare (not safe)) (_%g4923649272%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx49411%_)
        (let ((_%g4941449421%_
               (lambda (_%g4941549417%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4941549417%_))))
          (_%g4941449421%_ _%$stx49411%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx49425%_)
        (let ((_%g4942849435%_
               (lambda (_%g4942949431%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4942949431%_))))
          (_%g4942849435%_ _%$stx49425%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx49439%_)
        (let* ((_%g4944349457%_
                (lambda (_%g4944449453%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4944449453%_)))
               (_%g4944249498%_
                (lambda (_%g4944449461%_)
                  (if (gx#stx-pair? _%g4944449461%_)
                      (let ((_%e4944649464%_ (gx#syntax-e _%g4944449461%_)))
                        (let ((_%hd4944749468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4944649464%_)))
                              (_%tl4944849471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4944649464%_))))
                          (if (gx#stx-pair? _%tl4944849471%_)
                              (let ((_%e4944949474%_
                                     (gx#syntax-e _%tl4944849471%_)))
                                (let ((_%hd4945049478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4944949474%_)))
                                      (_%tl4945149481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4944949474%_))))
                                  (if (gx#stx-null? _%tl4945149481%_)
                                      ((lambda (_%L49484%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L49484%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L49484%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4945049478%_)
                                      (_%g4944349457%_ _%g4944449461%_))))
                              (_%g4944349457%_ _%g4944449461%_))))
                      (_%g4944349457%_ _%g4944449461%_)))))
          (_%g4944249498%_ _%$stx49439%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx49502%_)
        (let* ((_%g4950549528%_
                (lambda (_%g4950649524%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4950649524%_)))
               (_%g4950449652%_
                (lambda (_%g4950649532%_)
                  (if (gx#stx-pair? _%g4950649532%_)
                      (let ((_%e4951149535%_ (gx#syntax-e _%g4950649532%_)))
                        (let ((_%hd4951249539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4951149535%_)))
                              (_%tl4951349542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4951149535%_))))
                          (if (gx#stx-pair? _%tl4951349542%_)
                              (let ((_%e4951449545%_
                                     (gx#syntax-e _%tl4951349542%_)))
                                (let ((_%hd4951549549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4951449545%_)))
                                      (_%tl4951649552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4951449545%_))))
                                  (if (gx#stx-pair? _%tl4951649552%_)
                                      (let ((_%e4951749555%_
                                             (gx#syntax-e _%tl4951649552%_)))
                                        (let ((_%hd4951849559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4951749555%_)))
                                              (_%tl4951949562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4951749555%_))))
                                          (if (gx#stx-pair? _%tl4951949562%_)
                                              (let ((_%e4952049565%_
                                                     (gx#syntax-e
                                                      _%tl4951949562%_)))
                                                (let ((_%hd4952149569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4952049565%_)))
                                                      (_%tl4952249572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4952049565%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4952249572%_)
                                                      ((lambda (_%L49575%_
                                                                _%L49577%_
                                                                _%L49578%_
                                                                _%L49579%_)
                                                         (let* ((_%g4959949607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4960049603%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4960049603%_)))
                        (_%g4959849626%_
                         (lambda (_%g4960049611%_)
                           ((lambda (_%L49614%_)
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
                                (cons _%L49614%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L49577%_ '()))
                                      (cons 'value:
                                            (cons _%L49575%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4960049611%_))))
                   (_%g4959849626%_
                    (let ((_%$e49638%_
                           (let ((_%$e49630%_ (gx#stx-source _%L49578%_)))
                             (if _%$e49630%_
                                 _%$e49630%_
                                 (let ((_%$e49634%_
                                        (gx#stx-source _%stx49502%_)))
                                   (if _%$e49634%_
                                       _%$e49634%_
                                       (gx#stx-source _%L49579%_)))))))
                      (if _%$e49638%_
                          ((lambda (_%locat49642%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4964449646%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat49642%_
                                   '#t
                                   _%g4964449646%_)))))
                           _%$e49638%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4952149569%_
               _%hd4951849559%_
               _%hd4951549549%_
               _%hd4951249539%_)
              (_%g4950549528%_ _%g4950649532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4950549528%_
                                               _%g4950649532%_))))
                                      (_%g4950549528%_ _%g4950649532%_))))
                              (_%g4950549528%_ _%g4950649532%_))))
                      (_%g4950549528%_ _%g4950649532%_)))))
          (_%g4950449652%_ _%stx49502%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx49656%_)
        (let* ((_%g4965949674%_
                (lambda (_%g4966049670%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4966049670%_)))
               (_%g4965849770%_
                (lambda (_%g4966049678%_)
                  (if (gx#stx-pair? _%g4966049678%_)
                      (let ((_%e4966349681%_ (gx#syntax-e _%g4966049678%_)))
                        (let ((_%hd4966449685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4966349681%_)))
                              (_%tl4966549688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4966349681%_))))
                          (if (gx#stx-pair? _%tl4966549688%_)
                              (let ((_%e4966649691%_
                                     (gx#syntax-e _%tl4966549688%_)))
                                (let ((_%hd4966749695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4966649691%_)))
                                      (_%tl4966849698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4966649691%_))))
                                  (if (gx#stx-null? _%tl4966849698%_)
                                      ((lambda (_%L49701%_ _%L49703%_)
                                         (let* ((_%g4971749725%_
                                                 (lambda (_%g4971849721%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4971849721%_)))
                                                (_%g4971649744%_
                                                 (lambda (_%g4971849729%_)
                                                   ((lambda (_%L49732%_)
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
                                                        (cons _%L49732%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L49701%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4971849729%_))))
                                           (_%g4971649744%_
                                            (let ((_%$e49756%_
                                                   (let ((_%$e49748%_
                                                          (gx#stx-source
                                                           _%L49701%_)))
                                                     (if _%$e49748%_
                                                         _%$e49748%_
                                                         (let ((_%$e49752%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx49656%_)))
                   (if _%$e49752%_ _%$e49752%_ (gx#stx-source _%L49703%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e49756%_
                                                  ((lambda (_%locat49760%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4976249764%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat49760%_
                                                           '#t
                                                           _%g4976249764%_)))))
                                                   _%$e49756%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4966749695%_
                                       _%hd4966449685%_)
                                      (_%g4965949674%_ _%g4966049678%_))))
                              (_%g4965949674%_ _%g4966049678%_))))
                      (_%g4965949674%_ _%g4966049678%_)))))
          (_%g4965849770%_ _%stx49656%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx49774%_)
        (let* ((_%g4977849792%_
                (lambda (_%g4977949788%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4977949788%_)))
               (_%g4977749833%_
                (lambda (_%g4977949796%_)
                  (if (gx#stx-pair? _%g4977949796%_)
                      (let ((_%e4978149799%_ (gx#syntax-e _%g4977949796%_)))
                        (let ((_%hd4978249803%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4978149799%_)))
                              (_%tl4978349806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4978149799%_))))
                          (if (gx#stx-pair? _%tl4978349806%_)
                              (let ((_%e4978449809%_
                                     (gx#syntax-e _%tl4978349806%_)))
                                (let ((_%hd4978549813%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4978449809%_)))
                                      (_%tl4978649816%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4978449809%_))))
                                  (if (gx#stx-null? _%tl4978649816%_)
                                      ((lambda (_%L49819%_)
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
                         (cons _%L49819%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4978549813%_)
                                      (_%g4977849792%_ _%g4977949796%_))))
                              (_%g4977849792%_ _%g4977949796%_))))
                      (_%g4977849792%_ _%g4977949796%_)))))
          (_%g4977749833%_ _%$stx49774%_))))))
