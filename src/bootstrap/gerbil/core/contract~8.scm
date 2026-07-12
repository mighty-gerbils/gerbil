(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ClassMeta[1]#meta-object-methods!|
    (lambda (_%meta59326%_)
      (let ((_%$e59329%_
             (let ((__obj102231 _%meta59326%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj102231
                      'gerbil/core#meta-object::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj102231 '1 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#meta-object::t
                    __obj102231
                    'methods)))))
        (if _%$e59329%_
            _%$e59329%_
            (let ((_%tab59335%_ (make-hash-table-eq)))
              (let ((__obj102232 _%meta59326%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj102232
                       'gerbil/core#meta-object::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj102232
                       _%tab59335%_
                       '1
                       '#f
                       '#f))
                    (class-slot-set!
                     gerbil/core/mop~MOP-2#meta-object::t
                     __obj102232
                     'methods
                     _%tab59335%_)))
              _%tab59335%_)))))
  (define |gerbil/core/contract~ClassMeta[:0:]#@call-meta-object|
    (lambda (_%stx59338%_)
      (let* ((_%$%g5934159372%_
              (lambda (_%$%g5934259368%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5934259368%_)))
             (_%$%g5934059484%_
              (lambda (_%$%g5934259376%_)
                (if (gx#stx-pair? _%$%g5934259376%_)
                    (let ((_%$%e5934659379%_ (gx#syntax-e _%$%g5934259376%_)))
                      (let ((_%$%hd5934759383%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5934659379%_)))
                            (_%$%tl5934859386%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5934659379%_))))
                        (if (gx#stx-pair? _%$%tl5934859386%_)
                            (let ((_%$%e5934959389%_
                                   (gx#syntax-e _%$%tl5934859386%_)))
                              (let ((_%$%hd5935059393%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5934959389%_)))
                                    (_%$%tl5935159396%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5934959389%_))))
                                (if (gx#stx-pair? _%$%tl5935159396%_)
                                    (let ((_%$%e5935259399%_
                                           (gx#syntax-e _%$%tl5935159396%_)))
                                      (let ((_%$%hd5935359403%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5935259399%_)))
                                            (_%$%tl5935459406%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5935259399%_))))
                                        (if (gx#stx-pair? _%$%hd5935359403%_)
                                            (let ((_%$%e5935559409%_
                                                   (gx#syntax-e
                                                    _%$%hd5935359403%_)))
                                              (let ((_%$%hd5935659413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5935559409%_)))
                                                    (_%$%tl5935759416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5935559409%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5935759416%_)
                                                    (let ((_g102441_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5935759416%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102442_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102441_)
                             (##values-length _g102441_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102442_ 2)))
                      (error "Context expects 2 values" _g102442_)))
                (let ((_%$%target5935859419%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102441_ 0)))
                      (_%$%tl5936059422%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102441_ 1))))
                  (if (gx#stx-null? _%$%tl5936059422%_)
                      (letrec ((_%$%loop5936159425%_
                                (lambda (_%$%hd5935959429%_
                                         _%$%arg5936559432%_)
                                  (if (gx#stx-pair? _%$%hd5935959429%_)
                                      (let ((_%$%e5936259434%_
                                             (gx#syntax-e _%$%hd5935959429%_)))
                                        (let ((_%$%lp-hd5936359438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5936259434%_)))
                                              (_%$%lp-tl5936459441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5936259434%_))))
                                          (_%$%loop5936159425%_
                                           _%$%lp-tl5936459441%_
                                           (cons _%$%lp-hd5936359438%_
                                                 _%$%arg5936559432%_))))
                                      (let ((_%$%arg5936659444%_
                                             (reverse _%$%arg5936559432%_)))
                                        (if (gx#stx-null? _%$%tl5935459406%_)
                                            (if (gx#identifier?
                                                 _%$%hd5935659413%_)
                                                (let ((_%meta59473%_
                                                       (gx#syntax-local-value
                                                        _%$%hd5935059393%_
                                                        false)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         gerbil/core/mop~MOP-2#meta-object::t
                                                         _%meta59473%_))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"not a meta-object"
                                                       _%stx59338%_
                                                       _%$%hd5935059393%_
                                                       _%meta59473%_))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'meta)
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'syntax-local-value)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax)
                                                    (cons _%$%hd5935059393%_
                                                          '()))
                                              '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'call-meta-object)
                                  (cons (gx#datum->syntax '#f 'meta)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%$%hd5935659413%_
                                                          '()))
                                              (foldr (lambda (_%$%g5947559478%_
                                                              _%$%g5947659481%_)
                                                       (cons _%$%g5947559478%_
                                                             _%$%g5947659481%_))
                                                     '()
                                                     _%$%arg5936659444%_))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5934159372%_
                                                 _%$%g5934259376%_))
                                            (_%$%g5934159372%_
                                             _%$%g5934259376%_)))))))
                        (_%$%loop5936159425%_ _%$%target5935859419%_ '()))
                      (_%$%g5934159372%_ _%$%g5934259376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5934159372%_
                                                     _%$%g5934259376%_))))
                                            (_%$%g5934159372%_
                                             _%$%g5934259376%_))))
                                    (_%$%g5934159372%_ _%$%g5934259376%_))))
                            (_%$%g5934159372%_ _%$%g5934259376%_))))
                    (_%$%g5934159372%_ _%$%g5934259376%_)))))
        (_%$%g5934059484%_ _%stx59338%_))))
  (define |gerbil/core/contract~ClassMeta[:0:]#defmethod-for-meta|
    (lambda (_%stx59489%_)
      (let* ((_%$%g5949259537%_
              (lambda (_%$%g5949359533%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5949359533%_)))
             (_%$%g5949159705%_
              (lambda (_%$%g5949359541%_)
                (if (gx#stx-pair? _%$%g5949359541%_)
                    (let ((_%$%e5949959544%_ (gx#syntax-e _%$%g5949359541%_)))
                      (let ((_%$%hd5950059548%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5949959544%_)))
                            (_%$%tl5950159551%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5949959544%_))))
                        (if (gx#stx-pair? _%$%tl5950159551%_)
                            (let ((_%$%e5950259554%_
                                   (gx#syntax-e _%$%tl5950159551%_)))
                              (let ((_%$%hd5950359558%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5950259554%_)))
                                    (_%$%tl5950459561%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5950259554%_))))
                                (if (gx#stx-pair? _%$%tl5950459561%_)
                                    (let ((_%$%e5950559564%_
                                           (gx#syntax-e _%$%tl5950459561%_)))
                                      (let ((_%$%hd5950659568%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5950559564%_)))
                                            (_%$%tl5950759571%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5950559564%_))))
                                        (if (gx#stx-pair? _%$%hd5950659568%_)
                                            (let ((_%$%e5950859574%_
                                                   (gx#syntax-e
                                                    _%$%hd5950659568%_)))
                                              (let ((_%$%hd5950959578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5950859574%_)))
                                                    (_%$%tl5951059581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5950859574%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5951059581%_)
                                                    (let ((_g102443_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5951059581%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102444_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102443_)
                             (##values-length _g102443_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102444_ 2)))
                      (error "Context expects 2 values" _g102444_)))
                (let ((_%$%target5951159584%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102443_ 0)))
                      (_%$%tl5951359587%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102443_ 1))))
                  (if (gx#stx-null? _%$%tl5951359587%_)
                      (letrec ((_%$%loop5951459590%_
                                (lambda (_%$%hd5951259594%_
                                         _%$%arg5951859597%_)
                                  (if (gx#stx-pair? _%$%hd5951259594%_)
                                      (let ((_%$%e5951559599%_
                                             (gx#syntax-e _%$%hd5951259594%_)))
                                        (let ((_%$%lp-hd5951659603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5951559599%_)))
                                              (_%$%lp-tl5951759606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5951559599%_))))
                                          (_%$%loop5951459590%_
                                           _%$%lp-tl5951759606%_
                                           (cons _%$%lp-hd5951659603%_
                                                 _%$%arg5951859597%_))))
                                      (let ((_%$%arg5951959609%_
                                             (reverse _%$%arg5951859597%_)))
                                        (if (gx#stx-pair? _%$%tl5950759571%_)
                                            (let ((_%$%e5952059612%_
                                                   (gx#syntax-e
                                                    _%$%tl5950759571%_)))
                                              (let ((_%$%hd5952159616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5952059612%_)))
                                                    (_%$%tl5952259619%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5952059612%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5952259619%_)
                                                    (let ((_g102445_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5952259619%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102446_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102445_)
                             (##values-length _g102445_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102446_ 2)))
                      (error "Context expects 2 values" _g102446_)))
                (let ((_%$%target5952359622%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102445_ 0)))
                      (_%$%tl5952559625%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102445_ 1))))
                  (if (gx#stx-null? _%$%tl5952559625%_)
                      (letrec ((_%$%loop5952659628%_
                                (lambda (_%$%hd5952459632%_
                                         _%$%rest5953059635%_)
                                  (if (gx#stx-pair? _%$%hd5952459632%_)
                                      (let ((_%$%e5952759637%_
                                             (gx#syntax-e _%$%hd5952459632%_)))
                                        (let ((_%$%lp-hd5952859641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5952759637%_)))
                                              (_%$%lp-tl5952959644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5952759637%_))))
                                          (_%$%loop5952659628%_
                                           _%$%lp-tl5952959644%_
                                           (cons _%$%lp-hd5952859641%_
                                                 _%$%rest5953059635%_))))
                                      (let ((_%$%rest5953159647%_
                                             (reverse _%$%rest5953059635%_)))
                                        (if (gx#identifier? _%$%hd5950959578%_)
                                            (let ((_%meta59686%_
                                                   (gx#syntax-local-value
                                                    _%$%hd5950359558%_
                                                    false)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/mop~MOP-2#meta-object::t
                                                     _%meta59686%_))
                                                  '#!void
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"not a meta-object"
                                                   _%stx59489%_
                                                   _%$%hd5950359558%_
                                                   _%meta59686%_))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-syntax)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'meta-object-methods!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-value)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax)
                                (cons _%$%hd5950359558%_ '()))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%hd5950959578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'lambda)
                          (cons (foldr (lambda (_%$%g5968859693%_
                                                _%$%g5968959696%_)
                                         (cons _%$%g5968859693%_
                                               _%$%g5968959696%_))
                                       '()
                                       _%$%arg5951959609%_)
                                (cons _%$%hd5952159616%_
                                      (foldr (lambda (_%$%g5969059699%_
                                                      _%$%g5969159702%_)
                                               (cons _%$%g5969059699%_
                                                     _%$%g5969159702%_))
                                             '()
                                             _%$%rest5953159647%_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5949259537%_
                                             _%$%g5949359541%_)))))))
                        (_%$%loop5952659628%_ _%$%target5952359622%_ '()))
                      (_%$%g5949259537%_ _%$%g5949359541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5949259537%_
                                                     _%$%g5949359541%_))))
                                            (_%$%g5949259537%_
                                             _%$%g5949359541%_)))))))
                        (_%$%loop5951459590%_ _%$%target5951159584%_ '()))
                      (_%$%g5949259537%_ _%$%g5949359541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5949259537%_
                                                     _%$%g5949359541%_))))
                                            (_%$%g5949259537%_
                                             _%$%g5949359541%_))))
                                    (_%$%g5949259537%_ _%$%g5949359541%_))))
                            (_%$%g5949259537%_ _%$%g5949359541%_))))
                    (_%$%g5949259537%_ _%$%g5949359541%_)))))
        (_%$%g5949159705%_ _%stx59489%_)))))
