(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g100199_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g100200_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g100201_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx49976%_)
        (let* ((_%g4997949997%_
                (lambda (_%g4998049993%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4998049993%_)))
               (_%g4997850192%_
                (lambda (_%g4998050001%_)
                  (if (gx#stx-pair? _%g4998050001%_)
                      (let ((_%e4998350004%_ (gx#syntax-e _%g4998050001%_)))
                        (let ((_%hd4998450008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4998350004%_)))
                              (_%tl4998550011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4998350004%_))))
                          (if (gx#stx-pair? _%tl4998550011%_)
                              (let ((_%e4998650014%_
                                     (gx#syntax-e _%tl4998550011%_)))
                                (let ((_%hd4998750018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4998650014%_)))
                                      (_%tl4998850021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4998650014%_))))
                                  (if (gx#stx-pair? _%tl4998850021%_)
                                      (let ((_%e4998950024%_
                                             (gx#syntax-e _%tl4998850021%_)))
                                        (let ((_%hd4999050028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4998950024%_)))
                                              (_%tl4999150031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4998950024%_))))
                                          (if (gx#stx-null? _%tl4999150031%_)
                                              ((lambda (_%g4998150034%_
                                                        _%g4998250036%_)
                                                 (if (gx#identifier?
                                                      _%g4998150034%_)
                                                     (let ((_%meta50053%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49976%_
                                                               _%g4998150034%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta50053%_))
                                                           (let* ((_%g5005850073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g5005950069%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5005950069%_)))
                          (_%g5005750120%_
                           (lambda (_%g5005950077%_)
                             (if (gx#stx-pair? _%g5005950077%_)
                                 (let ((_%e5006250080%_
                                        (gx#syntax-e _%g5005950077%_)))
                                   (let ((_%hd5006350084%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5006250080%_)))
                                         (_%tl5006450087%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5006250080%_))))
                                     (if (gx#stx-pair? _%tl5006450087%_)
                                         (let ((_%e5006550090%_
                                                (gx#syntax-e
                                                 _%tl5006450087%_)))
                                           (let ((_%hd5006650094%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5006550090%_)))
                                                 (_%tl5006750097%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5006550090%_))))
                                             (if (gx#stx-null?
                                                  _%tl5006750097%_)
                                                 ((lambda (_%g5006050100%_
                                                           _%g5006150102%_)
                                                    (if (let ((__tmp100197
                                                               (let ((__obj100022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta50053%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj100022
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj100022
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj100022 'id)))))
                  (declare (not safe))
                  (##memq __tmp100197 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5006150102%_ '()))
                            (cons _%g4998250036%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5006150102%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4998250036%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g5006050100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4998250036%_
                                                (cons (cons _%g5006050100%_
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
                                                  _%hd5006650094%_
                                                  _%hd5006350084%_)
                                                 (_%g5005850073%_
                                                  _%g5005950077%_))))
                                         (_%g5005850073%_ _%g5005950077%_))))
                                 (_%g5005850073%_ _%g5005950077%_)))))
                     (_%g5005750120%_
                      (list (let ((__obj100023 _%meta50053%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100023
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100023
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100023
                                   'type-descriptor)))
                            (let ((__obj100024 _%meta50053%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100024
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100024
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100024
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta50053%_))
                       (let* ((_%g5012650141%_
                               (lambda (_%g5012750137%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5012750137%_)))
                              (_%g5012550186%_
                               (lambda (_%g5012750145%_)
                                 (if (gx#stx-pair? _%g5012750145%_)
                                     (let ((_%e5013050148%_
                                            (gx#syntax-e _%g5012750145%_)))
                                       (let ((_%hd5013150152%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5013050148%_)))
                                             (_%tl5013250155%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5013050148%_))))
                                         (if (gx#stx-pair? _%tl5013250155%_)
                                             (let ((_%e5013350158%_
                                                    (gx#syntax-e
                                                     _%tl5013250155%_)))
                                               (let ((_%hd5013450162%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5013350158%_)))
                                                     (_%tl5013550165%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5013350158%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5013550165%_)
                                                     ((lambda (_%g5012850168%_
                                                               _%g5012950170%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5012950170%_ '()))
                            (cons (cons _%g5012850168%_
                                        (cons _%g4998250036%_ '()))
                                  '()))))
              _%hd5013450162%_
              _%hd5013150152%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5012650141%_
                                                      _%g5012750145%_))))
                                             (_%g5012650141%_
                                              _%g5012750145%_))))
                                     (_%g5012650141%_ _%g5012750145%_)))))
                         (_%g5012550186%_
                          (list (let ((__obj100021 _%meta50053%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100021
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100021
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj100021
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49976%_
                                   _%g4998150034%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49976%_
                        _%g4998150034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4997949997%_
                                                      _%g4998050001%_)))
                                               _%hd4999050028%_
                                               _%hd4998750018%_)
                                              (_%g4997949997%_
                                               _%g4998050001%_))))
                                      (_%g4997949997%_ _%g4998050001%_))))
                              (_%g4997949997%_ _%g4998050001%_))))
                      (_%g4997949997%_ _%g4998050001%_)))))
          (_%g4997850192%_ _%stx49976%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx50196%_)
        (let* ((_%g5019950217%_
                (lambda (_%g5020050213%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5020050213%_)))
               (_%g5019850411%_
                (lambda (_%g5020050221%_)
                  (if (gx#stx-pair? _%g5020050221%_)
                      (let ((_%e5020350224%_ (gx#syntax-e _%g5020050221%_)))
                        (let ((_%hd5020450228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5020350224%_)))
                              (_%tl5020550231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5020350224%_))))
                          (if (gx#stx-pair? _%tl5020550231%_)
                              (let ((_%e5020650234%_
                                     (gx#syntax-e _%tl5020550231%_)))
                                (let ((_%hd5020750238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5020650234%_)))
                                      (_%tl5020850241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5020650234%_))))
                                  (if (gx#stx-pair? _%tl5020850241%_)
                                      (let ((_%e5020950244%_
                                             (gx#syntax-e _%tl5020850241%_)))
                                        (let ((_%hd5021050248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5020950244%_)))
                                              (_%tl5021150251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5020950244%_))))
                                          (if (gx#stx-null? _%tl5021150251%_)
                                              ((lambda (_%g5020150254%_
                                                        _%g5020250256%_)
                                                 (if (gx#identifier?
                                                      _%g5020150254%_)
                                                     (let ((_%meta50272%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx50196%_
                                                               _%g5020150254%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta50272%_))
                                                           (let* ((_%g5027750292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g5027850288%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5027850288%_)))
                          (_%g5027650339%_
                           (lambda (_%g5027850296%_)
                             (if (gx#stx-pair? _%g5027850296%_)
                                 (let ((_%e5028150299%_
                                        (gx#syntax-e _%g5027850296%_)))
                                   (let ((_%hd5028250303%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5028150299%_)))
                                         (_%tl5028350306%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5028150299%_))))
                                     (if (gx#stx-pair? _%tl5028350306%_)
                                         (let ((_%e5028450309%_
                                                (gx#syntax-e
                                                 _%tl5028350306%_)))
                                           (let ((_%hd5028550313%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5028450309%_)))
                                                 (_%tl5028650316%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5028450309%_))))
                                             (if (gx#stx-null?
                                                  _%tl5028650316%_)
                                                 ((lambda (_%g5027950319%_
                                                           _%g5028050321%_)
                                                    (if (let ((__tmp100198
                                                               (let ((__obj100026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta50272%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj100026
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj100026
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj100026 'id)))))
                  (declare (not safe))
                  (##memq __tmp100198 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5028050321%_ '()))
                            (cons _%g5020250256%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5028050321%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5020250256%_ '()))
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
                                    (cons (cons _%g5027950319%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g5020250256%_
                                                (cons (cons _%g5027950319%_
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
                                                  _%hd5028550313%_
                                                  _%hd5028250303%_)
                                                 (_%g5027750292%_
                                                  _%g5027850296%_))))
                                         (_%g5027750292%_ _%g5027850296%_))))
                                 (_%g5027750292%_ _%g5027850296%_)))))
                     (_%g5027650339%_
                      (list (let ((__obj100027 _%meta50272%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100027
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100027
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100027
                                   'type-descriptor)))
                            (let ((__obj100028 _%meta50272%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100028
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100028
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100028
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta50272%_))
                       (let* ((_%g5034550360%_
                               (lambda (_%g5034650356%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5034650356%_)))
                              (_%g5034450405%_
                               (lambda (_%g5034650364%_)
                                 (if (gx#stx-pair? _%g5034650364%_)
                                     (let ((_%e5034950367%_
                                            (gx#syntax-e _%g5034650364%_)))
                                       (let ((_%hd5035050371%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5034950367%_)))
                                             (_%tl5035150374%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5034950367%_))))
                                         (if (gx#stx-pair? _%tl5035150374%_)
                                             (let ((_%e5035250377%_
                                                    (gx#syntax-e
                                                     _%tl5035150374%_)))
                                               (let ((_%hd5035350381%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5035250377%_)))
                                                     (_%tl5035450384%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5035250377%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5035450384%_)
                                                     ((lambda (_%g5034750387%_
                                                               _%g5034850389%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5034850389%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5020250256%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g5034750387%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd5035350381%_
              _%hd5035050371%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5034550360%_
                                                      _%g5034650364%_))))
                                             (_%g5034550360%_
                                              _%g5034650364%_))))
                                     (_%g5034550360%_ _%g5034650364%_)))))
                         (_%g5034450405%_
                          (list (let ((__obj100025 _%meta50272%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100025
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100025
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj100025
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx50196%_
                                   _%g5020150254%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx50196%_
                        _%g5020150254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5019950217%_
                                                      _%g5020050221%_)))
                                               _%hd5021050248%_
                                               _%hd5020750238%_)
                                              (_%g5019950217%_
                                               _%g5020050221%_))))
                                      (_%g5019950217%_ _%g5020050221%_))))
                              (_%g5019950217%_ _%g5020050221%_))))
                      (_%g5019950217%_ _%g5020050221%_)))))
          (_%g5019850411%_ _%stx50196%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx50415%_)
        (let* ((_%g5041850436%_
                (lambda (_%g5041950432%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5041950432%_)))
               (_%g5041750522%_
                (lambda (_%g5041950440%_)
                  (if (gx#stx-pair? _%g5041950440%_)
                      (let ((_%e5042250443%_ (gx#syntax-e _%g5041950440%_)))
                        (let ((_%hd5042350447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5042250443%_)))
                              (_%tl5042450450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5042250443%_))))
                          (if (gx#stx-pair? _%tl5042450450%_)
                              (let ((_%e5042550453%_
                                     (gx#syntax-e _%tl5042450450%_)))
                                (let ((_%hd5042650457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5042550453%_)))
                                      (_%tl5042750460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5042550453%_))))
                                  (if (gx#stx-pair? _%tl5042750460%_)
                                      (let ((_%e5042850463%_
                                             (gx#syntax-e _%tl5042750460%_)))
                                        (let ((_%hd5042950467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5042850463%_)))
                                              (_%tl5043050470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5042850463%_))))
                                          (if (gx#stx-null? _%tl5043050470%_)
                                              ((lambda (_%g5042050473%_
                                                        _%g5042150475%_)
                                                 (if (gx#identifier?
                                                      _%g5042050473%_)
                                                     (let* ((_%g5049150499%_
                                                             (lambda (_%g5049250495%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g5049250495%_)))
                                                            (_%g5049050518%_
                                                             (lambda (_%g5049250503%_)
                                                               ((lambda (_%g5049350506%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g5049350506%_ '()))
                                      (cons _%g5042150475%_ '()))))
                        _%g5049250503%_))))
               (_%g5049050518%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx50415%_
                   _%g5042050473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5041850436%_
                                                      _%g5041950440%_)))
                                               _%hd5042950467%_
                                               _%hd5042650457%_)
                                              (_%g5041850436%_
                                               _%g5041950440%_))))
                                      (_%g5041850436%_ _%g5041950440%_))))
                              (_%g5041850436%_ _%g5041950440%_))))
                      (_%g5041850436%_ _%g5041950440%_)))))
          (_%g5041750522%_ _%stx50415%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx50526%_)
        (let* ((_%__stx9336893369%_ _%$stx50526%_)
               (_%g5053250616%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9336893369%_))))
          (let ((_%__kont9337193372%_
                 (lambda (_%g5053450920%_
                          _%g5053550922%_
                          _%g5053650923%_
                          _%g5053750924%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5053750924%_
                                           (cons _%g5053550922%_
                                                 (foldr (lambda (_%g5094850951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5094950954%_)
                  (cons _%g5094850951%_ _%g5094950954%_))
                '()
                _%g5053450920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5053650923%_ '())))))
                (_%__kont9337593376%_
                 (lambda (_%g5056250798%_
                          _%g5056350800%_
                          _%g5056450801%_
                          _%g5056550802%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5056550802%_
                                           (cons _%g5056350800%_
                                                 (foldr (lambda (_%g5082650829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5082750832%_)
                  (cons _%g5082650829%_ _%g5082750832%_))
                '()
                _%g5056250798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5056450801%_ '())))))
                (_%__kont9337993380%_
                 (lambda (_%g5059050681%_ _%g5059150683%_ _%g5059250684%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5059250684%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5059150683%_
                                                       (foldr (lambda (_%g5070450707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5070550710%_)
                        (cons _%g5070450707%_ _%g5070550710%_))
                      '()
                      _%g5059050681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9349393494%_
                    (lambda (_%e5059350623%_
                             _%hd5059450627%_
                             _%tl5059550630%_
                             _%e5059650633%_
                             _%hd5059750637%_
                             _%tl5059850640%_
                             _%e5059950643%_
                             _%hd5060050647%_
                             _%tl5060150650%_
                             _%__splice9338193382%_
                             _%target5060250653%_
                             _%tl5060450656%_)
                      (letrec ((_%loop5060550659%_
                                (lambda (_%hd5060350663%_ _%rest5060950666%_)
                                  (if (gx#stx-pair? _%hd5060350663%_)
                                      (let ((_%e5060650668%_
                                             (gx#syntax-e _%hd5060350663%_)))
                                        (let ((_%lp-tl5060850675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5060650668%_)))
                                              (_%lp-hd5060750672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5060650668%_))))
                                          (_%loop5060550659%_
                                           _%lp-tl5060850675%_
                                           (cons _%lp-hd5060750672%_
                                                 _%rest5060950666%_))))
                                      (let ((_%rest5061050678%_
                                             (reverse _%rest5060950666%_)))
                                        (_%__kont9337993380%_
                                         _%rest5061050678%_
                                         _%hd5060050647%_
                                         _%hd5059750637%_))))))
                        (_%loop5060550659%_ _%target5060250653%_ '()))))
                   (_%__match9346793468%_
                    (lambda (_%e5056650720%_
                             _%hd5056750724%_
                             _%tl5056850727%_
                             _%e5056950730%_
                             _%hd5057050734%_
                             _%tl5057150737%_
                             _%e5057250740%_
                             _%hd5057350744%_
                             _%tl5057450747%_
                             _%e5057550750%_
                             _%hd5057650754%_
                             _%tl5057750757%_
                             _%e5057850760%_
                             _%hd5057950764%_
                             _%tl5058050767%_
                             _%__splice9337793378%_
                             _%target5058150770%_
                             _%tl5058350773%_)
                      (letrec ((_%loop5058450776%_
                                (lambda (_%hd5058250780%_ _%rest5058850783%_)
                                  (if (gx#stx-pair? _%hd5058250780%_)
                                      (let ((_%e5058550785%_
                                             (gx#syntax-e _%hd5058250780%_)))
                                        (let ((_%lp-tl5058750792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5058550785%_)))
                                              (_%lp-hd5058650789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5058550785%_))))
                                          (_%loop5058450776%_
                                           _%lp-tl5058750792%_
                                           (cons _%lp-hd5058650789%_
                                                 _%rest5058850783%_))))
                                      (let ((_%rest5058950795%_
                                             (reverse _%rest5058850783%_)))
                                        (_%__kont9337593376%_
                                         _%rest5058950795%_
                                         _%hd5057950764%_
                                         _%hd5057650754%_
                                         _%hd5057050734%_))))))
                        (_%loop5058450776%_ _%target5058150770%_ '()))))
                   (_%__match9342593426%_
                    (lambda (_%e5053850842%_
                             _%hd5053950846%_
                             _%tl5054050849%_
                             _%e5054150852%_
                             _%hd5054250856%_
                             _%tl5054350859%_
                             _%e5054450862%_
                             _%hd5054550866%_
                             _%tl5054650869%_
                             _%e5054750872%_
                             _%hd5054850876%_
                             _%tl5054950879%_
                             _%e5055050882%_
                             _%hd5055150886%_
                             _%tl5055250889%_
                             _%__splice9337393374%_
                             _%target5055350892%_
                             _%tl5055550895%_)
                      (letrec ((_%loop5055650898%_
                                (lambda (_%hd5055450902%_ _%rest5056050905%_)
                                  (if (gx#stx-pair? _%hd5055450902%_)
                                      (let ((_%e5055750907%_
                                             (gx#syntax-e _%hd5055450902%_)))
                                        (let ((_%lp-tl5055950914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5055750907%_)))
                                              (_%lp-hd5055850911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5055750907%_))))
                                          (_%loop5055650898%_
                                           _%lp-tl5055950914%_
                                           (cons _%lp-hd5055850911%_
                                                 _%rest5056050905%_))))
                                      (let ((_%rest5056150917%_
                                             (reverse _%rest5056050905%_)))
                                        (_%__kont9337193372%_
                                         _%rest5056150917%_
                                         _%hd5055150886%_
                                         _%hd5054850876%_
                                         _%hd5054250856%_))))))
                        (_%loop5055650898%_ _%target5055350892%_ '())))))
              (if (gx#stx-pair? _%__stx9336893369%_)
                  (let ((_%e5053850842%_ (gx#syntax-e _%__stx9336893369%_)))
                    (let ((_%tl5054050849%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5053850842%_)))
                          (_%hd5053950846%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5053850842%_))))
                      (if (gx#stx-pair? _%tl5054050849%_)
                          (let ((_%e5054150852%_
                                 (gx#syntax-e _%tl5054050849%_)))
                            (let ((_%tl5054350859%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5054150852%_)))
                                  (_%hd5054250856%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5054150852%_))))
                              (if (gx#stx-pair? _%tl5054350859%_)
                                  (let ((_%e5054450862%_
                                         (gx#syntax-e _%tl5054350859%_)))
                                    (let ((_%tl5054650869%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5054450862%_)))
                                          (_%hd5054550866%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5054450862%_))))
                                      (if (gx#identifier? _%hd5054550866%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g100199_|
                                               _%hd5054550866%_)
                                              (if (gx#stx-pair?
                                                   _%tl5054650869%_)
                                                  (let ((_%e5054750872%_
                                                         (gx#syntax-e
                                                          _%tl5054650869%_)))
                                                    (let ((_%tl5054950879%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5054750872%_)))
                                                          (_%hd5054850876%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5054750872%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5054950879%_)
                                                          (let ((_%e5055050882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5054950879%_)))
                    (let ((_%tl5055250889%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5055050882%_)))
                          (_%hd5055150886%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5055050882%_))))
                      (if (gx#stx-pair/null? _%tl5055250889%_)
                          (let ((_%__splice9337393374%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5055250889%_
                                  '0)))
                            (let ((_%tl5055550895%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9337393374%_ '1)))
                                  (_%target5055350892%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9337393374%_
                                      '0))))
                              (if (gx#stx-null? _%tl5055550895%_)
                                  (_%__match9342593426%_
                                   _%e5053850842%_
                                   _%hd5053950846%_
                                   _%tl5054050849%_
                                   _%e5054150852%_
                                   _%hd5054250856%_
                                   _%tl5054350859%_
                                   _%e5054450862%_
                                   _%hd5054550866%_
                                   _%tl5054650869%_
                                   _%e5054750872%_
                                   _%hd5054850876%_
                                   _%tl5054950879%_
                                   _%e5055050882%_
                                   _%hd5055150886%_
                                   _%tl5055250889%_
                                   _%__splice9337393374%_
                                   _%target5055350892%_
                                   _%tl5055550895%_)
                                  (if (gx#stx-pair/null? _%tl5054650869%_)
                                      (let ((_%__splice9338193382%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5054650869%_
                                              '0)))
                                        (let ((_%tl5060450656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9338193382%_
                                                  '1)))
                                              (_%target5060250653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9338193382%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5060450656%_)
                                              (_%__match9349393494%_
                                               _%e5053850842%_
                                               _%hd5053950846%_
                                               _%tl5054050849%_
                                               _%e5054150852%_
                                               _%hd5054250856%_
                                               _%tl5054350859%_
                                               _%e5054450862%_
                                               _%hd5054550866%_
                                               _%tl5054650869%_
                                               _%__splice9338193382%_
                                               _%target5060250653%_
                                               _%tl5060450656%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5053250616%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5053250616%_))))))
                          (if (gx#stx-pair/null? _%tl5054650869%_)
                              (let ((_%__splice9338193382%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5054650869%_
                                      '0)))
                                (let ((_%tl5060450656%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9338193382%_
                                          '1)))
                                      (_%target5060250653%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9338193382%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5060450656%_)
                                      (_%__match9349393494%_
                                       _%e5053850842%_
                                       _%hd5053950846%_
                                       _%tl5054050849%_
                                       _%e5054150852%_
                                       _%hd5054250856%_
                                       _%tl5054350859%_
                                       _%e5054450862%_
                                       _%hd5054550866%_
                                       _%tl5054650869%_
                                       _%__splice9338193382%_
                                       _%target5060250653%_
                                       _%tl5060450656%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5053250616%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5053250616%_))))))
                  (if (gx#stx-pair/null? _%tl5054650869%_)
                      (let ((_%__splice9338193382%_
                             (gx#syntax-split-splice->vector
                              _%tl5054650869%_
                              '0)))
                        (let ((_%tl5060450656%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9338193382%_ '1)))
                              (_%target5060250653%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9338193382%_ '0))))
                          (if (gx#stx-null? _%tl5060450656%_)
                              (_%__match9349393494%_
                               _%e5053850842%_
                               _%hd5053950846%_
                               _%tl5054050849%_
                               _%e5054150852%_
                               _%hd5054250856%_
                               _%tl5054350859%_
                               _%e5054450862%_
                               _%hd5054550866%_
                               _%tl5054650869%_
                               _%__splice9338193382%_
                               _%target5060250653%_
                               _%tl5060450656%_)
                              (let ()
                                (declare (not safe))
                                (_%g5053250616%_)))))
                      (let () (declare (not safe)) (_%g5053250616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5054650869%_)
                                                      (let ((_%__splice9338193382%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5054650869%_
                                                              '0)))
                                                        (let ((_%tl5060450656%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9338193382%_ '1)))
                      (_%target5060250653%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9338193382%_ '0))))
                  (if (gx#stx-null? _%tl5060450656%_)
                      (_%__match9349393494%_
                       _%e5053850842%_
                       _%hd5053950846%_
                       _%tl5054050849%_
                       _%e5054150852%_
                       _%hd5054250856%_
                       _%tl5054350859%_
                       _%e5054450862%_
                       _%hd5054550866%_
                       _%tl5054650869%_
                       _%__splice9338193382%_
                       _%target5060250653%_
                       _%tl5060450656%_)
                      (let () (declare (not safe)) (_%g5053250616%_)))))
              (let () (declare (not safe)) (_%g5053250616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g100200_|
                                                   _%hd5054550866%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5054650869%_)
                                                      (let ((_%e5057550750%_
                                                             (gx#syntax-e
                                                              _%tl5054650869%_)))
                                                        (let ((_%tl5057750757%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5057550750%_)))
                      (_%hd5057650754%_
                       (let () (declare (not safe)) (##car _%e5057550750%_))))
                  (if (gx#stx-pair? _%tl5057750757%_)
                      (let ((_%e5057850760%_ (gx#syntax-e _%tl5057750757%_)))
                        (let ((_%tl5058050767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5057850760%_)))
                              (_%hd5057950764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5057850760%_))))
                          (if (gx#stx-pair/null? _%tl5058050767%_)
                              (let ((_%__splice9337793378%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5058050767%_
                                      '0)))
                                (let ((_%tl5058350773%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9337793378%_
                                          '1)))
                                      (_%target5058150770%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9337793378%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5058350773%_)
                                      (_%__match9346793468%_
                                       _%e5053850842%_
                                       _%hd5053950846%_
                                       _%tl5054050849%_
                                       _%e5054150852%_
                                       _%hd5054250856%_
                                       _%tl5054350859%_
                                       _%e5054450862%_
                                       _%hd5054550866%_
                                       _%tl5054650869%_
                                       _%e5057550750%_
                                       _%hd5057650754%_
                                       _%tl5057750757%_
                                       _%e5057850760%_
                                       _%hd5057950764%_
                                       _%tl5058050767%_
                                       _%__splice9337793378%_
                                       _%target5058150770%_
                                       _%tl5058350773%_)
                                      (if (gx#stx-pair/null? _%tl5054650869%_)
                                          (let ((_%__splice9338193382%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5054650869%_
                                                  '0)))
                                            (let ((_%tl5060450656%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9338193382%_
                                                      '1)))
                                                  (_%target5060250653%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9338193382%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5060450656%_)
                                                  (_%__match9349393494%_
                                                   _%e5053850842%_
                                                   _%hd5053950846%_
                                                   _%tl5054050849%_
                                                   _%e5054150852%_
                                                   _%hd5054250856%_
                                                   _%tl5054350859%_
                                                   _%e5054450862%_
                                                   _%hd5054550866%_
                                                   _%tl5054650869%_
                                                   _%__splice9338193382%_
                                                   _%target5060250653%_
                                                   _%tl5060450656%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5053250616%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5053250616%_))))))
                              (if (gx#stx-pair/null? _%tl5054650869%_)
                                  (let ((_%__splice9338193382%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5054650869%_
                                          '0)))
                                    (let ((_%tl5060450656%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9338193382%_
                                              '1)))
                                          (_%target5060250653%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9338193382%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5060450656%_)
                                          (_%__match9349393494%_
                                           _%e5053850842%_
                                           _%hd5053950846%_
                                           _%tl5054050849%_
                                           _%e5054150852%_
                                           _%hd5054250856%_
                                           _%tl5054350859%_
                                           _%e5054450862%_
                                           _%hd5054550866%_
                                           _%tl5054650869%_
                                           _%__splice9338193382%_
                                           _%target5060250653%_
                                           _%tl5060450656%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5053250616%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5053250616%_))))))
                      (if (gx#stx-pair/null? _%tl5054650869%_)
                          (let ((_%__splice9338193382%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5054650869%_
                                  '0)))
                            (let ((_%tl5060450656%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9338193382%_ '1)))
                                  (_%target5060250653%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9338193382%_
                                      '0))))
                              (if (gx#stx-null? _%tl5060450656%_)
                                  (_%__match9349393494%_
                                   _%e5053850842%_
                                   _%hd5053950846%_
                                   _%tl5054050849%_
                                   _%e5054150852%_
                                   _%hd5054250856%_
                                   _%tl5054350859%_
                                   _%e5054450862%_
                                   _%hd5054550866%_
                                   _%tl5054650869%_
                                   _%__splice9338193382%_
                                   _%target5060250653%_
                                   _%tl5060450656%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5053250616%_)))))
                          (let () (declare (not safe)) (_%g5053250616%_))))))
              (if (gx#stx-pair/null? _%tl5054650869%_)
                  (let ((_%__splice9338193382%_
                         (gx#syntax-split-splice->vector _%tl5054650869%_ '0)))
                    (let ((_%tl5060450656%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9338193382%_ '1)))
                          (_%target5060250653%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9338193382%_ '0))))
                      (if (gx#stx-null? _%tl5060450656%_)
                          (_%__match9349393494%_
                           _%e5053850842%_
                           _%hd5053950846%_
                           _%tl5054050849%_
                           _%e5054150852%_
                           _%hd5054250856%_
                           _%tl5054350859%_
                           _%e5054450862%_
                           _%hd5054550866%_
                           _%tl5054650869%_
                           _%__splice9338193382%_
                           _%target5060250653%_
                           _%tl5060450656%_)
                          (let () (declare (not safe)) (_%g5053250616%_)))))
                  (let () (declare (not safe)) (_%g5053250616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5054650869%_)
                                                      (let ((_%__splice9338193382%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5054650869%_
                                                              '0)))
                                                        (let ((_%tl5060450656%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9338193382%_ '1)))
                      (_%target5060250653%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9338193382%_ '0))))
                  (if (gx#stx-null? _%tl5060450656%_)
                      (_%__match9349393494%_
                       _%e5053850842%_
                       _%hd5053950846%_
                       _%tl5054050849%_
                       _%e5054150852%_
                       _%hd5054250856%_
                       _%tl5054350859%_
                       _%e5054450862%_
                       _%hd5054550866%_
                       _%tl5054650869%_
                       _%__splice9338193382%_
                       _%target5060250653%_
                       _%tl5060450656%_)
                      (let () (declare (not safe)) (_%g5053250616%_)))))
              (let () (declare (not safe)) (_%g5053250616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5054650869%_)
                                              (let ((_%__splice9338193382%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5054650869%_
                                                      '0)))
                                                (let ((_%tl5060450656%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9338193382%_
                                                          '1)))
                                                      (_%target5060250653%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9338193382%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5060450656%_)
                                                      (_%__match9349393494%_
                                                       _%e5053850842%_
                                                       _%hd5053950846%_
                                                       _%tl5054050849%_
                                                       _%e5054150852%_
                                                       _%hd5054250856%_
                                                       _%tl5054350859%_
                                                       _%e5054450862%_
                                                       _%hd5054550866%_
                                                       _%tl5054650869%_
                                                       _%__splice9338193382%_
                                                       _%target5060250653%_
                                                       _%tl5060450656%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5053250616%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5053250616%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5053250616%_)))))
                          (let () (declare (not safe)) (_%g5053250616%_)))))
                  (let () (declare (not safe)) (_%g5053250616%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx50964%_)
        (let* ((_%__stx9349693497%_ _%$stx50964%_)
               (_%g5096951005%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9349693497%_))))
          (let ((_%__kont9349993500%_
                 (lambda (_%g5097151123%_ _%g5097251125%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5097251125%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5097151123%_
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
                           (cons _%g5097251125%_
                                 (cons _%g5097151123%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9350193502%_
                 (lambda (_%g5098251062%_ _%g5098351064%_ _%g5098451065%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5098451065%_
                                           (cons _%g5098351064%_ '())))
                               (cons _%g5098251062%_ '()))))))
            (if (gx#stx-pair? _%__stx9349693497%_)
                (let ((_%e5097351093%_ (gx#syntax-e _%__stx9349693497%_)))
                  (let ((_%tl5097551100%_
                         (let () (declare (not safe)) (##cdr _%e5097351093%_)))
                        (_%hd5097451097%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5097351093%_))))
                    (if (gx#stx-pair? _%tl5097551100%_)
                        (let ((_%e5097651103%_ (gx#syntax-e _%tl5097551100%_)))
                          (let ((_%tl5097851110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5097651103%_)))
                                (_%hd5097751107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5097651103%_))))
                            (if (gx#stx-pair? _%tl5097851110%_)
                                (let ((_%e5097951113%_
                                       (gx#syntax-e _%tl5097851110%_)))
                                  (let ((_%tl5098151120%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5097951113%_)))
                                        (_%hd5098051117%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5097951113%_))))
                                    (if (gx#stx-null? _%tl5098151120%_)
                                        (_%__kont9349993500%_
                                         _%hd5098051117%_
                                         _%hd5097751107%_)
                                        (if (gx#stx-pair? _%tl5098151120%_)
                                            (let ((_%e5099451042%_
                                                   (gx#syntax-e
                                                    _%tl5098151120%_)))
                                              (let ((_%tl5099651049%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5099451042%_)))
                                                    (_%hd5099551046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5099451042%_))))
                                                (if (gx#identifier?
                                                     _%hd5099551046%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g100201_|
                                                         _%hd5099551046%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5099651049%_)
                                                            (let ((_%e5099751052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5099651049%_)))
                      (let ((_%tl5099951059%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5099751052%_)))
                            (_%hd5099851056%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5099751052%_))))
                        (if (gx#stx-null? _%tl5099951059%_)
                            (_%__kont9350193502%_
                             _%hd5099851056%_
                             _%hd5098051117%_
                             _%hd5097751107%_)
                            (let () (declare (not safe)) (_%g5096951005%_)))))
                    (let () (declare (not safe)) (_%g5096951005%_)))
                (let () (declare (not safe)) (_%g5096951005%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5096951005%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5096951005%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5096951005%_)))))
                        (let () (declare (not safe)) (_%g5096951005%_)))))
                (let () (declare (not safe)) (_%g5096951005%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx51144%_)
        (let ((_%g5114751154%_
               (lambda (_%g5114851150%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5114851150%_))))
          (_%g5114751154%_ _%$stx51144%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx51158%_)
        (let ((_%g5116151168%_
               (lambda (_%g5116251164%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5116251164%_))))
          (_%g5116151168%_ _%$stx51158%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx51172%_)
        (let* ((_%g5117651190%_
                (lambda (_%g5117751186%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5117751186%_)))
               (_%g5117551231%_
                (lambda (_%g5117751194%_)
                  (if (gx#stx-pair? _%g5117751194%_)
                      (let ((_%e5117951197%_ (gx#syntax-e _%g5117751194%_)))
                        (let ((_%hd5118051201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5117951197%_)))
                              (_%tl5118151204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5117951197%_))))
                          (if (gx#stx-pair? _%tl5118151204%_)
                              (let ((_%e5118251207%_
                                     (gx#syntax-e _%tl5118151204%_)))
                                (let ((_%hd5118351211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5118251207%_)))
                                      (_%tl5118451214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5118251207%_))))
                                  (if (gx#stx-null? _%tl5118451214%_)
                                      ((lambda (_%g5117851217%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g5117851217%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g5117851217%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5118351211%_)
                                      (_%g5117651190%_ _%g5117751194%_))))
                              (_%g5117651190%_ _%g5117751194%_))))
                      (_%g5117651190%_ _%g5117751194%_)))))
          (_%g5117551231%_ _%$stx51172%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx51235%_)
        (let* ((_%g5123851261%_
                (lambda (_%g5123951257%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5123951257%_)))
               (_%g5123751385%_
                (lambda (_%g5123951265%_)
                  (if (gx#stx-pair? _%g5123951265%_)
                      (let ((_%e5124451268%_ (gx#syntax-e _%g5123951265%_)))
                        (let ((_%hd5124551272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5124451268%_)))
                              (_%tl5124651275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5124451268%_))))
                          (if (gx#stx-pair? _%tl5124651275%_)
                              (let ((_%e5124751278%_
                                     (gx#syntax-e _%tl5124651275%_)))
                                (let ((_%hd5124851282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5124751278%_)))
                                      (_%tl5124951285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5124751278%_))))
                                  (if (gx#stx-pair? _%tl5124951285%_)
                                      (let ((_%e5125051288%_
                                             (gx#syntax-e _%tl5124951285%_)))
                                        (let ((_%hd5125151292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5125051288%_)))
                                              (_%tl5125251295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5125051288%_))))
                                          (if (gx#stx-pair? _%tl5125251295%_)
                                              (let ((_%e5125351298%_
                                                     (gx#syntax-e
                                                      _%tl5125251295%_)))
                                                (let ((_%hd5125451302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5125351298%_)))
                                                      (_%tl5125551305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5125351298%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5125551305%_)
                                                      ((lambda (_%g5124051308%_
                                                                _%g5124151310%_
                                                                _%g5124251311%_
                                                                _%g5124351312%_)
                                                         (let* ((_%g5133251340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5133351336%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5133351336%_)))
                        (_%g5133151359%_
                         (lambda (_%g5133351344%_)
                           ((lambda (_%g5133451347%_)
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
                                (cons _%g5133451347%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5124151310%_ '()))
                                      (cons 'value:
                                            (cons _%g5124051308%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5133351344%_))))
                   (_%g5133151359%_
                    (let ((_%$e51371%_
                           (let ((_%$e51363%_ (gx#stx-source _%g5124251311%_)))
                             (if _%$e51363%_
                                 _%$e51363%_
                                 (let ((_%$e51367%_
                                        (gx#stx-source _%stx51235%_)))
                                   (if _%$e51367%_
                                       _%$e51367%_
                                       (gx#stx-source _%g5124351312%_)))))))
                      (if _%$e51371%_
                          ((lambda (_%locat51375%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5137751379%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat51375%_
                                   '#t
                                   _%g5137751379%_)))))
                           _%$e51371%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5125451302%_
               _%hd5125151292%_
               _%hd5124851282%_
               _%hd5124551272%_)
              (_%g5123851261%_ _%g5123951265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5123851261%_
                                               _%g5123951265%_))))
                                      (_%g5123851261%_ _%g5123951265%_))))
                              (_%g5123851261%_ _%g5123951265%_))))
                      (_%g5123851261%_ _%g5123951265%_)))))
          (_%g5123751385%_ _%stx51235%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx51389%_)
        (let* ((_%g5139251407%_
                (lambda (_%g5139351403%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5139351403%_)))
               (_%g5139151503%_
                (lambda (_%g5139351411%_)
                  (if (gx#stx-pair? _%g5139351411%_)
                      (let ((_%e5139651414%_ (gx#syntax-e _%g5139351411%_)))
                        (let ((_%hd5139751418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5139651414%_)))
                              (_%tl5139851421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5139651414%_))))
                          (if (gx#stx-pair? _%tl5139851421%_)
                              (let ((_%e5139951424%_
                                     (gx#syntax-e _%tl5139851421%_)))
                                (let ((_%hd5140051428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5139951424%_)))
                                      (_%tl5140151431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5139951424%_))))
                                  (if (gx#stx-null? _%tl5140151431%_)
                                      ((lambda (_%g5139451434%_
                                                _%g5139551436%_)
                                         (let* ((_%g5145051458%_
                                                 (lambda (_%g5145151454%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5145151454%_)))
                                                (_%g5144951477%_
                                                 (lambda (_%g5145151462%_)
                                                   ((lambda (_%g5145251465%_)
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
                                                        (cons _%g5145251465%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g5139451434%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5145151462%_))))
                                           (_%g5144951477%_
                                            (let ((_%$e51489%_
                                                   (let ((_%$e51481%_
                                                          (gx#stx-source
                                                           _%g5139451434%_)))
                                                     (if _%$e51481%_
                                                         _%$e51481%_
                                                         (let ((_%$e51485%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx51389%_)))
                   (if _%$e51485%_
                       _%$e51485%_
                       (gx#stx-source _%g5139551436%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e51489%_
                                                  ((lambda (_%locat51493%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5149551497%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat51493%_
                                                           '#t
                                                           _%g5149551497%_)))))
                                                   _%$e51489%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5140051428%_
                                       _%hd5139751418%_)
                                      (_%g5139251407%_ _%g5139351411%_))))
                              (_%g5139251407%_ _%g5139351411%_))))
                      (_%g5139251407%_ _%g5139351411%_)))))
          (_%g5139151503%_ _%stx51389%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx51507%_)
        (let* ((_%g5151151525%_
                (lambda (_%g5151251521%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5151251521%_)))
               (_%g5151051566%_
                (lambda (_%g5151251529%_)
                  (if (gx#stx-pair? _%g5151251529%_)
                      (let ((_%e5151451532%_ (gx#syntax-e _%g5151251529%_)))
                        (let ((_%hd5151551536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5151451532%_)))
                              (_%tl5151651539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5151451532%_))))
                          (if (gx#stx-pair? _%tl5151651539%_)
                              (let ((_%e5151751542%_
                                     (gx#syntax-e _%tl5151651539%_)))
                                (let ((_%hd5151851546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5151751542%_)))
                                      (_%tl5151951549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5151751542%_))))
                                  (if (gx#stx-null? _%tl5151951549%_)
                                      ((lambda (_%g5151351552%_)
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
                         (cons _%g5151351552%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5151851546%_)
                                      (_%g5151151525%_ _%g5151251529%_))))
                              (_%g5151151525%_ _%g5151251529%_))))
                      (_%g5151151525%_ _%g5151251529%_)))))
          (_%g5151051566%_ _%$stx51507%_))))))
