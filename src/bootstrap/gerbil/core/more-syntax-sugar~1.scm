(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g45950_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx45188%_)
        (let* ((_%g4519245203%_
                (lambda (_%g4519345199%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4519345199%_)))
               (_%g4519145233%_
                (lambda (_%g4519345207%_)
                  (if (gx#stx-pair? _%g4519345207%_)
                      (let ((_%e4519545210%_ (gx#syntax-e _%g4519345207%_)))
                        (let ((_%hd4519645214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4519545210%_)))
                              (_%tl4519745217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4519545210%_))))
                          ((lambda (_%g4519445220%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g4519445220%_)
                                               '()))))
                           _%tl4519745217%_)))
                      (_%g4519245203%_ _%g4519345207%_)))))
          (_%g4519145233%_ _%$stx45188%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx45237%_)
        (let* ((_%g4524045273%_
                (lambda (_%g4524145269%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4524145269%_)))
               (_%g4523945675%_
                (lambda (_%g4524145277%_)
                  (if (gx#stx-pair? _%g4524145277%_)
                      (let ((_%e4524445280%_ (gx#syntax-e _%g4524145277%_)))
                        (let ((_%hd4524545284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4524445280%_)))
                              (_%tl4524645287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4524445280%_))))
                          (if (gx#stx-pair? _%tl4524645287%_)
                              (let ((_%e4524745290%_
                                     (gx#syntax-e _%tl4524645287%_)))
                                (let ((_%hd4524845294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4524745290%_)))
                                      (_%tl4524945297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4524745290%_))))
                                  (if (gx#stx-pair/null? _%hd4524845294%_)
                                      (let ((_g45944_
                                             (gx#syntax-split-splice
                                              _%hd4524845294%_
                                              '0)))
                                        (begin
                                          (let ((_g45945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45944_)
                                                       (##values-length
                                                        _g45944_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45945_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45945_)))
                                          (let ((_%target4525045300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45944_ 0)))
                                                (_%tl4525245303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45944_ 1))))
                                            (if (gx#stx-null? _%tl4525245303%_)
                                                (letrec ((_%loop4525345306%_
                                                          (lambda (_%hd4525145310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4525745313%_)
                    (if (gx#stx-pair? _%hd4525145310%_)
                        (let ((_%e4525445315%_ (gx#syntax-e _%hd4525145310%_)))
                          (let ((_%lp-hd4525545319%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4525445315%_)))
                                (_%lp-tl4525645322%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4525445315%_))))
                            (_%loop4525345306%_
                             _%lp-tl4525645322%_
                             (cons _%lp-hd4525545319%_ _%clause4525745313%_))))
                        (let ((_%clause4525845325%_
                               (reverse _%clause4525745313%_)))
                          (if (gx#stx-pair/null? _%tl4524945297%_)
                              (let ((_g45946_
                                     (gx#syntax-split-splice
                                      _%tl4524945297%_
                                      '0)))
                                (begin
                                  (let ((_g45947_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45946_)
                                               (##values-length _g45946_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45947_ 2)))
                                        (error "Context expects 2 values"
                                               _g45947_)))
                                  (let ((_%target4525945328%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45946_ 0)))
                                        (_%tl4526145331%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45946_ 1))))
                                    (if (gx#stx-null? _%tl4526145331%_)
                                        (letrec ((_%loop4526245334%_
                                                  (lambda (_%hd4526045338%_
                                                           _%body4526645341%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4526045338%_)
                                                        (let ((_%e4526345343%_
                                                               (gx#syntax-e
                                                                _%hd4526045338%_)))
                                                          (let ((_%lp-hd4526445347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4526345343%_)))
                        (_%lp-tl4526545350%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4526345343%_))))
                    (_%loop4526245334%_
                     _%lp-tl4526545350%_
                     (cons _%lp-hd4526445347%_ _%body4526645341%_))))
                (let ((_%body4526745353%_ (reverse _%body4526645341%_)))
                  ((lambda (_%g4524245356%_ _%g4524345358%_)
                     (let* ((_%g4538045397%_
                             (lambda (_%g4538145393%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4538145393%_)))
                            (_%g4537945464%_
                             (lambda (_%g4538145401%_)
                               (if (gx#stx-pair/null? _%g4538145401%_)
                                   (let ((_g45948_
                                          (gx#syntax-split-splice
                                           _%g4538145401%_
                                           '0)))
                                     (begin
                                       (let ((_g45949_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g45948_)
                                                    (##values-length _g45948_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g45949_ 2)))
                                             (error "Context expects 2 values"
                                                    _g45949_)))
                                       (let ((_%target4538345404%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45948_ 0)))
                                             (_%tl4538545407%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45948_ 1))))
                                         (if (gx#stx-null? _%tl4538545407%_)
                                             (letrec ((_%loop4538645410%_
                                                       (lambda (_%hd4538445414%_
                                                                _%clause4539045417%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4538445414%_)
                                                             (let ((_%e4538745419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4538445414%_)))
                       (let ((_%lp-hd4538845423%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4538745419%_)))
                             (_%lp-tl4538945426%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4538745419%_))))
                         (_%loop4538645410%_
                          _%lp-tl4538945426%_
                          (cons _%lp-hd4538845423%_ _%clause4539045417%_))))
                     (let ((_%clause4539145429%_
                            (reverse _%clause4539045417%_)))
                       ((lambda (_%g4538245432%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g4544745452%_
                                                      _%g4544845455%_)
                                               (cons _%g4544745452%_
                                                     _%g4544845455%_))
                                             '()
                                             _%g4538245432%_)
                                      (foldr (lambda (_%g4544945458%_
                                                      _%g4545045461%_)
                                               (cons _%g4544945458%_
                                                     _%g4545045461%_))
                                             '()
                                             _%g4524245356%_))))
                        _%clause4539145429%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4538645410%_
                                                _%target4538345404%_
                                                '()))
                                             (_%g4538045397%_
                                              _%g4538145401%_)))))
                                   (_%g4538045397%_ _%g4538145401%_)))))
                       (_%g4537945464%_
                        (map (lambda (_%clause45468%_)
                               (let* ((_%__stx4588145882%_ _%clause45468%_)
                                      (_%g4547245511%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4588145882%_))))
                                 (let ((_%__kont4588445885%_
                                        (lambda (_%g4547445644%_
                                                 _%g4547545646%_)
                                          (cons _%g4547545646%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g4547445644%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4588645887%_
                                        (lambda (_%g4548845566%_
                                                 _%g4548945568%_
                                                 _%g4549045569%_)
                                          (cons _%g4549045569%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g4548945568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g4558845591%_ _%g4558945594%_)
                                   (cons _%g4558845591%_ _%g4558945594%_))
                                 '()
                                 _%g4548845566%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4594245943%_
                                           (lambda (_%e4549145518%_
                                                    _%hd4549245522%_
                                                    _%tl4549345525%_
                                                    _%e4549445528%_
                                                    _%hd4549545532%_
                                                    _%tl4549645535%_
                                                    _%__splice4588845889%_
                                                    _%target4549745538%_
                                                    _%tl4549945541%_)
                                             (letrec ((_%loop4550045544%_
                                                       (lambda (_%hd4549845548%_
                                                                _%components4550445551%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4549845548%_)
                                                             (let ((_%e4550145553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4549845548%_)))
                       (let ((_%lp-tl4550345560%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4550145553%_)))
                             (_%lp-hd4550245557%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4550145553%_))))
                         (_%loop4550045544%_
                          _%lp-tl4550345560%_
                          (cons _%lp-hd4550245557%_
                                _%components4550445551%_))))
                     (let ((_%components4550545563%_
                            (reverse _%components4550445551%_)))
                       (let ((_%g4548845566%_ _%components4550545563%_)
                             (_%g4548945568%_ _%hd4549545532%_)
                             (_%g4549045569%_ _%hd4549245522%_))
                         (if (gx#identifier? _%g4549045569%_)
                             (_%__kont4588645887%_
                              _%g4548845566%_
                              _%g4548945568%_
                              _%g4549045569%_)
                             (let ()
                               (declare (not safe))
                               (_%g4547245511%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4550045544%_
                                                _%target4549745538%_
                                                '()))))
                                          (_%__match4592245923%_
                                           (lambda (_%e4547645604%_
                                                    _%hd4547745608%_
                                                    _%tl4547845611%_
                                                    _%e4547945614%_
                                                    _%hd4548045618%_
                                                    _%tl4548145621%_
                                                    _%e4548245624%_
                                                    _%hd4548345628%_
                                                    _%tl4548445631%_
                                                    _%e4548545634%_
                                                    _%hd4548645638%_
                                                    _%tl4548745641%_)
                                             (let ((_%g4547445644%_
                                                    _%hd4548645638%_)
                                                   (_%g4547545646%_
                                                    _%hd4547745608%_))
                                               (if (and (gx#identifier?
                                                         _%g4547545646%_)
                                                        (gx#identifier?
                                                         _%g4547445644%_))
                                                   (_%__kont4588445885%_
                                                    _%g4547445644%_
                                                    _%g4547545646%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4548145621%_)
                                                       (let ((_%__splice4588845889%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4548145621%_
                                                               '0)))
                                                         (let ((_%tl4549945541%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4588845889%_ '1)))
                       (_%target4549745538%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4588845889%_ '0))))
                   (if (gx#stx-null? _%tl4549945541%_)
                       (_%__match4594245943%_
                        _%e4547645604%_
                        _%hd4547745608%_
                        _%tl4547845611%_
                        _%e4547945614%_
                        _%hd4548045618%_
                        _%tl4548145621%_
                        _%__splice4588845889%_
                        _%target4549745538%_
                        _%tl4549945541%_)
                       (let () (declare (not safe)) (_%g4547245511%_)))))
               (let () (declare (not safe)) (_%g4547245511%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx4588145882%_)
                                         (let ((_%e4547645604%_
                                                (gx#syntax-e
                                                 _%__stx4588145882%_)))
                                           (let ((_%tl4547845611%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4547645604%_)))
                                                 (_%hd4547745608%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4547645604%_))))
                                             (if (gx#stx-pair?
                                                  _%tl4547845611%_)
                                                 (let ((_%e4547945614%_
                                                        (gx#syntax-e
                                                         _%tl4547845611%_)))
                                                   (let ((_%tl4548145621%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4547945614%_)))
                                                         (_%hd4548045618%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4547945614%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd4548045618%_)
                                                         (let ((_%e4548245624%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd4548045618%_)))
                   (let ((_%tl4548445631%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4548245624%_)))
                         (_%hd4548345628%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4548245624%_))))
                     (if (gx#identifier? _%hd4548345628%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g45950_|
                              _%hd4548345628%_)
                             (if (gx#stx-pair? _%tl4548445631%_)
                                 (let ((_%e4548545634%_
                                        (gx#syntax-e _%tl4548445631%_)))
                                   (let ((_%tl4548745641%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4548545634%_)))
                                         (_%hd4548645638%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4548545634%_))))
                                     (if (gx#stx-null? _%tl4548745641%_)
                                         (if (gx#stx-null? _%tl4548145621%_)
                                             (_%__match4592245923%_
                                              _%e4547645604%_
                                              _%hd4547745608%_
                                              _%tl4547845611%_
                                              _%e4547945614%_
                                              _%hd4548045618%_
                                              _%tl4548145621%_
                                              _%e4548245624%_
                                              _%hd4548345628%_
                                              _%tl4548445631%_
                                              _%e4548545634%_
                                              _%hd4548645638%_
                                              _%tl4548745641%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl4548145621%_)
                                                 (let ((_%__splice4588845889%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4548145621%_
                                                         '0)))
                                                   (let ((_%tl4549945541%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4588845889%_
                                                             '1)))
                                                         (_%target4549745538%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4588845889%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4549945541%_)
                                                         (_%__match4594245943%_
                                                          _%e4547645604%_
                                                          _%hd4547745608%_
                                                          _%tl4547845611%_
                                                          _%e4547945614%_
                                                          _%hd4548045618%_
                                                          _%tl4548145621%_
                                                          _%__splice4588845889%_
                                                          _%target4549745538%_
                                                          _%tl4549945541%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4547245511%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4547245511%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4548145621%_)
                                             (let ((_%__splice4588845889%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4548145621%_
                                                     '0)))
                                               (let ((_%tl4549945541%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4588845889%_
                                                         '1)))
                                                     (_%target4549745538%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4588845889%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4549945541%_)
                                                     (_%__match4594245943%_
                                                      _%e4547645604%_
                                                      _%hd4547745608%_
                                                      _%tl4547845611%_
                                                      _%e4547945614%_
                                                      _%hd4548045618%_
                                                      _%tl4548145621%_
                                                      _%__splice4588845889%_
                                                      _%target4549745538%_
                                                      _%tl4549945541%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4547245511%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4547245511%_))))))
                                 (if (gx#stx-pair/null? _%tl4548145621%_)
                                     (let ((_%__splice4588845889%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4548145621%_
                                             '0)))
                                       (let ((_%tl4549945541%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4588845889%_
                                                 '1)))
                                             (_%target4549745538%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4588845889%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4549945541%_)
                                             (_%__match4594245943%_
                                              _%e4547645604%_
                                              _%hd4547745608%_
                                              _%tl4547845611%_
                                              _%e4547945614%_
                                              _%hd4548045618%_
                                              _%tl4548145621%_
                                              _%__splice4588845889%_
                                              _%target4549745538%_
                                              _%tl4549945541%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4547245511%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4547245511%_))))
                             (if (gx#stx-pair/null? _%tl4548145621%_)
                                 (let ((_%__splice4588845889%_
                                        (gx#syntax-split-splice->vector
                                         _%tl4548145621%_
                                         '0)))
                                   (let ((_%tl4549945541%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4588845889%_
                                             '1)))
                                         (_%target4549745538%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4588845889%_
                                             '0))))
                                     (if (gx#stx-null? _%tl4549945541%_)
                                         (_%__match4594245943%_
                                          _%e4547645604%_
                                          _%hd4547745608%_
                                          _%tl4547845611%_
                                          _%e4547945614%_
                                          _%hd4548045618%_
                                          _%tl4548145621%_
                                          _%__splice4588845889%_
                                          _%target4549745538%_
                                          _%tl4549945541%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4547245511%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4547245511%_))))
                         (if (gx#stx-pair/null? _%tl4548145621%_)
                             (let ((_%__splice4588845889%_
                                    (gx#syntax-split-splice->vector
                                     _%tl4548145621%_
                                     '0)))
                               (let ((_%tl4549945541%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4588845889%_
                                         '1)))
                                     (_%target4549745538%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4588845889%_
                                         '0))))
                                 (if (gx#stx-null? _%tl4549945541%_)
                                     (_%__match4594245943%_
                                      _%e4547645604%_
                                      _%hd4547745608%_
                                      _%tl4547845611%_
                                      _%e4547945614%_
                                      _%hd4548045618%_
                                      _%tl4548145621%_
                                      _%__splice4588845889%_
                                      _%target4549745538%_
                                      _%tl4549945541%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g4547245511%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4547245511%_))))))
                 (if (gx#stx-pair/null? _%tl4548145621%_)
                     (let ((_%__splice4588845889%_
                            (gx#syntax-split-splice->vector
                             _%tl4548145621%_
                             '0)))
                       (let ((_%tl4549945541%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4588845889%_ '1)))
                             (_%target4549745538%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4588845889%_ '0))))
                         (if (gx#stx-null? _%tl4549945541%_)
                             (_%__match4594245943%_
                              _%e4547645604%_
                              _%hd4547745608%_
                              _%tl4547845611%_
                              _%e4547945614%_
                              _%hd4548045618%_
                              _%tl4548145621%_
                              _%__splice4588845889%_
                              _%target4549745538%_
                              _%tl4549945541%_)
                             (let () (declare (not safe)) (_%g4547245511%_)))))
                     (let () (declare (not safe)) (_%g4547245511%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4547245511%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g4547245511%_)))))))
                             (foldr (lambda (_%g4566645669%_ _%g4566745672%_)
                                      (cons _%g4566645669%_ _%g4566745672%_))
                                    '()
                                    _%g4524345358%_)))))
                   _%body4526745353%_
                   _%clause4525845325%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4526245334%_
                                           _%target4525945328%_
                                           '()))
                                        (_%g4524045273%_ _%g4524145277%_)))))
                              (_%g4524045273%_ _%g4524145277%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4525345306%_
                                                   _%target4525045300%_
                                                   '()))
                                                (_%g4524045273%_
                                                 _%g4524145277%_)))))
                                      (_%g4524045273%_ _%g4524145277%_))))
                              (_%g4524045273%_ _%g4524145277%_))))
                      (_%g4524045273%_ _%g4524145277%_)))))
          (_%g4523945675%_ _%stx45237%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx45683%_)
        (let* ((_%g4568745724%_
                (lambda (_%g4568845720%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4568845720%_)))
               (_%g4568645861%_
                (lambda (_%g4568845728%_)
                  (if (gx#stx-pair? _%g4568845728%_)
                      (let ((_%e4569245731%_ (gx#syntax-e _%g4568845728%_)))
                        (let ((_%hd4569345735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4569245731%_)))
                              (_%tl4569445738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4569245731%_))))
                          (if (gx#stx-pair? _%tl4569445738%_)
                              (let ((_%e4569545741%_
                                     (gx#syntax-e _%tl4569445738%_)))
                                (let ((_%hd4569645745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4569545741%_)))
                                      (_%tl4569745748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4569545741%_))))
                                  (if (gx#stx-pair? _%hd4569645745%_)
                                      (let ((_%e4569845751%_
                                             (gx#syntax-e _%hd4569645745%_)))
                                        (let ((_%hd4569945755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4569845751%_)))
                                              (_%tl4570045758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4569845751%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4570045758%_)
                                              (let ((_g45951_
                                                     (gx#syntax-split-splice
                                                      _%tl4570045758%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45952_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45951_)
                                                               (##values-length
                                                                _g45951_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45952_ 2)))
                (error "Context expects 2 values" _g45952_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4570145761%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45951_
                                                            0)))
                                                        (_%tl4570345764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45951_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4570345764%_)
                                                        (letrec ((_%loop4570445767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4570245771%_ _%components4570845774%_)
                            (if (gx#stx-pair? _%hd4570245771%_)
                                (let ((_%e4570545776%_
                                       (gx#syntax-e _%hd4570245771%_)))
                                  (let ((_%lp-hd4570645780%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4570545776%_)))
                                        (_%lp-tl4570745783%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4570545776%_))))
                                    (_%loop4570445767%_
                                     _%lp-tl4570745783%_
                                     (cons _%lp-hd4570645780%_
                                           _%components4570845774%_))))
                                (let ((_%components4570945786%_
                                       (reverse _%components4570845774%_)))
                                  (if (gx#stx-pair/null? _%tl4569745748%_)
                                      (let ((_g45953_
                                             (gx#syntax-split-splice
                                              _%tl4569745748%_
                                              '0)))
                                        (begin
                                          (let ((_g45954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45953_)
                                                       (##values-length
                                                        _g45953_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45954_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45954_)))
                                          (let ((_%target4571045789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45953_ 0)))
                                                (_%tl4571245792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45953_ 1))))
                                            (if (gx#stx-null? _%tl4571245792%_)
                                                (letrec ((_%loop4571345795%_
                                                          (lambda (_%hd4571145799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4571745802%_)
                    (if (gx#stx-pair? _%hd4571145799%_)
                        (let ((_%e4571445804%_ (gx#syntax-e _%hd4571145799%_)))
                          (let ((_%lp-hd4571545808%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4571445804%_)))
                                (_%lp-tl4571645811%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4571445804%_))))
                            (_%loop4571345795%_
                             _%lp-tl4571645811%_
                             (cons _%lp-hd4571545808%_ _%body4571745802%_))))
                        (let ((_%body4571845814%_
                               (reverse _%body4571745802%_)))
                          ((lambda (_%g4568945817%_
                                    _%g4569045819%_
                                    _%g4569145820%_)
                             (if (gx#identifier? _%g4569145820%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g4569145820%_
                                                         (foldr (lambda (_%g4584445849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4584545852%_)
                          (cons _%g4584445849%_ _%g4584545852%_))
                        '()
                        _%g4569045819%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g4584645855%_
                                                             _%g4584745858%_)
                                                      (cons _%g4584645855%_
                                                            _%g4584745858%_))
                                                    '()
                                                    _%g4568945817%_)))
                                 (_%g4568745724%_ _%g4568845728%_)))
                           _%body4571845814%_
                           _%components4570945786%_
                           _%hd4569945755%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4571345795%_
                                                   _%target4571045789%_
                                                   '()))
                                                (_%g4568745724%_
                                                 _%g4568845728%_)))))
                                      (_%g4568745724%_ _%g4568845728%_)))))))
                  (_%loop4570445767%_ _%target4570145761%_ '()))
                (_%g4568745724%_ _%g4568845728%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4568745724%_
                                               _%g4568845728%_))))
                                      (_%g4568745724%_ _%g4568845728%_))))
                              (_%g4568745724%_ _%g4568845728%_))))
                      (_%g4568745724%_ _%g4568845728%_)))))
          (_%g4568645861%_ _%$stx45683%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx45867%_)
        (let ((_%g4587045877%_
               (lambda (_%g4587145873%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4587145873%_))))
          (_%g4587045877%_ _%$stx45867%_))))))
