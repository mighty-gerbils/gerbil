(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g45956_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx45194%_)
        (let* ((_%g4519845209%_
                (lambda (_%g4519945205%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4519945205%_)))
               (_%g4519745239%_
                (lambda (_%g4519945213%_)
                  (if (gx#stx-pair? _%g4519945213%_)
                      (let ((_%e4520145216%_ (gx#syntax-e _%g4519945213%_)))
                        (let ((_%hd4520245220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4520145216%_)))
                              (_%tl4520345223%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4520145216%_))))
                          ((lambda (_%g4520045226%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g4520045226%_)
                                               '()))))
                           _%tl4520345223%_)))
                      (_%g4519845209%_ _%g4519945213%_)))))
          (_%g4519745239%_ _%$stx45194%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx45243%_)
        (let* ((_%g4524645279%_
                (lambda (_%g4524745275%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4524745275%_)))
               (_%g4524545681%_
                (lambda (_%g4524745283%_)
                  (if (gx#stx-pair? _%g4524745283%_)
                      (let ((_%e4525045286%_ (gx#syntax-e _%g4524745283%_)))
                        (let ((_%hd4525145290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4525045286%_)))
                              (_%tl4525245293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4525045286%_))))
                          (if (gx#stx-pair? _%tl4525245293%_)
                              (let ((_%e4525345296%_
                                     (gx#syntax-e _%tl4525245293%_)))
                                (let ((_%hd4525445300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4525345296%_)))
                                      (_%tl4525545303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4525345296%_))))
                                  (if (gx#stx-pair/null? _%hd4525445300%_)
                                      (let ((_g45950_
                                             (gx#syntax-split-splice
                                              _%hd4525445300%_
                                              '0)))
                                        (begin
                                          (let ((_g45951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45950_)
                                                       (##values-length
                                                        _g45950_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45951_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45951_)))
                                          (let ((_%target4525645306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45950_ 0)))
                                                (_%tl4525845309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45950_ 1))))
                                            (if (gx#stx-null? _%tl4525845309%_)
                                                (letrec ((_%loop4525945312%_
                                                          (lambda (_%hd4525745316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4526345319%_)
                    (if (gx#stx-pair? _%hd4525745316%_)
                        (let ((_%e4526045321%_ (gx#syntax-e _%hd4525745316%_)))
                          (let ((_%lp-hd4526145325%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4526045321%_)))
                                (_%lp-tl4526245328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4526045321%_))))
                            (_%loop4525945312%_
                             _%lp-tl4526245328%_
                             (cons _%lp-hd4526145325%_ _%clause4526345319%_))))
                        (let ((_%clause4526445331%_
                               (reverse _%clause4526345319%_)))
                          (if (gx#stx-pair/null? _%tl4525545303%_)
                              (let ((_g45952_
                                     (gx#syntax-split-splice
                                      _%tl4525545303%_
                                      '0)))
                                (begin
                                  (let ((_g45953_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45952_)
                                               (##values-length _g45952_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45953_ 2)))
                                        (error "Context expects 2 values"
                                               _g45953_)))
                                  (let ((_%target4526545334%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45952_ 0)))
                                        (_%tl4526745337%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45952_ 1))))
                                    (if (gx#stx-null? _%tl4526745337%_)
                                        (letrec ((_%loop4526845340%_
                                                  (lambda (_%hd4526645344%_
                                                           _%body4527245347%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4526645344%_)
                                                        (let ((_%e4526945349%_
                                                               (gx#syntax-e
                                                                _%hd4526645344%_)))
                                                          (let ((_%lp-hd4527045353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4526945349%_)))
                        (_%lp-tl4527145356%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4526945349%_))))
                    (_%loop4526845340%_
                     _%lp-tl4527145356%_
                     (cons _%lp-hd4527045353%_ _%body4527245347%_))))
                (let ((_%body4527345359%_ (reverse _%body4527245347%_)))
                  ((lambda (_%g4524845362%_ _%g4524945364%_)
                     (let* ((_%g4538645403%_
                             (lambda (_%g4538745399%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4538745399%_)))
                            (_%g4538545470%_
                             (lambda (_%g4538745407%_)
                               (if (gx#stx-pair/null? _%g4538745407%_)
                                   (let ((_g45954_
                                          (gx#syntax-split-splice
                                           _%g4538745407%_
                                           '0)))
                                     (begin
                                       (let ((_g45955_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g45954_)
                                                    (##values-length _g45954_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g45955_ 2)))
                                             (error "Context expects 2 values"
                                                    _g45955_)))
                                       (let ((_%target4538945410%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45954_ 0)))
                                             (_%tl4539145413%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45954_ 1))))
                                         (if (gx#stx-null? _%tl4539145413%_)
                                             (letrec ((_%loop4539245416%_
                                                       (lambda (_%hd4539045420%_
                                                                _%clause4539645423%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4539045420%_)
                                                             (let ((_%e4539345425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4539045420%_)))
                       (let ((_%lp-hd4539445429%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4539345425%_)))
                             (_%lp-tl4539545432%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4539345425%_))))
                         (_%loop4539245416%_
                          _%lp-tl4539545432%_
                          (cons _%lp-hd4539445429%_ _%clause4539645423%_))))
                     (let ((_%clause4539745435%_
                            (reverse _%clause4539645423%_)))
                       ((lambda (_%g4538845438%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g4545345458%_
                                                      _%g4545445461%_)
                                               (cons _%g4545345458%_
                                                     _%g4545445461%_))
                                             '()
                                             _%g4538845438%_)
                                      (foldr (lambda (_%g4545545464%_
                                                      _%g4545645467%_)
                                               (cons _%g4545545464%_
                                                     _%g4545645467%_))
                                             '()
                                             _%g4524845362%_))))
                        _%clause4539745435%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4539245416%_
                                                _%target4538945410%_
                                                '()))
                                             (_%g4538645403%_
                                              _%g4538745407%_)))))
                                   (_%g4538645403%_ _%g4538745407%_)))))
                       (_%g4538545470%_
                        (map (lambda (_%clause45474%_)
                               (let* ((_%__stx4588745888%_ _%clause45474%_)
                                      (_%g4547845517%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4588745888%_))))
                                 (let ((_%__kont4589045891%_
                                        (lambda (_%g4548045650%_
                                                 _%g4548145652%_)
                                          (cons _%g4548145652%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g4548045650%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4589245893%_
                                        (lambda (_%g4549445572%_
                                                 _%g4549545574%_
                                                 _%g4549645575%_)
                                          (cons _%g4549645575%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g4549545574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g4559445597%_ _%g4559545600%_)
                                   (cons _%g4559445597%_ _%g4559545600%_))
                                 '()
                                 _%g4549445572%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4594845949%_
                                           (lambda (_%e4549745524%_
                                                    _%hd4549845528%_
                                                    _%tl4549945531%_
                                                    _%e4550045534%_
                                                    _%hd4550145538%_
                                                    _%tl4550245541%_
                                                    _%__splice4589445895%_
                                                    _%target4550345544%_
                                                    _%tl4550545547%_)
                                             (letrec ((_%loop4550645550%_
                                                       (lambda (_%hd4550445554%_
                                                                _%components4551045557%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4550445554%_)
                                                             (let ((_%e4550745559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4550445554%_)))
                       (let ((_%lp-tl4550945566%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4550745559%_)))
                             (_%lp-hd4550845563%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4550745559%_))))
                         (_%loop4550645550%_
                          _%lp-tl4550945566%_
                          (cons _%lp-hd4550845563%_
                                _%components4551045557%_))))
                     (let ((_%components4551145569%_
                            (reverse _%components4551045557%_)))
                       (let ((_%g4549445572%_ _%components4551145569%_)
                             (_%g4549545574%_ _%hd4550145538%_)
                             (_%g4549645575%_ _%hd4549845528%_))
                         (if (gx#identifier? _%g4549645575%_)
                             (_%__kont4589245893%_
                              _%g4549445572%_
                              _%g4549545574%_
                              _%g4549645575%_)
                             (let ()
                               (declare (not safe))
                               (_%g4547845517%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4550645550%_
                                                _%target4550345544%_
                                                '()))))
                                          (_%__match4592845929%_
                                           (lambda (_%e4548245610%_
                                                    _%hd4548345614%_
                                                    _%tl4548445617%_
                                                    _%e4548545620%_
                                                    _%hd4548645624%_
                                                    _%tl4548745627%_
                                                    _%e4548845630%_
                                                    _%hd4548945634%_
                                                    _%tl4549045637%_
                                                    _%e4549145640%_
                                                    _%hd4549245644%_
                                                    _%tl4549345647%_)
                                             (let ((_%g4548045650%_
                                                    _%hd4549245644%_)
                                                   (_%g4548145652%_
                                                    _%hd4548345614%_))
                                               (if (and (gx#identifier?
                                                         _%g4548145652%_)
                                                        (gx#identifier?
                                                         _%g4548045650%_))
                                                   (_%__kont4589045891%_
                                                    _%g4548045650%_
                                                    _%g4548145652%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4548745627%_)
                                                       (let ((_%__splice4589445895%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4548745627%_
                                                               '0)))
                                                         (let ((_%tl4550545547%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4589445895%_ '1)))
                       (_%target4550345544%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4589445895%_ '0))))
                   (if (gx#stx-null? _%tl4550545547%_)
                       (_%__match4594845949%_
                        _%e4548245610%_
                        _%hd4548345614%_
                        _%tl4548445617%_
                        _%e4548545620%_
                        _%hd4548645624%_
                        _%tl4548745627%_
                        _%__splice4589445895%_
                        _%target4550345544%_
                        _%tl4550545547%_)
                       (let () (declare (not safe)) (_%g4547845517%_)))))
               (let () (declare (not safe)) (_%g4547845517%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx4588745888%_)
                                         (let ((_%e4548245610%_
                                                (gx#syntax-e
                                                 _%__stx4588745888%_)))
                                           (let ((_%tl4548445617%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4548245610%_)))
                                                 (_%hd4548345614%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4548245610%_))))
                                             (if (gx#stx-pair?
                                                  _%tl4548445617%_)
                                                 (let ((_%e4548545620%_
                                                        (gx#syntax-e
                                                         _%tl4548445617%_)))
                                                   (let ((_%tl4548745627%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4548545620%_)))
                                                         (_%hd4548645624%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4548545620%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd4548645624%_)
                                                         (let ((_%e4548845630%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd4548645624%_)))
                   (let ((_%tl4549045637%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4548845630%_)))
                         (_%hd4548945634%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4548845630%_))))
                     (if (gx#identifier? _%hd4548945634%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g45956_|
                              _%hd4548945634%_)
                             (if (gx#stx-pair? _%tl4549045637%_)
                                 (let ((_%e4549145640%_
                                        (gx#syntax-e _%tl4549045637%_)))
                                   (let ((_%tl4549345647%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4549145640%_)))
                                         (_%hd4549245644%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4549145640%_))))
                                     (if (gx#stx-null? _%tl4549345647%_)
                                         (if (gx#stx-null? _%tl4548745627%_)
                                             (_%__match4592845929%_
                                              _%e4548245610%_
                                              _%hd4548345614%_
                                              _%tl4548445617%_
                                              _%e4548545620%_
                                              _%hd4548645624%_
                                              _%tl4548745627%_
                                              _%e4548845630%_
                                              _%hd4548945634%_
                                              _%tl4549045637%_
                                              _%e4549145640%_
                                              _%hd4549245644%_
                                              _%tl4549345647%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl4548745627%_)
                                                 (let ((_%__splice4589445895%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4548745627%_
                                                         '0)))
                                                   (let ((_%tl4550545547%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4589445895%_
                                                             '1)))
                                                         (_%target4550345544%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4589445895%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4550545547%_)
                                                         (_%__match4594845949%_
                                                          _%e4548245610%_
                                                          _%hd4548345614%_
                                                          _%tl4548445617%_
                                                          _%e4548545620%_
                                                          _%hd4548645624%_
                                                          _%tl4548745627%_
                                                          _%__splice4589445895%_
                                                          _%target4550345544%_
                                                          _%tl4550545547%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4547845517%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4547845517%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4548745627%_)
                                             (let ((_%__splice4589445895%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4548745627%_
                                                     '0)))
                                               (let ((_%tl4550545547%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4589445895%_
                                                         '1)))
                                                     (_%target4550345544%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4589445895%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4550545547%_)
                                                     (_%__match4594845949%_
                                                      _%e4548245610%_
                                                      _%hd4548345614%_
                                                      _%tl4548445617%_
                                                      _%e4548545620%_
                                                      _%hd4548645624%_
                                                      _%tl4548745627%_
                                                      _%__splice4589445895%_
                                                      _%target4550345544%_
                                                      _%tl4550545547%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4547845517%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4547845517%_))))))
                                 (if (gx#stx-pair/null? _%tl4548745627%_)
                                     (let ((_%__splice4589445895%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4548745627%_
                                             '0)))
                                       (let ((_%tl4550545547%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4589445895%_
                                                 '1)))
                                             (_%target4550345544%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4589445895%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4550545547%_)
                                             (_%__match4594845949%_
                                              _%e4548245610%_
                                              _%hd4548345614%_
                                              _%tl4548445617%_
                                              _%e4548545620%_
                                              _%hd4548645624%_
                                              _%tl4548745627%_
                                              _%__splice4589445895%_
                                              _%target4550345544%_
                                              _%tl4550545547%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4547845517%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4547845517%_))))
                             (if (gx#stx-pair/null? _%tl4548745627%_)
                                 (let ((_%__splice4589445895%_
                                        (gx#syntax-split-splice->vector
                                         _%tl4548745627%_
                                         '0)))
                                   (let ((_%tl4550545547%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4589445895%_
                                             '1)))
                                         (_%target4550345544%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4589445895%_
                                             '0))))
                                     (if (gx#stx-null? _%tl4550545547%_)
                                         (_%__match4594845949%_
                                          _%e4548245610%_
                                          _%hd4548345614%_
                                          _%tl4548445617%_
                                          _%e4548545620%_
                                          _%hd4548645624%_
                                          _%tl4548745627%_
                                          _%__splice4589445895%_
                                          _%target4550345544%_
                                          _%tl4550545547%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4547845517%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4547845517%_))))
                         (if (gx#stx-pair/null? _%tl4548745627%_)
                             (let ((_%__splice4589445895%_
                                    (gx#syntax-split-splice->vector
                                     _%tl4548745627%_
                                     '0)))
                               (let ((_%tl4550545547%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4589445895%_
                                         '1)))
                                     (_%target4550345544%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4589445895%_
                                         '0))))
                                 (if (gx#stx-null? _%tl4550545547%_)
                                     (_%__match4594845949%_
                                      _%e4548245610%_
                                      _%hd4548345614%_
                                      _%tl4548445617%_
                                      _%e4548545620%_
                                      _%hd4548645624%_
                                      _%tl4548745627%_
                                      _%__splice4589445895%_
                                      _%target4550345544%_
                                      _%tl4550545547%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g4547845517%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4547845517%_))))))
                 (if (gx#stx-pair/null? _%tl4548745627%_)
                     (let ((_%__splice4589445895%_
                            (gx#syntax-split-splice->vector
                             _%tl4548745627%_
                             '0)))
                       (let ((_%tl4550545547%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4589445895%_ '1)))
                             (_%target4550345544%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4589445895%_ '0))))
                         (if (gx#stx-null? _%tl4550545547%_)
                             (_%__match4594845949%_
                              _%e4548245610%_
                              _%hd4548345614%_
                              _%tl4548445617%_
                              _%e4548545620%_
                              _%hd4548645624%_
                              _%tl4548745627%_
                              _%__splice4589445895%_
                              _%target4550345544%_
                              _%tl4550545547%_)
                             (let () (declare (not safe)) (_%g4547845517%_)))))
                     (let () (declare (not safe)) (_%g4547845517%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4547845517%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g4547845517%_)))))))
                             (foldr (lambda (_%g4567245675%_ _%g4567345678%_)
                                      (cons _%g4567245675%_ _%g4567345678%_))
                                    '()
                                    _%g4524945364%_)))))
                   _%body4527345359%_
                   _%clause4526445331%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4526845340%_
                                           _%target4526545334%_
                                           '()))
                                        (_%g4524645279%_ _%g4524745283%_)))))
                              (_%g4524645279%_ _%g4524745283%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4525945312%_
                                                   _%target4525645306%_
                                                   '()))
                                                (_%g4524645279%_
                                                 _%g4524745283%_)))))
                                      (_%g4524645279%_ _%g4524745283%_))))
                              (_%g4524645279%_ _%g4524745283%_))))
                      (_%g4524645279%_ _%g4524745283%_)))))
          (_%g4524545681%_ _%stx45243%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx45689%_)
        (let* ((_%g4569345730%_
                (lambda (_%g4569445726%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4569445726%_)))
               (_%g4569245867%_
                (lambda (_%g4569445734%_)
                  (if (gx#stx-pair? _%g4569445734%_)
                      (let ((_%e4569845737%_ (gx#syntax-e _%g4569445734%_)))
                        (let ((_%hd4569945741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4569845737%_)))
                              (_%tl4570045744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4569845737%_))))
                          (if (gx#stx-pair? _%tl4570045744%_)
                              (let ((_%e4570145747%_
                                     (gx#syntax-e _%tl4570045744%_)))
                                (let ((_%hd4570245751%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4570145747%_)))
                                      (_%tl4570345754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4570145747%_))))
                                  (if (gx#stx-pair? _%hd4570245751%_)
                                      (let ((_%e4570445757%_
                                             (gx#syntax-e _%hd4570245751%_)))
                                        (let ((_%hd4570545761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4570445757%_)))
                                              (_%tl4570645764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4570445757%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4570645764%_)
                                              (let ((_g45957_
                                                     (gx#syntax-split-splice
                                                      _%tl4570645764%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45958_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45957_)
                                                               (##values-length
                                                                _g45957_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45958_ 2)))
                (error "Context expects 2 values" _g45958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4570745767%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45957_
                                                            0)))
                                                        (_%tl4570945770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45957_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4570945770%_)
                                                        (letrec ((_%loop4571045773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4570845777%_ _%components4571445780%_)
                            (if (gx#stx-pair? _%hd4570845777%_)
                                (let ((_%e4571145782%_
                                       (gx#syntax-e _%hd4570845777%_)))
                                  (let ((_%lp-hd4571245786%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4571145782%_)))
                                        (_%lp-tl4571345789%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4571145782%_))))
                                    (_%loop4571045773%_
                                     _%lp-tl4571345789%_
                                     (cons _%lp-hd4571245786%_
                                           _%components4571445780%_))))
                                (let ((_%components4571545792%_
                                       (reverse _%components4571445780%_)))
                                  (if (gx#stx-pair/null? _%tl4570345754%_)
                                      (let ((_g45959_
                                             (gx#syntax-split-splice
                                              _%tl4570345754%_
                                              '0)))
                                        (begin
                                          (let ((_g45960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45959_)
                                                       (##values-length
                                                        _g45959_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45960_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45960_)))
                                          (let ((_%target4571645795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45959_ 0)))
                                                (_%tl4571845798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45959_ 1))))
                                            (if (gx#stx-null? _%tl4571845798%_)
                                                (letrec ((_%loop4571945801%_
                                                          (lambda (_%hd4571745805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4572345808%_)
                    (if (gx#stx-pair? _%hd4571745805%_)
                        (let ((_%e4572045810%_ (gx#syntax-e _%hd4571745805%_)))
                          (let ((_%lp-hd4572145814%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4572045810%_)))
                                (_%lp-tl4572245817%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4572045810%_))))
                            (_%loop4571945801%_
                             _%lp-tl4572245817%_
                             (cons _%lp-hd4572145814%_ _%body4572345808%_))))
                        (let ((_%body4572445820%_
                               (reverse _%body4572345808%_)))
                          ((lambda (_%g4569545823%_
                                    _%g4569645825%_
                                    _%g4569745826%_)
                             (if (gx#identifier? _%g4569745826%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g4569745826%_
                                                         (foldr (lambda (_%g4585045855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4585145858%_)
                          (cons _%g4585045855%_ _%g4585145858%_))
                        '()
                        _%g4569645825%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g4585245861%_
                                                             _%g4585345864%_)
                                                      (cons _%g4585245861%_
                                                            _%g4585345864%_))
                                                    '()
                                                    _%g4569545823%_)))
                                 (_%g4569345730%_ _%g4569445734%_)))
                           _%body4572445820%_
                           _%components4571545792%_
                           _%hd4570545761%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4571945801%_
                                                   _%target4571645795%_
                                                   '()))
                                                (_%g4569345730%_
                                                 _%g4569445734%_)))))
                                      (_%g4569345730%_ _%g4569445734%_)))))))
                  (_%loop4571045773%_ _%target4570745767%_ '()))
                (_%g4569345730%_ _%g4569445734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4569345730%_
                                               _%g4569445734%_))))
                                      (_%g4569345730%_ _%g4569445734%_))))
                              (_%g4569345730%_ _%g4569445734%_))))
                      (_%g4569345730%_ _%g4569445734%_)))))
          (_%g4569245867%_ _%$stx45689%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx45873%_)
        (let ((_%g4587645883%_
               (lambda (_%g4587745879%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4587745879%_))))
          (_%g4587645883%_ _%$stx45873%_))))))
