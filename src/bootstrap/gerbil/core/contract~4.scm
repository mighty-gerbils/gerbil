(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g97711_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g97712_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g97713_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx49628%_)
        (let* ((_%g4963149649%_
                (lambda (_%g4963249645%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4963249645%_)))
               (_%g4963049844%_
                (lambda (_%g4963249653%_)
                  (if (gx#stx-pair? _%g4963249653%_)
                      (let ((_%e4963549656%_ (gx#syntax-e _%g4963249653%_)))
                        (let ((_%hd4963649660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4963549656%_)))
                              (_%tl4963749663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4963549656%_))))
                          (if (gx#stx-pair? _%tl4963749663%_)
                              (let ((_%e4963849666%_
                                     (gx#syntax-e _%tl4963749663%_)))
                                (let ((_%hd4963949670%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4963849666%_)))
                                      (_%tl4964049673%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4963849666%_))))
                                  (if (gx#stx-pair? _%tl4964049673%_)
                                      (let ((_%e4964149676%_
                                             (gx#syntax-e _%tl4964049673%_)))
                                        (let ((_%hd4964249680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4964149676%_)))
                                              (_%tl4964349683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4964149676%_))))
                                          (if (gx#stx-null? _%tl4964349683%_)
                                              ((lambda (_%g4963349686%_
                                                        _%g4963449688%_)
                                                 (if (gx#identifier?
                                                      _%g4963349686%_)
                                                     (let ((_%meta49705%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49628%_
                                                               _%g4963349686%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49705%_))
                                                           (let* ((_%g4971049725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4971149721%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4971149721%_)))
                          (_%g4970949772%_
                           (lambda (_%g4971149729%_)
                             (if (gx#stx-pair? _%g4971149729%_)
                                 (let ((_%e4971449732%_
                                        (gx#syntax-e _%g4971149729%_)))
                                   (let ((_%hd4971549736%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4971449732%_)))
                                         (_%tl4971649739%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4971449732%_))))
                                     (if (gx#stx-pair? _%tl4971649739%_)
                                         (let ((_%e4971749742%_
                                                (gx#syntax-e
                                                 _%tl4971649739%_)))
                                           (let ((_%hd4971849746%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4971749742%_)))
                                                 (_%tl4971949749%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4971749742%_))))
                                             (if (gx#stx-null?
                                                  _%tl4971949749%_)
                                                 ((lambda (_%g4971249752%_
                                                           _%g4971349754%_)
                                                    (if (let ((__tmp97709
                                                               (let ((__obj97538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49705%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97538
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97538
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj97538 'id)))))
                  (declare (not safe))
                  (##memq __tmp97709 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4971349754%_ '()))
                            (cons _%g4963449688%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4971349754%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4963449688%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g4971249752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4963449688%_
                                                (cons (cons _%g4971249752%_
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
                                                  _%hd4971849746%_
                                                  _%hd4971549736%_)
                                                 (_%g4971049725%_
                                                  _%g4971149729%_))))
                                         (_%g4971049725%_ _%g4971149729%_))))
                                 (_%g4971049725%_ _%g4971149729%_)))))
                     (_%g4970949772%_
                      (list (let ((__obj97539 _%meta49705%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97539
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97539
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97539
                                   'type-descriptor)))
                            (let ((__obj97540 _%meta49705%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97540
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97540
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97540
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49705%_))
                       (let* ((_%g4977849793%_
                               (lambda (_%g4977949789%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4977949789%_)))
                              (_%g4977749838%_
                               (lambda (_%g4977949797%_)
                                 (if (gx#stx-pair? _%g4977949797%_)
                                     (let ((_%e4978249800%_
                                            (gx#syntax-e _%g4977949797%_)))
                                       (let ((_%hd4978349804%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4978249800%_)))
                                             (_%tl4978449807%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4978249800%_))))
                                         (if (gx#stx-pair? _%tl4978449807%_)
                                             (let ((_%e4978549810%_
                                                    (gx#syntax-e
                                                     _%tl4978449807%_)))
                                               (let ((_%hd4978649814%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4978549810%_)))
                                                     (_%tl4978749817%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4978549810%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4978749817%_)
                                                     ((lambda (_%g4978049820%_
                                                               _%g4978149822%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4978149822%_ '()))
                            (cons (cons _%g4978049820%_
                                        (cons _%g4963449688%_ '()))
                                  '()))))
              _%hd4978649814%_
              _%hd4978349804%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4977849793%_
                                                      _%g4977949797%_))))
                                             (_%g4977849793%_
                                              _%g4977949797%_))))
                                     (_%g4977849793%_ _%g4977949797%_)))))
                         (_%g4977749838%_
                          (list (let ((__obj97537 _%meta49705%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj97537
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj97537
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj97537
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49628%_
                                   _%g4963349686%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49628%_
                        _%g4963349686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4963149649%_
                                                      _%g4963249653%_)))
                                               _%hd4964249680%_
                                               _%hd4963949670%_)
                                              (_%g4963149649%_
                                               _%g4963249653%_))))
                                      (_%g4963149649%_ _%g4963249653%_))))
                              (_%g4963149649%_ _%g4963249653%_))))
                      (_%g4963149649%_ _%g4963249653%_)))))
          (_%g4963049844%_ _%stx49628%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx49848%_)
        (let* ((_%g4985149869%_
                (lambda (_%g4985249865%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4985249865%_)))
               (_%g4985050063%_
                (lambda (_%g4985249873%_)
                  (if (gx#stx-pair? _%g4985249873%_)
                      (let ((_%e4985549876%_ (gx#syntax-e _%g4985249873%_)))
                        (let ((_%hd4985649880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4985549876%_)))
                              (_%tl4985749883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4985549876%_))))
                          (if (gx#stx-pair? _%tl4985749883%_)
                              (let ((_%e4985849886%_
                                     (gx#syntax-e _%tl4985749883%_)))
                                (let ((_%hd4985949890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4985849886%_)))
                                      (_%tl4986049893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4985849886%_))))
                                  (if (gx#stx-pair? _%tl4986049893%_)
                                      (let ((_%e4986149896%_
                                             (gx#syntax-e _%tl4986049893%_)))
                                        (let ((_%hd4986249900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4986149896%_)))
                                              (_%tl4986349903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4986149896%_))))
                                          (if (gx#stx-null? _%tl4986349903%_)
                                              ((lambda (_%g4985349906%_
                                                        _%g4985449908%_)
                                                 (if (gx#identifier?
                                                      _%g4985349906%_)
                                                     (let ((_%meta49924%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49848%_
                                                               _%g4985349906%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49924%_))
                                                           (let* ((_%g4992949944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4993049940%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4993049940%_)))
                          (_%g4992849991%_
                           (lambda (_%g4993049948%_)
                             (if (gx#stx-pair? _%g4993049948%_)
                                 (let ((_%e4993349951%_
                                        (gx#syntax-e _%g4993049948%_)))
                                   (let ((_%hd4993449955%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4993349951%_)))
                                         (_%tl4993549958%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4993349951%_))))
                                     (if (gx#stx-pair? _%tl4993549958%_)
                                         (let ((_%e4993649961%_
                                                (gx#syntax-e
                                                 _%tl4993549958%_)))
                                           (let ((_%hd4993749965%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4993649961%_)))
                                                 (_%tl4993849968%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4993649961%_))))
                                             (if (gx#stx-null?
                                                  _%tl4993849968%_)
                                                 ((lambda (_%g4993149971%_
                                                           _%g4993249973%_)
                                                    (if (let ((__tmp97710
                                                               (let ((__obj97542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49924%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97542
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97542
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj97542 'id)))))
                  (declare (not safe))
                  (##memq __tmp97710 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4993249973%_ '()))
                            (cons _%g4985449908%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4993249973%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4985449908%_ '()))
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
                                    (cons (cons _%g4993149971%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4985449908%_
                                                (cons (cons _%g4993149971%_
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
                                                  _%hd4993749965%_
                                                  _%hd4993449955%_)
                                                 (_%g4992949944%_
                                                  _%g4993049948%_))))
                                         (_%g4992949944%_ _%g4993049948%_))))
                                 (_%g4992949944%_ _%g4993049948%_)))))
                     (_%g4992849991%_
                      (list (let ((__obj97543 _%meta49924%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97543
                                     'gerbil.core#class-type-info::t))
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
                            (let ((__obj97544 _%meta49924%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97544
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97544
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97544
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49924%_))
                       (let* ((_%g4999750012%_
                               (lambda (_%g4999850008%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4999850008%_)))
                              (_%g4999650057%_
                               (lambda (_%g4999850016%_)
                                 (if (gx#stx-pair? _%g4999850016%_)
                                     (let ((_%e5000150019%_
                                            (gx#syntax-e _%g4999850016%_)))
                                       (let ((_%hd5000250023%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5000150019%_)))
                                             (_%tl5000350026%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5000150019%_))))
                                         (if (gx#stx-pair? _%tl5000350026%_)
                                             (let ((_%e5000450029%_
                                                    (gx#syntax-e
                                                     _%tl5000350026%_)))
                                               (let ((_%hd5000550033%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5000450029%_)))
                                                     (_%tl5000650036%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5000450029%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5000650036%_)
                                                     ((lambda (_%g4999950039%_
                                                               _%g5000050041%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5000050041%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4985449908%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g4999950039%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd5000550033%_
              _%hd5000250023%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4999750012%_
                                                      _%g4999850016%_))))
                                             (_%g4999750012%_
                                              _%g4999850016%_))))
                                     (_%g4999750012%_ _%g4999850016%_)))))
                         (_%g4999650057%_
                          (list (let ((__obj97541 _%meta49924%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj97541
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj97541
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj97541
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49848%_
                                   _%g4985349906%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49848%_
                        _%g4985349906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4985149869%_
                                                      _%g4985249873%_)))
                                               _%hd4986249900%_
                                               _%hd4985949890%_)
                                              (_%g4985149869%_
                                               _%g4985249873%_))))
                                      (_%g4985149869%_ _%g4985249873%_))))
                              (_%g4985149869%_ _%g4985249873%_))))
                      (_%g4985149869%_ _%g4985249873%_)))))
          (_%g4985050063%_ _%stx49848%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx50067%_)
        (let* ((_%g5007050088%_
                (lambda (_%g5007150084%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5007150084%_)))
               (_%g5006950174%_
                (lambda (_%g5007150092%_)
                  (if (gx#stx-pair? _%g5007150092%_)
                      (let ((_%e5007450095%_ (gx#syntax-e _%g5007150092%_)))
                        (let ((_%hd5007550099%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5007450095%_)))
                              (_%tl5007650102%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5007450095%_))))
                          (if (gx#stx-pair? _%tl5007650102%_)
                              (let ((_%e5007750105%_
                                     (gx#syntax-e _%tl5007650102%_)))
                                (let ((_%hd5007850109%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5007750105%_)))
                                      (_%tl5007950112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5007750105%_))))
                                  (if (gx#stx-pair? _%tl5007950112%_)
                                      (let ((_%e5008050115%_
                                             (gx#syntax-e _%tl5007950112%_)))
                                        (let ((_%hd5008150119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5008050115%_)))
                                              (_%tl5008250122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5008050115%_))))
                                          (if (gx#stx-null? _%tl5008250122%_)
                                              ((lambda (_%g5007250125%_
                                                        _%g5007350127%_)
                                                 (if (gx#identifier?
                                                      _%g5007250125%_)
                                                     (let* ((_%g5014350151%_
                                                             (lambda (_%g5014450147%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g5014450147%_)))
                                                            (_%g5014250170%_
                                                             (lambda (_%g5014450155%_)
                                                               ((lambda (_%g5014550158%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g5014550158%_ '()))
                                      (cons _%g5007350127%_ '()))))
                        _%g5014450155%_))))
               (_%g5014250170%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx50067%_
                   _%g5007250125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5007050088%_
                                                      _%g5007150092%_)))
                                               _%hd5008150119%_
                                               _%hd5007850109%_)
                                              (_%g5007050088%_
                                               _%g5007150092%_))))
                                      (_%g5007050088%_ _%g5007150092%_))))
                              (_%g5007050088%_ _%g5007150092%_))))
                      (_%g5007050088%_ _%g5007150092%_)))))
          (_%g5006950174%_ _%stx50067%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx50178%_)
        (let* ((_%__stx9126291263%_ _%$stx50178%_)
               (_%g5018450268%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9126291263%_))))
          (let ((_%__kont9126591266%_
                 (lambda (_%g5018650572%_
                          _%g5018750574%_
                          _%g5018850575%_
                          _%g5018950576%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5018950576%_
                                           (cons _%g5018750574%_
                                                 (foldr (lambda (_%g5060050603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5060150606%_)
                  (cons _%g5060050603%_ _%g5060150606%_))
                '()
                _%g5018650572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5018850575%_ '())))))
                (_%__kont9126991270%_
                 (lambda (_%g5021450450%_
                          _%g5021550452%_
                          _%g5021650453%_
                          _%g5021750454%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5021750454%_
                                           (cons _%g5021550452%_
                                                 (foldr (lambda (_%g5047850481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5047950484%_)
                  (cons _%g5047850481%_ _%g5047950484%_))
                '()
                _%g5021450450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5021650453%_ '())))))
                (_%__kont9127391274%_
                 (lambda (_%g5024250333%_ _%g5024350335%_ _%g5024450336%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5024450336%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5024350335%_
                                                       (foldr (lambda (_%g5035650359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5035750362%_)
                        (cons _%g5035650359%_ _%g5035750362%_))
                      '()
                      _%g5024250333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9138791388%_
                    (lambda (_%e5024550275%_
                             _%hd5024650279%_
                             _%tl5024750282%_
                             _%e5024850285%_
                             _%hd5024950289%_
                             _%tl5025050292%_
                             _%e5025150295%_
                             _%hd5025250299%_
                             _%tl5025350302%_
                             _%__splice9127591276%_
                             _%target5025450305%_
                             _%tl5025650308%_)
                      (letrec ((_%loop5025750311%_
                                (lambda (_%hd5025550315%_ _%rest5026150318%_)
                                  (if (gx#stx-pair? _%hd5025550315%_)
                                      (let ((_%e5025850320%_
                                             (gx#syntax-e _%hd5025550315%_)))
                                        (let ((_%lp-tl5026050327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5025850320%_)))
                                              (_%lp-hd5025950324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5025850320%_))))
                                          (_%loop5025750311%_
                                           _%lp-tl5026050327%_
                                           (cons _%lp-hd5025950324%_
                                                 _%rest5026150318%_))))
                                      (let ((_%rest5026250330%_
                                             (reverse _%rest5026150318%_)))
                                        (_%__kont9127391274%_
                                         _%rest5026250330%_
                                         _%hd5025250299%_
                                         _%hd5024950289%_))))))
                        (_%loop5025750311%_ _%target5025450305%_ '()))))
                   (_%__match9136191362%_
                    (lambda (_%e5021850372%_
                             _%hd5021950376%_
                             _%tl5022050379%_
                             _%e5022150382%_
                             _%hd5022250386%_
                             _%tl5022350389%_
                             _%e5022450392%_
                             _%hd5022550396%_
                             _%tl5022650399%_
                             _%e5022750402%_
                             _%hd5022850406%_
                             _%tl5022950409%_
                             _%e5023050412%_
                             _%hd5023150416%_
                             _%tl5023250419%_
                             _%__splice9127191272%_
                             _%target5023350422%_
                             _%tl5023550425%_)
                      (letrec ((_%loop5023650428%_
                                (lambda (_%hd5023450432%_ _%rest5024050435%_)
                                  (if (gx#stx-pair? _%hd5023450432%_)
                                      (let ((_%e5023750437%_
                                             (gx#syntax-e _%hd5023450432%_)))
                                        (let ((_%lp-tl5023950444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5023750437%_)))
                                              (_%lp-hd5023850441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5023750437%_))))
                                          (_%loop5023650428%_
                                           _%lp-tl5023950444%_
                                           (cons _%lp-hd5023850441%_
                                                 _%rest5024050435%_))))
                                      (let ((_%rest5024150447%_
                                             (reverse _%rest5024050435%_)))
                                        (_%__kont9126991270%_
                                         _%rest5024150447%_
                                         _%hd5023150416%_
                                         _%hd5022850406%_
                                         _%hd5022250386%_))))))
                        (_%loop5023650428%_ _%target5023350422%_ '()))))
                   (_%__match9131991320%_
                    (lambda (_%e5019050494%_
                             _%hd5019150498%_
                             _%tl5019250501%_
                             _%e5019350504%_
                             _%hd5019450508%_
                             _%tl5019550511%_
                             _%e5019650514%_
                             _%hd5019750518%_
                             _%tl5019850521%_
                             _%e5019950524%_
                             _%hd5020050528%_
                             _%tl5020150531%_
                             _%e5020250534%_
                             _%hd5020350538%_
                             _%tl5020450541%_
                             _%__splice9126791268%_
                             _%target5020550544%_
                             _%tl5020750547%_)
                      (letrec ((_%loop5020850550%_
                                (lambda (_%hd5020650554%_ _%rest5021250557%_)
                                  (if (gx#stx-pair? _%hd5020650554%_)
                                      (let ((_%e5020950559%_
                                             (gx#syntax-e _%hd5020650554%_)))
                                        (let ((_%lp-tl5021150566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5020950559%_)))
                                              (_%lp-hd5021050563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5020950559%_))))
                                          (_%loop5020850550%_
                                           _%lp-tl5021150566%_
                                           (cons _%lp-hd5021050563%_
                                                 _%rest5021250557%_))))
                                      (let ((_%rest5021350569%_
                                             (reverse _%rest5021250557%_)))
                                        (_%__kont9126591266%_
                                         _%rest5021350569%_
                                         _%hd5020350538%_
                                         _%hd5020050528%_
                                         _%hd5019450508%_))))))
                        (_%loop5020850550%_ _%target5020550544%_ '())))))
              (if (gx#stx-pair? _%__stx9126291263%_)
                  (let ((_%e5019050494%_ (gx#syntax-e _%__stx9126291263%_)))
                    (let ((_%tl5019250501%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5019050494%_)))
                          (_%hd5019150498%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5019050494%_))))
                      (if (gx#stx-pair? _%tl5019250501%_)
                          (let ((_%e5019350504%_
                                 (gx#syntax-e _%tl5019250501%_)))
                            (let ((_%tl5019550511%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5019350504%_)))
                                  (_%hd5019450508%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5019350504%_))))
                              (if (gx#stx-pair? _%tl5019550511%_)
                                  (let ((_%e5019650514%_
                                         (gx#syntax-e _%tl5019550511%_)))
                                    (let ((_%tl5019850521%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5019650514%_)))
                                          (_%hd5019750518%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5019650514%_))))
                                      (if (gx#identifier? _%hd5019750518%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g97711_|
                                               _%hd5019750518%_)
                                              (if (gx#stx-pair?
                                                   _%tl5019850521%_)
                                                  (let ((_%e5019950524%_
                                                         (gx#syntax-e
                                                          _%tl5019850521%_)))
                                                    (let ((_%tl5020150531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5019950524%_)))
                                                          (_%hd5020050528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5019950524%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5020150531%_)
                                                          (let ((_%e5020250534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5020150531%_)))
                    (let ((_%tl5020450541%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5020250534%_)))
                          (_%hd5020350538%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5020250534%_))))
                      (if (gx#stx-pair/null? _%tl5020450541%_)
                          (let ((_%__splice9126791268%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5020450541%_
                                  '0)))
                            (let ((_%tl5020750547%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9126791268%_ '1)))
                                  (_%target5020550544%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9126791268%_
                                      '0))))
                              (if (gx#stx-null? _%tl5020750547%_)
                                  (_%__match9131991320%_
                                   _%e5019050494%_
                                   _%hd5019150498%_
                                   _%tl5019250501%_
                                   _%e5019350504%_
                                   _%hd5019450508%_
                                   _%tl5019550511%_
                                   _%e5019650514%_
                                   _%hd5019750518%_
                                   _%tl5019850521%_
                                   _%e5019950524%_
                                   _%hd5020050528%_
                                   _%tl5020150531%_
                                   _%e5020250534%_
                                   _%hd5020350538%_
                                   _%tl5020450541%_
                                   _%__splice9126791268%_
                                   _%target5020550544%_
                                   _%tl5020750547%_)
                                  (if (gx#stx-pair/null? _%tl5019850521%_)
                                      (let ((_%__splice9127591276%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5019850521%_
                                              '0)))
                                        (let ((_%tl5025650308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9127591276%_
                                                  '1)))
                                              (_%target5025450305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9127591276%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5025650308%_)
                                              (_%__match9138791388%_
                                               _%e5019050494%_
                                               _%hd5019150498%_
                                               _%tl5019250501%_
                                               _%e5019350504%_
                                               _%hd5019450508%_
                                               _%tl5019550511%_
                                               _%e5019650514%_
                                               _%hd5019750518%_
                                               _%tl5019850521%_
                                               _%__splice9127591276%_
                                               _%target5025450305%_
                                               _%tl5025650308%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5018450268%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5018450268%_))))))
                          (if (gx#stx-pair/null? _%tl5019850521%_)
                              (let ((_%__splice9127591276%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5019850521%_
                                      '0)))
                                (let ((_%tl5025650308%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9127591276%_
                                          '1)))
                                      (_%target5025450305%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9127591276%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5025650308%_)
                                      (_%__match9138791388%_
                                       _%e5019050494%_
                                       _%hd5019150498%_
                                       _%tl5019250501%_
                                       _%e5019350504%_
                                       _%hd5019450508%_
                                       _%tl5019550511%_
                                       _%e5019650514%_
                                       _%hd5019750518%_
                                       _%tl5019850521%_
                                       _%__splice9127591276%_
                                       _%target5025450305%_
                                       _%tl5025650308%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5018450268%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5018450268%_))))))
                  (if (gx#stx-pair/null? _%tl5019850521%_)
                      (let ((_%__splice9127591276%_
                             (gx#syntax-split-splice->vector
                              _%tl5019850521%_
                              '0)))
                        (let ((_%tl5025650308%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9127591276%_ '1)))
                              (_%target5025450305%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9127591276%_ '0))))
                          (if (gx#stx-null? _%tl5025650308%_)
                              (_%__match9138791388%_
                               _%e5019050494%_
                               _%hd5019150498%_
                               _%tl5019250501%_
                               _%e5019350504%_
                               _%hd5019450508%_
                               _%tl5019550511%_
                               _%e5019650514%_
                               _%hd5019750518%_
                               _%tl5019850521%_
                               _%__splice9127591276%_
                               _%target5025450305%_
                               _%tl5025650308%_)
                              (let ()
                                (declare (not safe))
                                (_%g5018450268%_)))))
                      (let () (declare (not safe)) (_%g5018450268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5019850521%_)
                                                      (let ((_%__splice9127591276%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5019850521%_
                                                              '0)))
                                                        (let ((_%tl5025650308%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9127591276%_ '1)))
                      (_%target5025450305%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9127591276%_ '0))))
                  (if (gx#stx-null? _%tl5025650308%_)
                      (_%__match9138791388%_
                       _%e5019050494%_
                       _%hd5019150498%_
                       _%tl5019250501%_
                       _%e5019350504%_
                       _%hd5019450508%_
                       _%tl5019550511%_
                       _%e5019650514%_
                       _%hd5019750518%_
                       _%tl5019850521%_
                       _%__splice9127591276%_
                       _%target5025450305%_
                       _%tl5025650308%_)
                      (let () (declare (not safe)) (_%g5018450268%_)))))
              (let () (declare (not safe)) (_%g5018450268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g97712_|
                                                   _%hd5019750518%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5019850521%_)
                                                      (let ((_%e5022750402%_
                                                             (gx#syntax-e
                                                              _%tl5019850521%_)))
                                                        (let ((_%tl5022950409%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5022750402%_)))
                      (_%hd5022850406%_
                       (let () (declare (not safe)) (##car _%e5022750402%_))))
                  (if (gx#stx-pair? _%tl5022950409%_)
                      (let ((_%e5023050412%_ (gx#syntax-e _%tl5022950409%_)))
                        (let ((_%tl5023250419%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5023050412%_)))
                              (_%hd5023150416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5023050412%_))))
                          (if (gx#stx-pair/null? _%tl5023250419%_)
                              (let ((_%__splice9127191272%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5023250419%_
                                      '0)))
                                (let ((_%tl5023550425%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9127191272%_
                                          '1)))
                                      (_%target5023350422%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9127191272%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5023550425%_)
                                      (_%__match9136191362%_
                                       _%e5019050494%_
                                       _%hd5019150498%_
                                       _%tl5019250501%_
                                       _%e5019350504%_
                                       _%hd5019450508%_
                                       _%tl5019550511%_
                                       _%e5019650514%_
                                       _%hd5019750518%_
                                       _%tl5019850521%_
                                       _%e5022750402%_
                                       _%hd5022850406%_
                                       _%tl5022950409%_
                                       _%e5023050412%_
                                       _%hd5023150416%_
                                       _%tl5023250419%_
                                       _%__splice9127191272%_
                                       _%target5023350422%_
                                       _%tl5023550425%_)
                                      (if (gx#stx-pair/null? _%tl5019850521%_)
                                          (let ((_%__splice9127591276%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5019850521%_
                                                  '0)))
                                            (let ((_%tl5025650308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9127591276%_
                                                      '1)))
                                                  (_%target5025450305%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9127591276%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5025650308%_)
                                                  (_%__match9138791388%_
                                                   _%e5019050494%_
                                                   _%hd5019150498%_
                                                   _%tl5019250501%_
                                                   _%e5019350504%_
                                                   _%hd5019450508%_
                                                   _%tl5019550511%_
                                                   _%e5019650514%_
                                                   _%hd5019750518%_
                                                   _%tl5019850521%_
                                                   _%__splice9127591276%_
                                                   _%target5025450305%_
                                                   _%tl5025650308%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5018450268%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5018450268%_))))))
                              (if (gx#stx-pair/null? _%tl5019850521%_)
                                  (let ((_%__splice9127591276%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5019850521%_
                                          '0)))
                                    (let ((_%tl5025650308%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9127591276%_
                                              '1)))
                                          (_%target5025450305%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9127591276%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5025650308%_)
                                          (_%__match9138791388%_
                                           _%e5019050494%_
                                           _%hd5019150498%_
                                           _%tl5019250501%_
                                           _%e5019350504%_
                                           _%hd5019450508%_
                                           _%tl5019550511%_
                                           _%e5019650514%_
                                           _%hd5019750518%_
                                           _%tl5019850521%_
                                           _%__splice9127591276%_
                                           _%target5025450305%_
                                           _%tl5025650308%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5018450268%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5018450268%_))))))
                      (if (gx#stx-pair/null? _%tl5019850521%_)
                          (let ((_%__splice9127591276%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5019850521%_
                                  '0)))
                            (let ((_%tl5025650308%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9127591276%_ '1)))
                                  (_%target5025450305%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9127591276%_
                                      '0))))
                              (if (gx#stx-null? _%tl5025650308%_)
                                  (_%__match9138791388%_
                                   _%e5019050494%_
                                   _%hd5019150498%_
                                   _%tl5019250501%_
                                   _%e5019350504%_
                                   _%hd5019450508%_
                                   _%tl5019550511%_
                                   _%e5019650514%_
                                   _%hd5019750518%_
                                   _%tl5019850521%_
                                   _%__splice9127591276%_
                                   _%target5025450305%_
                                   _%tl5025650308%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5018450268%_)))))
                          (let () (declare (not safe)) (_%g5018450268%_))))))
              (if (gx#stx-pair/null? _%tl5019850521%_)
                  (let ((_%__splice9127591276%_
                         (gx#syntax-split-splice->vector _%tl5019850521%_ '0)))
                    (let ((_%tl5025650308%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9127591276%_ '1)))
                          (_%target5025450305%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9127591276%_ '0))))
                      (if (gx#stx-null? _%tl5025650308%_)
                          (_%__match9138791388%_
                           _%e5019050494%_
                           _%hd5019150498%_
                           _%tl5019250501%_
                           _%e5019350504%_
                           _%hd5019450508%_
                           _%tl5019550511%_
                           _%e5019650514%_
                           _%hd5019750518%_
                           _%tl5019850521%_
                           _%__splice9127591276%_
                           _%target5025450305%_
                           _%tl5025650308%_)
                          (let () (declare (not safe)) (_%g5018450268%_)))))
                  (let () (declare (not safe)) (_%g5018450268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5019850521%_)
                                                      (let ((_%__splice9127591276%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5019850521%_
                                                              '0)))
                                                        (let ((_%tl5025650308%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9127591276%_ '1)))
                      (_%target5025450305%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9127591276%_ '0))))
                  (if (gx#stx-null? _%tl5025650308%_)
                      (_%__match9138791388%_
                       _%e5019050494%_
                       _%hd5019150498%_
                       _%tl5019250501%_
                       _%e5019350504%_
                       _%hd5019450508%_
                       _%tl5019550511%_
                       _%e5019650514%_
                       _%hd5019750518%_
                       _%tl5019850521%_
                       _%__splice9127591276%_
                       _%target5025450305%_
                       _%tl5025650308%_)
                      (let () (declare (not safe)) (_%g5018450268%_)))))
              (let () (declare (not safe)) (_%g5018450268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5019850521%_)
                                              (let ((_%__splice9127591276%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5019850521%_
                                                      '0)))
                                                (let ((_%tl5025650308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9127591276%_
                                                          '1)))
                                                      (_%target5025450305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9127591276%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5025650308%_)
                                                      (_%__match9138791388%_
                                                       _%e5019050494%_
                                                       _%hd5019150498%_
                                                       _%tl5019250501%_
                                                       _%e5019350504%_
                                                       _%hd5019450508%_
                                                       _%tl5019550511%_
                                                       _%e5019650514%_
                                                       _%hd5019750518%_
                                                       _%tl5019850521%_
                                                       _%__splice9127591276%_
                                                       _%target5025450305%_
                                                       _%tl5025650308%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5018450268%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5018450268%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5018450268%_)))))
                          (let () (declare (not safe)) (_%g5018450268%_)))))
                  (let () (declare (not safe)) (_%g5018450268%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx50616%_)
        (let* ((_%__stx9139091391%_ _%$stx50616%_)
               (_%g5062150657%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9139091391%_))))
          (let ((_%__kont9139391394%_
                 (lambda (_%g5062350775%_ _%g5062450777%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5062450777%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5062350775%_
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
                           (cons _%g5062450777%_
                                 (cons _%g5062350775%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9139591396%_
                 (lambda (_%g5063450714%_ _%g5063550716%_ _%g5063650717%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5063650717%_
                                           (cons _%g5063550716%_ '())))
                               (cons _%g5063450714%_ '()))))))
            (if (gx#stx-pair? _%__stx9139091391%_)
                (let ((_%e5062550745%_ (gx#syntax-e _%__stx9139091391%_)))
                  (let ((_%tl5062750752%_
                         (let () (declare (not safe)) (##cdr _%e5062550745%_)))
                        (_%hd5062650749%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5062550745%_))))
                    (if (gx#stx-pair? _%tl5062750752%_)
                        (let ((_%e5062850755%_ (gx#syntax-e _%tl5062750752%_)))
                          (let ((_%tl5063050762%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5062850755%_)))
                                (_%hd5062950759%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5062850755%_))))
                            (if (gx#stx-pair? _%tl5063050762%_)
                                (let ((_%e5063150765%_
                                       (gx#syntax-e _%tl5063050762%_)))
                                  (let ((_%tl5063350772%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5063150765%_)))
                                        (_%hd5063250769%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5063150765%_))))
                                    (if (gx#stx-null? _%tl5063350772%_)
                                        (_%__kont9139391394%_
                                         _%hd5063250769%_
                                         _%hd5062950759%_)
                                        (if (gx#stx-pair? _%tl5063350772%_)
                                            (let ((_%e5064650694%_
                                                   (gx#syntax-e
                                                    _%tl5063350772%_)))
                                              (let ((_%tl5064850701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5064650694%_)))
                                                    (_%hd5064750698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5064650694%_))))
                                                (if (gx#identifier?
                                                     _%hd5064750698%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g97713_|
                                                         _%hd5064750698%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5064850701%_)
                                                            (let ((_%e5064950704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5064850701%_)))
                      (let ((_%tl5065150711%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5064950704%_)))
                            (_%hd5065050708%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5064950704%_))))
                        (if (gx#stx-null? _%tl5065150711%_)
                            (_%__kont9139591396%_
                             _%hd5065050708%_
                             _%hd5063250769%_
                             _%hd5062950759%_)
                            (let () (declare (not safe)) (_%g5062150657%_)))))
                    (let () (declare (not safe)) (_%g5062150657%_)))
                (let () (declare (not safe)) (_%g5062150657%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5062150657%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5062150657%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5062150657%_)))))
                        (let () (declare (not safe)) (_%g5062150657%_)))))
                (let () (declare (not safe)) (_%g5062150657%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx50796%_)
        (let ((_%g5079950806%_
               (lambda (_%g5080050802%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5080050802%_))))
          (_%g5079950806%_ _%$stx50796%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx50810%_)
        (let ((_%g5081350820%_
               (lambda (_%g5081450816%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5081450816%_))))
          (_%g5081350820%_ _%$stx50810%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx50824%_)
        (let* ((_%g5082850842%_
                (lambda (_%g5082950838%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5082950838%_)))
               (_%g5082750883%_
                (lambda (_%g5082950846%_)
                  (if (gx#stx-pair? _%g5082950846%_)
                      (let ((_%e5083150849%_ (gx#syntax-e _%g5082950846%_)))
                        (let ((_%hd5083250853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5083150849%_)))
                              (_%tl5083350856%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5083150849%_))))
                          (if (gx#stx-pair? _%tl5083350856%_)
                              (let ((_%e5083450859%_
                                     (gx#syntax-e _%tl5083350856%_)))
                                (let ((_%hd5083550863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5083450859%_)))
                                      (_%tl5083650866%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5083450859%_))))
                                  (if (gx#stx-null? _%tl5083650866%_)
                                      ((lambda (_%g5083050869%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g5083050869%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g5083050869%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5083550863%_)
                                      (_%g5082850842%_ _%g5082950846%_))))
                              (_%g5082850842%_ _%g5082950846%_))))
                      (_%g5082850842%_ _%g5082950846%_)))))
          (_%g5082750883%_ _%$stx50824%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx50887%_)
        (let* ((_%g5089050913%_
                (lambda (_%g5089150909%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5089150909%_)))
               (_%g5088951037%_
                (lambda (_%g5089150917%_)
                  (if (gx#stx-pair? _%g5089150917%_)
                      (let ((_%e5089650920%_ (gx#syntax-e _%g5089150917%_)))
                        (let ((_%hd5089750924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5089650920%_)))
                              (_%tl5089850927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5089650920%_))))
                          (if (gx#stx-pair? _%tl5089850927%_)
                              (let ((_%e5089950930%_
                                     (gx#syntax-e _%tl5089850927%_)))
                                (let ((_%hd5090050934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5089950930%_)))
                                      (_%tl5090150937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5089950930%_))))
                                  (if (gx#stx-pair? _%tl5090150937%_)
                                      (let ((_%e5090250940%_
                                             (gx#syntax-e _%tl5090150937%_)))
                                        (let ((_%hd5090350944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5090250940%_)))
                                              (_%tl5090450947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5090250940%_))))
                                          (if (gx#stx-pair? _%tl5090450947%_)
                                              (let ((_%e5090550950%_
                                                     (gx#syntax-e
                                                      _%tl5090450947%_)))
                                                (let ((_%hd5090650954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5090550950%_)))
                                                      (_%tl5090750957%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5090550950%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5090750957%_)
                                                      ((lambda (_%g5089250960%_
                                                                _%g5089350962%_
                                                                _%g5089450963%_
                                                                _%g5089550964%_)
                                                         (let* ((_%g5098450992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5098550988%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5098550988%_)))
                        (_%g5098351011%_
                         (lambda (_%g5098550996%_)
                           ((lambda (_%g5098650999%_)
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
                                (cons _%g5098650999%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5089350962%_ '()))
                                      (cons 'value:
                                            (cons _%g5089250960%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5098550996%_))))
                   (_%g5098351011%_
                    (let ((_%$e51023%_
                           (let ((_%$e51015%_ (gx#stx-source _%g5089450963%_)))
                             (if _%$e51015%_
                                 _%$e51015%_
                                 (let ((_%$e51019%_
                                        (gx#stx-source _%stx50887%_)))
                                   (if _%$e51019%_
                                       _%$e51019%_
                                       (gx#stx-source _%g5089550964%_)))))))
                      (if _%$e51023%_
                          ((lambda (_%locat51027%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5102951031%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat51027%_
                                   '#t
                                   _%g5102951031%_)))))
                           _%$e51023%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5090650954%_
               _%hd5090350944%_
               _%hd5090050934%_
               _%hd5089750924%_)
              (_%g5089050913%_ _%g5089150917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5089050913%_
                                               _%g5089150917%_))))
                                      (_%g5089050913%_ _%g5089150917%_))))
                              (_%g5089050913%_ _%g5089150917%_))))
                      (_%g5089050913%_ _%g5089150917%_)))))
          (_%g5088951037%_ _%stx50887%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx51041%_)
        (let* ((_%g5104451059%_
                (lambda (_%g5104551055%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5104551055%_)))
               (_%g5104351155%_
                (lambda (_%g5104551063%_)
                  (if (gx#stx-pair? _%g5104551063%_)
                      (let ((_%e5104851066%_ (gx#syntax-e _%g5104551063%_)))
                        (let ((_%hd5104951070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5104851066%_)))
                              (_%tl5105051073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5104851066%_))))
                          (if (gx#stx-pair? _%tl5105051073%_)
                              (let ((_%e5105151076%_
                                     (gx#syntax-e _%tl5105051073%_)))
                                (let ((_%hd5105251080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5105151076%_)))
                                      (_%tl5105351083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5105151076%_))))
                                  (if (gx#stx-null? _%tl5105351083%_)
                                      ((lambda (_%g5104651086%_
                                                _%g5104751088%_)
                                         (let* ((_%g5110251110%_
                                                 (lambda (_%g5110351106%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5110351106%_)))
                                                (_%g5110151129%_
                                                 (lambda (_%g5110351114%_)
                                                   ((lambda (_%g5110451117%_)
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
                                                        (cons _%g5110451117%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g5104651086%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5110351114%_))))
                                           (_%g5110151129%_
                                            (let ((_%$e51141%_
                                                   (let ((_%$e51133%_
                                                          (gx#stx-source
                                                           _%g5104651086%_)))
                                                     (if _%$e51133%_
                                                         _%$e51133%_
                                                         (let ((_%$e51137%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx51041%_)))
                   (if _%$e51137%_
                       _%$e51137%_
                       (gx#stx-source _%g5104751088%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e51141%_
                                                  ((lambda (_%locat51145%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5114751149%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat51145%_
                                                           '#t
                                                           _%g5114751149%_)))))
                                                   _%$e51141%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5105251080%_
                                       _%hd5104951070%_)
                                      (_%g5104451059%_ _%g5104551063%_))))
                              (_%g5104451059%_ _%g5104551063%_))))
                      (_%g5104451059%_ _%g5104551063%_)))))
          (_%g5104351155%_ _%stx51041%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx51159%_)
        (let* ((_%g5116351177%_
                (lambda (_%g5116451173%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5116451173%_)))
               (_%g5116251218%_
                (lambda (_%g5116451181%_)
                  (if (gx#stx-pair? _%g5116451181%_)
                      (let ((_%e5116651184%_ (gx#syntax-e _%g5116451181%_)))
                        (let ((_%hd5116751188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5116651184%_)))
                              (_%tl5116851191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5116651184%_))))
                          (if (gx#stx-pair? _%tl5116851191%_)
                              (let ((_%e5116951194%_
                                     (gx#syntax-e _%tl5116851191%_)))
                                (let ((_%hd5117051198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5116951194%_)))
                                      (_%tl5117151201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5116951194%_))))
                                  (if (gx#stx-null? _%tl5117151201%_)
                                      ((lambda (_%g5116551204%_)
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
                         (cons _%g5116551204%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5117051198%_)
                                      (_%g5116351177%_ _%g5116451181%_))))
                              (_%g5116351177%_ _%g5116451181%_))))
                      (_%g5116351177%_ _%g5116451181%_)))))
          (_%g5116251218%_ _%$stx51159%_))))))
