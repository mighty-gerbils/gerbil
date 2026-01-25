(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g92669_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g92670_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g92671_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx49348%_)
        (let* ((_%g4935149369%_
                (lambda (_%g4935249365%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4935249365%_)))
               (_%g4935049564%_
                (lambda (_%g4935249373%_)
                  (if (gx#stx-pair? _%g4935249373%_)
                      (let ((_%e4935549376%_ (gx#syntax-e _%g4935249373%_)))
                        (let ((_%hd4935649380%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4935549376%_)))
                              (_%tl4935749383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4935549376%_))))
                          (if (gx#stx-pair? _%tl4935749383%_)
                              (let ((_%e4935849386%_
                                     (gx#syntax-e _%tl4935749383%_)))
                                (let ((_%hd4935949390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4935849386%_)))
                                      (_%tl4936049393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4935849386%_))))
                                  (if (gx#stx-pair? _%tl4936049393%_)
                                      (let ((_%e4936149396%_
                                             (gx#syntax-e _%tl4936049393%_)))
                                        (let ((_%hd4936249400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4936149396%_)))
                                              (_%tl4936349403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4936149396%_))))
                                          (if (gx#stx-null? _%tl4936349403%_)
                                              ((lambda (_%g4935349406%_
                                                        _%g4935449408%_)
                                                 (if (gx#identifier?
                                                      _%g4935349406%_)
                                                     (let ((_%meta49425%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49348%_
                                                               _%g4935349406%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49425%_))
                                                           (let* ((_%g4943049445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4943149441%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4943149441%_)))
                          (_%g4942949492%_
                           (lambda (_%g4943149449%_)
                             (if (gx#stx-pair? _%g4943149449%_)
                                 (let ((_%e4943449452%_
                                        (gx#syntax-e _%g4943149449%_)))
                                   (let ((_%hd4943549456%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4943449452%_)))
                                         (_%tl4943649459%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4943449452%_))))
                                     (if (gx#stx-pair? _%tl4943649459%_)
                                         (let ((_%e4943749462%_
                                                (gx#syntax-e
                                                 _%tl4943649459%_)))
                                           (let ((_%hd4943849466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4943749462%_)))
                                                 (_%tl4943949469%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4943749462%_))))
                                             (if (gx#stx-null?
                                                  _%tl4943949469%_)
                                                 ((lambda (_%g4943249472%_
                                                           _%g4943349474%_)
                                                    (if (let ((__tmp92667
                                                               (let ((__obj92505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49425%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92505
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92505
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj92505 'id)))))
                  (declare (not safe))
                  (##memq __tmp92667 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4943349474%_ '()))
                            (cons _%g4935449408%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4943349474%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4935449408%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g4943249472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%g4943349474%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4943849466%_
                                                  _%hd4943549456%_)
                                                 (_%g4943049445%_
                                                  _%g4943149449%_))))
                                         (_%g4943049445%_ _%g4943149449%_))))
                                 (_%g4943049445%_ _%g4943149449%_)))))
                     (_%g4942949492%_
                      (list (let ((__obj92506 _%meta49425%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92506
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92506
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92506
                                   'type-descriptor)))
                            (let ((__obj92507 _%meta49425%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92507
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92507
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92507
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49425%_))
                       (let* ((_%g4949849513%_
                               (lambda (_%g4949949509%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4949949509%_)))
                              (_%g4949749558%_
                               (lambda (_%g4949949517%_)
                                 (if (gx#stx-pair? _%g4949949517%_)
                                     (let ((_%e4950249520%_
                                            (gx#syntax-e _%g4949949517%_)))
                                       (let ((_%hd4950349524%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4950249520%_)))
                                             (_%tl4950449527%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4950249520%_))))
                                         (if (gx#stx-pair? _%tl4950449527%_)
                                             (let ((_%e4950549530%_
                                                    (gx#syntax-e
                                                     _%tl4950449527%_)))
                                               (let ((_%hd4950649534%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4950549530%_)))
                                                     (_%tl4950749537%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4950549530%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4950749537%_)
                                                     ((lambda (_%g4950049540%_
                                                               _%g4950149542%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4950149542%_ '()))
                            (cons (cons _%g4950049540%_
                                        (cons _%g4935449408%_ '()))
                                  '()))))
              _%hd4950649534%_
              _%hd4950349524%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4949849513%_
                                                      _%g4949949517%_))))
                                             (_%g4949849513%_
                                              _%g4949949517%_))))
                                     (_%g4949849513%_ _%g4949949517%_)))))
                         (_%g4949749558%_
                          (list (let ((__obj92504 _%meta49425%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj92504
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj92504
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj92504
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49348%_
                                   _%g4935349406%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49348%_
                        _%g4935349406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4935149369%_
                                                      _%g4935249373%_)))
                                               _%hd4936249400%_
                                               _%hd4935949390%_)
                                              (_%g4935149369%_
                                               _%g4935249373%_))))
                                      (_%g4935149369%_ _%g4935249373%_))))
                              (_%g4935149369%_ _%g4935249373%_))))
                      (_%g4935149369%_ _%g4935249373%_)))))
          (_%g4935049564%_ _%stx49348%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx49568%_)
        (let* ((_%g4957149589%_
                (lambda (_%g4957249585%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4957249585%_)))
               (_%g4957049783%_
                (lambda (_%g4957249593%_)
                  (if (gx#stx-pair? _%g4957249593%_)
                      (let ((_%e4957549596%_ (gx#syntax-e _%g4957249593%_)))
                        (let ((_%hd4957649600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4957549596%_)))
                              (_%tl4957749603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4957549596%_))))
                          (if (gx#stx-pair? _%tl4957749603%_)
                              (let ((_%e4957849606%_
                                     (gx#syntax-e _%tl4957749603%_)))
                                (let ((_%hd4957949610%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4957849606%_)))
                                      (_%tl4958049613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4957849606%_))))
                                  (if (gx#stx-pair? _%tl4958049613%_)
                                      (let ((_%e4958149616%_
                                             (gx#syntax-e _%tl4958049613%_)))
                                        (let ((_%hd4958249620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4958149616%_)))
                                              (_%tl4958349623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4958149616%_))))
                                          (if (gx#stx-null? _%tl4958349623%_)
                                              ((lambda (_%g4957349626%_
                                                        _%g4957449628%_)
                                                 (if (gx#identifier?
                                                      _%g4957349626%_)
                                                     (let ((_%meta49644%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49568%_
                                                               _%g4957349626%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49644%_))
                                                           (let* ((_%g4964949664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4965049660%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4965049660%_)))
                          (_%g4964849711%_
                           (lambda (_%g4965049668%_)
                             (if (gx#stx-pair? _%g4965049668%_)
                                 (let ((_%e4965349671%_
                                        (gx#syntax-e _%g4965049668%_)))
                                   (let ((_%hd4965449675%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4965349671%_)))
                                         (_%tl4965549678%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4965349671%_))))
                                     (if (gx#stx-pair? _%tl4965549678%_)
                                         (let ((_%e4965649681%_
                                                (gx#syntax-e
                                                 _%tl4965549678%_)))
                                           (let ((_%hd4965749685%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4965649681%_)))
                                                 (_%tl4965849688%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4965649681%_))))
                                             (if (gx#stx-null?
                                                  _%tl4965849688%_)
                                                 ((lambda (_%g4965149691%_
                                                           _%g4965249693%_)
                                                    (if (let ((__tmp92668
                                                               (let ((__obj92509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49644%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92509
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92509
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj92509 'id)))))
                  (declare (not safe))
                  (##memq __tmp92668 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4965249693%_ '()))
                            (cons _%g4957449628%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4965249693%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4957449628%_ '()))
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
                                    (cons (cons _%g4965149691%_
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
                                                (cons _%g4957449628%_
                                                      (cons _%g4965149691%_
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
                                                  _%hd4965749685%_
                                                  _%hd4965449675%_)
                                                 (_%g4964949664%_
                                                  _%g4965049668%_))))
                                         (_%g4964949664%_ _%g4965049668%_))))
                                 (_%g4964949664%_ _%g4965049668%_)))))
                     (_%g4964849711%_
                      (list (let ((__obj92510 _%meta49644%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92510
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92510
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92510
                                   'type-descriptor)))
                            (let ((__obj92511 _%meta49644%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92511
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92511
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92511
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49644%_))
                       (let* ((_%g4971749732%_
                               (lambda (_%g4971849728%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4971849728%_)))
                              (_%g4971649777%_
                               (lambda (_%g4971849736%_)
                                 (if (gx#stx-pair? _%g4971849736%_)
                                     (let ((_%e4972149739%_
                                            (gx#syntax-e _%g4971849736%_)))
                                       (let ((_%hd4972249743%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4972149739%_)))
                                             (_%tl4972349746%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4972149739%_))))
                                         (if (gx#stx-pair? _%tl4972349746%_)
                                             (let ((_%e4972449749%_
                                                    (gx#syntax-e
                                                     _%tl4972349746%_)))
                                               (let ((_%hd4972549753%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4972449749%_)))
                                                     (_%tl4972649756%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4972449749%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4972649756%_)
                                                     ((lambda (_%g4971949759%_
                                                               _%g4972049761%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4972049761%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4957449628%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g4971949759%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4972549753%_
              _%hd4972249743%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4971749732%_
                                                      _%g4971849736%_))))
                                             (_%g4971749732%_
                                              _%g4971849736%_))))
                                     (_%g4971749732%_ _%g4971849736%_)))))
                         (_%g4971649777%_
                          (list (let ((__obj92508 _%meta49644%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj92508
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj92508
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj92508
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49568%_
                                   _%g4957349626%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49568%_
                        _%g4957349626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4957149589%_
                                                      _%g4957249593%_)))
                                               _%hd4958249620%_
                                               _%hd4957949610%_)
                                              (_%g4957149589%_
                                               _%g4957249593%_))))
                                      (_%g4957149589%_ _%g4957249593%_))))
                              (_%g4957149589%_ _%g4957249593%_))))
                      (_%g4957149589%_ _%g4957249593%_)))))
          (_%g4957049783%_ _%stx49568%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx49787%_)
        (let* ((_%g4979049808%_
                (lambda (_%g4979149804%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4979149804%_)))
               (_%g4978949894%_
                (lambda (_%g4979149812%_)
                  (if (gx#stx-pair? _%g4979149812%_)
                      (let ((_%e4979449815%_ (gx#syntax-e _%g4979149812%_)))
                        (let ((_%hd4979549819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4979449815%_)))
                              (_%tl4979649822%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4979449815%_))))
                          (if (gx#stx-pair? _%tl4979649822%_)
                              (let ((_%e4979749825%_
                                     (gx#syntax-e _%tl4979649822%_)))
                                (let ((_%hd4979849829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4979749825%_)))
                                      (_%tl4979949832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4979749825%_))))
                                  (if (gx#stx-pair? _%tl4979949832%_)
                                      (let ((_%e4980049835%_
                                             (gx#syntax-e _%tl4979949832%_)))
                                        (let ((_%hd4980149839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4980049835%_)))
                                              (_%tl4980249842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4980049835%_))))
                                          (if (gx#stx-null? _%tl4980249842%_)
                                              ((lambda (_%g4979249845%_
                                                        _%g4979349847%_)
                                                 (if (gx#identifier?
                                                      _%g4979249845%_)
                                                     (let* ((_%g4986349871%_
                                                             (lambda (_%g4986449867%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4986449867%_)))
                                                            (_%g4986249890%_
                                                             (lambda (_%g4986449875%_)
                                                               ((lambda (_%g4986549878%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g4986549878%_ '()))
                                      (cons _%g4979349847%_ '()))))
                        _%g4986449875%_))))
               (_%g4986249890%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx49787%_
                   _%g4979249845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4979049808%_
                                                      _%g4979149812%_)))
                                               _%hd4980149839%_
                                               _%hd4979849829%_)
                                              (_%g4979049808%_
                                               _%g4979149812%_))))
                                      (_%g4979049808%_ _%g4979149812%_))))
                              (_%g4979049808%_ _%g4979149812%_))))
                      (_%g4979049808%_ _%g4979149812%_)))))
          (_%g4978949894%_ _%stx49787%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx49898%_)
        (let* ((_%__stx8660086601%_ _%$stx49898%_)
               (_%g4990449988%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8660086601%_))))
          (let ((_%__kont8660386604%_
                 (lambda (_%g4990650292%_
                          _%g4990750294%_
                          _%g4990850295%_
                          _%g4990950296%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g4990950296%_
                                           (cons _%g4990750294%_
                                                 (foldr (lambda (_%g5032050323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5032150326%_)
                  (cons _%g5032050323%_ _%g5032150326%_))
                '()
                _%g4990650292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g4990850295%_ '())))))
                (_%__kont8660786608%_
                 (lambda (_%g4993450170%_
                          _%g4993550172%_
                          _%g4993650173%_
                          _%g4993750174%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g4993750174%_
                                           (cons _%g4993550172%_
                                                 (foldr (lambda (_%g5019850201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5019950204%_)
                  (cons _%g5019850201%_ _%g5019950204%_))
                '()
                _%g4993450170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g4993650173%_ '())))))
                (_%__kont8661186612%_
                 (lambda (_%g4996250053%_ _%g4996350055%_ _%g4996450056%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g4996450056%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g4996350055%_
                                                       (foldr (lambda (_%g5007650079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5007750082%_)
                        (cons _%g5007650079%_ _%g5007750082%_))
                      '()
                      _%g4996250053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8672586726%_
                    (lambda (_%e4996549995%_
                             _%hd4996649999%_
                             _%tl4996750002%_
                             _%e4996850005%_
                             _%hd4996950009%_
                             _%tl4997050012%_
                             _%e4997150015%_
                             _%hd4997250019%_
                             _%tl4997350022%_
                             _%__splice8661386614%_
                             _%target4997450025%_
                             _%tl4997650028%_)
                      (letrec ((_%loop4997750031%_
                                (lambda (_%hd4997550035%_ _%rest4998150038%_)
                                  (if (gx#stx-pair? _%hd4997550035%_)
                                      (let ((_%e4997850040%_
                                             (gx#syntax-e _%hd4997550035%_)))
                                        (let ((_%lp-tl4998050047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4997850040%_)))
                                              (_%lp-hd4997950044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4997850040%_))))
                                          (_%loop4997750031%_
                                           _%lp-tl4998050047%_
                                           (cons _%lp-hd4997950044%_
                                                 _%rest4998150038%_))))
                                      (let ((_%rest4998250050%_
                                             (reverse _%rest4998150038%_)))
                                        (_%__kont8661186612%_
                                         _%rest4998250050%_
                                         _%hd4997250019%_
                                         _%hd4996950009%_))))))
                        (_%loop4997750031%_ _%target4997450025%_ '()))))
                   (_%__match8669986700%_
                    (lambda (_%e4993850092%_
                             _%hd4993950096%_
                             _%tl4994050099%_
                             _%e4994150102%_
                             _%hd4994250106%_
                             _%tl4994350109%_
                             _%e4994450112%_
                             _%hd4994550116%_
                             _%tl4994650119%_
                             _%e4994750122%_
                             _%hd4994850126%_
                             _%tl4994950129%_
                             _%e4995050132%_
                             _%hd4995150136%_
                             _%tl4995250139%_
                             _%__splice8660986610%_
                             _%target4995350142%_
                             _%tl4995550145%_)
                      (letrec ((_%loop4995650148%_
                                (lambda (_%hd4995450152%_ _%rest4996050155%_)
                                  (if (gx#stx-pair? _%hd4995450152%_)
                                      (let ((_%e4995750157%_
                                             (gx#syntax-e _%hd4995450152%_)))
                                        (let ((_%lp-tl4995950164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4995750157%_)))
                                              (_%lp-hd4995850161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4995750157%_))))
                                          (_%loop4995650148%_
                                           _%lp-tl4995950164%_
                                           (cons _%lp-hd4995850161%_
                                                 _%rest4996050155%_))))
                                      (let ((_%rest4996150167%_
                                             (reverse _%rest4996050155%_)))
                                        (_%__kont8660786608%_
                                         _%rest4996150167%_
                                         _%hd4995150136%_
                                         _%hd4994850126%_
                                         _%hd4994250106%_))))))
                        (_%loop4995650148%_ _%target4995350142%_ '()))))
                   (_%__match8665786658%_
                    (lambda (_%e4991050214%_
                             _%hd4991150218%_
                             _%tl4991250221%_
                             _%e4991350224%_
                             _%hd4991450228%_
                             _%tl4991550231%_
                             _%e4991650234%_
                             _%hd4991750238%_
                             _%tl4991850241%_
                             _%e4991950244%_
                             _%hd4992050248%_
                             _%tl4992150251%_
                             _%e4992250254%_
                             _%hd4992350258%_
                             _%tl4992450261%_
                             _%__splice8660586606%_
                             _%target4992550264%_
                             _%tl4992750267%_)
                      (letrec ((_%loop4992850270%_
                                (lambda (_%hd4992650274%_ _%rest4993250277%_)
                                  (if (gx#stx-pair? _%hd4992650274%_)
                                      (let ((_%e4992950279%_
                                             (gx#syntax-e _%hd4992650274%_)))
                                        (let ((_%lp-tl4993150286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4992950279%_)))
                                              (_%lp-hd4993050283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4992950279%_))))
                                          (_%loop4992850270%_
                                           _%lp-tl4993150286%_
                                           (cons _%lp-hd4993050283%_
                                                 _%rest4993250277%_))))
                                      (let ((_%rest4993350289%_
                                             (reverse _%rest4993250277%_)))
                                        (_%__kont8660386604%_
                                         _%rest4993350289%_
                                         _%hd4992350258%_
                                         _%hd4992050248%_
                                         _%hd4991450228%_))))))
                        (_%loop4992850270%_ _%target4992550264%_ '())))))
              (if (gx#stx-pair? _%__stx8660086601%_)
                  (let ((_%e4991050214%_ (gx#syntax-e _%__stx8660086601%_)))
                    (let ((_%tl4991250221%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4991050214%_)))
                          (_%hd4991150218%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4991050214%_))))
                      (if (gx#stx-pair? _%tl4991250221%_)
                          (let ((_%e4991350224%_
                                 (gx#syntax-e _%tl4991250221%_)))
                            (let ((_%tl4991550231%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4991350224%_)))
                                  (_%hd4991450228%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4991350224%_))))
                              (if (gx#stx-pair? _%tl4991550231%_)
                                  (let ((_%e4991650234%_
                                         (gx#syntax-e _%tl4991550231%_)))
                                    (let ((_%tl4991850241%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4991650234%_)))
                                          (_%hd4991750238%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4991650234%_))))
                                      (if (gx#identifier? _%hd4991750238%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g92669_|
                                               _%hd4991750238%_)
                                              (if (gx#stx-pair?
                                                   _%tl4991850241%_)
                                                  (let ((_%e4991950244%_
                                                         (gx#syntax-e
                                                          _%tl4991850241%_)))
                                                    (let ((_%tl4992150251%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4991950244%_)))
                                                          (_%hd4992050248%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4991950244%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4992150251%_)
                                                          (let ((_%e4992250254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4992150251%_)))
                    (let ((_%tl4992450261%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4992250254%_)))
                          (_%hd4992350258%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4992250254%_))))
                      (if (gx#stx-pair/null? _%tl4992450261%_)
                          (let ((_%__splice8660586606%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4992450261%_
                                  '0)))
                            (let ((_%tl4992750267%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8660586606%_ '1)))
                                  (_%target4992550264%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8660586606%_
                                      '0))))
                              (if (gx#stx-null? _%tl4992750267%_)
                                  (_%__match8665786658%_
                                   _%e4991050214%_
                                   _%hd4991150218%_
                                   _%tl4991250221%_
                                   _%e4991350224%_
                                   _%hd4991450228%_
                                   _%tl4991550231%_
                                   _%e4991650234%_
                                   _%hd4991750238%_
                                   _%tl4991850241%_
                                   _%e4991950244%_
                                   _%hd4992050248%_
                                   _%tl4992150251%_
                                   _%e4992250254%_
                                   _%hd4992350258%_
                                   _%tl4992450261%_
                                   _%__splice8660586606%_
                                   _%target4992550264%_
                                   _%tl4992750267%_)
                                  (if (gx#stx-pair/null? _%tl4991850241%_)
                                      (let ((_%__splice8661386614%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4991850241%_
                                              '0)))
                                        (let ((_%tl4997650028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8661386614%_
                                                  '1)))
                                              (_%target4997450025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8661386614%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4997650028%_)
                                              (_%__match8672586726%_
                                               _%e4991050214%_
                                               _%hd4991150218%_
                                               _%tl4991250221%_
                                               _%e4991350224%_
                                               _%hd4991450228%_
                                               _%tl4991550231%_
                                               _%e4991650234%_
                                               _%hd4991750238%_
                                               _%tl4991850241%_
                                               _%__splice8661386614%_
                                               _%target4997450025%_
                                               _%tl4997650028%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4990449988%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4990449988%_))))))
                          (if (gx#stx-pair/null? _%tl4991850241%_)
                              (let ((_%__splice8661386614%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4991850241%_
                                      '0)))
                                (let ((_%tl4997650028%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8661386614%_
                                          '1)))
                                      (_%target4997450025%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8661386614%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4997650028%_)
                                      (_%__match8672586726%_
                                       _%e4991050214%_
                                       _%hd4991150218%_
                                       _%tl4991250221%_
                                       _%e4991350224%_
                                       _%hd4991450228%_
                                       _%tl4991550231%_
                                       _%e4991650234%_
                                       _%hd4991750238%_
                                       _%tl4991850241%_
                                       _%__splice8661386614%_
                                       _%target4997450025%_
                                       _%tl4997650028%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4990449988%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4990449988%_))))))
                  (if (gx#stx-pair/null? _%tl4991850241%_)
                      (let ((_%__splice8661386614%_
                             (gx#syntax-split-splice->vector
                              _%tl4991850241%_
                              '0)))
                        (let ((_%tl4997650028%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8661386614%_ '1)))
                              (_%target4997450025%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8661386614%_ '0))))
                          (if (gx#stx-null? _%tl4997650028%_)
                              (_%__match8672586726%_
                               _%e4991050214%_
                               _%hd4991150218%_
                               _%tl4991250221%_
                               _%e4991350224%_
                               _%hd4991450228%_
                               _%tl4991550231%_
                               _%e4991650234%_
                               _%hd4991750238%_
                               _%tl4991850241%_
                               _%__splice8661386614%_
                               _%target4997450025%_
                               _%tl4997650028%_)
                              (let ()
                                (declare (not safe))
                                (_%g4990449988%_)))))
                      (let () (declare (not safe)) (_%g4990449988%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4991850241%_)
                                                      (let ((_%__splice8661386614%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4991850241%_
                                                              '0)))
                                                        (let ((_%tl4997650028%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8661386614%_ '1)))
                      (_%target4997450025%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8661386614%_ '0))))
                  (if (gx#stx-null? _%tl4997650028%_)
                      (_%__match8672586726%_
                       _%e4991050214%_
                       _%hd4991150218%_
                       _%tl4991250221%_
                       _%e4991350224%_
                       _%hd4991450228%_
                       _%tl4991550231%_
                       _%e4991650234%_
                       _%hd4991750238%_
                       _%tl4991850241%_
                       _%__splice8661386614%_
                       _%target4997450025%_
                       _%tl4997650028%_)
                      (let () (declare (not safe)) (_%g4990449988%_)))))
              (let () (declare (not safe)) (_%g4990449988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g92670_|
                                                   _%hd4991750238%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4991850241%_)
                                                      (let ((_%e4994750122%_
                                                             (gx#syntax-e
                                                              _%tl4991850241%_)))
                                                        (let ((_%tl4994950129%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4994750122%_)))
                      (_%hd4994850126%_
                       (let () (declare (not safe)) (##car _%e4994750122%_))))
                  (if (gx#stx-pair? _%tl4994950129%_)
                      (let ((_%e4995050132%_ (gx#syntax-e _%tl4994950129%_)))
                        (let ((_%tl4995250139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4995050132%_)))
                              (_%hd4995150136%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4995050132%_))))
                          (if (gx#stx-pair/null? _%tl4995250139%_)
                              (let ((_%__splice8660986610%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4995250139%_
                                      '0)))
                                (let ((_%tl4995550145%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8660986610%_
                                          '1)))
                                      (_%target4995350142%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8660986610%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4995550145%_)
                                      (_%__match8669986700%_
                                       _%e4991050214%_
                                       _%hd4991150218%_
                                       _%tl4991250221%_
                                       _%e4991350224%_
                                       _%hd4991450228%_
                                       _%tl4991550231%_
                                       _%e4991650234%_
                                       _%hd4991750238%_
                                       _%tl4991850241%_
                                       _%e4994750122%_
                                       _%hd4994850126%_
                                       _%tl4994950129%_
                                       _%e4995050132%_
                                       _%hd4995150136%_
                                       _%tl4995250139%_
                                       _%__splice8660986610%_
                                       _%target4995350142%_
                                       _%tl4995550145%_)
                                      (if (gx#stx-pair/null? _%tl4991850241%_)
                                          (let ((_%__splice8661386614%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4991850241%_
                                                  '0)))
                                            (let ((_%tl4997650028%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8661386614%_
                                                      '1)))
                                                  (_%target4997450025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8661386614%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4997650028%_)
                                                  (_%__match8672586726%_
                                                   _%e4991050214%_
                                                   _%hd4991150218%_
                                                   _%tl4991250221%_
                                                   _%e4991350224%_
                                                   _%hd4991450228%_
                                                   _%tl4991550231%_
                                                   _%e4991650234%_
                                                   _%hd4991750238%_
                                                   _%tl4991850241%_
                                                   _%__splice8661386614%_
                                                   _%target4997450025%_
                                                   _%tl4997650028%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4990449988%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4990449988%_))))))
                              (if (gx#stx-pair/null? _%tl4991850241%_)
                                  (let ((_%__splice8661386614%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4991850241%_
                                          '0)))
                                    (let ((_%tl4997650028%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8661386614%_
                                              '1)))
                                          (_%target4997450025%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8661386614%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4997650028%_)
                                          (_%__match8672586726%_
                                           _%e4991050214%_
                                           _%hd4991150218%_
                                           _%tl4991250221%_
                                           _%e4991350224%_
                                           _%hd4991450228%_
                                           _%tl4991550231%_
                                           _%e4991650234%_
                                           _%hd4991750238%_
                                           _%tl4991850241%_
                                           _%__splice8661386614%_
                                           _%target4997450025%_
                                           _%tl4997650028%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4990449988%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4990449988%_))))))
                      (if (gx#stx-pair/null? _%tl4991850241%_)
                          (let ((_%__splice8661386614%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4991850241%_
                                  '0)))
                            (let ((_%tl4997650028%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8661386614%_ '1)))
                                  (_%target4997450025%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8661386614%_
                                      '0))))
                              (if (gx#stx-null? _%tl4997650028%_)
                                  (_%__match8672586726%_
                                   _%e4991050214%_
                                   _%hd4991150218%_
                                   _%tl4991250221%_
                                   _%e4991350224%_
                                   _%hd4991450228%_
                                   _%tl4991550231%_
                                   _%e4991650234%_
                                   _%hd4991750238%_
                                   _%tl4991850241%_
                                   _%__splice8661386614%_
                                   _%target4997450025%_
                                   _%tl4997650028%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4990449988%_)))))
                          (let () (declare (not safe)) (_%g4990449988%_))))))
              (if (gx#stx-pair/null? _%tl4991850241%_)
                  (let ((_%__splice8661386614%_
                         (gx#syntax-split-splice->vector _%tl4991850241%_ '0)))
                    (let ((_%tl4997650028%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8661386614%_ '1)))
                          (_%target4997450025%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8661386614%_ '0))))
                      (if (gx#stx-null? _%tl4997650028%_)
                          (_%__match8672586726%_
                           _%e4991050214%_
                           _%hd4991150218%_
                           _%tl4991250221%_
                           _%e4991350224%_
                           _%hd4991450228%_
                           _%tl4991550231%_
                           _%e4991650234%_
                           _%hd4991750238%_
                           _%tl4991850241%_
                           _%__splice8661386614%_
                           _%target4997450025%_
                           _%tl4997650028%_)
                          (let () (declare (not safe)) (_%g4990449988%_)))))
                  (let () (declare (not safe)) (_%g4990449988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4991850241%_)
                                                      (let ((_%__splice8661386614%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4991850241%_
                                                              '0)))
                                                        (let ((_%tl4997650028%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8661386614%_ '1)))
                      (_%target4997450025%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8661386614%_ '0))))
                  (if (gx#stx-null? _%tl4997650028%_)
                      (_%__match8672586726%_
                       _%e4991050214%_
                       _%hd4991150218%_
                       _%tl4991250221%_
                       _%e4991350224%_
                       _%hd4991450228%_
                       _%tl4991550231%_
                       _%e4991650234%_
                       _%hd4991750238%_
                       _%tl4991850241%_
                       _%__splice8661386614%_
                       _%target4997450025%_
                       _%tl4997650028%_)
                      (let () (declare (not safe)) (_%g4990449988%_)))))
              (let () (declare (not safe)) (_%g4990449988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4991850241%_)
                                              (let ((_%__splice8661386614%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4991850241%_
                                                      '0)))
                                                (let ((_%tl4997650028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8661386614%_
                                                          '1)))
                                                      (_%target4997450025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8661386614%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4997650028%_)
                                                      (_%__match8672586726%_
                                                       _%e4991050214%_
                                                       _%hd4991150218%_
                                                       _%tl4991250221%_
                                                       _%e4991350224%_
                                                       _%hd4991450228%_
                                                       _%tl4991550231%_
                                                       _%e4991650234%_
                                                       _%hd4991750238%_
                                                       _%tl4991850241%_
                                                       _%__splice8661386614%_
                                                       _%target4997450025%_
                                                       _%tl4997650028%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4990449988%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4990449988%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4990449988%_)))))
                          (let () (declare (not safe)) (_%g4990449988%_)))))
                  (let () (declare (not safe)) (_%g4990449988%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx50336%_)
        (let* ((_%__stx8672886729%_ _%$stx50336%_)
               (_%g5034150377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8672886729%_))))
          (let ((_%__kont8673186732%_
                 (lambda (_%g5034350495%_ _%g5034450497%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5034450497%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5034350495%_
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
                           (cons _%g5034450497%_
                                 (cons _%g5034350495%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8673386734%_
                 (lambda (_%g5035450434%_ _%g5035550436%_ _%g5035650437%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5035650437%_
                                           (cons _%g5035550436%_ '())))
                               (cons _%g5035450434%_ '()))))))
            (if (gx#stx-pair? _%__stx8672886729%_)
                (let ((_%e5034550465%_ (gx#syntax-e _%__stx8672886729%_)))
                  (let ((_%tl5034750472%_
                         (let () (declare (not safe)) (##cdr _%e5034550465%_)))
                        (_%hd5034650469%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5034550465%_))))
                    (if (gx#stx-pair? _%tl5034750472%_)
                        (let ((_%e5034850475%_ (gx#syntax-e _%tl5034750472%_)))
                          (let ((_%tl5035050482%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5034850475%_)))
                                (_%hd5034950479%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5034850475%_))))
                            (if (gx#stx-pair? _%tl5035050482%_)
                                (let ((_%e5035150485%_
                                       (gx#syntax-e _%tl5035050482%_)))
                                  (let ((_%tl5035350492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5035150485%_)))
                                        (_%hd5035250489%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5035150485%_))))
                                    (if (gx#stx-null? _%tl5035350492%_)
                                        (_%__kont8673186732%_
                                         _%hd5035250489%_
                                         _%hd5034950479%_)
                                        (if (gx#stx-pair? _%tl5035350492%_)
                                            (let ((_%e5036650414%_
                                                   (gx#syntax-e
                                                    _%tl5035350492%_)))
                                              (let ((_%tl5036850421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5036650414%_)))
                                                    (_%hd5036750418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5036650414%_))))
                                                (if (gx#identifier?
                                                     _%hd5036750418%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g92671_|
                                                         _%hd5036750418%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5036850421%_)
                                                            (let ((_%e5036950424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5036850421%_)))
                      (let ((_%tl5037150431%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5036950424%_)))
                            (_%hd5037050428%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5036950424%_))))
                        (if (gx#stx-null? _%tl5037150431%_)
                            (_%__kont8673386734%_
                             _%hd5037050428%_
                             _%hd5035250489%_
                             _%hd5034950479%_)
                            (let () (declare (not safe)) (_%g5034150377%_)))))
                    (let () (declare (not safe)) (_%g5034150377%_)))
                (let () (declare (not safe)) (_%g5034150377%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5034150377%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5034150377%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5034150377%_)))))
                        (let () (declare (not safe)) (_%g5034150377%_)))))
                (let () (declare (not safe)) (_%g5034150377%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx50516%_)
        (let ((_%g5051950526%_
               (lambda (_%g5052050522%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5052050522%_))))
          (_%g5051950526%_ _%$stx50516%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx50530%_)
        (let ((_%g5053350540%_
               (lambda (_%g5053450536%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5053450536%_))))
          (_%g5053350540%_ _%$stx50530%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx50544%_)
        (let* ((_%g5054850562%_
                (lambda (_%g5054950558%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5054950558%_)))
               (_%g5054750603%_
                (lambda (_%g5054950566%_)
                  (if (gx#stx-pair? _%g5054950566%_)
                      (let ((_%e5055150569%_ (gx#syntax-e _%g5054950566%_)))
                        (let ((_%hd5055250573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5055150569%_)))
                              (_%tl5055350576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5055150569%_))))
                          (if (gx#stx-pair? _%tl5055350576%_)
                              (let ((_%e5055450579%_
                                     (gx#syntax-e _%tl5055350576%_)))
                                (let ((_%hd5055550583%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5055450579%_)))
                                      (_%tl5055650586%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5055450579%_))))
                                  (if (gx#stx-null? _%tl5055650586%_)
                                      ((lambda (_%g5055050589%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g5055050589%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g5055050589%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5055550583%_)
                                      (_%g5054850562%_ _%g5054950566%_))))
                              (_%g5054850562%_ _%g5054950566%_))))
                      (_%g5054850562%_ _%g5054950566%_)))))
          (_%g5054750603%_ _%$stx50544%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx50607%_)
        (let* ((_%g5061050633%_
                (lambda (_%g5061150629%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5061150629%_)))
               (_%g5060950757%_
                (lambda (_%g5061150637%_)
                  (if (gx#stx-pair? _%g5061150637%_)
                      (let ((_%e5061650640%_ (gx#syntax-e _%g5061150637%_)))
                        (let ((_%hd5061750644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5061650640%_)))
                              (_%tl5061850647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5061650640%_))))
                          (if (gx#stx-pair? _%tl5061850647%_)
                              (let ((_%e5061950650%_
                                     (gx#syntax-e _%tl5061850647%_)))
                                (let ((_%hd5062050654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5061950650%_)))
                                      (_%tl5062150657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5061950650%_))))
                                  (if (gx#stx-pair? _%tl5062150657%_)
                                      (let ((_%e5062250660%_
                                             (gx#syntax-e _%tl5062150657%_)))
                                        (let ((_%hd5062350664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5062250660%_)))
                                              (_%tl5062450667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5062250660%_))))
                                          (if (gx#stx-pair? _%tl5062450667%_)
                                              (let ((_%e5062550670%_
                                                     (gx#syntax-e
                                                      _%tl5062450667%_)))
                                                (let ((_%hd5062650674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5062550670%_)))
                                                      (_%tl5062750677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5062550670%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5062750677%_)
                                                      ((lambda (_%g5061250680%_
                                                                _%g5061350682%_
                                                                _%g5061450683%_
                                                                _%g5061550684%_)
                                                         (let* ((_%g5070450712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5070550708%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5070550708%_)))
                        (_%g5070350731%_
                         (lambda (_%g5070550716%_)
                           ((lambda (_%g5070650719%_)
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
                                (cons _%g5070650719%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5061350682%_ '()))
                                      (cons 'value:
                                            (cons _%g5061250680%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5070550716%_))))
                   (_%g5070350731%_
                    (let ((_%$e50743%_
                           (let ((_%$e50735%_ (gx#stx-source _%g5061450683%_)))
                             (if _%$e50735%_
                                 _%$e50735%_
                                 (let ((_%$e50739%_
                                        (gx#stx-source _%stx50607%_)))
                                   (if _%$e50739%_
                                       _%$e50739%_
                                       (gx#stx-source _%g5061550684%_)))))))
                      (if _%$e50743%_
                          ((lambda (_%locat50747%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5074950751%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat50747%_
                                   '#t
                                   _%g5074950751%_)))))
                           _%$e50743%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5062650674%_
               _%hd5062350664%_
               _%hd5062050654%_
               _%hd5061750644%_)
              (_%g5061050633%_ _%g5061150637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5061050633%_
                                               _%g5061150637%_))))
                                      (_%g5061050633%_ _%g5061150637%_))))
                              (_%g5061050633%_ _%g5061150637%_))))
                      (_%g5061050633%_ _%g5061150637%_)))))
          (_%g5060950757%_ _%stx50607%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx50761%_)
        (let* ((_%g5076450779%_
                (lambda (_%g5076550775%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5076550775%_)))
               (_%g5076350875%_
                (lambda (_%g5076550783%_)
                  (if (gx#stx-pair? _%g5076550783%_)
                      (let ((_%e5076850786%_ (gx#syntax-e _%g5076550783%_)))
                        (let ((_%hd5076950790%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5076850786%_)))
                              (_%tl5077050793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5076850786%_))))
                          (if (gx#stx-pair? _%tl5077050793%_)
                              (let ((_%e5077150796%_
                                     (gx#syntax-e _%tl5077050793%_)))
                                (let ((_%hd5077250800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5077150796%_)))
                                      (_%tl5077350803%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5077150796%_))))
                                  (if (gx#stx-null? _%tl5077350803%_)
                                      ((lambda (_%g5076650806%_
                                                _%g5076750808%_)
                                         (let* ((_%g5082250830%_
                                                 (lambda (_%g5082350826%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5082350826%_)))
                                                (_%g5082150849%_
                                                 (lambda (_%g5082350834%_)
                                                   ((lambda (_%g5082450837%_)
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
                                                        (cons _%g5082450837%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g5076650806%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5082350834%_))))
                                           (_%g5082150849%_
                                            (let ((_%$e50861%_
                                                   (let ((_%$e50853%_
                                                          (gx#stx-source
                                                           _%g5076650806%_)))
                                                     (if _%$e50853%_
                                                         _%$e50853%_
                                                         (let ((_%$e50857%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx50761%_)))
                   (if _%$e50857%_
                       _%$e50857%_
                       (gx#stx-source _%g5076750808%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e50861%_
                                                  ((lambda (_%locat50865%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5086750869%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat50865%_
                                                           '#t
                                                           _%g5086750869%_)))))
                                                   _%$e50861%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5077250800%_
                                       _%hd5076950790%_)
                                      (_%g5076450779%_ _%g5076550783%_))))
                              (_%g5076450779%_ _%g5076550783%_))))
                      (_%g5076450779%_ _%g5076550783%_)))))
          (_%g5076350875%_ _%stx50761%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx50879%_)
        (let* ((_%g5088350897%_
                (lambda (_%g5088450893%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5088450893%_)))
               (_%g5088250938%_
                (lambda (_%g5088450901%_)
                  (if (gx#stx-pair? _%g5088450901%_)
                      (let ((_%e5088650904%_ (gx#syntax-e _%g5088450901%_)))
                        (let ((_%hd5088750908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5088650904%_)))
                              (_%tl5088850911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5088650904%_))))
                          (if (gx#stx-pair? _%tl5088850911%_)
                              (let ((_%e5088950914%_
                                     (gx#syntax-e _%tl5088850911%_)))
                                (let ((_%hd5089050918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5088950914%_)))
                                      (_%tl5089150921%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5088950914%_))))
                                  (if (gx#stx-null? _%tl5089150921%_)
                                      ((lambda (_%g5088550924%_)
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
                         (cons _%g5088550924%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5089050918%_)
                                      (_%g5088350897%_ _%g5088450901%_))))
                              (_%g5088350897%_ _%g5088450901%_))))
                      (_%g5088350897%_ _%g5088450901%_)))))
          (_%g5088250938%_ _%$stx50879%_))))))
