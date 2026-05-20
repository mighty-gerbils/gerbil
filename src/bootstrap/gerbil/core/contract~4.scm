(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g101272_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g101273_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g101274_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx50017%_)
        (let* ((_%__stx9437194372%_ _%stx50017%_)
               (_%g5002150054%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9437194372%_))))
          (let ((_%__kont9437494375%_
                 (lambda (_%g5002350303%_ _%g5002450305%_)
                   (let ((_%meta50320%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx50017%_
                             _%g5002350303%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta50320%_))
                         (let* ((_%g5032550340%_
                                 (lambda (_%g5032650336%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g5032650336%_)))
                                (_%g5032450387%_
                                 (lambda (_%g5032650344%_)
                                   (if (gx#stx-pair? _%g5032650344%_)
                                       (let ((_%e5032950347%_
                                              (gx#syntax-e _%g5032650344%_)))
                                         (let ((_%hd5033050351%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5032950347%_)))
                                               (_%tl5033150354%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5032950347%_))))
                                           (if (gx#stx-pair? _%tl5033150354%_)
                                               (let ((_%e5033250357%_
                                                      (gx#syntax-e
                                                       _%tl5033150354%_)))
                                                 (let ((_%hd5033350361%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5033250357%_)))
                                                       (_%tl5033450364%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5033250357%_))))
                                                   (if (gx#stx-null?
                                                        _%tl5033450364%_)
                                                       (if (let ((__tmp101269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj101087 _%meta50320%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj101087
                                   'gerbil.core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj101087
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj101087 'id)))))
                     (declare (not safe))
                     (##memq __tmp101269 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5033050351%_ '()))
                               (cons _%g5002450305%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5033050351%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%g5002450305%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%hd5033350361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'contract-violation!)
                                             (cons _%g5002450305%_
                                                   (cons (cons _%hd5033350361%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'val)
                             '()))
                 (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
               (_%g5032550340%_ _%g5032650344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5032550340%_
                                                _%g5032650344%_))))
                                       (_%g5032550340%_ _%g5032650344%_)))))
                           (_%g5032450387%_
                            (list (let ((__obj101088 _%meta50320%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101088
                                           'gerbil.core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101088
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101088
                                         'type-descriptor)))
                                  (let ((__obj101089 _%meta50320%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101089
                                           'gerbil.core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101089
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101089
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta50320%_))
                             (let* ((_%g5039350408%_
                                     (lambda (_%g5039450404%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g5039450404%_)))
                                    (_%g5039250453%_
                                     (lambda (_%g5039450412%_)
                                       (if (gx#stx-pair? _%g5039450412%_)
                                           (let ((_%e5039750415%_
                                                  (gx#syntax-e
                                                   _%g5039450412%_)))
                                             (let ((_%hd5039850419%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e5039750415%_)))
                                                   (_%tl5039950422%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e5039750415%_))))
                                               (if (gx#stx-pair?
                                                    _%tl5039950422%_)
                                                   (let ((_%e5040050425%_
                                                          (gx#syntax-e
                                                           _%tl5039950422%_)))
                                                     (let ((_%hd5040150429%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e5040050425%_)))
                                                           (_%tl5040250432%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e5040050425%_))))
                                                       (if (gx#stx-null?
                                                            _%tl5040250432%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5039850419%_ '()))
                               (cons (cons _%hd5040150429%_
                                           (cons _%g5002450305%_ '()))
                                     '())))
                   (_%g5039350408%_ _%g5039450412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g5039350408%_
                                                    _%g5039450412%_))))
                                           (_%g5039350408%_
                                            _%g5039450412%_)))))
                               (_%g5039250453%_
                                (list (let ((__obj101086 _%meta50320%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj101086
                                               'gerbil.core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj101086
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj101086
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx50017%_
                                         _%g5002350303%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx50017%_
                              _%g5002350303%_))))))
                (_%__kont9437694377%_
                 (lambda (_%g5003450105%_ _%g5003550107%_)
                   (let ((_%meta50127%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx50017%_
                             _%g5003450105%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta50127%_))
                         (let* ((_%g5013250147%_
                                 (lambda (_%g5013350143%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g5013350143%_)))
                                (_%g5013150194%_
                                 (lambda (_%g5013350151%_)
                                   (if (gx#stx-pair? _%g5013350151%_)
                                       (let ((_%e5013650154%_
                                              (gx#syntax-e _%g5013350151%_)))
                                         (let ((_%hd5013750158%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5013650154%_)))
                                               (_%tl5013850161%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5013650154%_))))
                                           (if (gx#stx-pair? _%tl5013850161%_)
                                               (let ((_%e5013950164%_
                                                      (gx#syntax-e
                                                       _%tl5013850161%_)))
                                                 (let ((_%hd5014050168%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5013950164%_)))
                                                       (_%tl5014150171%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5013950164%_))))
                                                   (if (gx#stx-null?
                                                        _%tl5014150171%_)
                                                       (if (let ((__tmp101270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj101091 _%meta50127%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj101091
                                   'gerbil.core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj101091
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj101091 'id)))))
                     (declare (not safe))
                     (##memq __tmp101270 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5013750158%_ '()))
                               (cons _%g5003550107%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5013750158%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%g5003550107%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%hd5014050168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'runtime-contract-violation!)
                                             (cons _%g5003550107%_
                                                   (cons (cons _%hd5014050168%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'val)
                             '()))
                 (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
               (_%g5013250147%_ _%g5013350151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5013250147%_
                                                _%g5013350151%_))))
                                       (_%g5013250147%_ _%g5013350151%_)))))
                           (_%g5013150194%_
                            (list (let ((__obj101092 _%meta50127%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101092
                                           'gerbil.core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101092
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101092
                                         'type-descriptor)))
                                  (let ((__obj101093 _%meta50127%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101093
                                           'gerbil.core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101093
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101093
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta50127%_))
                             (let* ((_%g5020050215%_
                                     (lambda (_%g5020150211%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g5020150211%_)))
                                    (_%g5019950260%_
                                     (lambda (_%g5020150219%_)
                                       (if (gx#stx-pair? _%g5020150219%_)
                                           (let ((_%e5020450222%_
                                                  (gx#syntax-e
                                                   _%g5020150219%_)))
                                             (let ((_%hd5020550226%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e5020450222%_)))
                                                   (_%tl5020650229%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e5020450222%_))))
                                               (if (gx#stx-pair?
                                                    _%tl5020650229%_)
                                                   (let ((_%e5020750232%_
                                                          (gx#syntax-e
                                                           _%tl5020650229%_)))
                                                     (let ((_%hd5020850236%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e5020750232%_)))
                                                           (_%tl5020950239%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e5020750232%_))))
                                                       (if (gx#stx-null?
                                                            _%tl5020950239%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%hd5020550226%_ '()))
                               (cons (cons _%hd5020850236%_
                                           (cons _%g5003550107%_ '()))
                                     '())))
                   (_%g5020050215%_ _%g5020150219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g5020050215%_
                                                    _%g5020150219%_))))
                                           (_%g5020050215%_
                                            _%g5020150219%_)))))
                               (_%g5019950260%_
                                (list (let ((__obj101090 _%meta50127%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj101090
                                               'gerbil.core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj101090
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj101090
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx50017%_
                                         _%g5003450105%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx50017%_
                              _%g5003450105%_)))))))
            (let* ((_%__match9443094431%_
                    (lambda (_%e5003650061%_
                             _%hd5003750065%_
                             _%tl5003850068%_
                             _%e5003950071%_
                             _%hd5004050075%_
                             _%tl5004150078%_
                             _%e5004250081%_
                             _%hd5004350085%_
                             _%tl5004450088%_
                             _%e5004550091%_
                             _%e5004650095%_
                             _%hd5004750099%_
                             _%tl5004850102%_)
                      (let ((_%g5003450105%_ _%hd5004750099%_)
                            (_%g5003550107%_ _%hd5004050075%_))
                        (if (gx#identifier? _%g5003450105%_)
                            (_%__kont9437694377%_
                             _%g5003450105%_
                             _%g5003550107%_)
                            (let () (declare (not safe)) (_%g5002150054%_))))))
                   (_%__match9439894399%_
                    (lambda (_%e5002550273%_
                             _%hd5002650277%_
                             _%tl5002750280%_
                             _%e5002850283%_
                             _%hd5002950287%_
                             _%tl5003050290%_
                             _%e5003150293%_
                             _%hd5003250297%_
                             _%tl5003350300%_)
                      (let ((_%g5002350303%_ _%hd5003250297%_)
                            (_%g5002450305%_ _%hd5002950287%_))
                        (if (gx#identifier? _%g5002350303%_)
                            (_%__kont9437494375%_
                             _%g5002350303%_
                             _%g5002450305%_)
                            (if (gx#stx-datum? _%hd5003250297%_)
                                (let ((_%e5004550091%_
                                       (gx#stx-e _%hd5003250297%_)))
                                  (declare (not safe))
                                  (_%g5002150054%_))
                                (let ()
                                  (declare (not safe))
                                  (_%g5002150054%_))))))))
              (if (gx#stx-pair? _%__stx9437194372%_)
                  (let ((_%e5002550273%_ (gx#syntax-e _%__stx9437194372%_)))
                    (let ((_%tl5002750280%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5002550273%_)))
                          (_%hd5002650277%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5002550273%_))))
                      (if (gx#stx-pair? _%tl5002750280%_)
                          (let ((_%e5002850283%_
                                 (gx#syntax-e _%tl5002750280%_)))
                            (let ((_%tl5003050290%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5002850283%_)))
                                  (_%hd5002950287%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5002850283%_))))
                              (if (gx#stx-pair? _%tl5003050290%_)
                                  (let ((_%e5003150293%_
                                         (gx#syntax-e _%tl5003050290%_)))
                                    (let ((_%tl5003350300%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5003150293%_)))
                                          (_%hd5003250297%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5003150293%_))))
                                      (if (gx#stx-null? _%tl5003350300%_)
                                          (_%__match9439894399%_
                                           _%e5002550273%_
                                           _%hd5002650277%_
                                           _%tl5002750280%_
                                           _%e5002850283%_
                                           _%hd5002950287%_
                                           _%tl5003050290%_
                                           _%e5003150293%_
                                           _%hd5003250297%_
                                           _%tl5003350300%_)
                                          (if (gx#stx-datum? _%hd5003250297%_)
                                              (let ((_%e5004550091%_
                                                     (gx#stx-e
                                                      _%hd5003250297%_)))
                                                (if (equal? _%e5004550091%_
                                                            'runtime:)
                                                    (if (gx#stx-pair?
                                                         _%tl5003350300%_)
                                                        (let ((_%e5004650095%_
                                                               (gx#syntax-e
                                                                _%tl5003350300%_)))
                                                          (let ((_%tl5004850102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e5004650095%_)))
                        (_%hd5004750099%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5004650095%_))))
                    (if (gx#stx-null? _%tl5004850102%_)
                        (_%__match9443094431%_
                         _%e5002550273%_
                         _%hd5002650277%_
                         _%tl5002750280%_
                         _%e5002850283%_
                         _%hd5002950287%_
                         _%tl5003050290%_
                         _%e5003150293%_
                         _%hd5003250297%_
                         _%tl5003350300%_
                         _%e5004550091%_
                         _%e5004650095%_
                         _%hd5004750099%_
                         _%tl5004850102%_)
                        (let () (declare (not safe)) (_%g5002150054%_)))))
                (let () (declare (not safe)) (_%g5002150054%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5002150054%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5002150054%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5002150054%_)))))
                          (let () (declare (not safe)) (_%g5002150054%_)))))
                  (let () (declare (not safe)) (_%g5002150054%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx50463%_)
        (let* ((_%g5046650484%_
                (lambda (_%g5046750480%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5046750480%_)))
               (_%g5046550678%_
                (lambda (_%g5046750488%_)
                  (if (gx#stx-pair? _%g5046750488%_)
                      (let ((_%e5047050491%_ (gx#syntax-e _%g5046750488%_)))
                        (let ((_%hd5047150495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5047050491%_)))
                              (_%tl5047250498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5047050491%_))))
                          (if (gx#stx-pair? _%tl5047250498%_)
                              (let ((_%e5047350501%_
                                     (gx#syntax-e _%tl5047250498%_)))
                                (let ((_%hd5047450505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5047350501%_)))
                                      (_%tl5047550508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5047350501%_))))
                                  (if (gx#stx-pair? _%tl5047550508%_)
                                      (let ((_%e5047650511%_
                                             (gx#syntax-e _%tl5047550508%_)))
                                        (let ((_%hd5047750515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5047650511%_)))
                                              (_%tl5047850518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5047650511%_))))
                                          (if (gx#stx-null? _%tl5047850518%_)
                                              (if (gx#identifier?
                                                   _%hd5047750515%_)
                                                  (let ((_%meta50539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                            _%stx50463%_
                                                            _%hd5047750515%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           _%meta50539%_))
                                                        (let* ((_%g5054450559%_
                                                                (lambda (_%g5054550555%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g5054550555%_)))
                       (_%g5054350606%_
                        (lambda (_%g5054550563%_)
                          (if (gx#stx-pair? _%g5054550563%_)
                              (let ((_%e5054850566%_
                                     (gx#syntax-e _%g5054550563%_)))
                                (let ((_%hd5054950570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5054850566%_)))
                                      (_%tl5055050573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5054850566%_))))
                                  (if (gx#stx-pair? _%tl5055050573%_)
                                      (let ((_%e5055150576%_
                                             (gx#syntax-e _%tl5055050573%_)))
                                        (let ((_%hd5055250580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5055150576%_)))
                                              (_%tl5055350583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5055150576%_))))
                                          (if (gx#stx-null? _%tl5055350583%_)
                                              (if (let ((__tmp101271
                                                         (let ((__obj101095
                                                                _%meta50539%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj101095
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj101095 '2 '#f '#f))
                       (unchecked-slot-ref __obj101095 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##memq __tmp101271
                                                            '(t void)))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%hd5054950570%_ '()))
                      (cons _%hd5047450505%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%hd5054950570%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%hd5047450505%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'or)
                        (cons (cons (gx#datum->syntax '#f 'not)
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              (cons (cons _%hd5055250580%_
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    '())))
                  (cons (gx#datum->syntax '#f 'val)
                        (cons (cons (gx#datum->syntax '#f 'contract-violation!)
                                    (cons _%hd5047450505%_
                                          (cons (cons _%hd5055250580%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5054450559%_
                                               _%g5054550563%_))))
                                      (_%g5054450559%_ _%g5054550563%_))))
                              (_%g5054450559%_ _%g5054550563%_)))))
                  (_%g5054350606%_
                   (list (let ((__obj101096 _%meta50539%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj101096
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj101096
                                  '4
                                  '#f
                                  '#f))
                               (unchecked-slot-ref
                                __obj101096
                                'type-descriptor)))
                         (let ((__obj101097 _%meta50539%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj101097
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj101097
                                  '15
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj101097 'predicate))))))
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       _%meta50539%_))
                    (let* ((_%g5061250627%_
                            (lambda (_%g5061350623%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5061350623%_)))
                           (_%g5061150672%_
                            (lambda (_%g5061350631%_)
                              (if (gx#stx-pair? _%g5061350631%_)
                                  (let ((_%e5061650634%_
                                         (gx#syntax-e _%g5061350631%_)))
                                    (let ((_%hd5061750638%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5061650634%_)))
                                          (_%tl5061850641%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5061650634%_))))
                                      (if (gx#stx-pair? _%tl5061850641%_)
                                          (let ((_%e5061950644%_
                                                 (gx#syntax-e
                                                  _%tl5061850641%_)))
                                            (let ((_%hd5062050648%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5061950644%_)))
                                                  (_%tl5062150651%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5061950644%_))))
                                              (if (gx#stx-null?
                                                   _%tl5062150651%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%hd5061750638%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%hd5047450505%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'and)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          (cons (cons _%hd5062050648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5061250627%_
                                                   _%g5061350631%_))))
                                          (_%g5061250627%_ _%g5061350631%_))))
                                  (_%g5061250627%_ _%g5061350631%_)))))
                      (_%g5061150672%_
                       (list (let ((__obj101094 _%meta50539%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101094
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101094
                                      '3
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj101094
                                    'type-descriptor)))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                _%stx50463%_
                                _%hd5047750515%_)))))
                    (gx#raise-syntax-error
                     '#f
                     '"not a class type or interface"
                     _%stx50463%_
                     _%hd5047750515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5046650484%_
                                                   _%g5046750488%_))
                                              (_%g5046650484%_
                                               _%g5046750488%_))))
                                      (_%g5046650484%_ _%g5046750488%_))))
                              (_%g5046650484%_ _%g5046750488%_))))
                      (_%g5046650484%_ _%g5046750488%_)))))
          (_%g5046550678%_ _%stx50463%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx50682%_)
        (let* ((_%g5068550703%_
                (lambda (_%g5068650699%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5068650699%_)))
               (_%g5068450789%_
                (lambda (_%g5068650707%_)
                  (if (gx#stx-pair? _%g5068650707%_)
                      (let ((_%e5068950710%_ (gx#syntax-e _%g5068650707%_)))
                        (let ((_%hd5069050714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5068950710%_)))
                              (_%tl5069150717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5068950710%_))))
                          (if (gx#stx-pair? _%tl5069150717%_)
                              (let ((_%e5069250720%_
                                     (gx#syntax-e _%tl5069150717%_)))
                                (let ((_%hd5069350724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5069250720%_)))
                                      (_%tl5069450727%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5069250720%_))))
                                  (if (gx#stx-pair? _%tl5069450727%_)
                                      (let ((_%e5069550730%_
                                             (gx#syntax-e _%tl5069450727%_)))
                                        (let ((_%hd5069650734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5069550730%_)))
                                              (_%tl5069750737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5069550730%_))))
                                          (if (gx#stx-null? _%tl5069750737%_)
                                              (if (gx#identifier?
                                                   _%hd5069650734%_)
                                                  (let* ((_%g5075850766%_
                                                          (lambda (_%g5075950762%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g5075950762%_)))
                                                         (_%g5075750785%_
                                                          (lambda (_%g5075950770%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%g5075950770%_ '()))
                                (cons _%hd5069350724%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5075750785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                                        _%stx50682%_
                                                        _%hd5069650734%_))))
                                                  (_%g5068550703%_
                                                   _%g5068650707%_))
                                              (_%g5068550703%_
                                               _%g5068650707%_))))
                                      (_%g5068550703%_ _%g5068650707%_))))
                              (_%g5068550703%_ _%g5068650707%_))))
                      (_%g5068550703%_ _%g5068650707%_)))))
          (_%g5068450789%_ _%stx50682%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx50793%_)
        (let* ((_%__stx9443394434%_ _%$stx50793%_)
               (_%g5079950883%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9443394434%_))))
          (let ((_%__kont9443694437%_
                 (lambda (_%g5080151187%_
                          _%g5080251189%_
                          _%g5080351190%_
                          _%g5080451191%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5080451191%_
                                           (cons _%g5080251189%_
                                                 (foldr (lambda (_%g5121551218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5121651221%_)
                  (cons _%g5121551218%_ _%g5121651221%_))
                '()
                _%g5080151187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5080351190%_ '())))))
                (_%__kont9444094441%_
                 (lambda (_%g5082951065%_
                          _%g5083051067%_
                          _%g5083151068%_
                          _%g5083251069%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5083251069%_
                                           (cons _%g5083051067%_
                                                 (foldr (lambda (_%g5109351096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5109451099%_)
                  (cons _%g5109351096%_ _%g5109451099%_))
                '()
                _%g5082951065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5083151068%_ '())))))
                (_%__kont9444494445%_
                 (lambda (_%g5085750948%_ _%g5085850950%_ _%g5085950951%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5085950951%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5085850950%_
                                                       (foldr (lambda (_%g5097150974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5097250977%_)
                        (cons _%g5097150974%_ _%g5097250977%_))
                      '()
                      _%g5085750948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9455894559%_
                    (lambda (_%e5086050890%_
                             _%hd5086150894%_
                             _%tl5086250897%_
                             _%e5086350900%_
                             _%hd5086450904%_
                             _%tl5086550907%_
                             _%e5086650910%_
                             _%hd5086750914%_
                             _%tl5086850917%_
                             _%__splice9444694447%_
                             _%target5086950920%_
                             _%tl5087150923%_)
                      (letrec ((_%loop5087250926%_
                                (lambda (_%hd5087050930%_ _%rest5087650933%_)
                                  (if (gx#stx-pair? _%hd5087050930%_)
                                      (let ((_%e5087350935%_
                                             (gx#syntax-e _%hd5087050930%_)))
                                        (let ((_%lp-tl5087550942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5087350935%_)))
                                              (_%lp-hd5087450939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5087350935%_))))
                                          (_%loop5087250926%_
                                           _%lp-tl5087550942%_
                                           (cons _%lp-hd5087450939%_
                                                 _%rest5087650933%_))))
                                      (let ((_%rest5087750945%_
                                             (reverse _%rest5087650933%_)))
                                        (_%__kont9444494445%_
                                         _%rest5087750945%_
                                         _%hd5086750914%_
                                         _%hd5086450904%_))))))
                        (_%loop5087250926%_ _%target5086950920%_ '()))))
                   (_%__match9453294533%_
                    (lambda (_%e5083350987%_
                             _%hd5083450991%_
                             _%tl5083550994%_
                             _%e5083650997%_
                             _%hd5083751001%_
                             _%tl5083851004%_
                             _%e5083951007%_
                             _%hd5084051011%_
                             _%tl5084151014%_
                             _%e5084251017%_
                             _%hd5084351021%_
                             _%tl5084451024%_
                             _%e5084551027%_
                             _%hd5084651031%_
                             _%tl5084751034%_
                             _%__splice9444294443%_
                             _%target5084851037%_
                             _%tl5085051040%_)
                      (letrec ((_%loop5085151043%_
                                (lambda (_%hd5084951047%_ _%rest5085551050%_)
                                  (if (gx#stx-pair? _%hd5084951047%_)
                                      (let ((_%e5085251052%_
                                             (gx#syntax-e _%hd5084951047%_)))
                                        (let ((_%lp-tl5085451059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5085251052%_)))
                                              (_%lp-hd5085351056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5085251052%_))))
                                          (_%loop5085151043%_
                                           _%lp-tl5085451059%_
                                           (cons _%lp-hd5085351056%_
                                                 _%rest5085551050%_))))
                                      (let ((_%rest5085651062%_
                                             (reverse _%rest5085551050%_)))
                                        (_%__kont9444094441%_
                                         _%rest5085651062%_
                                         _%hd5084651031%_
                                         _%hd5084351021%_
                                         _%hd5083751001%_))))))
                        (_%loop5085151043%_ _%target5084851037%_ '()))))
                   (_%__match9449094491%_
                    (lambda (_%e5080551109%_
                             _%hd5080651113%_
                             _%tl5080751116%_
                             _%e5080851119%_
                             _%hd5080951123%_
                             _%tl5081051126%_
                             _%e5081151129%_
                             _%hd5081251133%_
                             _%tl5081351136%_
                             _%e5081451139%_
                             _%hd5081551143%_
                             _%tl5081651146%_
                             _%e5081751149%_
                             _%hd5081851153%_
                             _%tl5081951156%_
                             _%__splice9443894439%_
                             _%target5082051159%_
                             _%tl5082251162%_)
                      (letrec ((_%loop5082351165%_
                                (lambda (_%hd5082151169%_ _%rest5082751172%_)
                                  (if (gx#stx-pair? _%hd5082151169%_)
                                      (let ((_%e5082451174%_
                                             (gx#syntax-e _%hd5082151169%_)))
                                        (let ((_%lp-tl5082651181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5082451174%_)))
                                              (_%lp-hd5082551178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5082451174%_))))
                                          (_%loop5082351165%_
                                           _%lp-tl5082651181%_
                                           (cons _%lp-hd5082551178%_
                                                 _%rest5082751172%_))))
                                      (let ((_%rest5082851184%_
                                             (reverse _%rest5082751172%_)))
                                        (_%__kont9443694437%_
                                         _%rest5082851184%_
                                         _%hd5081851153%_
                                         _%hd5081551143%_
                                         _%hd5080951123%_))))))
                        (_%loop5082351165%_ _%target5082051159%_ '())))))
              (if (gx#stx-pair? _%__stx9443394434%_)
                  (let ((_%e5080551109%_ (gx#syntax-e _%__stx9443394434%_)))
                    (let ((_%tl5080751116%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5080551109%_)))
                          (_%hd5080651113%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5080551109%_))))
                      (if (gx#stx-pair? _%tl5080751116%_)
                          (let ((_%e5080851119%_
                                 (gx#syntax-e _%tl5080751116%_)))
                            (let ((_%tl5081051126%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5080851119%_)))
                                  (_%hd5080951123%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5080851119%_))))
                              (if (gx#stx-pair? _%tl5081051126%_)
                                  (let ((_%e5081151129%_
                                         (gx#syntax-e _%tl5081051126%_)))
                                    (let ((_%tl5081351136%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5081151129%_)))
                                          (_%hd5081251133%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5081151129%_))))
                                      (if (gx#identifier? _%hd5081251133%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g101272_|
                                               _%hd5081251133%_)
                                              (if (gx#stx-pair?
                                                   _%tl5081351136%_)
                                                  (let ((_%e5081451139%_
                                                         (gx#syntax-e
                                                          _%tl5081351136%_)))
                                                    (let ((_%tl5081651146%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5081451139%_)))
                                                          (_%hd5081551143%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5081451139%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5081651146%_)
                                                          (let ((_%e5081751149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5081651146%_)))
                    (let ((_%tl5081951156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5081751149%_)))
                          (_%hd5081851153%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5081751149%_))))
                      (if (gx#stx-pair/null? _%tl5081951156%_)
                          (let ((_%__splice9443894439%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5081951156%_
                                  '0)))
                            (let ((_%tl5082251162%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9443894439%_ '1)))
                                  (_%target5082051159%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9443894439%_
                                      '0))))
                              (if (gx#stx-null? _%tl5082251162%_)
                                  (_%__match9449094491%_
                                   _%e5080551109%_
                                   _%hd5080651113%_
                                   _%tl5080751116%_
                                   _%e5080851119%_
                                   _%hd5080951123%_
                                   _%tl5081051126%_
                                   _%e5081151129%_
                                   _%hd5081251133%_
                                   _%tl5081351136%_
                                   _%e5081451139%_
                                   _%hd5081551143%_
                                   _%tl5081651146%_
                                   _%e5081751149%_
                                   _%hd5081851153%_
                                   _%tl5081951156%_
                                   _%__splice9443894439%_
                                   _%target5082051159%_
                                   _%tl5082251162%_)
                                  (if (gx#stx-pair/null? _%tl5081351136%_)
                                      (let ((_%__splice9444694447%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5081351136%_
                                              '0)))
                                        (let ((_%tl5087150923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9444694447%_
                                                  '1)))
                                              (_%target5086950920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9444694447%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5087150923%_)
                                              (_%__match9455894559%_
                                               _%e5080551109%_
                                               _%hd5080651113%_
                                               _%tl5080751116%_
                                               _%e5080851119%_
                                               _%hd5080951123%_
                                               _%tl5081051126%_
                                               _%e5081151129%_
                                               _%hd5081251133%_
                                               _%tl5081351136%_
                                               _%__splice9444694447%_
                                               _%target5086950920%_
                                               _%tl5087150923%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5079950883%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5079950883%_))))))
                          (if (gx#stx-pair/null? _%tl5081351136%_)
                              (let ((_%__splice9444694447%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5081351136%_
                                      '0)))
                                (let ((_%tl5087150923%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9444694447%_
                                          '1)))
                                      (_%target5086950920%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9444694447%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5087150923%_)
                                      (_%__match9455894559%_
                                       _%e5080551109%_
                                       _%hd5080651113%_
                                       _%tl5080751116%_
                                       _%e5080851119%_
                                       _%hd5080951123%_
                                       _%tl5081051126%_
                                       _%e5081151129%_
                                       _%hd5081251133%_
                                       _%tl5081351136%_
                                       _%__splice9444694447%_
                                       _%target5086950920%_
                                       _%tl5087150923%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5079950883%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5079950883%_))))))
                  (if (gx#stx-pair/null? _%tl5081351136%_)
                      (let ((_%__splice9444694447%_
                             (gx#syntax-split-splice->vector
                              _%tl5081351136%_
                              '0)))
                        (let ((_%tl5087150923%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9444694447%_ '1)))
                              (_%target5086950920%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9444694447%_ '0))))
                          (if (gx#stx-null? _%tl5087150923%_)
                              (_%__match9455894559%_
                               _%e5080551109%_
                               _%hd5080651113%_
                               _%tl5080751116%_
                               _%e5080851119%_
                               _%hd5080951123%_
                               _%tl5081051126%_
                               _%e5081151129%_
                               _%hd5081251133%_
                               _%tl5081351136%_
                               _%__splice9444694447%_
                               _%target5086950920%_
                               _%tl5087150923%_)
                              (let ()
                                (declare (not safe))
                                (_%g5079950883%_)))))
                      (let () (declare (not safe)) (_%g5079950883%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5081351136%_)
                                                      (let ((_%__splice9444694447%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5081351136%_
                                                              '0)))
                                                        (let ((_%tl5087150923%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9444694447%_ '1)))
                      (_%target5086950920%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9444694447%_ '0))))
                  (if (gx#stx-null? _%tl5087150923%_)
                      (_%__match9455894559%_
                       _%e5080551109%_
                       _%hd5080651113%_
                       _%tl5080751116%_
                       _%e5080851119%_
                       _%hd5080951123%_
                       _%tl5081051126%_
                       _%e5081151129%_
                       _%hd5081251133%_
                       _%tl5081351136%_
                       _%__splice9444694447%_
                       _%target5086950920%_
                       _%tl5087150923%_)
                      (let () (declare (not safe)) (_%g5079950883%_)))))
              (let () (declare (not safe)) (_%g5079950883%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g101273_|
                                                   _%hd5081251133%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5081351136%_)
                                                      (let ((_%e5084251017%_
                                                             (gx#syntax-e
                                                              _%tl5081351136%_)))
                                                        (let ((_%tl5084451024%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5084251017%_)))
                      (_%hd5084351021%_
                       (let () (declare (not safe)) (##car _%e5084251017%_))))
                  (if (gx#stx-pair? _%tl5084451024%_)
                      (let ((_%e5084551027%_ (gx#syntax-e _%tl5084451024%_)))
                        (let ((_%tl5084751034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5084551027%_)))
                              (_%hd5084651031%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5084551027%_))))
                          (if (gx#stx-pair/null? _%tl5084751034%_)
                              (let ((_%__splice9444294443%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5084751034%_
                                      '0)))
                                (let ((_%tl5085051040%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9444294443%_
                                          '1)))
                                      (_%target5084851037%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9444294443%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5085051040%_)
                                      (_%__match9453294533%_
                                       _%e5080551109%_
                                       _%hd5080651113%_
                                       _%tl5080751116%_
                                       _%e5080851119%_
                                       _%hd5080951123%_
                                       _%tl5081051126%_
                                       _%e5081151129%_
                                       _%hd5081251133%_
                                       _%tl5081351136%_
                                       _%e5084251017%_
                                       _%hd5084351021%_
                                       _%tl5084451024%_
                                       _%e5084551027%_
                                       _%hd5084651031%_
                                       _%tl5084751034%_
                                       _%__splice9444294443%_
                                       _%target5084851037%_
                                       _%tl5085051040%_)
                                      (if (gx#stx-pair/null? _%tl5081351136%_)
                                          (let ((_%__splice9444694447%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5081351136%_
                                                  '0)))
                                            (let ((_%tl5087150923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9444694447%_
                                                      '1)))
                                                  (_%target5086950920%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9444694447%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5087150923%_)
                                                  (_%__match9455894559%_
                                                   _%e5080551109%_
                                                   _%hd5080651113%_
                                                   _%tl5080751116%_
                                                   _%e5080851119%_
                                                   _%hd5080951123%_
                                                   _%tl5081051126%_
                                                   _%e5081151129%_
                                                   _%hd5081251133%_
                                                   _%tl5081351136%_
                                                   _%__splice9444694447%_
                                                   _%target5086950920%_
                                                   _%tl5087150923%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5079950883%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5079950883%_))))))
                              (if (gx#stx-pair/null? _%tl5081351136%_)
                                  (let ((_%__splice9444694447%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5081351136%_
                                          '0)))
                                    (let ((_%tl5087150923%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9444694447%_
                                              '1)))
                                          (_%target5086950920%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9444694447%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5087150923%_)
                                          (_%__match9455894559%_
                                           _%e5080551109%_
                                           _%hd5080651113%_
                                           _%tl5080751116%_
                                           _%e5080851119%_
                                           _%hd5080951123%_
                                           _%tl5081051126%_
                                           _%e5081151129%_
                                           _%hd5081251133%_
                                           _%tl5081351136%_
                                           _%__splice9444694447%_
                                           _%target5086950920%_
                                           _%tl5087150923%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5079950883%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5079950883%_))))))
                      (if (gx#stx-pair/null? _%tl5081351136%_)
                          (let ((_%__splice9444694447%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5081351136%_
                                  '0)))
                            (let ((_%tl5087150923%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9444694447%_ '1)))
                                  (_%target5086950920%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9444694447%_
                                      '0))))
                              (if (gx#stx-null? _%tl5087150923%_)
                                  (_%__match9455894559%_
                                   _%e5080551109%_
                                   _%hd5080651113%_
                                   _%tl5080751116%_
                                   _%e5080851119%_
                                   _%hd5080951123%_
                                   _%tl5081051126%_
                                   _%e5081151129%_
                                   _%hd5081251133%_
                                   _%tl5081351136%_
                                   _%__splice9444694447%_
                                   _%target5086950920%_
                                   _%tl5087150923%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5079950883%_)))))
                          (let () (declare (not safe)) (_%g5079950883%_))))))
              (if (gx#stx-pair/null? _%tl5081351136%_)
                  (let ((_%__splice9444694447%_
                         (gx#syntax-split-splice->vector _%tl5081351136%_ '0)))
                    (let ((_%tl5087150923%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9444694447%_ '1)))
                          (_%target5086950920%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9444694447%_ '0))))
                      (if (gx#stx-null? _%tl5087150923%_)
                          (_%__match9455894559%_
                           _%e5080551109%_
                           _%hd5080651113%_
                           _%tl5080751116%_
                           _%e5080851119%_
                           _%hd5080951123%_
                           _%tl5081051126%_
                           _%e5081151129%_
                           _%hd5081251133%_
                           _%tl5081351136%_
                           _%__splice9444694447%_
                           _%target5086950920%_
                           _%tl5087150923%_)
                          (let () (declare (not safe)) (_%g5079950883%_)))))
                  (let () (declare (not safe)) (_%g5079950883%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5081351136%_)
                                                      (let ((_%__splice9444694447%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5081351136%_
                                                              '0)))
                                                        (let ((_%tl5087150923%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9444694447%_ '1)))
                      (_%target5086950920%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9444694447%_ '0))))
                  (if (gx#stx-null? _%tl5087150923%_)
                      (_%__match9455894559%_
                       _%e5080551109%_
                       _%hd5080651113%_
                       _%tl5080751116%_
                       _%e5080851119%_
                       _%hd5080951123%_
                       _%tl5081051126%_
                       _%e5081151129%_
                       _%hd5081251133%_
                       _%tl5081351136%_
                       _%__splice9444694447%_
                       _%target5086950920%_
                       _%tl5087150923%_)
                      (let () (declare (not safe)) (_%g5079950883%_)))))
              (let () (declare (not safe)) (_%g5079950883%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5081351136%_)
                                              (let ((_%__splice9444694447%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5081351136%_
                                                      '0)))
                                                (let ((_%tl5087150923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9444694447%_
                                                          '1)))
                                                      (_%target5086950920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9444694447%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5087150923%_)
                                                      (_%__match9455894559%_
                                                       _%e5080551109%_
                                                       _%hd5080651113%_
                                                       _%tl5080751116%_
                                                       _%e5080851119%_
                                                       _%hd5080951123%_
                                                       _%tl5081051126%_
                                                       _%e5081151129%_
                                                       _%hd5081251133%_
                                                       _%tl5081351136%_
                                                       _%__splice9444694447%_
                                                       _%target5086950920%_
                                                       _%tl5087150923%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5079950883%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5079950883%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5079950883%_)))))
                          (let () (declare (not safe)) (_%g5079950883%_)))))
                  (let () (declare (not safe)) (_%g5079950883%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx51231%_)
        (let* ((_%__stx9456194562%_ _%$stx51231%_)
               (_%g5123651272%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9456194562%_))))
          (let ((_%__kont9456494565%_
                 (lambda (_%g5123851390%_ _%g5123951392%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5123951392%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5123851390%_
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
                           (cons _%g5123951392%_
                                 (cons _%g5123851390%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9456694567%_
                 (lambda (_%g5124951329%_ _%g5125051331%_ _%g5125151332%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5125151332%_
                                           (cons _%g5125051331%_ '())))
                               (cons _%g5124951329%_ '()))))))
            (if (gx#stx-pair? _%__stx9456194562%_)
                (let ((_%e5124051360%_ (gx#syntax-e _%__stx9456194562%_)))
                  (let ((_%tl5124251367%_
                         (let () (declare (not safe)) (##cdr _%e5124051360%_)))
                        (_%hd5124151364%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5124051360%_))))
                    (if (gx#stx-pair? _%tl5124251367%_)
                        (let ((_%e5124351370%_ (gx#syntax-e _%tl5124251367%_)))
                          (let ((_%tl5124551377%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5124351370%_)))
                                (_%hd5124451374%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5124351370%_))))
                            (if (gx#stx-pair? _%tl5124551377%_)
                                (let ((_%e5124651380%_
                                       (gx#syntax-e _%tl5124551377%_)))
                                  (let ((_%tl5124851387%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5124651380%_)))
                                        (_%hd5124751384%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5124651380%_))))
                                    (if (gx#stx-null? _%tl5124851387%_)
                                        (_%__kont9456494565%_
                                         _%hd5124751384%_
                                         _%hd5124451374%_)
                                        (if (gx#stx-pair? _%tl5124851387%_)
                                            (let ((_%e5126151309%_
                                                   (gx#syntax-e
                                                    _%tl5124851387%_)))
                                              (let ((_%tl5126351316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5126151309%_)))
                                                    (_%hd5126251313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5126151309%_))))
                                                (if (gx#identifier?
                                                     _%hd5126251313%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g101274_|
                                                         _%hd5126251313%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5126351316%_)
                                                            (let ((_%e5126451319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5126351316%_)))
                      (let ((_%tl5126651326%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5126451319%_)))
                            (_%hd5126551323%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5126451319%_))))
                        (if (gx#stx-null? _%tl5126651326%_)
                            (_%__kont9456694567%_
                             _%hd5126551323%_
                             _%hd5124751384%_
                             _%hd5124451374%_)
                            (let () (declare (not safe)) (_%g5123651272%_)))))
                    (let () (declare (not safe)) (_%g5123651272%_)))
                (let () (declare (not safe)) (_%g5123651272%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5123651272%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5123651272%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5123651272%_)))))
                        (let () (declare (not safe)) (_%g5123651272%_)))))
                (let () (declare (not safe)) (_%g5123651272%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx51411%_)
        (let ((_%g5141451421%_
               (lambda (_%g5141551417%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5141551417%_))))
          (_%g5141451421%_ _%$stx51411%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx51425%_)
        (let ((_%g5142851435%_
               (lambda (_%g5142951431%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5142951431%_))))
          (_%g5142851435%_ _%$stx51425%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx51439%_)
        (let* ((_%g5144351457%_
                (lambda (_%g5144451453%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5144451453%_)))
               (_%g5144251498%_
                (lambda (_%g5144451461%_)
                  (if (gx#stx-pair? _%g5144451461%_)
                      (let ((_%e5144651464%_ (gx#syntax-e _%g5144451461%_)))
                        (let ((_%hd5144751468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5144651464%_)))
                              (_%tl5144851471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5144651464%_))))
                          (if (gx#stx-pair? _%tl5144851471%_)
                              (let ((_%e5144951474%_
                                     (gx#syntax-e _%tl5144851471%_)))
                                (let ((_%hd5145051478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5144951474%_)))
                                      (_%tl5145151481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5144951474%_))))
                                  (if (gx#stx-null? _%tl5145151481%_)
                                      (cons (gx#datum->syntax '#f 'or)
                                            (cons _%hd5145051478%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'nil-dereference!)
                                                              (cons _%hd5145051478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g5144351457%_ _%g5144451461%_))))
                              (_%g5144351457%_ _%g5144451461%_))))
                      (_%g5144351457%_ _%g5144451461%_)))))
          (_%g5144251498%_ _%$stx51439%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx51502%_)
        (let* ((_%g5150551528%_
                (lambda (_%g5150651524%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5150651524%_)))
               (_%g5150451652%_
                (lambda (_%g5150651532%_)
                  (if (gx#stx-pair? _%g5150651532%_)
                      (let ((_%e5151151535%_ (gx#syntax-e _%g5150651532%_)))
                        (let ((_%hd5151251539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5151151535%_)))
                              (_%tl5151351542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5151151535%_))))
                          (if (gx#stx-pair? _%tl5151351542%_)
                              (let ((_%e5151451545%_
                                     (gx#syntax-e _%tl5151351542%_)))
                                (let ((_%hd5151551549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5151451545%_)))
                                      (_%tl5151651552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5151451545%_))))
                                  (if (gx#stx-pair? _%tl5151651552%_)
                                      (let ((_%e5151751555%_
                                             (gx#syntax-e _%tl5151651552%_)))
                                        (let ((_%hd5151851559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5151751555%_)))
                                              (_%tl5151951562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5151751555%_))))
                                          (if (gx#stx-pair? _%tl5151951562%_)
                                              (let ((_%e5152051565%_
                                                     (gx#syntax-e
                                                      _%tl5151951562%_)))
                                                (let ((_%hd5152151569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5152051565%_)))
                                                      (_%tl5152251572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5152051565%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5152251572%_)
                                                      (let* ((_%g5159951607%_
                                                              (lambda (_%g5160051603%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5160051603%_)))
                     (_%g5159851626%_
                      (lambda (_%g5160051611%_)
                        (cons (gx#datum->syntax '#f 'begin-annotation)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '@contract-violation)
                                          (cons _%g5160051611%_
                                                (cons _%hd5151851559%_
                                                      (cons _%hd5152151569%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax '#f 'abort!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'raise-contract-violation-error)
                                                            (cons '"contract violation"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'context:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5160051611%_ '()))
                                      (cons 'contract:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%hd5151851559%_
                                                              '()))
                                                  (cons 'value:
                                                        (cons _%hd5152151569%_
                                                              '()))))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
                (_%g5159851626%_
                 (let ((_%$e51638%_
                        (let ((_%$e51630%_ (gx#stx-source _%hd5151551549%_)))
                          (if _%$e51630%_
                              _%$e51630%_
                              (let ((_%$e51634%_ (gx#stx-source _%stx51502%_)))
                                (if _%$e51634%_
                                    _%$e51634%_
                                    (gx#stx-source _%hd5151251539%_)))))))
                   (if _%$e51638%_
                       (call-with-output-string
                        '""
                        (lambda (_%g5164451646%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e51638%_
                             '#t
                             _%g5164451646%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%g5150551528%_ _%g5150651532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5150551528%_
                                               _%g5150651532%_))))
                                      (_%g5150551528%_ _%g5150651532%_))))
                              (_%g5150551528%_ _%g5150651532%_))))
                      (_%g5150551528%_ _%g5150651532%_)))))
          (_%g5150451652%_ _%stx51502%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#runtime-contract-violation!|
      (lambda (_%stx51656%_)
        (let* ((_%g5165951682%_
                (lambda (_%g5166051678%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5166051678%_)))
               (_%g5165851806%_
                (lambda (_%g5166051686%_)
                  (if (gx#stx-pair? _%g5166051686%_)
                      (let ((_%e5166551689%_ (gx#syntax-e _%g5166051686%_)))
                        (let ((_%hd5166651693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5166551689%_)))
                              (_%tl5166751696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5166551689%_))))
                          (if (gx#stx-pair? _%tl5166751696%_)
                              (let ((_%e5166851699%_
                                     (gx#syntax-e _%tl5166751696%_)))
                                (let ((_%hd5166951703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5166851699%_)))
                                      (_%tl5167051706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5166851699%_))))
                                  (if (gx#stx-pair? _%tl5167051706%_)
                                      (let ((_%e5167151709%_
                                             (gx#syntax-e _%tl5167051706%_)))
                                        (let ((_%hd5167251713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5167151709%_)))
                                              (_%tl5167351716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5167151709%_))))
                                          (if (gx#stx-pair? _%tl5167351716%_)
                                              (let ((_%e5167451719%_
                                                     (gx#syntax-e
                                                      _%tl5167351716%_)))
                                                (let ((_%hd5167551723%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5167451719%_)))
                                                      (_%tl5167651726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5167451719%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5167651726%_)
                                                      (let* ((_%g5175351761%_
                                                              (lambda (_%g5175451757%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5175451757%_)))
                     (_%g5175251780%_
                      (lambda (_%g5175451765%_)
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
                          (cons _%g5175451765%_ '()))
                    (cons 'contract:
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%hd5167251713%_ '()))
                                (cons 'value:
                                      (cons _%hd5167551723%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
                (_%g5175251780%_
                 (let ((_%$e51792%_
                        (let ((_%$e51784%_ (gx#stx-source _%hd5166951703%_)))
                          (if _%$e51784%_
                              _%$e51784%_
                              (let ((_%$e51788%_ (gx#stx-source _%stx51656%_)))
                                (if _%$e51788%_
                                    _%$e51788%_
                                    (gx#stx-source _%hd5166651693%_)))))))
                   (if _%$e51792%_
                       (call-with-output-string
                        '""
                        (lambda (_%g5179851800%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e51792%_
                             '#t
                             _%g5179851800%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%g5165951682%_ _%g5166051686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5165951682%_
                                               _%g5166051686%_))))
                                      (_%g5165951682%_ _%g5166051686%_))))
                              (_%g5165951682%_ _%g5166051686%_))))
                      (_%g5165951682%_ _%g5166051686%_)))))
          (_%g5165851806%_ _%stx51656%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx51810%_)
        (let* ((_%g5181351828%_
                (lambda (_%g5181451824%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5181451824%_)))
               (_%g5181251924%_
                (lambda (_%g5181451832%_)
                  (if (gx#stx-pair? _%g5181451832%_)
                      (let ((_%e5181751835%_ (gx#syntax-e _%g5181451832%_)))
                        (let ((_%hd5181851839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5181751835%_)))
                              (_%tl5181951842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5181751835%_))))
                          (if (gx#stx-pair? _%tl5181951842%_)
                              (let ((_%e5182051845%_
                                     (gx#syntax-e _%tl5181951842%_)))
                                (let ((_%hd5182151849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5182051845%_)))
                                      (_%tl5182251852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5182051845%_))))
                                  (if (gx#stx-null? _%tl5182251852%_)
                                      (let* ((_%g5187151879%_
                                              (lambda (_%g5187251875%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g5187251875%_)))
                                             (_%g5187051898%_
                                              (lambda (_%g5187251883%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'abort!)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'raise-contract-violation-error)
                          (cons '"nil (#f) derefence"
                                (cons 'context:
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g5187251883%_ '()))
                                            (cons 'contract:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'check-nil!)
                                  (cons _%hd5182151849%_ '()))
                            '()))
                (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%g5187051898%_
                                         (let ((_%$e51910%_
                                                (let ((_%$e51902%_
                                                       (gx#stx-source
                                                        _%hd5182151849%_)))
                                                  (if _%$e51902%_
                                                      _%$e51902%_
                                                      (let ((_%$e51906%_
                                                             (gx#stx-source
                                                              _%stx51810%_)))
                                                        (if _%$e51906%_
                                                            _%$e51906%_
                                                            (gx#stx-source
                                                             _%hd5181851839%_)))))))
                                           (if _%$e51910%_
                                               (call-with-output-string
                                                '""
                                                (lambda (_%g5191651918%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (##display-locat
                                                     _%$e51910%_
                                                     '#t
                                                     _%g5191651918%_))))
                                               (gx#expander-context-id
                                                (gx#core-context-top))))))
                                      (_%g5181351828%_ _%g5181451832%_))))
                              (_%g5181351828%_ _%g5181451832%_))))
                      (_%g5181351828%_ _%g5181451832%_)))))
          (_%g5181251924%_ _%stx51810%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx51928%_)
        (let* ((_%g5193251946%_
                (lambda (_%g5193351942%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5193351942%_)))
               (_%g5193151987%_
                (lambda (_%g5193351950%_)
                  (if (gx#stx-pair? _%g5193351950%_)
                      (let ((_%e5193551953%_ (gx#syntax-e _%g5193351950%_)))
                        (let ((_%hd5193651957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5193551953%_)))
                              (_%tl5193751960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5193551953%_))))
                          (if (gx#stx-pair? _%tl5193751960%_)
                              (let ((_%e5193851963%_
                                     (gx#syntax-e _%tl5193751960%_)))
                                (let ((_%hd5193951967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5193851963%_)))
                                      (_%tl5194051970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5193851963%_))))
                                  (if (gx#stx-null? _%tl5194051970%_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'begin-annotation)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@abort)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (cons _%hd5193951967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'void) '())
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g5193251946%_ _%g5193351950%_))))
                              (_%g5193251946%_ _%g5193351950%_))))
                      (_%g5193251946%_ _%g5193351950%_)))))
          (_%g5193151987%_ _%$stx51928%_))))))
