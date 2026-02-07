(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g97717_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g97718_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g97719_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx49634%_)
        (let* ((_%g4963749655%_
                (lambda (_%g4963849651%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4963849651%_)))
               (_%g4963649850%_
                (lambda (_%g4963849659%_)
                  (if (gx#stx-pair? _%g4963849659%_)
                      (let ((_%e4964149662%_ (gx#syntax-e _%g4963849659%_)))
                        (let ((_%hd4964249666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4964149662%_)))
                              (_%tl4964349669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4964149662%_))))
                          (if (gx#stx-pair? _%tl4964349669%_)
                              (let ((_%e4964449672%_
                                     (gx#syntax-e _%tl4964349669%_)))
                                (let ((_%hd4964549676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4964449672%_)))
                                      (_%tl4964649679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4964449672%_))))
                                  (if (gx#stx-pair? _%tl4964649679%_)
                                      (let ((_%e4964749682%_
                                             (gx#syntax-e _%tl4964649679%_)))
                                        (let ((_%hd4964849686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4964749682%_)))
                                              (_%tl4964949689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4964749682%_))))
                                          (if (gx#stx-null? _%tl4964949689%_)
                                              ((lambda (_%g4963949692%_
                                                        _%g4964049694%_)
                                                 (if (gx#identifier?
                                                      _%g4963949692%_)
                                                     (let ((_%meta49711%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49634%_
                                                               _%g4963949692%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49711%_))
                                                           (let* ((_%g4971649731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4971749727%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4971749727%_)))
                          (_%g4971549778%_
                           (lambda (_%g4971749735%_)
                             (if (gx#stx-pair? _%g4971749735%_)
                                 (let ((_%e4972049738%_
                                        (gx#syntax-e _%g4971749735%_)))
                                   (let ((_%hd4972149742%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4972049738%_)))
                                         (_%tl4972249745%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4972049738%_))))
                                     (if (gx#stx-pair? _%tl4972249745%_)
                                         (let ((_%e4972349748%_
                                                (gx#syntax-e
                                                 _%tl4972249745%_)))
                                           (let ((_%hd4972449752%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4972349748%_)))
                                                 (_%tl4972549755%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4972349748%_))))
                                             (if (gx#stx-null?
                                                  _%tl4972549755%_)
                                                 ((lambda (_%g4971849758%_
                                                           _%g4971949760%_)
                                                    (if (let ((__tmp97715
                                                               (let ((__obj97544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49711%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97544
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97544
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj97544 'id)))))
                  (declare (not safe))
                  (##memq __tmp97715 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4971949760%_ '()))
                            (cons _%g4964049694%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4971949760%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4964049694%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g4971849758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4964049694%_
                                                (cons (cons _%g4971849758%_
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
                                                  _%hd4972449752%_
                                                  _%hd4972149742%_)
                                                 (_%g4971649731%_
                                                  _%g4971749735%_))))
                                         (_%g4971649731%_ _%g4971749735%_))))
                                 (_%g4971649731%_ _%g4971749735%_)))))
                     (_%g4971549778%_
                      (list (let ((__obj97545 _%meta49711%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97545
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97545
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97545
                                   'type-descriptor)))
                            (let ((__obj97546 _%meta49711%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97546
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97546
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97546
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49711%_))
                       (let* ((_%g4978449799%_
                               (lambda (_%g4978549795%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4978549795%_)))
                              (_%g4978349844%_
                               (lambda (_%g4978549803%_)
                                 (if (gx#stx-pair? _%g4978549803%_)
                                     (let ((_%e4978849806%_
                                            (gx#syntax-e _%g4978549803%_)))
                                       (let ((_%hd4978949810%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4978849806%_)))
                                             (_%tl4979049813%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4978849806%_))))
                                         (if (gx#stx-pair? _%tl4979049813%_)
                                             (let ((_%e4979149816%_
                                                    (gx#syntax-e
                                                     _%tl4979049813%_)))
                                               (let ((_%hd4979249820%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4979149816%_)))
                                                     (_%tl4979349823%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4979149816%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4979349823%_)
                                                     ((lambda (_%g4978649826%_
                                                               _%g4978749828%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4978749828%_ '()))
                            (cons (cons _%g4978649826%_
                                        (cons _%g4964049694%_ '()))
                                  '()))))
              _%hd4979249820%_
              _%hd4978949810%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4978449799%_
                                                      _%g4978549803%_))))
                                             (_%g4978449799%_
                                              _%g4978549803%_))))
                                     (_%g4978449799%_ _%g4978549803%_)))))
                         (_%g4978349844%_
                          (list (let ((__obj97543 _%meta49711%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj97543
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj97543
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj97543
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49634%_
                                   _%g4963949692%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49634%_
                        _%g4963949692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4963749655%_
                                                      _%g4963849659%_)))
                                               _%hd4964849686%_
                                               _%hd4964549676%_)
                                              (_%g4963749655%_
                                               _%g4963849659%_))))
                                      (_%g4963749655%_ _%g4963849659%_))))
                              (_%g4963749655%_ _%g4963849659%_))))
                      (_%g4963749655%_ _%g4963849659%_)))))
          (_%g4963649850%_ _%stx49634%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx49854%_)
        (let* ((_%g4985749875%_
                (lambda (_%g4985849871%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4985849871%_)))
               (_%g4985650069%_
                (lambda (_%g4985849879%_)
                  (if (gx#stx-pair? _%g4985849879%_)
                      (let ((_%e4986149882%_ (gx#syntax-e _%g4985849879%_)))
                        (let ((_%hd4986249886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4986149882%_)))
                              (_%tl4986349889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4986149882%_))))
                          (if (gx#stx-pair? _%tl4986349889%_)
                              (let ((_%e4986449892%_
                                     (gx#syntax-e _%tl4986349889%_)))
                                (let ((_%hd4986549896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4986449892%_)))
                                      (_%tl4986649899%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4986449892%_))))
                                  (if (gx#stx-pair? _%tl4986649899%_)
                                      (let ((_%e4986749902%_
                                             (gx#syntax-e _%tl4986649899%_)))
                                        (let ((_%hd4986849906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4986749902%_)))
                                              (_%tl4986949909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4986749902%_))))
                                          (if (gx#stx-null? _%tl4986949909%_)
                                              ((lambda (_%g4985949912%_
                                                        _%g4986049914%_)
                                                 (if (gx#identifier?
                                                      _%g4985949912%_)
                                                     (let ((_%meta49930%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49854%_
                                                               _%g4985949912%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49930%_))
                                                           (let* ((_%g4993549950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4993649946%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4993649946%_)))
                          (_%g4993449997%_
                           (lambda (_%g4993649954%_)
                             (if (gx#stx-pair? _%g4993649954%_)
                                 (let ((_%e4993949957%_
                                        (gx#syntax-e _%g4993649954%_)))
                                   (let ((_%hd4994049961%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4993949957%_)))
                                         (_%tl4994149964%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4993949957%_))))
                                     (if (gx#stx-pair? _%tl4994149964%_)
                                         (let ((_%e4994249967%_
                                                (gx#syntax-e
                                                 _%tl4994149964%_)))
                                           (let ((_%hd4994349971%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4994249967%_)))
                                                 (_%tl4994449974%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4994249967%_))))
                                             (if (gx#stx-null?
                                                  _%tl4994449974%_)
                                                 ((lambda (_%g4993749977%_
                                                           _%g4993849979%_)
                                                    (if (let ((__tmp97716
                                                               (let ((__obj97548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49930%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97548
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97548
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj97548 'id)))))
                  (declare (not safe))
                  (##memq __tmp97716 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4993849979%_ '()))
                            (cons _%g4986049914%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4993849979%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4986049914%_ '()))
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
                                    (cons (cons _%g4993749977%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4986049914%_
                                                (cons (cons _%g4993749977%_
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
                                                  _%hd4994349971%_
                                                  _%hd4994049961%_)
                                                 (_%g4993549950%_
                                                  _%g4993649954%_))))
                                         (_%g4993549950%_ _%g4993649954%_))))
                                 (_%g4993549950%_ _%g4993649954%_)))))
                     (_%g4993449997%_
                      (list (let ((__obj97549 _%meta49930%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97549
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97549
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97549
                                   'type-descriptor)))
                            (let ((__obj97550 _%meta49930%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97550
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97550
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97550
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49930%_))
                       (let* ((_%g5000350018%_
                               (lambda (_%g5000450014%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5000450014%_)))
                              (_%g5000250063%_
                               (lambda (_%g5000450022%_)
                                 (if (gx#stx-pair? _%g5000450022%_)
                                     (let ((_%e5000750025%_
                                            (gx#syntax-e _%g5000450022%_)))
                                       (let ((_%hd5000850029%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5000750025%_)))
                                             (_%tl5000950032%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5000750025%_))))
                                         (if (gx#stx-pair? _%tl5000950032%_)
                                             (let ((_%e5001050035%_
                                                    (gx#syntax-e
                                                     _%tl5000950032%_)))
                                               (let ((_%hd5001150039%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5001050035%_)))
                                                     (_%tl5001250042%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5001050035%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5001250042%_)
                                                     ((lambda (_%g5000550045%_
                                                               _%g5000650047%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5000650047%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4986049914%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g5000550045%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd5001150039%_
              _%hd5000850029%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5000350018%_
                                                      _%g5000450022%_))))
                                             (_%g5000350018%_
                                              _%g5000450022%_))))
                                     (_%g5000350018%_ _%g5000450022%_)))))
                         (_%g5000250063%_
                          (list (let ((__obj97547 _%meta49930%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj97547
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj97547
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj97547
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49854%_
                                   _%g4985949912%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49854%_
                        _%g4985949912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4985749875%_
                                                      _%g4985849879%_)))
                                               _%hd4986849906%_
                                               _%hd4986549896%_)
                                              (_%g4985749875%_
                                               _%g4985849879%_))))
                                      (_%g4985749875%_ _%g4985849879%_))))
                              (_%g4985749875%_ _%g4985849879%_))))
                      (_%g4985749875%_ _%g4985849879%_)))))
          (_%g4985650069%_ _%stx49854%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx50073%_)
        (let* ((_%g5007650094%_
                (lambda (_%g5007750090%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5007750090%_)))
               (_%g5007550180%_
                (lambda (_%g5007750098%_)
                  (if (gx#stx-pair? _%g5007750098%_)
                      (let ((_%e5008050101%_ (gx#syntax-e _%g5007750098%_)))
                        (let ((_%hd5008150105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5008050101%_)))
                              (_%tl5008250108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5008050101%_))))
                          (if (gx#stx-pair? _%tl5008250108%_)
                              (let ((_%e5008350111%_
                                     (gx#syntax-e _%tl5008250108%_)))
                                (let ((_%hd5008450115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5008350111%_)))
                                      (_%tl5008550118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5008350111%_))))
                                  (if (gx#stx-pair? _%tl5008550118%_)
                                      (let ((_%e5008650121%_
                                             (gx#syntax-e _%tl5008550118%_)))
                                        (let ((_%hd5008750125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5008650121%_)))
                                              (_%tl5008850128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5008650121%_))))
                                          (if (gx#stx-null? _%tl5008850128%_)
                                              ((lambda (_%g5007850131%_
                                                        _%g5007950133%_)
                                                 (if (gx#identifier?
                                                      _%g5007850131%_)
                                                     (let* ((_%g5014950157%_
                                                             (lambda (_%g5015050153%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g5015050153%_)))
                                                            (_%g5014850176%_
                                                             (lambda (_%g5015050161%_)
                                                               ((lambda (_%g5015150164%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g5015150164%_ '()))
                                      (cons _%g5007950133%_ '()))))
                        _%g5015050161%_))))
               (_%g5014850176%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx50073%_
                   _%g5007850131%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5007650094%_
                                                      _%g5007750098%_)))
                                               _%hd5008750125%_
                                               _%hd5008450115%_)
                                              (_%g5007650094%_
                                               _%g5007750098%_))))
                                      (_%g5007650094%_ _%g5007750098%_))))
                              (_%g5007650094%_ _%g5007750098%_))))
                      (_%g5007650094%_ _%g5007750098%_)))))
          (_%g5007550180%_ _%stx50073%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx50184%_)
        (let* ((_%__stx9126891269%_ _%$stx50184%_)
               (_%g5019050274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9126891269%_))))
          (let ((_%__kont9127191272%_
                 (lambda (_%g5019250578%_
                          _%g5019350580%_
                          _%g5019450581%_
                          _%g5019550582%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5019550582%_
                                           (cons _%g5019350580%_
                                                 (foldr (lambda (_%g5060650609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5060750612%_)
                  (cons _%g5060650609%_ _%g5060750612%_))
                '()
                _%g5019250578%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5019450581%_ '())))))
                (_%__kont9127591276%_
                 (lambda (_%g5022050456%_
                          _%g5022150458%_
                          _%g5022250459%_
                          _%g5022350460%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5022350460%_
                                           (cons _%g5022150458%_
                                                 (foldr (lambda (_%g5048450487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5048550490%_)
                  (cons _%g5048450487%_ _%g5048550490%_))
                '()
                _%g5022050456%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5022250459%_ '())))))
                (_%__kont9127991280%_
                 (lambda (_%g5024850339%_ _%g5024950341%_ _%g5025050342%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5025050342%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5024950341%_
                                                       (foldr (lambda (_%g5036250365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5036350368%_)
                        (cons _%g5036250365%_ _%g5036350368%_))
                      '()
                      _%g5024850339%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9139391394%_
                    (lambda (_%e5025150281%_
                             _%hd5025250285%_
                             _%tl5025350288%_
                             _%e5025450291%_
                             _%hd5025550295%_
                             _%tl5025650298%_
                             _%e5025750301%_
                             _%hd5025850305%_
                             _%tl5025950308%_
                             _%__splice9128191282%_
                             _%target5026050311%_
                             _%tl5026250314%_)
                      (letrec ((_%loop5026350317%_
                                (lambda (_%hd5026150321%_ _%rest5026750324%_)
                                  (if (gx#stx-pair? _%hd5026150321%_)
                                      (let ((_%e5026450326%_
                                             (gx#syntax-e _%hd5026150321%_)))
                                        (let ((_%lp-tl5026650333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5026450326%_)))
                                              (_%lp-hd5026550330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5026450326%_))))
                                          (_%loop5026350317%_
                                           _%lp-tl5026650333%_
                                           (cons _%lp-hd5026550330%_
                                                 _%rest5026750324%_))))
                                      (let ((_%rest5026850336%_
                                             (reverse _%rest5026750324%_)))
                                        (_%__kont9127991280%_
                                         _%rest5026850336%_
                                         _%hd5025850305%_
                                         _%hd5025550295%_))))))
                        (_%loop5026350317%_ _%target5026050311%_ '()))))
                   (_%__match9136791368%_
                    (lambda (_%e5022450378%_
                             _%hd5022550382%_
                             _%tl5022650385%_
                             _%e5022750388%_
                             _%hd5022850392%_
                             _%tl5022950395%_
                             _%e5023050398%_
                             _%hd5023150402%_
                             _%tl5023250405%_
                             _%e5023350408%_
                             _%hd5023450412%_
                             _%tl5023550415%_
                             _%e5023650418%_
                             _%hd5023750422%_
                             _%tl5023850425%_
                             _%__splice9127791278%_
                             _%target5023950428%_
                             _%tl5024150431%_)
                      (letrec ((_%loop5024250434%_
                                (lambda (_%hd5024050438%_ _%rest5024650441%_)
                                  (if (gx#stx-pair? _%hd5024050438%_)
                                      (let ((_%e5024350443%_
                                             (gx#syntax-e _%hd5024050438%_)))
                                        (let ((_%lp-tl5024550450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5024350443%_)))
                                              (_%lp-hd5024450447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5024350443%_))))
                                          (_%loop5024250434%_
                                           _%lp-tl5024550450%_
                                           (cons _%lp-hd5024450447%_
                                                 _%rest5024650441%_))))
                                      (let ((_%rest5024750453%_
                                             (reverse _%rest5024650441%_)))
                                        (_%__kont9127591276%_
                                         _%rest5024750453%_
                                         _%hd5023750422%_
                                         _%hd5023450412%_
                                         _%hd5022850392%_))))))
                        (_%loop5024250434%_ _%target5023950428%_ '()))))
                   (_%__match9132591326%_
                    (lambda (_%e5019650500%_
                             _%hd5019750504%_
                             _%tl5019850507%_
                             _%e5019950510%_
                             _%hd5020050514%_
                             _%tl5020150517%_
                             _%e5020250520%_
                             _%hd5020350524%_
                             _%tl5020450527%_
                             _%e5020550530%_
                             _%hd5020650534%_
                             _%tl5020750537%_
                             _%e5020850540%_
                             _%hd5020950544%_
                             _%tl5021050547%_
                             _%__splice9127391274%_
                             _%target5021150550%_
                             _%tl5021350553%_)
                      (letrec ((_%loop5021450556%_
                                (lambda (_%hd5021250560%_ _%rest5021850563%_)
                                  (if (gx#stx-pair? _%hd5021250560%_)
                                      (let ((_%e5021550565%_
                                             (gx#syntax-e _%hd5021250560%_)))
                                        (let ((_%lp-tl5021750572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5021550565%_)))
                                              (_%lp-hd5021650569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5021550565%_))))
                                          (_%loop5021450556%_
                                           _%lp-tl5021750572%_
                                           (cons _%lp-hd5021650569%_
                                                 _%rest5021850563%_))))
                                      (let ((_%rest5021950575%_
                                             (reverse _%rest5021850563%_)))
                                        (_%__kont9127191272%_
                                         _%rest5021950575%_
                                         _%hd5020950544%_
                                         _%hd5020650534%_
                                         _%hd5020050514%_))))))
                        (_%loop5021450556%_ _%target5021150550%_ '())))))
              (if (gx#stx-pair? _%__stx9126891269%_)
                  (let ((_%e5019650500%_ (gx#syntax-e _%__stx9126891269%_)))
                    (let ((_%tl5019850507%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5019650500%_)))
                          (_%hd5019750504%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5019650500%_))))
                      (if (gx#stx-pair? _%tl5019850507%_)
                          (let ((_%e5019950510%_
                                 (gx#syntax-e _%tl5019850507%_)))
                            (let ((_%tl5020150517%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5019950510%_)))
                                  (_%hd5020050514%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5019950510%_))))
                              (if (gx#stx-pair? _%tl5020150517%_)
                                  (let ((_%e5020250520%_
                                         (gx#syntax-e _%tl5020150517%_)))
                                    (let ((_%tl5020450527%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5020250520%_)))
                                          (_%hd5020350524%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5020250520%_))))
                                      (if (gx#identifier? _%hd5020350524%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g97717_|
                                               _%hd5020350524%_)
                                              (if (gx#stx-pair?
                                                   _%tl5020450527%_)
                                                  (let ((_%e5020550530%_
                                                         (gx#syntax-e
                                                          _%tl5020450527%_)))
                                                    (let ((_%tl5020750537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5020550530%_)))
                                                          (_%hd5020650534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5020550530%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5020750537%_)
                                                          (let ((_%e5020850540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5020750537%_)))
                    (let ((_%tl5021050547%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5020850540%_)))
                          (_%hd5020950544%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5020850540%_))))
                      (if (gx#stx-pair/null? _%tl5021050547%_)
                          (let ((_%__splice9127391274%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5021050547%_
                                  '0)))
                            (let ((_%tl5021350553%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9127391274%_ '1)))
                                  (_%target5021150550%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9127391274%_
                                      '0))))
                              (if (gx#stx-null? _%tl5021350553%_)
                                  (_%__match9132591326%_
                                   _%e5019650500%_
                                   _%hd5019750504%_
                                   _%tl5019850507%_
                                   _%e5019950510%_
                                   _%hd5020050514%_
                                   _%tl5020150517%_
                                   _%e5020250520%_
                                   _%hd5020350524%_
                                   _%tl5020450527%_
                                   _%e5020550530%_
                                   _%hd5020650534%_
                                   _%tl5020750537%_
                                   _%e5020850540%_
                                   _%hd5020950544%_
                                   _%tl5021050547%_
                                   _%__splice9127391274%_
                                   _%target5021150550%_
                                   _%tl5021350553%_)
                                  (if (gx#stx-pair/null? _%tl5020450527%_)
                                      (let ((_%__splice9128191282%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5020450527%_
                                              '0)))
                                        (let ((_%tl5026250314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9128191282%_
                                                  '1)))
                                              (_%target5026050311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9128191282%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5026250314%_)
                                              (_%__match9139391394%_
                                               _%e5019650500%_
                                               _%hd5019750504%_
                                               _%tl5019850507%_
                                               _%e5019950510%_
                                               _%hd5020050514%_
                                               _%tl5020150517%_
                                               _%e5020250520%_
                                               _%hd5020350524%_
                                               _%tl5020450527%_
                                               _%__splice9128191282%_
                                               _%target5026050311%_
                                               _%tl5026250314%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5019050274%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5019050274%_))))))
                          (if (gx#stx-pair/null? _%tl5020450527%_)
                              (let ((_%__splice9128191282%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5020450527%_
                                      '0)))
                                (let ((_%tl5026250314%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9128191282%_
                                          '1)))
                                      (_%target5026050311%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9128191282%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5026250314%_)
                                      (_%__match9139391394%_
                                       _%e5019650500%_
                                       _%hd5019750504%_
                                       _%tl5019850507%_
                                       _%e5019950510%_
                                       _%hd5020050514%_
                                       _%tl5020150517%_
                                       _%e5020250520%_
                                       _%hd5020350524%_
                                       _%tl5020450527%_
                                       _%__splice9128191282%_
                                       _%target5026050311%_
                                       _%tl5026250314%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5019050274%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5019050274%_))))))
                  (if (gx#stx-pair/null? _%tl5020450527%_)
                      (let ((_%__splice9128191282%_
                             (gx#syntax-split-splice->vector
                              _%tl5020450527%_
                              '0)))
                        (let ((_%tl5026250314%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9128191282%_ '1)))
                              (_%target5026050311%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9128191282%_ '0))))
                          (if (gx#stx-null? _%tl5026250314%_)
                              (_%__match9139391394%_
                               _%e5019650500%_
                               _%hd5019750504%_
                               _%tl5019850507%_
                               _%e5019950510%_
                               _%hd5020050514%_
                               _%tl5020150517%_
                               _%e5020250520%_
                               _%hd5020350524%_
                               _%tl5020450527%_
                               _%__splice9128191282%_
                               _%target5026050311%_
                               _%tl5026250314%_)
                              (let ()
                                (declare (not safe))
                                (_%g5019050274%_)))))
                      (let () (declare (not safe)) (_%g5019050274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5020450527%_)
                                                      (let ((_%__splice9128191282%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5020450527%_
                                                              '0)))
                                                        (let ((_%tl5026250314%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9128191282%_ '1)))
                      (_%target5026050311%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9128191282%_ '0))))
                  (if (gx#stx-null? _%tl5026250314%_)
                      (_%__match9139391394%_
                       _%e5019650500%_
                       _%hd5019750504%_
                       _%tl5019850507%_
                       _%e5019950510%_
                       _%hd5020050514%_
                       _%tl5020150517%_
                       _%e5020250520%_
                       _%hd5020350524%_
                       _%tl5020450527%_
                       _%__splice9128191282%_
                       _%target5026050311%_
                       _%tl5026250314%_)
                      (let () (declare (not safe)) (_%g5019050274%_)))))
              (let () (declare (not safe)) (_%g5019050274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g97718_|
                                                   _%hd5020350524%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5020450527%_)
                                                      (let ((_%e5023350408%_
                                                             (gx#syntax-e
                                                              _%tl5020450527%_)))
                                                        (let ((_%tl5023550415%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5023350408%_)))
                      (_%hd5023450412%_
                       (let () (declare (not safe)) (##car _%e5023350408%_))))
                  (if (gx#stx-pair? _%tl5023550415%_)
                      (let ((_%e5023650418%_ (gx#syntax-e _%tl5023550415%_)))
                        (let ((_%tl5023850425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5023650418%_)))
                              (_%hd5023750422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5023650418%_))))
                          (if (gx#stx-pair/null? _%tl5023850425%_)
                              (let ((_%__splice9127791278%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5023850425%_
                                      '0)))
                                (let ((_%tl5024150431%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9127791278%_
                                          '1)))
                                      (_%target5023950428%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9127791278%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5024150431%_)
                                      (_%__match9136791368%_
                                       _%e5019650500%_
                                       _%hd5019750504%_
                                       _%tl5019850507%_
                                       _%e5019950510%_
                                       _%hd5020050514%_
                                       _%tl5020150517%_
                                       _%e5020250520%_
                                       _%hd5020350524%_
                                       _%tl5020450527%_
                                       _%e5023350408%_
                                       _%hd5023450412%_
                                       _%tl5023550415%_
                                       _%e5023650418%_
                                       _%hd5023750422%_
                                       _%tl5023850425%_
                                       _%__splice9127791278%_
                                       _%target5023950428%_
                                       _%tl5024150431%_)
                                      (if (gx#stx-pair/null? _%tl5020450527%_)
                                          (let ((_%__splice9128191282%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5020450527%_
                                                  '0)))
                                            (let ((_%tl5026250314%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9128191282%_
                                                      '1)))
                                                  (_%target5026050311%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9128191282%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5026250314%_)
                                                  (_%__match9139391394%_
                                                   _%e5019650500%_
                                                   _%hd5019750504%_
                                                   _%tl5019850507%_
                                                   _%e5019950510%_
                                                   _%hd5020050514%_
                                                   _%tl5020150517%_
                                                   _%e5020250520%_
                                                   _%hd5020350524%_
                                                   _%tl5020450527%_
                                                   _%__splice9128191282%_
                                                   _%target5026050311%_
                                                   _%tl5026250314%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5019050274%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5019050274%_))))))
                              (if (gx#stx-pair/null? _%tl5020450527%_)
                                  (let ((_%__splice9128191282%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5020450527%_
                                          '0)))
                                    (let ((_%tl5026250314%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9128191282%_
                                              '1)))
                                          (_%target5026050311%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9128191282%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5026250314%_)
                                          (_%__match9139391394%_
                                           _%e5019650500%_
                                           _%hd5019750504%_
                                           _%tl5019850507%_
                                           _%e5019950510%_
                                           _%hd5020050514%_
                                           _%tl5020150517%_
                                           _%e5020250520%_
                                           _%hd5020350524%_
                                           _%tl5020450527%_
                                           _%__splice9128191282%_
                                           _%target5026050311%_
                                           _%tl5026250314%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5019050274%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5019050274%_))))))
                      (if (gx#stx-pair/null? _%tl5020450527%_)
                          (let ((_%__splice9128191282%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5020450527%_
                                  '0)))
                            (let ((_%tl5026250314%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9128191282%_ '1)))
                                  (_%target5026050311%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9128191282%_
                                      '0))))
                              (if (gx#stx-null? _%tl5026250314%_)
                                  (_%__match9139391394%_
                                   _%e5019650500%_
                                   _%hd5019750504%_
                                   _%tl5019850507%_
                                   _%e5019950510%_
                                   _%hd5020050514%_
                                   _%tl5020150517%_
                                   _%e5020250520%_
                                   _%hd5020350524%_
                                   _%tl5020450527%_
                                   _%__splice9128191282%_
                                   _%target5026050311%_
                                   _%tl5026250314%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5019050274%_)))))
                          (let () (declare (not safe)) (_%g5019050274%_))))))
              (if (gx#stx-pair/null? _%tl5020450527%_)
                  (let ((_%__splice9128191282%_
                         (gx#syntax-split-splice->vector _%tl5020450527%_ '0)))
                    (let ((_%tl5026250314%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9128191282%_ '1)))
                          (_%target5026050311%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9128191282%_ '0))))
                      (if (gx#stx-null? _%tl5026250314%_)
                          (_%__match9139391394%_
                           _%e5019650500%_
                           _%hd5019750504%_
                           _%tl5019850507%_
                           _%e5019950510%_
                           _%hd5020050514%_
                           _%tl5020150517%_
                           _%e5020250520%_
                           _%hd5020350524%_
                           _%tl5020450527%_
                           _%__splice9128191282%_
                           _%target5026050311%_
                           _%tl5026250314%_)
                          (let () (declare (not safe)) (_%g5019050274%_)))))
                  (let () (declare (not safe)) (_%g5019050274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5020450527%_)
                                                      (let ((_%__splice9128191282%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5020450527%_
                                                              '0)))
                                                        (let ((_%tl5026250314%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9128191282%_ '1)))
                      (_%target5026050311%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9128191282%_ '0))))
                  (if (gx#stx-null? _%tl5026250314%_)
                      (_%__match9139391394%_
                       _%e5019650500%_
                       _%hd5019750504%_
                       _%tl5019850507%_
                       _%e5019950510%_
                       _%hd5020050514%_
                       _%tl5020150517%_
                       _%e5020250520%_
                       _%hd5020350524%_
                       _%tl5020450527%_
                       _%__splice9128191282%_
                       _%target5026050311%_
                       _%tl5026250314%_)
                      (let () (declare (not safe)) (_%g5019050274%_)))))
              (let () (declare (not safe)) (_%g5019050274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5020450527%_)
                                              (let ((_%__splice9128191282%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5020450527%_
                                                      '0)))
                                                (let ((_%tl5026250314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9128191282%_
                                                          '1)))
                                                      (_%target5026050311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9128191282%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5026250314%_)
                                                      (_%__match9139391394%_
                                                       _%e5019650500%_
                                                       _%hd5019750504%_
                                                       _%tl5019850507%_
                                                       _%e5019950510%_
                                                       _%hd5020050514%_
                                                       _%tl5020150517%_
                                                       _%e5020250520%_
                                                       _%hd5020350524%_
                                                       _%tl5020450527%_
                                                       _%__splice9128191282%_
                                                       _%target5026050311%_
                                                       _%tl5026250314%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5019050274%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5019050274%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5019050274%_)))))
                          (let () (declare (not safe)) (_%g5019050274%_)))))
                  (let () (declare (not safe)) (_%g5019050274%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx50622%_)
        (let* ((_%__stx9139691397%_ _%$stx50622%_)
               (_%g5062750663%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9139691397%_))))
          (let ((_%__kont9139991400%_
                 (lambda (_%g5062950781%_ _%g5063050783%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5063050783%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5062950781%_
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
                           (cons _%g5063050783%_
                                 (cons _%g5062950781%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9140191402%_
                 (lambda (_%g5064050720%_ _%g5064150722%_ _%g5064250723%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5064250723%_
                                           (cons _%g5064150722%_ '())))
                               (cons _%g5064050720%_ '()))))))
            (if (gx#stx-pair? _%__stx9139691397%_)
                (let ((_%e5063150751%_ (gx#syntax-e _%__stx9139691397%_)))
                  (let ((_%tl5063350758%_
                         (let () (declare (not safe)) (##cdr _%e5063150751%_)))
                        (_%hd5063250755%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5063150751%_))))
                    (if (gx#stx-pair? _%tl5063350758%_)
                        (let ((_%e5063450761%_ (gx#syntax-e _%tl5063350758%_)))
                          (let ((_%tl5063650768%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5063450761%_)))
                                (_%hd5063550765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5063450761%_))))
                            (if (gx#stx-pair? _%tl5063650768%_)
                                (let ((_%e5063750771%_
                                       (gx#syntax-e _%tl5063650768%_)))
                                  (let ((_%tl5063950778%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5063750771%_)))
                                        (_%hd5063850775%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5063750771%_))))
                                    (if (gx#stx-null? _%tl5063950778%_)
                                        (_%__kont9139991400%_
                                         _%hd5063850775%_
                                         _%hd5063550765%_)
                                        (if (gx#stx-pair? _%tl5063950778%_)
                                            (let ((_%e5065250700%_
                                                   (gx#syntax-e
                                                    _%tl5063950778%_)))
                                              (let ((_%tl5065450707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5065250700%_)))
                                                    (_%hd5065350704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5065250700%_))))
                                                (if (gx#identifier?
                                                     _%hd5065350704%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g97719_|
                                                         _%hd5065350704%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5065450707%_)
                                                            (let ((_%e5065550710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5065450707%_)))
                      (let ((_%tl5065750717%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5065550710%_)))
                            (_%hd5065650714%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5065550710%_))))
                        (if (gx#stx-null? _%tl5065750717%_)
                            (_%__kont9140191402%_
                             _%hd5065650714%_
                             _%hd5063850775%_
                             _%hd5063550765%_)
                            (let () (declare (not safe)) (_%g5062750663%_)))))
                    (let () (declare (not safe)) (_%g5062750663%_)))
                (let () (declare (not safe)) (_%g5062750663%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5062750663%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5062750663%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5062750663%_)))))
                        (let () (declare (not safe)) (_%g5062750663%_)))))
                (let () (declare (not safe)) (_%g5062750663%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx50802%_)
        (let ((_%g5080550812%_
               (lambda (_%g5080650808%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5080650808%_))))
          (_%g5080550812%_ _%$stx50802%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx50816%_)
        (let ((_%g5081950826%_
               (lambda (_%g5082050822%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5082050822%_))))
          (_%g5081950826%_ _%$stx50816%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx50830%_)
        (let* ((_%g5083450848%_
                (lambda (_%g5083550844%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5083550844%_)))
               (_%g5083350889%_
                (lambda (_%g5083550852%_)
                  (if (gx#stx-pair? _%g5083550852%_)
                      (let ((_%e5083750855%_ (gx#syntax-e _%g5083550852%_)))
                        (let ((_%hd5083850859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5083750855%_)))
                              (_%tl5083950862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5083750855%_))))
                          (if (gx#stx-pair? _%tl5083950862%_)
                              (let ((_%e5084050865%_
                                     (gx#syntax-e _%tl5083950862%_)))
                                (let ((_%hd5084150869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5084050865%_)))
                                      (_%tl5084250872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5084050865%_))))
                                  (if (gx#stx-null? _%tl5084250872%_)
                                      ((lambda (_%g5083650875%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g5083650875%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g5083650875%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5084150869%_)
                                      (_%g5083450848%_ _%g5083550852%_))))
                              (_%g5083450848%_ _%g5083550852%_))))
                      (_%g5083450848%_ _%g5083550852%_)))))
          (_%g5083350889%_ _%$stx50830%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx50893%_)
        (let* ((_%g5089650919%_
                (lambda (_%g5089750915%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5089750915%_)))
               (_%g5089551043%_
                (lambda (_%g5089750923%_)
                  (if (gx#stx-pair? _%g5089750923%_)
                      (let ((_%e5090250926%_ (gx#syntax-e _%g5089750923%_)))
                        (let ((_%hd5090350930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5090250926%_)))
                              (_%tl5090450933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5090250926%_))))
                          (if (gx#stx-pair? _%tl5090450933%_)
                              (let ((_%e5090550936%_
                                     (gx#syntax-e _%tl5090450933%_)))
                                (let ((_%hd5090650940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5090550936%_)))
                                      (_%tl5090750943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5090550936%_))))
                                  (if (gx#stx-pair? _%tl5090750943%_)
                                      (let ((_%e5090850946%_
                                             (gx#syntax-e _%tl5090750943%_)))
                                        (let ((_%hd5090950950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5090850946%_)))
                                              (_%tl5091050953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5090850946%_))))
                                          (if (gx#stx-pair? _%tl5091050953%_)
                                              (let ((_%e5091150956%_
                                                     (gx#syntax-e
                                                      _%tl5091050953%_)))
                                                (let ((_%hd5091250960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5091150956%_)))
                                                      (_%tl5091350963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5091150956%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5091350963%_)
                                                      ((lambda (_%g5089850966%_
                                                                _%g5089950968%_
                                                                _%g5090050969%_
                                                                _%g5090150970%_)
                                                         (let* ((_%g5099050998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5099150994%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5099150994%_)))
                        (_%g5098951017%_
                         (lambda (_%g5099151002%_)
                           ((lambda (_%g5099251005%_)
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
                                (cons _%g5099251005%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5089950968%_ '()))
                                      (cons 'value:
                                            (cons _%g5089850966%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5099151002%_))))
                   (_%g5098951017%_
                    (let ((_%$e51029%_
                           (let ((_%$e51021%_ (gx#stx-source _%g5090050969%_)))
                             (if _%$e51021%_
                                 _%$e51021%_
                                 (let ((_%$e51025%_
                                        (gx#stx-source _%stx50893%_)))
                                   (if _%$e51025%_
                                       _%$e51025%_
                                       (gx#stx-source _%g5090150970%_)))))))
                      (if _%$e51029%_
                          ((lambda (_%locat51033%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5103551037%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat51033%_
                                   '#t
                                   _%g5103551037%_)))))
                           _%$e51029%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5091250960%_
               _%hd5090950950%_
               _%hd5090650940%_
               _%hd5090350930%_)
              (_%g5089650919%_ _%g5089750923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5089650919%_
                                               _%g5089750923%_))))
                                      (_%g5089650919%_ _%g5089750923%_))))
                              (_%g5089650919%_ _%g5089750923%_))))
                      (_%g5089650919%_ _%g5089750923%_)))))
          (_%g5089551043%_ _%stx50893%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx51047%_)
        (let* ((_%g5105051065%_
                (lambda (_%g5105151061%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5105151061%_)))
               (_%g5104951161%_
                (lambda (_%g5105151069%_)
                  (if (gx#stx-pair? _%g5105151069%_)
                      (let ((_%e5105451072%_ (gx#syntax-e _%g5105151069%_)))
                        (let ((_%hd5105551076%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5105451072%_)))
                              (_%tl5105651079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5105451072%_))))
                          (if (gx#stx-pair? _%tl5105651079%_)
                              (let ((_%e5105751082%_
                                     (gx#syntax-e _%tl5105651079%_)))
                                (let ((_%hd5105851086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5105751082%_)))
                                      (_%tl5105951089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5105751082%_))))
                                  (if (gx#stx-null? _%tl5105951089%_)
                                      ((lambda (_%g5105251092%_
                                                _%g5105351094%_)
                                         (let* ((_%g5110851116%_
                                                 (lambda (_%g5110951112%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5110951112%_)))
                                                (_%g5110751135%_
                                                 (lambda (_%g5110951120%_)
                                                   ((lambda (_%g5111051123%_)
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
                                                        (cons _%g5111051123%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g5105251092%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5110951120%_))))
                                           (_%g5110751135%_
                                            (let ((_%$e51147%_
                                                   (let ((_%$e51139%_
                                                          (gx#stx-source
                                                           _%g5105251092%_)))
                                                     (if _%$e51139%_
                                                         _%$e51139%_
                                                         (let ((_%$e51143%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx51047%_)))
                   (if _%$e51143%_
                       _%$e51143%_
                       (gx#stx-source _%g5105351094%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e51147%_
                                                  ((lambda (_%locat51151%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5115351155%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat51151%_
                                                           '#t
                                                           _%g5115351155%_)))))
                                                   _%$e51147%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5105851086%_
                                       _%hd5105551076%_)
                                      (_%g5105051065%_ _%g5105151069%_))))
                              (_%g5105051065%_ _%g5105151069%_))))
                      (_%g5105051065%_ _%g5105151069%_)))))
          (_%g5104951161%_ _%stx51047%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx51165%_)
        (let* ((_%g5116951183%_
                (lambda (_%g5117051179%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5117051179%_)))
               (_%g5116851224%_
                (lambda (_%g5117051187%_)
                  (if (gx#stx-pair? _%g5117051187%_)
                      (let ((_%e5117251190%_ (gx#syntax-e _%g5117051187%_)))
                        (let ((_%hd5117351194%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5117251190%_)))
                              (_%tl5117451197%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5117251190%_))))
                          (if (gx#stx-pair? _%tl5117451197%_)
                              (let ((_%e5117551200%_
                                     (gx#syntax-e _%tl5117451197%_)))
                                (let ((_%hd5117651204%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5117551200%_)))
                                      (_%tl5117751207%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5117551200%_))))
                                  (if (gx#stx-null? _%tl5117751207%_)
                                      ((lambda (_%g5117151210%_)
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
                         (cons _%g5117151210%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5117651204%_)
                                      (_%g5116951183%_ _%g5117051187%_))))
                              (_%g5116951183%_ _%g5117051187%_))))
                      (_%g5116951183%_ _%g5117051187%_)))))
          (_%g5116851224%_ _%$stx51165%_))))))
