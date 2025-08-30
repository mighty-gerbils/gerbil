(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g91435_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx48306%_)
        (let* ((_%g4830948327%_
                (lambda (_%g4831048323%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4831048323%_)))
               (_%g4830848522%_
                (lambda (_%g4831048331%_)
                  (if (gx#stx-pair? _%g4831048331%_)
                      (let ((_%e4831348334%_ (gx#syntax-e _%g4831048331%_)))
                        (let ((_%hd4831448338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4831348334%_)))
                              (_%tl4831548341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4831348334%_))))
                          (if (gx#stx-pair? _%tl4831548341%_)
                              (let ((_%e4831648344%_
                                     (gx#syntax-e _%tl4831548341%_)))
                                (let ((_%hd4831748348%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4831648344%_)))
                                      (_%tl4831848351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4831648344%_))))
                                  (if (gx#stx-pair? _%tl4831848351%_)
                                      (let ((_%e4831948354%_
                                             (gx#syntax-e _%tl4831848351%_)))
                                        (let ((_%hd4832048358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4831948354%_)))
                                              (_%tl4832148361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4831948354%_))))
                                          (if (gx#stx-null? _%tl4832148361%_)
                                              ((lambda (_%L48364%_ _%L48366%_)
                                                 (if (gx#identifier?
                                                      _%L48364%_)
                                                     (let ((_%meta48383%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx48306%_
                                                               _%L48364%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta48383%_))
                                                           (let* ((_%g4838848403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4838948399%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4838948399%_)))
                          (_%g4838748450%_
                           (lambda (_%g4838948407%_)
                             (if (gx#stx-pair? _%g4838948407%_)
                                 (let ((_%e4839248410%_
                                        (gx#syntax-e _%g4838948407%_)))
                                   (let ((_%hd4839348414%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4839248410%_)))
                                         (_%tl4839448417%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4839248410%_))))
                                     (if (gx#stx-pair? _%tl4839448417%_)
                                         (let ((_%e4839548420%_
                                                (gx#syntax-e
                                                 _%tl4839448417%_)))
                                           (let ((_%hd4839648424%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4839548420%_)))
                                                 (_%tl4839748427%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4839548420%_))))
                                             (if (gx#stx-null?
                                                  _%tl4839748427%_)
                                                 ((lambda (_%L48430%_
                                                           _%L48432%_)
                                                    (if (let ((__tmp91433
                                                               (let ((__obj91278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta48383%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj91278
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj91278
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj91278 'id)))))
                  (declare (not safe))
                  (##memq __tmp91433 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48432%_ '()))
                            (cons _%L48366%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48432%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48366%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L48430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L48432%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4839648424%_
                                                  _%hd4839348414%_)
                                                 (_%g4838848403%_
                                                  _%g4838948407%_))))
                                         (_%g4838848403%_ _%g4838948407%_))))
                                 (_%g4838848403%_ _%g4838948407%_)))))
                     (_%g4838748450%_
                      (list (let ((__obj91279 _%meta48383%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj91279
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj91279
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj91279
                                   'type-descriptor)))
                            (let ((__obj91280 _%meta48383%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj91280
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj91280
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj91280
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta48383%_))
                       (let* ((_%g4845648471%_
                               (lambda (_%g4845748467%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4845748467%_)))
                              (_%g4845548516%_
                               (lambda (_%g4845748475%_)
                                 (if (gx#stx-pair? _%g4845748475%_)
                                     (let ((_%e4846048478%_
                                            (gx#syntax-e _%g4845748475%_)))
                                       (let ((_%hd4846148482%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4846048478%_)))
                                             (_%tl4846248485%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4846048478%_))))
                                         (if (gx#stx-pair? _%tl4846248485%_)
                                             (let ((_%e4846348488%_
                                                    (gx#syntax-e
                                                     _%tl4846248485%_)))
                                               (let ((_%hd4846448492%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4846348488%_)))
                                                     (_%tl4846548495%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4846348488%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4846548495%_)
                                                     ((lambda (_%L48498%_
                                                               _%L48500%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L48500%_ '()))
                            (cons (cons _%L48498%_ (cons _%L48366%_ '()))
                                  '()))))
              _%hd4846448492%_
              _%hd4846148482%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4845648471%_
                                                      _%g4845748475%_))))
                                             (_%g4845648471%_
                                              _%g4845748475%_))))
                                     (_%g4845648471%_ _%g4845748475%_)))))
                         (_%g4845548516%_
                          (list (let ((__obj91277 _%meta48383%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj91277
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj91277
                                         '7
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj91277
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx48306%_
                                   _%L48364%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx48306%_
                        _%L48364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4830948327%_
                                                      _%g4831048331%_)))
                                               _%hd4832048358%_
                                               _%hd4831748348%_)
                                              (_%g4830948327%_
                                               _%g4831048331%_))))
                                      (_%g4830948327%_ _%g4831048331%_))))
                              (_%g4830948327%_ _%g4831048331%_))))
                      (_%g4830948327%_ _%g4831048331%_)))))
          (_%g4830848522%_ _%stx48306%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx48526%_)
        (let* ((_%g4852948547%_
                (lambda (_%g4853048543%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4853048543%_)))
               (_%g4852848741%_
                (lambda (_%g4853048551%_)
                  (if (gx#stx-pair? _%g4853048551%_)
                      (let ((_%e4853348554%_ (gx#syntax-e _%g4853048551%_)))
                        (let ((_%hd4853448558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4853348554%_)))
                              (_%tl4853548561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4853348554%_))))
                          (if (gx#stx-pair? _%tl4853548561%_)
                              (let ((_%e4853648564%_
                                     (gx#syntax-e _%tl4853548561%_)))
                                (let ((_%hd4853748568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4853648564%_)))
                                      (_%tl4853848571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4853648564%_))))
                                  (if (gx#stx-pair? _%tl4853848571%_)
                                      (let ((_%e4853948574%_
                                             (gx#syntax-e _%tl4853848571%_)))
                                        (let ((_%hd4854048578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4853948574%_)))
                                              (_%tl4854148581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4853948574%_))))
                                          (if (gx#stx-null? _%tl4854148581%_)
                                              ((lambda (_%L48584%_ _%L48586%_)
                                                 (if (gx#identifier?
                                                      _%L48584%_)
                                                     (let ((_%meta48602%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx48526%_
                                                               _%L48584%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta48602%_))
                                                           (let* ((_%g4860748622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4860848618%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4860848618%_)))
                          (_%g4860648669%_
                           (lambda (_%g4860848626%_)
                             (if (gx#stx-pair? _%g4860848626%_)
                                 (let ((_%e4861148629%_
                                        (gx#syntax-e _%g4860848626%_)))
                                   (let ((_%hd4861248633%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4861148629%_)))
                                         (_%tl4861348636%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4861148629%_))))
                                     (if (gx#stx-pair? _%tl4861348636%_)
                                         (let ((_%e4861448639%_
                                                (gx#syntax-e
                                                 _%tl4861348636%_)))
                                           (let ((_%hd4861548643%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4861448639%_)))
                                                 (_%tl4861648646%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4861448639%_))))
                                             (if (gx#stx-null?
                                                  _%tl4861648646%_)
                                                 ((lambda (_%L48649%_
                                                           _%L48651%_)
                                                    (if (let ((__tmp91434
                                                               (let ((__obj91282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta48602%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj91282
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj91282
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj91282 'id)))))
                  (declare (not safe))
                  (##memq __tmp91434 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48651%_ '()))
                            (cons _%L48586%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L48651%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48586%_ '()))
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
                                    (cons (cons _%L48649%_
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
                                                (cons _%L48586%_
                                                      (cons _%L48649%_
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
                                                  _%hd4861548643%_
                                                  _%hd4861248633%_)
                                                 (_%g4860748622%_
                                                  _%g4860848626%_))))
                                         (_%g4860748622%_ _%g4860848626%_))))
                                 (_%g4860748622%_ _%g4860848626%_)))))
                     (_%g4860648669%_
                      (list (let ((__obj91283 _%meta48602%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj91283
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj91283
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj91283
                                   'type-descriptor)))
                            (let ((__obj91284 _%meta48602%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj91284
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj91284
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj91284
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta48602%_))
                       (let* ((_%g4867548690%_
                               (lambda (_%g4867648686%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4867648686%_)))
                              (_%g4867448735%_
                               (lambda (_%g4867648694%_)
                                 (if (gx#stx-pair? _%g4867648694%_)
                                     (let ((_%e4867948697%_
                                            (gx#syntax-e _%g4867648694%_)))
                                       (let ((_%hd4868048701%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4867948697%_)))
                                             (_%tl4868148704%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4867948697%_))))
                                         (if (gx#stx-pair? _%tl4868148704%_)
                                             (let ((_%e4868248707%_
                                                    (gx#syntax-e
                                                     _%tl4868148704%_)))
                                               (let ((_%hd4868348711%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4868248707%_)))
                                                     (_%tl4868448714%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4868248707%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4868448714%_)
                                                     ((lambda (_%L48717%_
                                                               _%L48719%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L48719%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L48586%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L48717%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4868348711%_
              _%hd4868048701%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4867548690%_
                                                      _%g4867648694%_))))
                                             (_%g4867548690%_
                                              _%g4867648694%_))))
                                     (_%g4867548690%_ _%g4867648694%_)))))
                         (_%g4867448735%_
                          (list (let ((__obj91281 _%meta48602%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj91281
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj91281
                                         '7
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj91281
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx48526%_
                                   _%L48584%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx48526%_
                        _%L48584%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4852948547%_
                                                      _%g4853048551%_)))
                                               _%hd4854048578%_
                                               _%hd4853748568%_)
                                              (_%g4852948547%_
                                               _%g4853048551%_))))
                                      (_%g4852948547%_ _%g4853048551%_))))
                              (_%g4852948547%_ _%g4853048551%_))))
                      (_%g4852948547%_ _%g4853048551%_)))))
          (_%g4852848741%_ _%stx48526%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx48745%_)
        (let* ((_%g4874848766%_
                (lambda (_%g4874948762%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4874948762%_)))
               (_%g4874748852%_
                (lambda (_%g4874948770%_)
                  (if (gx#stx-pair? _%g4874948770%_)
                      (let ((_%e4875248773%_ (gx#syntax-e _%g4874948770%_)))
                        (let ((_%hd4875348777%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4875248773%_)))
                              (_%tl4875448780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4875248773%_))))
                          (if (gx#stx-pair? _%tl4875448780%_)
                              (let ((_%e4875548783%_
                                     (gx#syntax-e _%tl4875448780%_)))
                                (let ((_%hd4875648787%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4875548783%_)))
                                      (_%tl4875748790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4875548783%_))))
                                  (if (gx#stx-pair? _%tl4875748790%_)
                                      (let ((_%e4875848793%_
                                             (gx#syntax-e _%tl4875748790%_)))
                                        (let ((_%hd4875948797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4875848793%_)))
                                              (_%tl4876048800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4875848793%_))))
                                          (if (gx#stx-null? _%tl4876048800%_)
                                              ((lambda (_%L48803%_ _%L48805%_)
                                                 (if (gx#identifier?
                                                      _%L48803%_)
                                                     (let* ((_%g4882148829%_
                                                             (lambda (_%g4882248825%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4882248825%_)))
                                                            (_%g4882048848%_
                                                             (lambda (_%g4882248833%_)
                                                               ((lambda (_%L48836%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L48836%_ '()))
                                      (cons _%L48805%_ '()))))
                        _%g4882248833%_))))
               (_%g4882048848%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx48745%_
                   _%L48803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4874848766%_
                                                      _%g4874948770%_)))
                                               _%hd4875948797%_
                                               _%hd4875648787%_)
                                              (_%g4874848766%_
                                               _%g4874948770%_))))
                                      (_%g4874848766%_ _%g4874948770%_))))
                              (_%g4874848766%_ _%g4874948770%_))))
                      (_%g4874848766%_ _%g4874948770%_)))))
          (_%g4874748852%_ _%stx48745%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx48856%_)
        (let* ((_%__stx8540685407%_ _%$stx48856%_)
               (_%g4886148897%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8540685407%_))))
          (let ((_%__kont8540985410%_
                 (lambda (_%L49015%_ _%L49017%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L49017%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L49015%_
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
                           (cons _%L49017%_
                                 (cons _%L49015%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8541185412%_
                 (lambda (_%L48954%_ _%L48956%_ _%L48957%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L48957%_ (cons _%L48956%_ '())))
                               (cons _%L48954%_ '()))))))
            (if (gx#stx-pair? _%__stx8540685407%_)
                (let ((_%e4886548985%_ (gx#syntax-e _%__stx8540685407%_)))
                  (let ((_%tl4886748992%_
                         (let () (declare (not safe)) (##cdr _%e4886548985%_)))
                        (_%hd4886648989%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4886548985%_))))
                    (if (gx#stx-pair? _%tl4886748992%_)
                        (let ((_%e4886848995%_ (gx#syntax-e _%tl4886748992%_)))
                          (let ((_%tl4887049002%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4886848995%_)))
                                (_%hd4886948999%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4886848995%_))))
                            (if (gx#stx-pair? _%tl4887049002%_)
                                (let ((_%e4887149005%_
                                       (gx#syntax-e _%tl4887049002%_)))
                                  (let ((_%tl4887349012%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4887149005%_)))
                                        (_%hd4887249009%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4887149005%_))))
                                    (if (gx#stx-null? _%tl4887349012%_)
                                        (_%__kont8540985410%_
                                         _%hd4887249009%_
                                         _%hd4886948999%_)
                                        (if (gx#stx-pair? _%tl4887349012%_)
                                            (let ((_%e4888648934%_
                                                   (gx#syntax-e
                                                    _%tl4887349012%_)))
                                              (let ((_%tl4888848941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4888648934%_)))
                                                    (_%hd4888748938%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4888648934%_))))
                                                (if (gx#identifier?
                                                     _%hd4888748938%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g91435_|
                                                         _%hd4888748938%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4888848941%_)
                                                            (let ((_%e4888948944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4888848941%_)))
                      (let ((_%tl4889148951%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4888948944%_)))
                            (_%hd4889048948%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4888948944%_))))
                        (if (gx#stx-null? _%tl4889148951%_)
                            (_%__kont8541185412%_
                             _%hd4889048948%_
                             _%hd4887249009%_
                             _%hd4886948999%_)
                            (let () (declare (not safe)) (_%g4886148897%_)))))
                    (let () (declare (not safe)) (_%g4886148897%_)))
                (let () (declare (not safe)) (_%g4886148897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4886148897%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4886148897%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4886148897%_)))))
                        (let () (declare (not safe)) (_%g4886148897%_)))))
                (let () (declare (not safe)) (_%g4886148897%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx49036%_)
        (let ((_%g4903949046%_
               (lambda (_%g4904049042%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4904049042%_))))
          (_%g4903949046%_ _%$stx49036%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx49050%_)
        (let ((_%g4905349060%_
               (lambda (_%g4905449056%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4905449056%_))))
          (_%g4905349060%_ _%$stx49050%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx49064%_)
        (let* ((_%g4906849082%_
                (lambda (_%g4906949078%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4906949078%_)))
               (_%g4906749123%_
                (lambda (_%g4906949086%_)
                  (if (gx#stx-pair? _%g4906949086%_)
                      (let ((_%e4907149089%_ (gx#syntax-e _%g4906949086%_)))
                        (let ((_%hd4907249093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4907149089%_)))
                              (_%tl4907349096%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4907149089%_))))
                          (if (gx#stx-pair? _%tl4907349096%_)
                              (let ((_%e4907449099%_
                                     (gx#syntax-e _%tl4907349096%_)))
                                (let ((_%hd4907549103%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4907449099%_)))
                                      (_%tl4907649106%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4907449099%_))))
                                  (if (gx#stx-null? _%tl4907649106%_)
                                      ((lambda (_%L49109%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L49109%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L49109%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4907549103%_)
                                      (_%g4906849082%_ _%g4906949086%_))))
                              (_%g4906849082%_ _%g4906949086%_))))
                      (_%g4906849082%_ _%g4906949086%_)))))
          (_%g4906749123%_ _%$stx49064%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx49127%_)
        (let* ((_%g4913049153%_
                (lambda (_%g4913149149%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4913149149%_)))
               (_%g4912949277%_
                (lambda (_%g4913149157%_)
                  (if (gx#stx-pair? _%g4913149157%_)
                      (let ((_%e4913649160%_ (gx#syntax-e _%g4913149157%_)))
                        (let ((_%hd4913749164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4913649160%_)))
                              (_%tl4913849167%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4913649160%_))))
                          (if (gx#stx-pair? _%tl4913849167%_)
                              (let ((_%e4913949170%_
                                     (gx#syntax-e _%tl4913849167%_)))
                                (let ((_%hd4914049174%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4913949170%_)))
                                      (_%tl4914149177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4913949170%_))))
                                  (if (gx#stx-pair? _%tl4914149177%_)
                                      (let ((_%e4914249180%_
                                             (gx#syntax-e _%tl4914149177%_)))
                                        (let ((_%hd4914349184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4914249180%_)))
                                              (_%tl4914449187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4914249180%_))))
                                          (if (gx#stx-pair? _%tl4914449187%_)
                                              (let ((_%e4914549190%_
                                                     (gx#syntax-e
                                                      _%tl4914449187%_)))
                                                (let ((_%hd4914649194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4914549190%_)))
                                                      (_%tl4914749197%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4914549190%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4914749197%_)
                                                      ((lambda (_%L49200%_
                                                                _%L49202%_
                                                                _%L49203%_
                                                                _%L49204%_)
                                                         (let* ((_%g4922449232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4922549228%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4922549228%_)))
                        (_%g4922349251%_
                         (lambda (_%g4922549236%_)
                           ((lambda (_%L49239%_)
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
                                (cons _%L49239%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L49202%_ '()))
                                      (cons 'value:
                                            (cons _%L49200%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4922549236%_))))
                   (_%g4922349251%_
                    (let ((_%$e49263%_
                           (let ((_%$e49255%_ (gx#stx-source _%L49203%_)))
                             (if _%$e49255%_
                                 _%$e49255%_
                                 (let ((_%$e49259%_
                                        (gx#stx-source _%stx49127%_)))
                                   (if _%$e49259%_
                                       _%$e49259%_
                                       (gx#stx-source _%L49204%_)))))))
                      (if _%$e49263%_
                          ((lambda (_%locat49267%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4926949271%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat49267%_
                                   '#t
                                   _%g4926949271%_)))))
                           _%$e49263%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4914649194%_
               _%hd4914349184%_
               _%hd4914049174%_
               _%hd4913749164%_)
              (_%g4913049153%_ _%g4913149157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4913049153%_
                                               _%g4913149157%_))))
                                      (_%g4913049153%_ _%g4913149157%_))))
                              (_%g4913049153%_ _%g4913149157%_))))
                      (_%g4913049153%_ _%g4913149157%_)))))
          (_%g4912949277%_ _%stx49127%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx49281%_)
        (let* ((_%g4928449299%_
                (lambda (_%g4928549295%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4928549295%_)))
               (_%g4928349395%_
                (lambda (_%g4928549303%_)
                  (if (gx#stx-pair? _%g4928549303%_)
                      (let ((_%e4928849306%_ (gx#syntax-e _%g4928549303%_)))
                        (let ((_%hd4928949310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4928849306%_)))
                              (_%tl4929049313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4928849306%_))))
                          (if (gx#stx-pair? _%tl4929049313%_)
                              (let ((_%e4929149316%_
                                     (gx#syntax-e _%tl4929049313%_)))
                                (let ((_%hd4929249320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4929149316%_)))
                                      (_%tl4929349323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4929149316%_))))
                                  (if (gx#stx-null? _%tl4929349323%_)
                                      ((lambda (_%L49326%_ _%L49328%_)
                                         (let* ((_%g4934249350%_
                                                 (lambda (_%g4934349346%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4934349346%_)))
                                                (_%g4934149369%_
                                                 (lambda (_%g4934349354%_)
                                                   ((lambda (_%L49357%_)
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
                                                        (cons _%L49357%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L49326%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4934349354%_))))
                                           (_%g4934149369%_
                                            (let ((_%$e49381%_
                                                   (let ((_%$e49373%_
                                                          (gx#stx-source
                                                           _%L49326%_)))
                                                     (if _%$e49373%_
                                                         _%$e49373%_
                                                         (let ((_%$e49377%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx49281%_)))
                   (if _%$e49377%_ _%$e49377%_ (gx#stx-source _%L49328%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e49381%_
                                                  ((lambda (_%locat49385%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4938749389%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat49385%_
                                                           '#t
                                                           _%g4938749389%_)))))
                                                   _%$e49381%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4929249320%_
                                       _%hd4928949310%_)
                                      (_%g4928449299%_ _%g4928549303%_))))
                              (_%g4928449299%_ _%g4928549303%_))))
                      (_%g4928449299%_ _%g4928549303%_)))))
          (_%g4928349395%_ _%stx49281%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx49399%_)
        (let* ((_%g4940349417%_
                (lambda (_%g4940449413%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4940449413%_)))
               (_%g4940249458%_
                (lambda (_%g4940449421%_)
                  (if (gx#stx-pair? _%g4940449421%_)
                      (let ((_%e4940649424%_ (gx#syntax-e _%g4940449421%_)))
                        (let ((_%hd4940749428%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4940649424%_)))
                              (_%tl4940849431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4940649424%_))))
                          (if (gx#stx-pair? _%tl4940849431%_)
                              (let ((_%e4940949434%_
                                     (gx#syntax-e _%tl4940849431%_)))
                                (let ((_%hd4941049438%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4940949434%_)))
                                      (_%tl4941149441%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4940949434%_))))
                                  (if (gx#stx-null? _%tl4941149441%_)
                                      ((lambda (_%L49444%_)
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
                         (cons _%L49444%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4941049438%_)
                                      (_%g4940349417%_ _%g4940449421%_))))
                              (_%g4940349417%_ _%g4940449421%_))))
                      (_%g4940349417%_ _%g4940449421%_)))))
          (_%g4940249458%_ _%$stx49399%_))))))
