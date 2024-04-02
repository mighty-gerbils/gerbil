(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98174_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx97794%_)
      (let* ((_%g9779797835%_
              (lambda (_%g9779897831%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9779897831%_)))
             (_%g9779698004%_
              (lambda (_%g9779897839%_)
                (if (gx#stx-pair? _%g9779897839%_)
                    (let ((_%e9780597842%_ (gx#syntax-e _%g9779897839%_)))
                      (let ((_%hd9780497846%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9780597842%_)))
                            (_%tl9780397849%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9780597842%_))))
                        (if (gx#stx-pair? _%tl9780397849%_)
                            (let ((_%e9780897852%_
                                   (gx#syntax-e _%tl9780397849%_)))
                              (let ((_%hd9780797856%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9780897852%_)))
                                    (_%tl9780697859%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9780897852%_))))
                                (if (gx#stx-pair? _%hd9780797856%_)
                                    (let ((_%e9781197862%_
                                           (gx#syntax-e _%hd9780797856%_)))
                                      (let ((_%hd9781097866%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9781197862%_)))
                                            (_%tl9780997869%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9781197862%_))))
                                        (if (gx#stx-pair? _%tl9780997869%_)
                                            (let ((_%e9781497872%_
                                                   (gx#syntax-e
                                                    _%tl9780997869%_)))
                                              (let ((_%hd9781397876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9781497872%_)))
                                                    (_%tl9781297879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9781497872%_))))
                                                (if (gx#stx-null?
                                                     _%tl9781297879%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9780697859%_)
                                                        (let ((_%e9781797882%_
                                                               (gx#syntax-e
                                                                _%tl9780697859%_)))
                                                          (let ((_%hd9781697886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9781797882%_)))
                        (_%tl9781597889%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9781797882%_))))
                    (if (gx#identifier? _%hd9781697886%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98174_|
                             _%hd9781697886%_)
                            (if (gx#stx-pair? _%tl9781597889%_)
                                (let ((_%e9782097892%_
                                       (gx#syntax-e _%tl9781597889%_)))
                                  (let ((_%hd9781997896%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9782097892%_)))
                                        (_%tl9781897899%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9782097892%_))))
                                    (if (gx#stx-pair/null? _%tl9781897899%_)
                                        (let ((_g98175_
                                               (gx#syntax-split-splice
                                                _%tl9781897899%_
                                                '0)))
                                          (begin
                                            (let ((_g98176_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98175_)
                                                         (##vector-length
                                                          _g98175_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98176_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98176_)))
                                            (let ((_%target9782197902%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98175_
                                                      0)))
                                                  (_%tl9782397905%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98175_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9782397905%_)
                                                  (letrec ((_%loop9782497908%_
                                                            (lambda (_%hd9782297912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9782897915%_)
                      (if (gx#stx-pair? _%hd9782297912%_)
                          (let ((_%e9782597918%_
                                 (gx#syntax-e _%hd9782297912%_)))
                            (let ((_%lp-hd9782697922%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9782597918%_)))
                                  (_%lp-tl9782797925%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9782597918%_))))
                              (_%loop9782497908%_
                               _%lp-tl9782797925%_
                               (cons _%lp-hd9782697922%_ _%body9782897915%_))))
                          (let ((_%body9782997928%_
                                 (reverse _%body9782897915%_)))
                            ((lambda (_%L97932%_
                                      _%L97934%_
                                      _%L97935%_
                                      _%L97936%_)
                               (let* ((_%g9796597973%_
                                       (lambda (_%g9796697969%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9796697969%_)))
                                      (_%g9796498000%_
                                       (lambda (_%g9796697977%_)
                                         ((lambda (_%L97980%_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L97936%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%L97980%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L97935%_ '())
                                                      (let ((__tmp98177
                                                             (lambda (_%g9799197994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g9799297997%_)
                       (cons _%g9799197994%_ _%g9799297997%_))))
                (declare (not safe))
                (__foldr1 __tmp98177 '() _%L97932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9796697977%_))))
                                 (_%g9796498000%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx97794%_
                                     _%L97934%_)))))
                             _%body9782997928%_
                             _%hd9781997896%_
                             _%hd9781397876%_
                             _%hd9781097866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9782497908%_
                                                     _%target9782197902%_
                                                     '()))
                                                  (_%g9779797835%_
                                                   _%g9779897839%_)))))
                                        (_%g9779797835%_ _%g9779897839%_))))
                                (_%g9779797835%_ _%g9779897839%_))
                            (_%g9779797835%_ _%g9779897839%_))
                        (_%g9779797835%_ _%g9779897839%_))))
                (_%g9779797835%_ _%g9779897839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9779797835%_
                                                     _%g9779897839%_))))
                                            (_%g9779797835%_
                                             _%g9779897839%_))))
                                    (_%g9779797835%_ _%g9779897839%_))))
                            (_%g9779797835%_ _%g9779897839%_))))
                    (_%g9779797835%_ _%g9779897839%_)))))
        (_%g9779698004%_ _%stx97794%_)))))
