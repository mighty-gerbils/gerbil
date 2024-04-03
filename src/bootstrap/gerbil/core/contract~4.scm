(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g80157_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45454%_)
        (let* ((_%g4545745475%_
                (lambda (_%g4545845471%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4545845471%_)))
               (_%g4545645670%_
                (lambda (_%g4545845479%_)
                  (if (gx#stx-pair? _%g4545845479%_)
                      (let ((_%e4546345482%_ (gx#syntax-e _%g4545845479%_)))
                        (let ((_%hd4546245486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4546345482%_)))
                              (_%tl4546145489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4546345482%_))))
                          (if (gx#stx-pair? _%tl4546145489%_)
                              (let ((_%e4546645492%_
                                     (gx#syntax-e _%tl4546145489%_)))
                                (let ((_%hd4546545496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4546645492%_)))
                                      (_%tl4546445499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4546645492%_))))
                                  (if (gx#stx-pair? _%tl4546445499%_)
                                      (let ((_%e4546945502%_
                                             (gx#syntax-e _%tl4546445499%_)))
                                        (let ((_%hd4546845506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4546945502%_)))
                                              (_%tl4546745509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4546945502%_))))
                                          (if (gx#stx-null? _%tl4546745509%_)
                                              ((lambda (_%L45512%_ _%L45514%_)
                                                 (if (gx#identifier?
                                                      _%L45512%_)
                                                     (let ((_%meta45531%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45454%_
                                                               _%L45512%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45531%_))
                                                           (let ()
                                                             (let* ((_%g4553645551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g4553745547%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4553745547%_)))
                            (_%g4553545598%_
                             (lambda (_%g4553745555%_)
                               (if (gx#stx-pair? _%g4553745555%_)
                                   (let ((_%e4554245558%_
                                          (gx#syntax-e _%g4553745555%_)))
                                     (let ((_%hd4554145562%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4554245558%_)))
                                           (_%tl4554045565%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4554245558%_))))
                                       (if (gx#stx-pair? _%tl4554045565%_)
                                           (let ((_%e4554545568%_
                                                  (gx#syntax-e
                                                   _%tl4554045565%_)))
                                             (let ((_%hd4554445572%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4554545568%_)))
                                                   (_%tl4554345575%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4554545568%_))))
                                               (if (gx#stx-null?
                                                    _%tl4554345575%_)
                                                   ((lambda (_%L45578%_
                                                             _%L45580%_)
                                                      (let ()
                                                        (if (let ((__tmp80155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__obj80005 _%meta45531%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj80005
                                    'gerbil.core#class-type-info::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj80005
                                    '1
                                    '#f
                                    '#f))
                                 (class-slot-ref
                                  gerbil/core/mop~MOP-2#class-type-info::t
                                  __obj80005
                                  'id)))))
                      (declare (not safe))
                      (##memq __tmp80155 '(t void)))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45580%_ '()))
                                (cons _%L45514%_ '())))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45580%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45514%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _%L45578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'val) '()))
                            (cons (gx#datum->syntax '#f 'val)
                                  (cons (cons (gx#datum->syntax '#f 'error)
                                              (cons '"bad cast"
                                                    (cons _%L45580%_
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
                                                    _%hd4554445572%_
                                                    _%hd4554145562%_)
                                                   (_%g4553645551%_
                                                    _%g4553745555%_))))
                                           (_%g4553645551%_ _%g4553745555%_))))
                                   (_%g4553645551%_ _%g4553745555%_)))))
                       (_%g4553545598%_
                        (list (let ((__obj80006 _%meta45531%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80006
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80006
                                       '12
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj80006
                                     'type-descriptor)))
                              (let ((__obj80007 _%meta45531%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80007
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80007
                                       '14
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj80007
                                     'predicate)))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45531%_))
                       (let ()
                         (let* ((_%g4560445619%_
                                 (lambda (_%g4560545615%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g4560545615%_)))
                                (_%g4560345664%_
                                 (lambda (_%g4560545623%_)
                                   (if (gx#stx-pair? _%g4560545623%_)
                                       (let ((_%e4561045626%_
                                              (gx#syntax-e _%g4560545623%_)))
                                         (let ((_%hd4560945630%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4561045626%_)))
                                               (_%tl4560845633%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4561045626%_))))
                                           (if (gx#stx-pair? _%tl4560845633%_)
                                               (let ((_%e4561345636%_
                                                      (gx#syntax-e
                                                       _%tl4560845633%_)))
                                                 (let ((_%hd4561245640%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4561345636%_)))
                                                       (_%tl4561145643%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4561345636%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4561145643%_)
                                                       ((lambda (_%L45646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L45648%_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45648%_ '()))
                                (cons (cons _%L45646%_ (cons _%L45514%_ '()))
                                      '())))))
                _%hd4561245640%_
                _%hd4560945630%_)
               (_%g4560445619%_ _%g4560545623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4560445619%_
                                                _%g4560545623%_))))
                                       (_%g4560445619%_ _%g4560545623%_)))))
                           (_%g4560345664%_
                            (list (let ((__obj80008 _%meta45531%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj80008
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj80008
                                           '4
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj80008
                                         'instance-type)))
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                     _%stx45454%_
                                     _%L45512%_))))))
                       (let ()
                         (gx#raise-syntax-error
                          '#f
                          '"not a class type or interface"
                          _%stx45454%_
                          _%L45512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4545745475%_
                                                      _%g4545845479%_)))
                                               _%hd4546845506%_
                                               _%hd4546545496%_)
                                              (_%g4545745475%_
                                               _%g4545845479%_))))
                                      (_%g4545745475%_ _%g4545845479%_))))
                              (_%g4545745475%_ _%g4545845479%_))))
                      (_%g4545745475%_ _%g4545845479%_)))))
          (_%g4545645670%_ _%stx45454%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45674%_)
        (let* ((_%g4567745695%_
                (lambda (_%g4567845691%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4567845691%_)))
               (_%g4567645889%_
                (lambda (_%g4567845699%_)
                  (if (gx#stx-pair? _%g4567845699%_)
                      (let ((_%e4568345702%_ (gx#syntax-e _%g4567845699%_)))
                        (let ((_%hd4568245706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4568345702%_)))
                              (_%tl4568145709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4568345702%_))))
                          (if (gx#stx-pair? _%tl4568145709%_)
                              (let ((_%e4568645712%_
                                     (gx#syntax-e _%tl4568145709%_)))
                                (let ((_%hd4568545716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4568645712%_)))
                                      (_%tl4568445719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4568645712%_))))
                                  (if (gx#stx-pair? _%tl4568445719%_)
                                      (let ((_%e4568945722%_
                                             (gx#syntax-e _%tl4568445719%_)))
                                        (let ((_%hd4568845726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4568945722%_)))
                                              (_%tl4568745729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4568945722%_))))
                                          (if (gx#stx-null? _%tl4568745729%_)
                                              ((lambda (_%L45732%_ _%L45734%_)
                                                 (if (gx#identifier?
                                                      _%L45732%_)
                                                     (let ((_%meta45750%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45674%_
                                                               _%L45732%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45750%_))
                                                           (let ()
                                                             (let* ((_%g4575545770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g4575645766%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4575645766%_)))
                            (_%g4575445817%_
                             (lambda (_%g4575645774%_)
                               (if (gx#stx-pair? _%g4575645774%_)
                                   (let ((_%e4576145777%_
                                          (gx#syntax-e _%g4575645774%_)))
                                     (let ((_%hd4576045781%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4576145777%_)))
                                           (_%tl4575945784%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4576145777%_))))
                                       (if (gx#stx-pair? _%tl4575945784%_)
                                           (let ((_%e4576445787%_
                                                  (gx#syntax-e
                                                   _%tl4575945784%_)))
                                             (let ((_%hd4576345791%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4576445787%_)))
                                                   (_%tl4576245794%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4576445787%_))))
                                               (if (gx#stx-null?
                                                    _%tl4576245794%_)
                                                   ((lambda (_%L45797%_
                                                             _%L45799%_)
                                                      (let ()
                                                        (if (let ((__tmp80156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__obj80009 _%meta45750%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj80009
                                    'gerbil.core#class-type-info::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj80009
                                    '1
                                    '#f
                                    '#f))
                                 (class-slot-ref
                                  gerbil/core/mop~MOP-2#class-type-info::t
                                  __obj80009
                                  'id)))))
                      (declare (not safe))
                      (##memq __tmp80156 '(t void)))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45799%_ '()))
                                (cons _%L45734%_ '())))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45799%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45734%_ '()))
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
                                        (cons (cons _%L45797%_
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
                                                    (cons _%L45734%_
                                                          (cons _%L45797%_
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
                                                    _%hd4576345791%_
                                                    _%hd4576045781%_)
                                                   (_%g4575545770%_
                                                    _%g4575645774%_))))
                                           (_%g4575545770%_ _%g4575645774%_))))
                                   (_%g4575545770%_ _%g4575645774%_)))))
                       (_%g4575445817%_
                        (list (let ((__obj80010 _%meta45750%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80010
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80010
                                       '12
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj80010
                                     'type-descriptor)))
                              (let ((__obj80011 _%meta45750%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80011
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80011
                                       '14
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj80011
                                     'predicate)))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45750%_))
                       (let ()
                         (let* ((_%g4582345838%_
                                 (lambda (_%g4582445834%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g4582445834%_)))
                                (_%g4582245883%_
                                 (lambda (_%g4582445842%_)
                                   (if (gx#stx-pair? _%g4582445842%_)
                                       (let ((_%e4582945845%_
                                              (gx#syntax-e _%g4582445842%_)))
                                         (let ((_%hd4582845849%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4582945845%_)))
                                               (_%tl4582745852%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4582945845%_))))
                                           (if (gx#stx-pair? _%tl4582745852%_)
                                               (let ((_%e4583245855%_
                                                      (gx#syntax-e
                                                       _%tl4582745852%_)))
                                                 (let ((_%hd4583145859%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4583245855%_)))
                                                       (_%tl4583045862%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4583245855%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4583045862%_)
                                                       ((lambda (_%L45865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L45867%_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45867%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45734%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'and)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'val)
                            (cons (cons _%L45865%_
                                        (cons (gx#datum->syntax '#f 'val) '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))
                _%hd4583145859%_
                _%hd4582845849%_)
               (_%g4582345838%_ _%g4582445842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4582345838%_
                                                _%g4582445842%_))))
                                       (_%g4582345838%_ _%g4582445842%_)))))
                           (_%g4582245883%_
                            (list (let ((__obj80012 _%meta45750%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj80012
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj80012
                                           '4
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj80012
                                         'instance-type)))
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                     _%stx45674%_
                                     _%L45732%_))))))
                       (let ()
                         (gx#raise-syntax-error
                          '#f
                          '"not a class type or interface"
                          _%stx45674%_
                          _%L45732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4567745695%_
                                                      _%g4567845699%_)))
                                               _%hd4568845726%_
                                               _%hd4568545716%_)
                                              (_%g4567745695%_
                                               _%g4567845699%_))))
                                      (_%g4567745695%_ _%g4567845699%_))))
                              (_%g4567745695%_ _%g4567845699%_))))
                      (_%g4567745695%_ _%g4567845699%_)))))
          (_%g4567645889%_ _%stx45674%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45893%_)
        (let* ((_%g4589645914%_
                (lambda (_%g4589745910%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4589745910%_)))
               (_%g4589546000%_
                (lambda (_%g4589745918%_)
                  (if (gx#stx-pair? _%g4589745918%_)
                      (let ((_%e4590245921%_ (gx#syntax-e _%g4589745918%_)))
                        (let ((_%hd4590145925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4590245921%_)))
                              (_%tl4590045928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4590245921%_))))
                          (if (gx#stx-pair? _%tl4590045928%_)
                              (let ((_%e4590545931%_
                                     (gx#syntax-e _%tl4590045928%_)))
                                (let ((_%hd4590445935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4590545931%_)))
                                      (_%tl4590345938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4590545931%_))))
                                  (if (gx#stx-pair? _%tl4590345938%_)
                                      (let ((_%e4590845941%_
                                             (gx#syntax-e _%tl4590345938%_)))
                                        (let ((_%hd4590745945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4590845941%_)))
                                              (_%tl4590645948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4590845941%_))))
                                          (if (gx#stx-null? _%tl4590645948%_)
                                              ((lambda (_%L45951%_ _%L45953%_)
                                                 (if (gx#identifier?
                                                      _%L45951%_)
                                                     (let* ((_%g4596945977%_
                                                             (lambda (_%g4597045973%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4597045973%_)))
                                                            (_%g4596845996%_
                                                             (lambda (_%g4597045981%_)
                                                               ((lambda (_%L45984%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'begin-annotation)
                                  (cons (cons (gx#datum->syntax '#f '@type)
                                              (cons _%L45984%_ '()))
                                        (cons _%L45953%_ '())))))
                        _%g4597045981%_))))
               (_%g4596845996%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45893%_
                   _%L45951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4589645914%_
                                                      _%g4589745918%_)))
                                               _%hd4590745945%_
                                               _%hd4590445935%_)
                                              (_%g4589645914%_
                                               _%g4589745918%_))))
                                      (_%g4589645914%_ _%g4589745918%_))))
                              (_%g4589645914%_ _%g4589745918%_))))
                      (_%g4589645914%_ _%g4589745918%_)))))
          (_%g4589546000%_ _%stx45893%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx46004%_)
        (let* ((_%__stx7493474935%_ _%$stx46004%_)
               (_%g4600946045%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7493474935%_))))
          (let ((_%__kont7493774938%_
                 (lambda (_%L46163%_ _%L46165%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L46165%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L46163%_
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
                           (cons _%L46165%_
                                 (cons _%L46163%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7493974940%_
                 (lambda (_%L46102%_ _%L46104%_ _%L46105%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L46105%_ (cons _%L46104%_ '())))
                               (cons _%L46102%_ '()))))))
            (if (gx#stx-pair? _%__stx7493474935%_)
                (let ((_%e4601546133%_ (gx#syntax-e _%__stx7493474935%_)))
                  (let ((_%tl4601346140%_
                         (let () (declare (not safe)) (##cdr _%e4601546133%_)))
                        (_%hd4601446137%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4601546133%_))))
                    (if (gx#stx-pair? _%tl4601346140%_)
                        (let ((_%e4601846143%_ (gx#syntax-e _%tl4601346140%_)))
                          (let ((_%tl4601646150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4601846143%_)))
                                (_%hd4601746147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4601846143%_))))
                            (if (gx#stx-pair? _%tl4601646150%_)
                                (let ((_%e4602146153%_
                                       (gx#syntax-e _%tl4601646150%_)))
                                  (let ((_%tl4601946160%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4602146153%_)))
                                        (_%hd4602046157%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4602146153%_))))
                                    (if (gx#stx-null? _%tl4601946160%_)
                                        (_%__kont7493774938%_
                                         _%hd4602046157%_
                                         _%hd4601746147%_)
                                        (if (gx#stx-pair? _%tl4601946160%_)
                                            (let ((_%e4603646082%_
                                                   (gx#syntax-e
                                                    _%tl4601946160%_)))
                                              (let ((_%tl4603446089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4603646082%_)))
                                                    (_%hd4603546086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4603646082%_))))
                                                (if (gx#identifier?
                                                     _%hd4603546086%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g80157_|
                                                         _%hd4603546086%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4603446089%_)
                                                            (let ((_%e4603946092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4603446089%_)))
                      (let ((_%tl4603746099%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4603946092%_)))
                            (_%hd4603846096%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4603946092%_))))
                        (if (gx#stx-null? _%tl4603746099%_)
                            (_%__kont7493974940%_
                             _%hd4603846096%_
                             _%hd4602046157%_
                             _%hd4601746147%_)
                            (let () (declare (not safe)) (_%g4600946045%_)))))
                    (let () (declare (not safe)) (_%g4600946045%_)))
                (let () (declare (not safe)) (_%g4600946045%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4600946045%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4600946045%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4600946045%_)))))
                        (let () (declare (not safe)) (_%g4600946045%_)))))
                (let () (declare (not safe)) (_%g4600946045%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx46184%_)
        (let ((_%g4618746194%_
               (lambda (_%g4618846190%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4618846190%_))))
          (_%g4618746194%_ _%$stx46184%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx46198%_)
        (let ((_%g4620146208%_
               (lambda (_%g4620246204%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4620246204%_))))
          (_%g4620146208%_ _%$stx46198%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx46212%_)
        (let* ((_%g4621646230%_
                (lambda (_%g4621746226%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4621746226%_)))
               (_%g4621546271%_
                (lambda (_%g4621746234%_)
                  (if (gx#stx-pair? _%g4621746234%_)
                      (let ((_%e4622146237%_ (gx#syntax-e _%g4621746234%_)))
                        (let ((_%hd4622046241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4622146237%_)))
                              (_%tl4621946244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4622146237%_))))
                          (if (gx#stx-pair? _%tl4621946244%_)
                              (let ((_%e4622446247%_
                                     (gx#syntax-e _%tl4621946244%_)))
                                (let ((_%hd4622346251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4622446247%_)))
                                      (_%tl4622246254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4622446247%_))))
                                  (if (gx#stx-null? _%tl4622246254%_)
                                      ((lambda (_%L46257%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46257%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46257%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4622346251%_)
                                      (_%g4621646230%_ _%g4621746234%_))))
                              (_%g4621646230%_ _%g4621746234%_))))
                      (_%g4621646230%_ _%g4621746234%_)))))
          (_%g4621546271%_ _%$stx46212%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46275%_)
        (let* ((_%g4627846301%_
                (lambda (_%g4627946297%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4627946297%_)))
               (_%g4627746425%_
                (lambda (_%g4627946305%_)
                  (if (gx#stx-pair? _%g4627946305%_)
                      (let ((_%e4628646308%_ (gx#syntax-e _%g4627946305%_)))
                        (let ((_%hd4628546312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4628646308%_)))
                              (_%tl4628446315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4628646308%_))))
                          (if (gx#stx-pair? _%tl4628446315%_)
                              (let ((_%e4628946318%_
                                     (gx#syntax-e _%tl4628446315%_)))
                                (let ((_%hd4628846322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4628946318%_)))
                                      (_%tl4628746325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4628946318%_))))
                                  (if (gx#stx-pair? _%tl4628746325%_)
                                      (let ((_%e4629246328%_
                                             (gx#syntax-e _%tl4628746325%_)))
                                        (let ((_%hd4629146332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4629246328%_)))
                                              (_%tl4629046335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4629246328%_))))
                                          (if (gx#stx-pair? _%tl4629046335%_)
                                              (let ((_%e4629546338%_
                                                     (gx#syntax-e
                                                      _%tl4629046335%_)))
                                                (let ((_%hd4629446342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4629546338%_)))
                                                      (_%tl4629346345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4629546338%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4629346345%_)
                                                      ((lambda (_%L46348%_
                                                                _%L46350%_
                                                                _%L46351%_
                                                                _%L46352%_)
                                                         (let* ((_%g4637246380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4637346376%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4637346376%_)))
                        (_%g4637146399%_
                         (lambda (_%g4637346384%_)
                           ((lambda (_%L46387%_)
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
                                  (cons _%L46387%_ '()))
                            (cons 'contract:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%L46350%_ '()))
                                        (cons 'value:
                                              (cons _%L46348%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                            _%g4637346384%_))))
                   (_%g4637146399%_
                    (let ((_%$e46411%_
                           (let ((_%$e46403%_ (gx#stx-source _%L46351%_)))
                             (if _%$e46403%_
                                 _%$e46403%_
                                 (let ((_%$e46407%_
                                        (gx#stx-source _%stx46275%_)))
                                   (if _%$e46407%_
                                       _%$e46407%_
                                       (gx#stx-source _%L46352%_)))))))
                      (if _%$e46411%_
                          ((lambda (_%locat46415%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4641746419%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46415%_
                                   '#t
                                   _%g4641746419%_)))))
                           _%$e46411%_)
                          (let ()
                            (gx#expander-context-id
                             (gx#core-context-top))))))))
               _%hd4629446342%_
               _%hd4629146332%_
               _%hd4628846322%_
               _%hd4628546312%_)
              (_%g4627846301%_ _%g4627946305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4627846301%_
                                               _%g4627946305%_))))
                                      (_%g4627846301%_ _%g4627946305%_))))
                              (_%g4627846301%_ _%g4627946305%_))))
                      (_%g4627846301%_ _%g4627946305%_)))))
          (_%g4627746425%_ _%stx46275%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46429%_)
        (let* ((_%g4643246447%_
                (lambda (_%g4643346443%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4643346443%_)))
               (_%g4643146543%_
                (lambda (_%g4643346451%_)
                  (if (gx#stx-pair? _%g4643346451%_)
                      (let ((_%e4643846454%_ (gx#syntax-e _%g4643346451%_)))
                        (let ((_%hd4643746458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4643846454%_)))
                              (_%tl4643646461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4643846454%_))))
                          (if (gx#stx-pair? _%tl4643646461%_)
                              (let ((_%e4644146464%_
                                     (gx#syntax-e _%tl4643646461%_)))
                                (let ((_%hd4644046468%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4644146464%_)))
                                      (_%tl4643946471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4644146464%_))))
                                  (if (gx#stx-null? _%tl4643946471%_)
                                      ((lambda (_%L46474%_ _%L46476%_)
                                         (let* ((_%g4649046498%_
                                                 (lambda (_%g4649146494%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4649146494%_)))
                                                (_%g4648946517%_
                                                 (lambda (_%g4649146502%_)
                                                   ((lambda (_%L46505%_)
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
                                                          (cons _%L46505%_
                                                                '()))
                                                    (cons 'contract:
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                          (cons _%L46474%_ '()))
                                    '()))
                        (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4649146502%_))))
                                           (_%g4648946517%_
                                            (let ((_%$e46529%_
                                                   (let ((_%$e46521%_
                                                          (gx#stx-source
                                                           _%L46474%_)))
                                                     (if _%$e46521%_
                                                         _%$e46521%_
                                                         (let ((_%$e46525%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46429%_)))
                   (if _%$e46525%_ _%$e46525%_ (gx#stx-source _%L46476%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46529%_
                                                  ((lambda (_%locat46533%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4653546537%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46533%_
                                                           '#t
                                                           _%g4653546537%_)))))
                                                   _%$e46529%_)
                                                  (let ()
                                                    (gx#expander-context-id
                                                     (gx#core-context-top))))))))
                                       _%hd4644046468%_
                                       _%hd4643746458%_)
                                      (_%g4643246447%_ _%g4643346451%_))))
                              (_%g4643246447%_ _%g4643346451%_))))
                      (_%g4643246447%_ _%g4643346451%_)))))
          (_%g4643146543%_ _%stx46429%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46547%_)
        (let* ((_%g4655146565%_
                (lambda (_%g4655246561%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4655246561%_)))
               (_%g4655046606%_
                (lambda (_%g4655246569%_)
                  (if (gx#stx-pair? _%g4655246569%_)
                      (let ((_%e4655646572%_ (gx#syntax-e _%g4655246569%_)))
                        (let ((_%hd4655546576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4655646572%_)))
                              (_%tl4655446579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4655646572%_))))
                          (if (gx#stx-pair? _%tl4655446579%_)
                              (let ((_%e4655946582%_
                                     (gx#syntax-e _%tl4655446579%_)))
                                (let ((_%hd4655846586%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4655946582%_)))
                                      (_%tl4655746589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4655946582%_))))
                                  (if (gx#stx-null? _%tl4655746589%_)
                                      ((lambda (_%L46592%_)
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
                         (cons _%L46592%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4655846586%_)
                                      (_%g4655146565%_ _%g4655246569%_))))
                              (_%g4655146565%_ _%g4655246569%_))))
                      (_%g4655146565%_ _%g4655246569%_)))))
          (_%g4655046606%_ _%$stx46547%_))))))
