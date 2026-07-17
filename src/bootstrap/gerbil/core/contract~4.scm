(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g105169_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g105170_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g105171_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx53878%_)
        (let* ((_%__stx9826898269%_ _%stx53878%_)
               (_%$%g5388253915%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9826898269%_))))
          (let ((_%__kont9827198272%_
                 (lambda (_%$%g5388454164%_ _%$%g5388554166%_)
                   (let ((_%meta54181%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx53878%_
                             _%$%g5388454164%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta54181%_))
                         (let* ((_%$%g5418654201%_
                                 (lambda (_%$%g5418754197%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5418754197%_)))
                                (_%$%g5418554248%_
                                 (lambda (_%$%g5418754205%_)
                                   (if (gx#stx-pair? _%$%g5418754205%_)
                                       (let ((_%$%e5419054208%_
                                              (gx#syntax-e _%$%g5418754205%_)))
                                         (let ((_%$%hd5419154212%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5419054208%_)))
                                               (_%$%tl5419254215%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5419054208%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5419254215%_)
                                               (let ((_%$%e5419354218%_
                                                      (gx#syntax-e
                                                       _%$%tl5419254215%_)))
                                                 (let ((_%$%hd5419454222%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5419354218%_)))
                                                       (_%$%tl5419554225%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5419354218%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5419554225%_)
                                                       (if (let ((__tmp105166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj104984 _%meta54181%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj104984
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj104984
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj104984 'id)))))
                     (declare (not safe))
                     (##memq __tmp105166 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5419154212%_ '()))
                               (cons _%$%g5388554166%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5419154212%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%$%g5388554166%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5419454222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'contract-violation!)
                                             (cons _%$%g5388554166%_
                                                   (cons (cons _%$%hd5419454222%_
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
               (_%$%g5418654201%_ _%$%g5418754205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5418654201%_
                                                _%$%g5418754205%_))))
                                       (_%$%g5418654201%_
                                        _%$%g5418754205%_)))))
                           (_%$%g5418554248%_
                            (list (let ((__obj104985 _%meta54181%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj104985
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj104985
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj104985
                                         'type-descriptor)))
                                  (let ((__obj104986 _%meta54181%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj104986
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj104986
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj104986
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta54181%_))
                             (let* ((_%$%g5425454269%_
                                     (lambda (_%$%g5425554265%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5425554265%_)))
                                    (_%$%g5425354314%_
                                     (lambda (_%$%g5425554273%_)
                                       (if (gx#stx-pair? _%$%g5425554273%_)
                                           (let ((_%$%e5425854276%_
                                                  (gx#syntax-e
                                                   _%$%g5425554273%_)))
                                             (let ((_%$%hd5425954280%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5425854276%_)))
                                                   (_%$%tl5426054283%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5425854276%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5426054283%_)
                                                   (let ((_%$%e5426154286%_
                                                          (gx#syntax-e
                                                           _%$%tl5426054283%_)))
                                                     (let ((_%$%hd5426254290%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5426154286%_)))
                                                           (_%$%tl5426354293%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5426154286%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5426354293%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5425954280%_ '()))
                               (cons (cons _%$%hd5426254290%_
                                           (cons _%$%g5388554166%_ '()))
                                     '())))
                   (_%$%g5425454269%_ _%$%g5425554273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5425454269%_
                                                    _%$%g5425554273%_))))
                                           (_%$%g5425454269%_
                                            _%$%g5425554273%_)))))
                               (_%$%g5425354314%_
                                (list (let ((__obj104983 _%meta54181%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj104983
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj104983
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj104983
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx53878%_
                                         _%$%g5388454164%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx53878%_
                              _%$%g5388454164%_))))))
                (_%__kont9827398274%_
                 (lambda (_%$%g5389553966%_ _%$%g5389653968%_)
                   (let ((_%meta53988%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx53878%_
                             _%$%g5389553966%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta53988%_))
                         (let* ((_%$%g5399354008%_
                                 (lambda (_%$%g5399454004%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5399454004%_)))
                                (_%$%g5399254055%_
                                 (lambda (_%$%g5399454012%_)
                                   (if (gx#stx-pair? _%$%g5399454012%_)
                                       (let ((_%$%e5399754015%_
                                              (gx#syntax-e _%$%g5399454012%_)))
                                         (let ((_%$%hd5399854019%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5399754015%_)))
                                               (_%$%tl5399954022%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5399754015%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5399954022%_)
                                               (let ((_%$%e5400054025%_
                                                      (gx#syntax-e
                                                       _%$%tl5399954022%_)))
                                                 (let ((_%$%hd5400154029%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5400054025%_)))
                                                       (_%$%tl5400254032%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5400054025%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5400254032%_)
                                                       (if (let ((__tmp105167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj104988 _%meta53988%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj104988
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj104988
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj104988 'id)))))
                     (declare (not safe))
                     (##memq __tmp105167 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5399854019%_ '()))
                               (cons _%$%g5389653968%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5399854019%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin-annotation)
                           (cons (cons (gx#datum->syntax '#f '@type)
                                       (cons (gx#datum->syntax '#f 't::t) '()))
                                 (cons _%$%g5389653968%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5400154029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'runtime-contract-violation!)
                                             (cons _%$%g5389653968%_
                                                   (cons (cons _%$%hd5400154029%_
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
               (_%$%g5399354008%_ _%$%g5399454012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5399354008%_
                                                _%$%g5399454012%_))))
                                       (_%$%g5399354008%_
                                        _%$%g5399454012%_)))))
                           (_%$%g5399254055%_
                            (list (let ((__obj104989 _%meta53988%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj104989
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj104989
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj104989
                                         'type-descriptor)))
                                  (let ((__obj104990 _%meta53988%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj104990
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj104990
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj104990
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta53988%_))
                             (let* ((_%$%g5406154076%_
                                     (lambda (_%$%g5406254072%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5406254072%_)))
                                    (_%$%g5406054121%_
                                     (lambda (_%$%g5406254080%_)
                                       (if (gx#stx-pair? _%$%g5406254080%_)
                                           (let ((_%$%e5406554083%_
                                                  (gx#syntax-e
                                                   _%$%g5406254080%_)))
                                             (let ((_%$%hd5406654087%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5406554083%_)))
                                                   (_%$%tl5406754090%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5406554083%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5406754090%_)
                                                   (let ((_%$%e5406854093%_
                                                          (gx#syntax-e
                                                           _%$%tl5406754090%_)))
                                                     (let ((_%$%hd5406954097%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5406854093%_)))
                                                           (_%$%tl5407054100%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5406854093%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5407054100%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5406654087%_ '()))
                               (cons (cons _%$%hd5406954097%_
                                           (cons _%$%g5389653968%_ '()))
                                     '())))
                   (_%$%g5406154076%_ _%$%g5406254080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5406154076%_
                                                    _%$%g5406254080%_))))
                                           (_%$%g5406154076%_
                                            _%$%g5406254080%_)))))
                               (_%$%g5406054121%_
                                (list (let ((__obj104987 _%meta53988%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj104987
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj104987
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj104987
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx53878%_
                                         _%$%g5389553966%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx53878%_
                              _%$%g5389553966%_)))))))
            (let* ((_%__match9832798328%_
                    (lambda (_%$%e5389753922%_
                             _%$%hd5389853926%_
                             _%$%tl5389953929%_
                             _%$%e5390053932%_
                             _%$%hd5390153936%_
                             _%$%tl5390253939%_
                             _%$%e5390353942%_
                             _%$%hd5390453946%_
                             _%$%tl5390553949%_
                             _%$%e5390653952%_
                             _%$%e5390753956%_
                             _%$%hd5390853960%_
                             _%$%tl5390953963%_)
                      (let ((_%$%g5389553966%_ _%$%hd5390853960%_)
                            (_%$%g5389653968%_ _%$%hd5390153936%_))
                        (if (gx#identifier? _%$%g5389553966%_)
                            (_%__kont9827398274%_
                             _%$%g5389553966%_
                             _%$%g5389653968%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5388253915%_))))))
                   (_%__match9829598296%_
                    (lambda (_%$%e5388654134%_
                             _%$%hd5388754138%_
                             _%$%tl5388854141%_
                             _%$%e5388954144%_
                             _%$%hd5389054148%_
                             _%$%tl5389154151%_
                             _%$%e5389254154%_
                             _%$%hd5389354158%_
                             _%$%tl5389454161%_)
                      (let ((_%$%g5388454164%_ _%$%hd5389354158%_)
                            (_%$%g5388554166%_ _%$%hd5389054148%_))
                        (if (gx#identifier? _%$%g5388454164%_)
                            (_%__kont9827198272%_
                             _%$%g5388454164%_
                             _%$%g5388554166%_)
                            (if (gx#stx-datum? _%$%hd5389354158%_)
                                (let ((_%$%e5390653952%_
                                       (gx#stx-e _%$%hd5389354158%_)))
                                  (declare (not safe))
                                  (_%$%g5388253915%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5388253915%_))))))))
              (if (gx#stx-pair? _%__stx9826898269%_)
                  (let ((_%$%e5388654134%_ (gx#syntax-e _%__stx9826898269%_)))
                    (let ((_%$%tl5388854141%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5388654134%_)))
                          (_%$%hd5388754138%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5388654134%_))))
                      (if (gx#stx-pair? _%$%tl5388854141%_)
                          (let ((_%$%e5388954144%_
                                 (gx#syntax-e _%$%tl5388854141%_)))
                            (let ((_%$%tl5389154151%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5388954144%_)))
                                  (_%$%hd5389054148%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5388954144%_))))
                              (if (gx#stx-pair? _%$%tl5389154151%_)
                                  (let ((_%$%e5389254154%_
                                         (gx#syntax-e _%$%tl5389154151%_)))
                                    (let ((_%$%tl5389454161%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5389254154%_)))
                                          (_%$%hd5389354158%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5389254154%_))))
                                      (if (gx#stx-null? _%$%tl5389454161%_)
                                          (_%__match9829598296%_
                                           _%$%e5388654134%_
                                           _%$%hd5388754138%_
                                           _%$%tl5388854141%_
                                           _%$%e5388954144%_
                                           _%$%hd5389054148%_
                                           _%$%tl5389154151%_
                                           _%$%e5389254154%_
                                           _%$%hd5389354158%_
                                           _%$%tl5389454161%_)
                                          (if (gx#stx-datum?
                                               _%$%hd5389354158%_)
                                              (let ((_%$%e5390653952%_
                                                     (gx#stx-e
                                                      _%$%hd5389354158%_)))
                                                (if (equal? _%$%e5390653952%_
                                                            'runtime:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl5389454161%_)
                                                        (let ((_%$%e5390753956%_
                                                               (gx#syntax-e
                                                                _%$%tl5389454161%_)))
                                                          (let ((_%$%tl5390953963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5390753956%_)))
                        (_%$%hd5390853960%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5390753956%_))))
                    (if (gx#stx-null? _%$%tl5390953963%_)
                        (_%__match9832798328%_
                         _%$%e5388654134%_
                         _%$%hd5388754138%_
                         _%$%tl5388854141%_
                         _%$%e5388954144%_
                         _%$%hd5389054148%_
                         _%$%tl5389154151%_
                         _%$%e5389254154%_
                         _%$%hd5389354158%_
                         _%$%tl5389454161%_
                         _%$%e5390653952%_
                         _%$%e5390753956%_
                         _%$%hd5390853960%_
                         _%$%tl5390953963%_)
                        (let () (declare (not safe)) (_%$%g5388253915%_)))))
                (let () (declare (not safe)) (_%$%g5388253915%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5388253915%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5388253915%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5388253915%_)))))
                          (let () (declare (not safe)) (_%$%g5388253915%_)))))
                  (let () (declare (not safe)) (_%$%g5388253915%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx54324%_)
        (let* ((_%$%g5432754345%_
                (lambda (_%$%g5432854341%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5432854341%_)))
               (_%$%g5432654539%_
                (lambda (_%$%g5432854349%_)
                  (if (gx#stx-pair? _%$%g5432854349%_)
                      (let ((_%$%e5433154352%_
                             (gx#syntax-e _%$%g5432854349%_)))
                        (let ((_%$%hd5433254356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5433154352%_)))
                              (_%$%tl5433354359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5433154352%_))))
                          (if (gx#stx-pair? _%$%tl5433354359%_)
                              (let ((_%$%e5433454362%_
                                     (gx#syntax-e _%$%tl5433354359%_)))
                                (let ((_%$%hd5433554366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5433454362%_)))
                                      (_%$%tl5433654369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5433454362%_))))
                                  (if (gx#stx-pair? _%$%tl5433654369%_)
                                      (let ((_%$%e5433754372%_
                                             (gx#syntax-e _%$%tl5433654369%_)))
                                        (let ((_%$%hd5433854376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5433754372%_)))
                                              (_%$%tl5433954379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5433754372%_))))
                                          (if (gx#stx-null? _%$%tl5433954379%_)
                                              (if (gx#identifier?
                                                   _%$%hd5433854376%_)
                                                  (let ((_%meta54400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                            _%stx54324%_
                                                            _%$%hd5433854376%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           _%meta54400%_))
                                                        (let* ((_%$%g5440554420%_
                                                                (lambda (_%$%g5440654416%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g5440654416%_)))
                       (_%$%g5440454467%_
                        (lambda (_%$%g5440654424%_)
                          (if (gx#stx-pair? _%$%g5440654424%_)
                              (let ((_%$%e5440954427%_
                                     (gx#syntax-e _%$%g5440654424%_)))
                                (let ((_%$%hd5441054431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5440954427%_)))
                                      (_%$%tl5441154434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5440954427%_))))
                                  (if (gx#stx-pair? _%$%tl5441154434%_)
                                      (let ((_%$%e5441254437%_
                                             (gx#syntax-e _%$%tl5441154434%_)))
                                        (let ((_%$%hd5441354441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5441254437%_)))
                                              (_%$%tl5441454444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5441254437%_))))
                                          (if (gx#stx-null? _%$%tl5441454444%_)
                                              (if (let ((__tmp105168
                                                         (let ((__obj104992
                                                                _%meta54400%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj104992
                          'gerbil/core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj104992 '2 '#f '#f))
                       (unchecked-slot-ref __obj104992 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##memq __tmp105168
                                                            '(t void)))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5441054431%_ '()))
                      (cons _%$%hd5433554366%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5441054431%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5433554366%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'or)
                        (cons (cons (gx#datum->syntax '#f 'not)
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              (cons (cons _%$%hd5441354441%_
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    '())))
                  (cons (gx#datum->syntax '#f 'val)
                        (cons (cons (gx#datum->syntax '#f 'contract-violation!)
                                    (cons _%$%hd5433554366%_
                                          (cons (cons _%$%hd5441354441%_
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
                                              (_%$%g5440554420%_
                                               _%$%g5440654424%_))))
                                      (_%$%g5440554420%_ _%$%g5440654424%_))))
                              (_%$%g5440554420%_ _%$%g5440654424%_)))))
                  (_%$%g5440454467%_
                   (list (let ((__obj104993 _%meta54400%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj104993
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj104993
                                  '4
                                  '#f
                                  '#f))
                               (unchecked-slot-ref
                                __obj104993
                                'type-descriptor)))
                         (let ((__obj104994 _%meta54400%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj104994
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj104994
                                  '15
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj104994 'predicate))))))
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       _%meta54400%_))
                    (let* ((_%$%g5447354488%_
                            (lambda (_%$%g5447454484%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5447454484%_)))
                           (_%$%g5447254533%_
                            (lambda (_%$%g5447454492%_)
                              (if (gx#stx-pair? _%$%g5447454492%_)
                                  (let ((_%$%e5447754495%_
                                         (gx#syntax-e _%$%g5447454492%_)))
                                    (let ((_%$%hd5447854499%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5447754495%_)))
                                          (_%$%tl5447954502%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5447754495%_))))
                                      (if (gx#stx-pair? _%$%tl5447954502%_)
                                          (let ((_%$%e5448054505%_
                                                 (gx#syntax-e
                                                  _%$%tl5447954502%_)))
                                            (let ((_%$%hd5448154509%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5448054505%_)))
                                                  (_%$%tl5448254512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5448054505%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5448254512%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5447854499%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5433554366%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'and)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          (cons (cons _%$%hd5448154509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5447354488%_
                                                   _%$%g5447454492%_))))
                                          (_%$%g5447354488%_
                                           _%$%g5447454492%_))))
                                  (_%$%g5447354488%_ _%$%g5447454492%_)))))
                      (_%$%g5447254533%_
                       (list (let ((__obj104991 _%meta54400%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj104991
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj104991
                                      '3
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj104991
                                    'type-descriptor)))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                _%stx54324%_
                                _%$%hd5433854376%_)))))
                    (gx#raise-syntax-error
                     '#f
                     '"not a class type or interface"
                     _%stx54324%_
                     _%$%hd5433854376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5432754345%_
                                                   _%$%g5432854349%_))
                                              (_%$%g5432754345%_
                                               _%$%g5432854349%_))))
                                      (_%$%g5432754345%_ _%$%g5432854349%_))))
                              (_%$%g5432754345%_ _%$%g5432854349%_))))
                      (_%$%g5432754345%_ _%$%g5432854349%_)))))
          (_%$%g5432654539%_ _%stx54324%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx54543%_)
        (let* ((_%$%g5454654564%_
                (lambda (_%$%g5454754560%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5454754560%_)))
               (_%$%g5454554650%_
                (lambda (_%$%g5454754568%_)
                  (if (gx#stx-pair? _%$%g5454754568%_)
                      (let ((_%$%e5455054571%_
                             (gx#syntax-e _%$%g5454754568%_)))
                        (let ((_%$%hd5455154575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5455054571%_)))
                              (_%$%tl5455254578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5455054571%_))))
                          (if (gx#stx-pair? _%$%tl5455254578%_)
                              (let ((_%$%e5455354581%_
                                     (gx#syntax-e _%$%tl5455254578%_)))
                                (let ((_%$%hd5455454585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5455354581%_)))
                                      (_%$%tl5455554588%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5455354581%_))))
                                  (if (gx#stx-pair? _%$%tl5455554588%_)
                                      (let ((_%$%e5455654591%_
                                             (gx#syntax-e _%$%tl5455554588%_)))
                                        (let ((_%$%hd5455754595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5455654591%_)))
                                              (_%$%tl5455854598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5455654591%_))))
                                          (if (gx#stx-null? _%$%tl5455854598%_)
                                              (if (gx#identifier?
                                                   _%$%hd5455754595%_)
                                                  (let* ((_%$%g5461954627%_
                                                          (lambda (_%$%g5462054623%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g5462054623%_)))
                                                         (_%$%g5461854646%_
                                                          (lambda (_%$%g5462054631%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%$%g5462054631%_ '()))
                                (cons _%$%hd5455454585%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5461854646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                                        _%stx54543%_
                                                        _%$%hd5455754595%_))))
                                                  (_%$%g5454654564%_
                                                   _%$%g5454754568%_))
                                              (_%$%g5454654564%_
                                               _%$%g5454754568%_))))
                                      (_%$%g5454654564%_ _%$%g5454754568%_))))
                              (_%$%g5454654564%_ _%$%g5454754568%_))))
                      (_%$%g5454654564%_ _%$%g5454754568%_)))))
          (_%$%g5454554650%_ _%stx54543%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx54654%_)
        (let* ((_%__stx9833098331%_ _%$stx54654%_)
               (_%$%g5466054744%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9833098331%_))))
          (let ((_%__kont9833398334%_
                 (lambda (_%$%g5466255048%_
                          _%$%g5466355050%_
                          _%$%g5466455051%_
                          _%$%g5466555052%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5466555052%_
                                           (cons _%$%g5466355050%_
                                                 (foldr (lambda (_%$%g5507655079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5507755082%_)
                  (cons _%$%g5507655079%_ _%$%g5507755082%_))
                '()
                _%$%g5466255048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5466455051%_ '())))))
                (_%__kont9833798338%_
                 (lambda (_%$%g5469054926%_
                          _%$%g5469154928%_
                          _%$%g5469254929%_
                          _%$%g5469354930%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5469354930%_
                                           (cons _%$%g5469154928%_
                                                 (foldr (lambda (_%$%g5495454957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5495554960%_)
                  (cons _%$%g5495454957%_ _%$%g5495554960%_))
                '()
                _%$%g5469054926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5469254929%_ '())))))
                (_%__kont9834198342%_
                 (lambda (_%$%g5471854809%_
                          _%$%g5471954811%_
                          _%$%g5472054812%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%$%g5472054812%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%$%g5471954811%_
                                                       (foldr (lambda (_%$%g5483254835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g5483354838%_)
                        (cons _%$%g5483254835%_ _%$%g5483354838%_))
                      '()
                      _%$%g5471854809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9845598456%_
                    (lambda (_%$%e5472154751%_
                             _%$%hd5472254755%_
                             _%$%tl5472354758%_
                             _%$%e5472454761%_
                             _%$%hd5472554765%_
                             _%$%tl5472654768%_
                             _%$%e5472754771%_
                             _%$%hd5472854775%_
                             _%$%tl5472954778%_
                             _%__splice9834398344%_
                             _%$%target5473054781%_
                             _%$%tl5473254784%_)
                      (letrec ((_%$%loop5473354787%_
                                (lambda (_%$%hd5473154791%_
                                         _%$%rest5473754794%_)
                                  (if (gx#stx-pair? _%$%hd5473154791%_)
                                      (let ((_%$%e5473454796%_
                                             (gx#syntax-e _%$%hd5473154791%_)))
                                        (let ((_%$%lp-tl5473654803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5473454796%_)))
                                              (_%$%lp-hd5473554800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5473454796%_))))
                                          (_%$%loop5473354787%_
                                           _%$%lp-tl5473654803%_
                                           (cons _%$%lp-hd5473554800%_
                                                 _%$%rest5473754794%_))))
                                      (let ((_%$%rest5473854806%_
                                             (reverse _%$%rest5473754794%_)))
                                        (_%__kont9834198342%_
                                         _%$%rest5473854806%_
                                         _%$%hd5472854775%_
                                         _%$%hd5472554765%_))))))
                        (_%$%loop5473354787%_ _%$%target5473054781%_ '()))))
                   (_%__match9842998430%_
                    (lambda (_%$%e5469454848%_
                             _%$%hd5469554852%_
                             _%$%tl5469654855%_
                             _%$%e5469754858%_
                             _%$%hd5469854862%_
                             _%$%tl5469954865%_
                             _%$%e5470054868%_
                             _%$%hd5470154872%_
                             _%$%tl5470254875%_
                             _%$%e5470354878%_
                             _%$%hd5470454882%_
                             _%$%tl5470554885%_
                             _%$%e5470654888%_
                             _%$%hd5470754892%_
                             _%$%tl5470854895%_
                             _%__splice9833998340%_
                             _%$%target5470954898%_
                             _%$%tl5471154901%_)
                      (letrec ((_%$%loop5471254904%_
                                (lambda (_%$%hd5471054908%_
                                         _%$%rest5471654911%_)
                                  (if (gx#stx-pair? _%$%hd5471054908%_)
                                      (let ((_%$%e5471354913%_
                                             (gx#syntax-e _%$%hd5471054908%_)))
                                        (let ((_%$%lp-tl5471554920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5471354913%_)))
                                              (_%$%lp-hd5471454917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5471354913%_))))
                                          (_%$%loop5471254904%_
                                           _%$%lp-tl5471554920%_
                                           (cons _%$%lp-hd5471454917%_
                                                 _%$%rest5471654911%_))))
                                      (let ((_%$%rest5471754923%_
                                             (reverse _%$%rest5471654911%_)))
                                        (_%__kont9833798338%_
                                         _%$%rest5471754923%_
                                         _%$%hd5470754892%_
                                         _%$%hd5470454882%_
                                         _%$%hd5469854862%_))))))
                        (_%$%loop5471254904%_ _%$%target5470954898%_ '()))))
                   (_%__match9838798388%_
                    (lambda (_%$%e5466654970%_
                             _%$%hd5466754974%_
                             _%$%tl5466854977%_
                             _%$%e5466954980%_
                             _%$%hd5467054984%_
                             _%$%tl5467154987%_
                             _%$%e5467254990%_
                             _%$%hd5467354994%_
                             _%$%tl5467454997%_
                             _%$%e5467555000%_
                             _%$%hd5467655004%_
                             _%$%tl5467755007%_
                             _%$%e5467855010%_
                             _%$%hd5467955014%_
                             _%$%tl5468055017%_
                             _%__splice9833598336%_
                             _%$%target5468155020%_
                             _%$%tl5468355023%_)
                      (letrec ((_%$%loop5468455026%_
                                (lambda (_%$%hd5468255030%_
                                         _%$%rest5468855033%_)
                                  (if (gx#stx-pair? _%$%hd5468255030%_)
                                      (let ((_%$%e5468555035%_
                                             (gx#syntax-e _%$%hd5468255030%_)))
                                        (let ((_%$%lp-tl5468755042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5468555035%_)))
                                              (_%$%lp-hd5468655039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5468555035%_))))
                                          (_%$%loop5468455026%_
                                           _%$%lp-tl5468755042%_
                                           (cons _%$%lp-hd5468655039%_
                                                 _%$%rest5468855033%_))))
                                      (let ((_%$%rest5468955045%_
                                             (reverse _%$%rest5468855033%_)))
                                        (_%__kont9833398334%_
                                         _%$%rest5468955045%_
                                         _%$%hd5467955014%_
                                         _%$%hd5467655004%_
                                         _%$%hd5467054984%_))))))
                        (_%$%loop5468455026%_ _%$%target5468155020%_ '())))))
              (if (gx#stx-pair? _%__stx9833098331%_)
                  (let ((_%$%e5466654970%_ (gx#syntax-e _%__stx9833098331%_)))
                    (let ((_%$%tl5466854977%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5466654970%_)))
                          (_%$%hd5466754974%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5466654970%_))))
                      (if (gx#stx-pair? _%$%tl5466854977%_)
                          (let ((_%$%e5466954980%_
                                 (gx#syntax-e _%$%tl5466854977%_)))
                            (let ((_%$%tl5467154987%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5466954980%_)))
                                  (_%$%hd5467054984%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5466954980%_))))
                              (if (gx#stx-pair? _%$%tl5467154987%_)
                                  (let ((_%$%e5467254990%_
                                         (gx#syntax-e _%$%tl5467154987%_)))
                                    (let ((_%$%tl5467454997%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5467254990%_)))
                                          (_%$%hd5467354994%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5467254990%_))))
                                      (if (gx#identifier? _%$%hd5467354994%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g105169_|
                                               _%$%hd5467354994%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl5467454997%_)
                                                  (let ((_%$%e5467555000%_
                                                         (gx#syntax-e
                                                          _%$%tl5467454997%_)))
                                                    (let ((_%$%tl5467755007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5467555000%_)))
                                                          (_%$%hd5467655004%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5467555000%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5467755007%_)
                                                          (let ((_%$%e5467855010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5467755007%_)))
                    (let ((_%$%tl5468055017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5467855010%_)))
                          (_%$%hd5467955014%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5467855010%_))))
                      (if (gx#stx-pair/null? _%$%tl5468055017%_)
                          (let ((_%__splice9833598336%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5468055017%_
                                  '0)))
                            (let ((_%$%tl5468355023%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9833598336%_ '1)))
                                  (_%$%target5468155020%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9833598336%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5468355023%_)
                                  (_%__match9838798388%_
                                   _%$%e5466654970%_
                                   _%$%hd5466754974%_
                                   _%$%tl5466854977%_
                                   _%$%e5466954980%_
                                   _%$%hd5467054984%_
                                   _%$%tl5467154987%_
                                   _%$%e5467254990%_
                                   _%$%hd5467354994%_
                                   _%$%tl5467454997%_
                                   _%$%e5467555000%_
                                   _%$%hd5467655004%_
                                   _%$%tl5467755007%_
                                   _%$%e5467855010%_
                                   _%$%hd5467955014%_
                                   _%$%tl5468055017%_
                                   _%__splice9833598336%_
                                   _%$%target5468155020%_
                                   _%$%tl5468355023%_)
                                  (if (gx#stx-pair/null? _%$%tl5467454997%_)
                                      (let ((_%__splice9834398344%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5467454997%_
                                              '0)))
                                        (let ((_%$%tl5473254784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9834398344%_
                                                  '1)))
                                              (_%$%target5473054781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9834398344%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5473254784%_)
                                              (_%__match9845598456%_
                                               _%$%e5466654970%_
                                               _%$%hd5466754974%_
                                               _%$%tl5466854977%_
                                               _%$%e5466954980%_
                                               _%$%hd5467054984%_
                                               _%$%tl5467154987%_
                                               _%$%e5467254990%_
                                               _%$%hd5467354994%_
                                               _%$%tl5467454997%_
                                               _%__splice9834398344%_
                                               _%$%target5473054781%_
                                               _%$%tl5473254784%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5466054744%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5466054744%_))))))
                          (if (gx#stx-pair/null? _%$%tl5467454997%_)
                              (let ((_%__splice9834398344%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5467454997%_
                                      '0)))
                                (let ((_%$%tl5473254784%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9834398344%_
                                          '1)))
                                      (_%$%target5473054781%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9834398344%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5473254784%_)
                                      (_%__match9845598456%_
                                       _%$%e5466654970%_
                                       _%$%hd5466754974%_
                                       _%$%tl5466854977%_
                                       _%$%e5466954980%_
                                       _%$%hd5467054984%_
                                       _%$%tl5467154987%_
                                       _%$%e5467254990%_
                                       _%$%hd5467354994%_
                                       _%$%tl5467454997%_
                                       _%__splice9834398344%_
                                       _%$%target5473054781%_
                                       _%$%tl5473254784%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5466054744%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5466054744%_))))))
                  (if (gx#stx-pair/null? _%$%tl5467454997%_)
                      (let ((_%__splice9834398344%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5467454997%_
                              '0)))
                        (let ((_%$%tl5473254784%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9834398344%_ '1)))
                              (_%$%target5473054781%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9834398344%_ '0))))
                          (if (gx#stx-null? _%$%tl5473254784%_)
                              (_%__match9845598456%_
                               _%$%e5466654970%_
                               _%$%hd5466754974%_
                               _%$%tl5466854977%_
                               _%$%e5466954980%_
                               _%$%hd5467054984%_
                               _%$%tl5467154987%_
                               _%$%e5467254990%_
                               _%$%hd5467354994%_
                               _%$%tl5467454997%_
                               _%__splice9834398344%_
                               _%$%target5473054781%_
                               _%$%tl5473254784%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5466054744%_)))))
                      (let () (declare (not safe)) (_%$%g5466054744%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5467454997%_)
                                                      (let ((_%__splice9834398344%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5467454997%_
                                                              '0)))
                                                        (let ((_%$%tl5473254784%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9834398344%_ '1)))
                      (_%$%target5473054781%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9834398344%_ '0))))
                  (if (gx#stx-null? _%$%tl5473254784%_)
                      (_%__match9845598456%_
                       _%$%e5466654970%_
                       _%$%hd5466754974%_
                       _%$%tl5466854977%_
                       _%$%e5466954980%_
                       _%$%hd5467054984%_
                       _%$%tl5467154987%_
                       _%$%e5467254990%_
                       _%$%hd5467354994%_
                       _%$%tl5467454997%_
                       _%__splice9834398344%_
                       _%$%target5473054781%_
                       _%$%tl5473254784%_)
                      (let () (declare (not safe)) (_%$%g5466054744%_)))))
              (let () (declare (not safe)) (_%$%g5466054744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g105170_|
                                                   _%$%hd5467354994%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl5467454997%_)
                                                      (let ((_%$%e5470354878%_
                                                             (gx#syntax-e
                                                              _%$%tl5467454997%_)))
                                                        (let ((_%$%tl5470554885%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5470354878%_)))
                      (_%$%hd5470454882%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5470354878%_))))
                  (if (gx#stx-pair? _%$%tl5470554885%_)
                      (let ((_%$%e5470654888%_
                             (gx#syntax-e _%$%tl5470554885%_)))
                        (let ((_%$%tl5470854895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5470654888%_)))
                              (_%$%hd5470754892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5470654888%_))))
                          (if (gx#stx-pair/null? _%$%tl5470854895%_)
                              (let ((_%__splice9833998340%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5470854895%_
                                      '0)))
                                (let ((_%$%tl5471154901%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9833998340%_
                                          '1)))
                                      (_%$%target5470954898%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9833998340%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5471154901%_)
                                      (_%__match9842998430%_
                                       _%$%e5466654970%_
                                       _%$%hd5466754974%_
                                       _%$%tl5466854977%_
                                       _%$%e5466954980%_
                                       _%$%hd5467054984%_
                                       _%$%tl5467154987%_
                                       _%$%e5467254990%_
                                       _%$%hd5467354994%_
                                       _%$%tl5467454997%_
                                       _%$%e5470354878%_
                                       _%$%hd5470454882%_
                                       _%$%tl5470554885%_
                                       _%$%e5470654888%_
                                       _%$%hd5470754892%_
                                       _%$%tl5470854895%_
                                       _%__splice9833998340%_
                                       _%$%target5470954898%_
                                       _%$%tl5471154901%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5467454997%_)
                                          (let ((_%__splice9834398344%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5467454997%_
                                                  '0)))
                                            (let ((_%$%tl5473254784%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9834398344%_
                                                      '1)))
                                                  (_%$%target5473054781%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9834398344%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5473254784%_)
                                                  (_%__match9845598456%_
                                                   _%$%e5466654970%_
                                                   _%$%hd5466754974%_
                                                   _%$%tl5466854977%_
                                                   _%$%e5466954980%_
                                                   _%$%hd5467054984%_
                                                   _%$%tl5467154987%_
                                                   _%$%e5467254990%_
                                                   _%$%hd5467354994%_
                                                   _%$%tl5467454997%_
                                                   _%__splice9834398344%_
                                                   _%$%target5473054781%_
                                                   _%$%tl5473254784%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5466054744%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5466054744%_))))))
                              (if (gx#stx-pair/null? _%$%tl5467454997%_)
                                  (let ((_%__splice9834398344%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5467454997%_
                                          '0)))
                                    (let ((_%$%tl5473254784%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9834398344%_
                                              '1)))
                                          (_%$%target5473054781%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9834398344%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5473254784%_)
                                          (_%__match9845598456%_
                                           _%$%e5466654970%_
                                           _%$%hd5466754974%_
                                           _%$%tl5466854977%_
                                           _%$%e5466954980%_
                                           _%$%hd5467054984%_
                                           _%$%tl5467154987%_
                                           _%$%e5467254990%_
                                           _%$%hd5467354994%_
                                           _%$%tl5467454997%_
                                           _%__splice9834398344%_
                                           _%$%target5473054781%_
                                           _%$%tl5473254784%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5466054744%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5466054744%_))))))
                      (if (gx#stx-pair/null? _%$%tl5467454997%_)
                          (let ((_%__splice9834398344%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5467454997%_
                                  '0)))
                            (let ((_%$%tl5473254784%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9834398344%_ '1)))
                                  (_%$%target5473054781%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9834398344%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5473254784%_)
                                  (_%__match9845598456%_
                                   _%$%e5466654970%_
                                   _%$%hd5466754974%_
                                   _%$%tl5466854977%_
                                   _%$%e5466954980%_
                                   _%$%hd5467054984%_
                                   _%$%tl5467154987%_
                                   _%$%e5467254990%_
                                   _%$%hd5467354994%_
                                   _%$%tl5467454997%_
                                   _%__splice9834398344%_
                                   _%$%target5473054781%_
                                   _%$%tl5473254784%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5466054744%_)))))
                          (let () (declare (not safe)) (_%$%g5466054744%_))))))
              (if (gx#stx-pair/null? _%$%tl5467454997%_)
                  (let ((_%__splice9834398344%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5467454997%_
                          '0)))
                    (let ((_%$%tl5473254784%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9834398344%_ '1)))
                          (_%$%target5473054781%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9834398344%_ '0))))
                      (if (gx#stx-null? _%$%tl5473254784%_)
                          (_%__match9845598456%_
                           _%$%e5466654970%_
                           _%$%hd5466754974%_
                           _%$%tl5466854977%_
                           _%$%e5466954980%_
                           _%$%hd5467054984%_
                           _%$%tl5467154987%_
                           _%$%e5467254990%_
                           _%$%hd5467354994%_
                           _%$%tl5467454997%_
                           _%__splice9834398344%_
                           _%$%target5473054781%_
                           _%$%tl5473254784%_)
                          (let () (declare (not safe)) (_%$%g5466054744%_)))))
                  (let () (declare (not safe)) (_%$%g5466054744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5467454997%_)
                                                      (let ((_%__splice9834398344%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5467454997%_
                                                              '0)))
                                                        (let ((_%$%tl5473254784%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9834398344%_ '1)))
                      (_%$%target5473054781%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9834398344%_ '0))))
                  (if (gx#stx-null? _%$%tl5473254784%_)
                      (_%__match9845598456%_
                       _%$%e5466654970%_
                       _%$%hd5466754974%_
                       _%$%tl5466854977%_
                       _%$%e5466954980%_
                       _%$%hd5467054984%_
                       _%$%tl5467154987%_
                       _%$%e5467254990%_
                       _%$%hd5467354994%_
                       _%$%tl5467454997%_
                       _%__splice9834398344%_
                       _%$%target5473054781%_
                       _%$%tl5473254784%_)
                      (let () (declare (not safe)) (_%$%g5466054744%_)))))
              (let () (declare (not safe)) (_%$%g5466054744%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl5467454997%_)
                                              (let ((_%__splice9834398344%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5467454997%_
                                                      '0)))
                                                (let ((_%$%tl5473254784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9834398344%_
                                                          '1)))
                                                      (_%$%target5473054781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9834398344%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5473254784%_)
                                                      (_%__match9845598456%_
                                                       _%$%e5466654970%_
                                                       _%$%hd5466754974%_
                                                       _%$%tl5466854977%_
                                                       _%$%e5466954980%_
                                                       _%$%hd5467054984%_
                                                       _%$%tl5467154987%_
                                                       _%$%e5467254990%_
                                                       _%$%hd5467354994%_
                                                       _%$%tl5467454997%_
                                                       _%__splice9834398344%_
                                                       _%$%target5473054781%_
                                                       _%$%tl5473254784%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5466054744%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5466054744%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5466054744%_)))))
                          (let () (declare (not safe)) (_%$%g5466054744%_)))))
                  (let () (declare (not safe)) (_%$%g5466054744%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx55092%_)
        (let* ((_%__stx9845898459%_ _%$stx55092%_)
               (_%$%g5509755133%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9845898459%_))))
          (let ((_%__kont9846198462%_
                 (lambda (_%$%g5509955251%_ _%$%g5510055253%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%$%g5510055253%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%$%g5509955251%_
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
                           (cons _%$%g5510055253%_
                                 (cons _%$%g5509955251%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9846398464%_
                 (lambda (_%$%g5511055190%_
                          _%$%g5511155192%_
                          _%$%g5511255193%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%$%g5511255193%_
                                           (cons _%$%g5511155192%_ '())))
                               (cons _%$%g5511055190%_ '()))))))
            (if (gx#stx-pair? _%__stx9845898459%_)
                (let ((_%$%e5510155221%_ (gx#syntax-e _%__stx9845898459%_)))
                  (let ((_%$%tl5510355228%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5510155221%_)))
                        (_%$%hd5510255225%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5510155221%_))))
                    (if (gx#stx-pair? _%$%tl5510355228%_)
                        (let ((_%$%e5510455231%_
                               (gx#syntax-e _%$%tl5510355228%_)))
                          (let ((_%$%tl5510655238%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5510455231%_)))
                                (_%$%hd5510555235%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5510455231%_))))
                            (if (gx#stx-pair? _%$%tl5510655238%_)
                                (let ((_%$%e5510755241%_
                                       (gx#syntax-e _%$%tl5510655238%_)))
                                  (let ((_%$%tl5510955248%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5510755241%_)))
                                        (_%$%hd5510855245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5510755241%_))))
                                    (if (gx#stx-null? _%$%tl5510955248%_)
                                        (_%__kont9846198462%_
                                         _%$%hd5510855245%_
                                         _%$%hd5510555235%_)
                                        (if (gx#stx-pair? _%$%tl5510955248%_)
                                            (let ((_%$%e5512255170%_
                                                   (gx#syntax-e
                                                    _%$%tl5510955248%_)))
                                              (let ((_%$%tl5512455177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5512255170%_)))
                                                    (_%$%hd5512355174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5512255170%_))))
                                                (if (gx#identifier?
                                                     _%$%hd5512355174%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g105171_|
                                                         _%$%hd5512355174%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl5512455177%_)
                                                            (let ((_%$%e5512555180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl5512455177%_)))
                      (let ((_%$%tl5512755187%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5512555180%_)))
                            (_%$%hd5512655184%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5512555180%_))))
                        (if (gx#stx-null? _%$%tl5512755187%_)
                            (_%__kont9846398464%_
                             _%$%hd5512655184%_
                             _%$%hd5510855245%_
                             _%$%hd5510555235%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5509755133%_)))))
                    (let () (declare (not safe)) (_%$%g5509755133%_)))
                (let () (declare (not safe)) (_%$%g5509755133%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5509755133%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5509755133%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5509755133%_)))))
                        (let () (declare (not safe)) (_%$%g5509755133%_)))))
                (let () (declare (not safe)) (_%$%g5509755133%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx55272%_)
        (let ((_%$%g5527555282%_
               (lambda (_%$%g5527655278%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5527655278%_))))
          (_%$%g5527555282%_ _%$stx55272%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx55286%_)
        (let ((_%$%g5528955296%_
               (lambda (_%$%g5529055292%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5529055292%_))))
          (_%$%g5528955296%_ _%$stx55286%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx55300%_)
        (let* ((_%$%g5530455318%_
                (lambda (_%$%g5530555314%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5530555314%_)))
               (_%$%g5530355359%_
                (lambda (_%$%g5530555322%_)
                  (if (gx#stx-pair? _%$%g5530555322%_)
                      (let ((_%$%e5530755325%_
                             (gx#syntax-e _%$%g5530555322%_)))
                        (let ((_%$%hd5530855329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5530755325%_)))
                              (_%$%tl5530955332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5530755325%_))))
                          (if (gx#stx-pair? _%$%tl5530955332%_)
                              (let ((_%$%e5531055335%_
                                     (gx#syntax-e _%$%tl5530955332%_)))
                                (let ((_%$%hd5531155339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5531055335%_)))
                                      (_%$%tl5531255342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5531055335%_))))
                                  (if (gx#stx-null? _%$%tl5531255342%_)
                                      (cons (gx#datum->syntax '#f 'or)
                                            (cons _%$%hd5531155339%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'nil-dereference!)
                                                              (cons _%$%hd5531155339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5530455318%_ _%$%g5530555322%_))))
                              (_%$%g5530455318%_ _%$%g5530555322%_))))
                      (_%$%g5530455318%_ _%$%g5530555322%_)))))
          (_%$%g5530355359%_ _%$stx55300%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx55363%_)
        (let* ((_%$%g5536655389%_
                (lambda (_%$%g5536755385%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5536755385%_)))
               (_%$%g5536555513%_
                (lambda (_%$%g5536755393%_)
                  (if (gx#stx-pair? _%$%g5536755393%_)
                      (let ((_%$%e5537255396%_
                             (gx#syntax-e _%$%g5536755393%_)))
                        (let ((_%$%hd5537355400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5537255396%_)))
                              (_%$%tl5537455403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5537255396%_))))
                          (if (gx#stx-pair? _%$%tl5537455403%_)
                              (let ((_%$%e5537555406%_
                                     (gx#syntax-e _%$%tl5537455403%_)))
                                (let ((_%$%hd5537655410%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5537555406%_)))
                                      (_%$%tl5537755413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5537555406%_))))
                                  (if (gx#stx-pair? _%$%tl5537755413%_)
                                      (let ((_%$%e5537855416%_
                                             (gx#syntax-e _%$%tl5537755413%_)))
                                        (let ((_%$%hd5537955420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5537855416%_)))
                                              (_%$%tl5538055423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5537855416%_))))
                                          (if (gx#stx-pair? _%$%tl5538055423%_)
                                              (let ((_%$%e5538155426%_
                                                     (gx#syntax-e
                                                      _%$%tl5538055423%_)))
                                                (let ((_%$%hd5538255430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5538155426%_)))
                                                      (_%$%tl5538355433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5538155426%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5538355433%_)
                                                      (let* ((_%$%g5546055468%_
                                                              (lambda (_%$%g5546155464%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5546155464%_)))
                     (_%$%g5545955487%_
                      (lambda (_%$%g5546155472%_)
                        (cons (gx#datum->syntax '#f 'begin-annotation)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '@contract-violation)
                                          (cons _%$%g5546155472%_
                                                (cons _%$%hd5537955420%_
                                                      (cons _%$%hd5538255430%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax '#f 'abort!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'raise-contract-violation-error)
                                                            (cons '"contract violation"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'context:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%g5546155472%_ '()))
                                      (cons 'contract:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%$%hd5537955420%_
                                                              '()))
                                                  (cons 'value:
                                                        (cons _%$%hd5538255430%_
                                                              '()))))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
                (_%$%g5545955487%_
                 (let ((_%$e55499%_
                        (let ((_%$e55491%_ (gx#stx-source _%$%hd5537655410%_)))
                          (if _%$e55491%_
                              _%$e55491%_
                              (let ((_%$e55495%_ (gx#stx-source _%stx55363%_)))
                                (if _%$e55495%_
                                    _%$e55495%_
                                    (gx#stx-source _%$%hd5537355400%_)))))))
                   (if _%$e55499%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5550555507%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e55499%_
                             '#t
                             _%$%g5550555507%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5536655389%_ _%$%g5536755393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5536655389%_
                                               _%$%g5536755393%_))))
                                      (_%$%g5536655389%_ _%$%g5536755393%_))))
                              (_%$%g5536655389%_ _%$%g5536755393%_))))
                      (_%$%g5536655389%_ _%$%g5536755393%_)))))
          (_%$%g5536555513%_ _%stx55363%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#runtime-contract-violation!|
      (lambda (_%stx55517%_)
        (let* ((_%$%g5552055543%_
                (lambda (_%$%g5552155539%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5552155539%_)))
               (_%$%g5551955667%_
                (lambda (_%$%g5552155547%_)
                  (if (gx#stx-pair? _%$%g5552155547%_)
                      (let ((_%$%e5552655550%_
                             (gx#syntax-e _%$%g5552155547%_)))
                        (let ((_%$%hd5552755554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5552655550%_)))
                              (_%$%tl5552855557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5552655550%_))))
                          (if (gx#stx-pair? _%$%tl5552855557%_)
                              (let ((_%$%e5552955560%_
                                     (gx#syntax-e _%$%tl5552855557%_)))
                                (let ((_%$%hd5553055564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5552955560%_)))
                                      (_%$%tl5553155567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5552955560%_))))
                                  (if (gx#stx-pair? _%$%tl5553155567%_)
                                      (let ((_%$%e5553255570%_
                                             (gx#syntax-e _%$%tl5553155567%_)))
                                        (let ((_%$%hd5553355574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5553255570%_)))
                                              (_%$%tl5553455577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5553255570%_))))
                                          (if (gx#stx-pair? _%$%tl5553455577%_)
                                              (let ((_%$%e5553555580%_
                                                     (gx#syntax-e
                                                      _%$%tl5553455577%_)))
                                                (let ((_%$%hd5553655584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5553555580%_)))
                                                      (_%$%tl5553755587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5553555580%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5553755587%_)
                                                      (let* ((_%$%g5561455622%_
                                                              (lambda (_%$%g5561555618%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5561555618%_)))
                     (_%$%g5561355641%_
                      (lambda (_%$%g5561555626%_)
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
                          (cons _%$%g5561555626%_ '()))
                    (cons 'contract:
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%$%hd5553355574%_ '()))
                                (cons 'value:
                                      (cons _%$%hd5553655584%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
                (_%$%g5561355641%_
                 (let ((_%$e55653%_
                        (let ((_%$e55645%_ (gx#stx-source _%$%hd5553055564%_)))
                          (if _%$e55645%_
                              _%$e55645%_
                              (let ((_%$e55649%_ (gx#stx-source _%stx55517%_)))
                                (if _%$e55649%_
                                    _%$e55649%_
                                    (gx#stx-source _%$%hd5552755554%_)))))))
                   (if _%$e55653%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5565955661%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e55653%_
                             '#t
                             _%$%g5565955661%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5552055543%_ _%$%g5552155547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5552055543%_
                                               _%$%g5552155547%_))))
                                      (_%$%g5552055543%_ _%$%g5552155547%_))))
                              (_%$%g5552055543%_ _%$%g5552155547%_))))
                      (_%$%g5552055543%_ _%$%g5552155547%_)))))
          (_%$%g5551955667%_ _%stx55517%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx55671%_)
        (let* ((_%$%g5567455689%_
                (lambda (_%$%g5567555685%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5567555685%_)))
               (_%$%g5567355785%_
                (lambda (_%$%g5567555693%_)
                  (if (gx#stx-pair? _%$%g5567555693%_)
                      (let ((_%$%e5567855696%_
                             (gx#syntax-e _%$%g5567555693%_)))
                        (let ((_%$%hd5567955700%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5567855696%_)))
                              (_%$%tl5568055703%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5567855696%_))))
                          (if (gx#stx-pair? _%$%tl5568055703%_)
                              (let ((_%$%e5568155706%_
                                     (gx#syntax-e _%$%tl5568055703%_)))
                                (let ((_%$%hd5568255710%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5568155706%_)))
                                      (_%$%tl5568355713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5568155706%_))))
                                  (if (gx#stx-null? _%$%tl5568355713%_)
                                      (let* ((_%$%g5573255740%_
                                              (lambda (_%$%g5573355736%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5573355736%_)))
                                             (_%$%g5573155759%_
                                              (lambda (_%$%g5573355744%_)
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
                                                  (cons _%$%g5573355744%_ '()))
                                            (cons 'contract:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'check-nil!)
                                  (cons _%$%hd5568255710%_ '()))
                            '()))
                (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g5573155759%_
                                         (let ((_%$e55771%_
                                                (let ((_%$e55763%_
                                                       (gx#stx-source
                                                        _%$%hd5568255710%_)))
                                                  (if _%$e55763%_
                                                      _%$e55763%_
                                                      (let ((_%$e55767%_
                                                             (gx#stx-source
                                                              _%stx55671%_)))
                                                        (if _%$e55767%_
                                                            _%$e55767%_
                                                            (gx#stx-source
                                                             _%$%hd5567955700%_)))))))
                                           (if _%$e55771%_
                                               (call-with-output-string
                                                '""
                                                (lambda (_%$%g5577755779%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (##display-locat
                                                     _%$e55771%_
                                                     '#t
                                                     _%$%g5577755779%_))))
                                               (gx#expander-context-id
                                                (gx#core-context-top))))))
                                      (_%$%g5567455689%_ _%$%g5567555693%_))))
                              (_%$%g5567455689%_ _%$%g5567555693%_))))
                      (_%$%g5567455689%_ _%$%g5567555693%_)))))
          (_%$%g5567355785%_ _%stx55671%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx55789%_)
        (let* ((_%$%g5579355807%_
                (lambda (_%$%g5579455803%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5579455803%_)))
               (_%$%g5579255848%_
                (lambda (_%$%g5579455811%_)
                  (if (gx#stx-pair? _%$%g5579455811%_)
                      (let ((_%$%e5579655814%_
                             (gx#syntax-e _%$%g5579455811%_)))
                        (let ((_%$%hd5579755818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5579655814%_)))
                              (_%$%tl5579855821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5579655814%_))))
                          (if (gx#stx-pair? _%$%tl5579855821%_)
                              (let ((_%$%e5579955824%_
                                     (gx#syntax-e _%$%tl5579855821%_)))
                                (let ((_%$%hd5580055828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5579955824%_)))
                                      (_%$%tl5580155831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5579955824%_))))
                                  (if (gx#stx-null? _%$%tl5580155831%_)
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
                                                              (cons _%$%hd5580055828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'void) '())
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5579355807%_ _%$%g5579455811%_))))
                              (_%$%g5579355807%_ _%$%g5579455811%_))))
                      (_%$%g5579355807%_ _%$%g5579455811%_)))))
          (_%$%g5579255848%_ _%$stx55789%_))))))
