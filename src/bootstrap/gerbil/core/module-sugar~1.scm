(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx229327%_)
      (let* ((_%__stx232111232112%_ _%$stx229327%_)
             (_%g229332229351%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx232111232112%_))))
        (let ((_%__kont232114232115%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont232116232117%_
               (lambda (_%g229337229378%_ _%g229338229380%_ _%g229339229381%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g229338229380%_
                                   (cons (cons _%g229339229381%_
                                               _%g229337229378%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g229338229380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx232111232112%_)
              (let ((_%e229334229403%_ (gx#syntax-e _%__stx232111232112%_)))
                (let ((_%tl229336229410%_
                       (let () (declare (not safe)) (##cdr _%e229334229403%_)))
                      (_%hd229335229407%_
                       (let ()
                         (declare (not safe))
                         (##car _%e229334229403%_))))
                  (if (gx#stx-null? _%tl229336229410%_)
                      (_%__kont232114232115%_)
                      (if (gx#stx-pair? _%tl229336229410%_)
                          (let ((_%e229343229368%_
                                 (gx#syntax-e _%tl229336229410%_)))
                            (let ((_%tl229345229375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229343229368%_)))
                                  (_%hd229344229372%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229343229368%_))))
                              (_%__kont232116232117%_
                               _%tl229345229375%_
                               _%hd229344229372%_
                               _%hd229335229407%_)))
                          (let () (declare (not safe)) (_%g229332229351%_))))))
              (let () (declare (not safe)) (_%g229332229351%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx229421%_)
      (let* ((_%__stx232141232142%_ _%$stx229421%_)
             (_%g229426229466%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx232141232142%_))))
        (let ((_%__kont232144232145%_
               (lambda (_%g229428229602%_ _%g229429229604%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g229429229604%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g229428229602%_ '()))
                                   '())))))
              (_%__kont232146232147%_
               (lambda (_%g229439229531%_
                        _%g229440229533%_
                        _%g229441229534%_
                        _%g229442229535%_)
                 (cons _%g229442229535%_
                       (cons _%g229441229534%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g229440229533%_
                                               (foldr (lambda (_%g229556229559%_
                                                               _%g229557229562%_)
                                                        (cons _%g229556229559%_
                                                              _%g229557229562%_))
                                                      '()
                                                      _%g229439229531%_)))
                                   '()))))))
          (let* ((_%__match232196232197%_
                  (lambda (_%e229443229473%_
                           _%hd229444229477%_
                           _%tl229445229480%_
                           _%e229446229483%_
                           _%hd229447229487%_
                           _%tl229448229490%_
                           _%e229449229493%_
                           _%hd229450229497%_
                           _%tl229451229500%_
                           _%__splice232148232149%_
                           _%target229452229503%_
                           _%tl229454229506%_)
                    (letrec ((_%loop229455229509%_
                              (lambda (_%hd229453229513%_ _%body229459229516%_)
                                (if (gx#stx-pair? _%hd229453229513%_)
                                    (let ((_%e229456229518%_
                                           (gx#syntax-e _%hd229453229513%_)))
                                      (let ((_%lp-tl229458229525%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229456229518%_)))
                                            (_%lp-hd229457229522%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229456229518%_))))
                                        (_%loop229455229509%_
                                         _%lp-tl229458229525%_
                                         (cons _%lp-hd229457229522%_
                                               _%body229459229516%_))))
                                    (let ((_%body229460229528%_
                                           (reverse _%body229459229516%_)))
                                      (let ((_%g229439229531%_
                                             _%body229460229528%_)
                                            (_%g229440229533%_
                                             _%tl229451229500%_)
                                            (_%g229441229534%_
                                             _%hd229450229497%_)
                                            (_%g229442229535%_
                                             _%hd229444229477%_))
                                        (if (gx#identifier? _%g229441229534%_)
                                            (_%__kont232146232147%_
                                             _%g229439229531%_
                                             _%g229440229533%_
                                             _%g229441229534%_
                                             _%g229442229535%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g229426229466%_)))))))))
                      (_%loop229455229509%_ _%target229452229503%_ '()))))
                 (_%__match232170232171%_
                  (lambda (_%e229430229572%_
                           _%hd229431229576%_
                           _%tl229432229579%_
                           _%e229433229582%_
                           _%hd229434229586%_
                           _%tl229435229589%_
                           _%e229436229592%_
                           _%hd229437229596%_
                           _%tl229438229599%_)
                    (let ((_%g229428229602%_ _%hd229437229596%_)
                          (_%g229429229604%_ _%hd229434229586%_))
                      (if (gx#identifier? _%g229429229604%_)
                          (_%__kont232144232145%_
                           _%g229428229602%_
                           _%g229429229604%_)
                          (if (gx#stx-pair? _%hd229434229586%_)
                              (let ((_%e229449229493%_
                                     (gx#syntax-e _%hd229434229586%_)))
                                (let ((_%tl229451229500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229449229493%_)))
                                      (_%hd229450229497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229449229493%_))))
                                  (if (gx#stx-pair/null? _%tl229435229589%_)
                                      (let ((_%__splice232148232149%_
                                             (gx#syntax-split-splice->vector
                                              _%tl229435229589%_
                                              '0)))
                                        (let ((_%tl229454229506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232148232149%_
                                                  '1)))
                                              (_%target229452229503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232148232149%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl229454229506%_)
                                              (_%__match232196232197%_
                                               _%e229430229572%_
                                               _%hd229431229576%_
                                               _%tl229432229579%_
                                               _%e229433229582%_
                                               _%hd229434229586%_
                                               _%tl229435229589%_
                                               _%e229449229493%_
                                               _%hd229450229497%_
                                               _%tl229451229500%_
                                               _%__splice232148232149%_
                                               _%target229452229503%_
                                               _%tl229454229506%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g229426229466%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229426229466%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g229426229466%_))))))))
            (if (gx#stx-pair? _%__stx232141232142%_)
                (let ((_%e229430229572%_ (gx#syntax-e _%__stx232141232142%_)))
                  (let ((_%tl229432229579%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229430229572%_)))
                        (_%hd229431229576%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229430229572%_))))
                    (if (gx#stx-pair? _%tl229432229579%_)
                        (let ((_%e229433229582%_
                               (gx#syntax-e _%tl229432229579%_)))
                          (let ((_%tl229435229589%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229433229582%_)))
                                (_%hd229434229586%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229433229582%_))))
                            (if (gx#stx-pair? _%tl229435229589%_)
                                (let ((_%e229436229592%_
                                       (gx#syntax-e _%tl229435229589%_)))
                                  (let ((_%tl229438229599%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229436229592%_)))
                                        (_%hd229437229596%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229436229592%_))))
                                    (if (gx#stx-null? _%tl229438229599%_)
                                        (_%__match232170232171%_
                                         _%e229430229572%_
                                         _%hd229431229576%_
                                         _%tl229432229579%_
                                         _%e229433229582%_
                                         _%hd229434229586%_
                                         _%tl229435229589%_
                                         _%e229436229592%_
                                         _%hd229437229596%_
                                         _%tl229438229599%_)
                                        (if (gx#stx-pair? _%hd229434229586%_)
                                            (let ((_%e229449229493%_
                                                   (gx#syntax-e
                                                    _%hd229434229586%_)))
                                              (let ((_%tl229451229500%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229449229493%_)))
                                                    (_%hd229450229497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229449229493%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl229435229589%_)
                                                    (let ((_%__splice232148232149%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl229435229589%_
                                                            '0)))
                                                      (let ((_%tl229454229506%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice232148232149%_ '1)))
                    (_%target229452229503%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice232148232149%_ '0))))
                (if (gx#stx-null? _%tl229454229506%_)
                    (_%__match232196232197%_
                     _%e229430229572%_
                     _%hd229431229576%_
                     _%tl229432229579%_
                     _%e229433229582%_
                     _%hd229434229586%_
                     _%tl229435229589%_
                     _%e229449229493%_
                     _%hd229450229497%_
                     _%tl229451229500%_
                     _%__splice232148232149%_
                     _%target229452229503%_
                     _%tl229454229506%_)
                    (let () (declare (not safe)) (_%g229426229466%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g229426229466%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g229426229466%_))))))
                                (if (gx#stx-pair? _%hd229434229586%_)
                                    (let ((_%e229449229493%_
                                           (gx#syntax-e _%hd229434229586%_)))
                                      (let ((_%tl229451229500%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229449229493%_)))
                                            (_%hd229450229497%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229449229493%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl229435229589%_)
                                            (let ((_%__splice232148232149%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl229435229589%_
                                                    '0)))
                                              (let ((_%tl229454229506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice232148232149%_
                                                        '1)))
                                                    (_%target229452229503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice232148232149%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl229454229506%_)
                                                    (_%__match232196232197%_
                                                     _%e229430229572%_
                                                     _%hd229431229576%_
                                                     _%tl229432229579%_
                                                     _%e229433229582%_
                                                     _%hd229434229586%_
                                                     _%tl229435229589%_
                                                     _%e229449229493%_
                                                     _%hd229450229497%_
                                                     _%tl229451229500%_
                                                     _%__splice232148232149%_
                                                     _%target229452229503%_
                                                     _%tl229454229506%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g229426229466%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g229426229466%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229426229466%_))))))
                        (let () (declare (not safe)) (_%g229426229466%_)))))
                (let () (declare (not safe)) (_%g229426229466%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx229624%_)
      (let* ((_%__stx232199232200%_ _%$stx229624%_)
             (_%g229629229669%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx232199232200%_))))
        (let ((_%__kont232202232203%_
               (lambda (_%g229631229805%_ _%g229632229807%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g229632229807%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g229631229805%_ '()))
                                   '())))))
              (_%__kont232204232205%_
               (lambda (_%g229642229734%_
                        _%g229643229736%_
                        _%g229644229737%_
                        _%g229645229738%_)
                 (cons _%g229645229738%_
                       (cons _%g229644229737%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g229643229736%_
                                               (foldr (lambda (_%g229759229762%_
                                                               _%g229760229765%_)
                                                        (cons _%g229759229762%_
                                                              _%g229760229765%_))
                                                      '()
                                                      _%g229642229734%_)))
                                   '()))))))
          (let* ((_%__match232254232255%_
                  (lambda (_%e229646229676%_
                           _%hd229647229680%_
                           _%tl229648229683%_
                           _%e229649229686%_
                           _%hd229650229690%_
                           _%tl229651229693%_
                           _%e229652229696%_
                           _%hd229653229700%_
                           _%tl229654229703%_
                           _%__splice232206232207%_
                           _%target229655229706%_
                           _%tl229657229709%_)
                    (letrec ((_%loop229658229712%_
                              (lambda (_%hd229656229716%_ _%body229662229719%_)
                                (if (gx#stx-pair? _%hd229656229716%_)
                                    (let ((_%e229659229721%_
                                           (gx#syntax-e _%hd229656229716%_)))
                                      (let ((_%lp-tl229661229728%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229659229721%_)))
                                            (_%lp-hd229660229725%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229659229721%_))))
                                        (_%loop229658229712%_
                                         _%lp-tl229661229728%_
                                         (cons _%lp-hd229660229725%_
                                               _%body229662229719%_))))
                                    (let ((_%body229663229731%_
                                           (reverse _%body229662229719%_)))
                                      (let ((_%g229642229734%_
                                             _%body229663229731%_)
                                            (_%g229643229736%_
                                             _%tl229654229703%_)
                                            (_%g229644229737%_
                                             _%hd229653229700%_)
                                            (_%g229645229738%_
                                             _%hd229647229680%_))
                                        (if (gx#identifier? _%g229644229737%_)
                                            (_%__kont232204232205%_
                                             _%g229642229734%_
                                             _%g229643229736%_
                                             _%g229644229737%_
                                             _%g229645229738%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g229629229669%_)))))))))
                      (_%loop229658229712%_ _%target229655229706%_ '()))))
                 (_%__match232228232229%_
                  (lambda (_%e229633229775%_
                           _%hd229634229779%_
                           _%tl229635229782%_
                           _%e229636229785%_
                           _%hd229637229789%_
                           _%tl229638229792%_
                           _%e229639229795%_
                           _%hd229640229799%_
                           _%tl229641229802%_)
                    (let ((_%g229631229805%_ _%hd229640229799%_)
                          (_%g229632229807%_ _%hd229637229789%_))
                      (if (gx#identifier? _%g229632229807%_)
                          (_%__kont232202232203%_
                           _%g229631229805%_
                           _%g229632229807%_)
                          (if (gx#stx-pair? _%hd229637229789%_)
                              (let ((_%e229652229696%_
                                     (gx#syntax-e _%hd229637229789%_)))
                                (let ((_%tl229654229703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229652229696%_)))
                                      (_%hd229653229700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229652229696%_))))
                                  (if (gx#stx-pair/null? _%tl229638229792%_)
                                      (let ((_%__splice232206232207%_
                                             (gx#syntax-split-splice->vector
                                              _%tl229638229792%_
                                              '0)))
                                        (let ((_%tl229657229709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232206232207%_
                                                  '1)))
                                              (_%target229655229706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232206232207%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl229657229709%_)
                                              (_%__match232254232255%_
                                               _%e229633229775%_
                                               _%hd229634229779%_
                                               _%tl229635229782%_
                                               _%e229636229785%_
                                               _%hd229637229789%_
                                               _%tl229638229792%_
                                               _%e229652229696%_
                                               _%hd229653229700%_
                                               _%tl229654229703%_
                                               _%__splice232206232207%_
                                               _%target229655229706%_
                                               _%tl229657229709%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g229629229669%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229629229669%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g229629229669%_))))))))
            (if (gx#stx-pair? _%__stx232199232200%_)
                (let ((_%e229633229775%_ (gx#syntax-e _%__stx232199232200%_)))
                  (let ((_%tl229635229782%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229633229775%_)))
                        (_%hd229634229779%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229633229775%_))))
                    (if (gx#stx-pair? _%tl229635229782%_)
                        (let ((_%e229636229785%_
                               (gx#syntax-e _%tl229635229782%_)))
                          (let ((_%tl229638229792%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229636229785%_)))
                                (_%hd229637229789%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229636229785%_))))
                            (if (gx#stx-pair? _%tl229638229792%_)
                                (let ((_%e229639229795%_
                                       (gx#syntax-e _%tl229638229792%_)))
                                  (let ((_%tl229641229802%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229639229795%_)))
                                        (_%hd229640229799%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229639229795%_))))
                                    (if (gx#stx-null? _%tl229641229802%_)
                                        (_%__match232228232229%_
                                         _%e229633229775%_
                                         _%hd229634229779%_
                                         _%tl229635229782%_
                                         _%e229636229785%_
                                         _%hd229637229789%_
                                         _%tl229638229792%_
                                         _%e229639229795%_
                                         _%hd229640229799%_
                                         _%tl229641229802%_)
                                        (if (gx#stx-pair? _%hd229637229789%_)
                                            (let ((_%e229652229696%_
                                                   (gx#syntax-e
                                                    _%hd229637229789%_)))
                                              (let ((_%tl229654229703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229652229696%_)))
                                                    (_%hd229653229700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229652229696%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl229638229792%_)
                                                    (let ((_%__splice232206232207%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl229638229792%_
                                                            '0)))
                                                      (let ((_%tl229657229709%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice232206232207%_ '1)))
                    (_%target229655229706%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice232206232207%_ '0))))
                (if (gx#stx-null? _%tl229657229709%_)
                    (_%__match232254232255%_
                     _%e229633229775%_
                     _%hd229634229779%_
                     _%tl229635229782%_
                     _%e229636229785%_
                     _%hd229637229789%_
                     _%tl229638229792%_
                     _%e229652229696%_
                     _%hd229653229700%_
                     _%tl229654229703%_
                     _%__splice232206232207%_
                     _%target229655229706%_
                     _%tl229657229709%_)
                    (let () (declare (not safe)) (_%g229629229669%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g229629229669%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g229629229669%_))))))
                                (if (gx#stx-pair? _%hd229637229789%_)
                                    (let ((_%e229652229696%_
                                           (gx#syntax-e _%hd229637229789%_)))
                                      (let ((_%tl229654229703%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229652229696%_)))
                                            (_%hd229653229700%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229652229696%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl229638229792%_)
                                            (let ((_%__splice232206232207%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl229638229792%_
                                                    '0)))
                                              (let ((_%tl229657229709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice232206232207%_
                                                        '1)))
                                                    (_%target229655229706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice232206232207%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl229657229709%_)
                                                    (_%__match232254232255%_
                                                     _%e229633229775%_
                                                     _%hd229634229779%_
                                                     _%tl229635229782%_
                                                     _%e229636229785%_
                                                     _%hd229637229789%_
                                                     _%tl229638229792%_
                                                     _%e229652229696%_
                                                     _%hd229653229700%_
                                                     _%tl229654229703%_
                                                     _%__splice232206232207%_
                                                     _%target229655229706%_
                                                     _%tl229657229709%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g229629229669%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g229629229669%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229629229669%_))))))
                        (let () (declare (not safe)) (_%g229629229669%_)))))
                (let () (declare (not safe)) (_%g229629229669%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx229827%_)
      (let* ((_%__stx232257232258%_ _%$stx229827%_)
             (_%g229832229872%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx232257232258%_))))
        (let ((_%__kont232260232261%_
               (lambda (_%g229834230008%_ _%g229835230010%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g229835230010%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g229834230008%_ '()))
                                   '())))))
              (_%__kont232262232263%_
               (lambda (_%g229845229937%_
                        _%g229846229939%_
                        _%g229847229940%_
                        _%g229848229941%_)
                 (cons _%g229848229941%_
                       (cons _%g229847229940%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g229846229939%_
                                               (foldr (lambda (_%g229962229965%_
                                                               _%g229963229968%_)
                                                        (cons _%g229962229965%_
                                                              _%g229963229968%_))
                                                      '()
                                                      _%g229845229937%_)))
                                   '()))))))
          (let* ((_%__match232312232313%_
                  (lambda (_%e229849229879%_
                           _%hd229850229883%_
                           _%tl229851229886%_
                           _%e229852229889%_
                           _%hd229853229893%_
                           _%tl229854229896%_
                           _%e229855229899%_
                           _%hd229856229903%_
                           _%tl229857229906%_
                           _%__splice232264232265%_
                           _%target229858229909%_
                           _%tl229860229912%_)
                    (letrec ((_%loop229861229915%_
                              (lambda (_%hd229859229919%_ _%body229865229922%_)
                                (if (gx#stx-pair? _%hd229859229919%_)
                                    (let ((_%e229862229924%_
                                           (gx#syntax-e _%hd229859229919%_)))
                                      (let ((_%lp-tl229864229931%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229862229924%_)))
                                            (_%lp-hd229863229928%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229862229924%_))))
                                        (_%loop229861229915%_
                                         _%lp-tl229864229931%_
                                         (cons _%lp-hd229863229928%_
                                               _%body229865229922%_))))
                                    (let ((_%body229866229934%_
                                           (reverse _%body229865229922%_)))
                                      (let ((_%g229845229937%_
                                             _%body229866229934%_)
                                            (_%g229846229939%_
                                             _%tl229857229906%_)
                                            (_%g229847229940%_
                                             _%hd229856229903%_)
                                            (_%g229848229941%_
                                             _%hd229850229883%_))
                                        (if (gx#identifier? _%g229847229940%_)
                                            (_%__kont232262232263%_
                                             _%g229845229937%_
                                             _%g229846229939%_
                                             _%g229847229940%_
                                             _%g229848229941%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g229832229872%_)))))))))
                      (_%loop229861229915%_ _%target229858229909%_ '()))))
                 (_%__match232286232287%_
                  (lambda (_%e229836229978%_
                           _%hd229837229982%_
                           _%tl229838229985%_
                           _%e229839229988%_
                           _%hd229840229992%_
                           _%tl229841229995%_
                           _%e229842229998%_
                           _%hd229843230002%_
                           _%tl229844230005%_)
                    (let ((_%g229834230008%_ _%hd229843230002%_)
                          (_%g229835230010%_ _%hd229840229992%_))
                      (if (gx#identifier? _%g229835230010%_)
                          (_%__kont232260232261%_
                           _%g229834230008%_
                           _%g229835230010%_)
                          (if (gx#stx-pair? _%hd229840229992%_)
                              (let ((_%e229855229899%_
                                     (gx#syntax-e _%hd229840229992%_)))
                                (let ((_%tl229857229906%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229855229899%_)))
                                      (_%hd229856229903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229855229899%_))))
                                  (if (gx#stx-pair/null? _%tl229841229995%_)
                                      (let ((_%__splice232264232265%_
                                             (gx#syntax-split-splice->vector
                                              _%tl229841229995%_
                                              '0)))
                                        (let ((_%tl229860229912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232264232265%_
                                                  '1)))
                                              (_%target229858229909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232264232265%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl229860229912%_)
                                              (_%__match232312232313%_
                                               _%e229836229978%_
                                               _%hd229837229982%_
                                               _%tl229838229985%_
                                               _%e229839229988%_
                                               _%hd229840229992%_
                                               _%tl229841229995%_
                                               _%e229855229899%_
                                               _%hd229856229903%_
                                               _%tl229857229906%_
                                               _%__splice232264232265%_
                                               _%target229858229909%_
                                               _%tl229860229912%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g229832229872%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229832229872%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g229832229872%_))))))))
            (if (gx#stx-pair? _%__stx232257232258%_)
                (let ((_%e229836229978%_ (gx#syntax-e _%__stx232257232258%_)))
                  (let ((_%tl229838229985%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229836229978%_)))
                        (_%hd229837229982%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229836229978%_))))
                    (if (gx#stx-pair? _%tl229838229985%_)
                        (let ((_%e229839229988%_
                               (gx#syntax-e _%tl229838229985%_)))
                          (let ((_%tl229841229995%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229839229988%_)))
                                (_%hd229840229992%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229839229988%_))))
                            (if (gx#stx-pair? _%tl229841229995%_)
                                (let ((_%e229842229998%_
                                       (gx#syntax-e _%tl229841229995%_)))
                                  (let ((_%tl229844230005%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229842229998%_)))
                                        (_%hd229843230002%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229842229998%_))))
                                    (if (gx#stx-null? _%tl229844230005%_)
                                        (_%__match232286232287%_
                                         _%e229836229978%_
                                         _%hd229837229982%_
                                         _%tl229838229985%_
                                         _%e229839229988%_
                                         _%hd229840229992%_
                                         _%tl229841229995%_
                                         _%e229842229998%_
                                         _%hd229843230002%_
                                         _%tl229844230005%_)
                                        (if (gx#stx-pair? _%hd229840229992%_)
                                            (let ((_%e229855229899%_
                                                   (gx#syntax-e
                                                    _%hd229840229992%_)))
                                              (let ((_%tl229857229906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229855229899%_)))
                                                    (_%hd229856229903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229855229899%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl229841229995%_)
                                                    (let ((_%__splice232264232265%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl229841229995%_
                                                            '0)))
                                                      (let ((_%tl229860229912%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice232264232265%_ '1)))
                    (_%target229858229909%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice232264232265%_ '0))))
                (if (gx#stx-null? _%tl229860229912%_)
                    (_%__match232312232313%_
                     _%e229836229978%_
                     _%hd229837229982%_
                     _%tl229838229985%_
                     _%e229839229988%_
                     _%hd229840229992%_
                     _%tl229841229995%_
                     _%e229855229899%_
                     _%hd229856229903%_
                     _%tl229857229906%_
                     _%__splice232264232265%_
                     _%target229858229909%_
                     _%tl229860229912%_)
                    (let () (declare (not safe)) (_%g229832229872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g229832229872%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g229832229872%_))))))
                                (if (gx#stx-pair? _%hd229840229992%_)
                                    (let ((_%e229855229899%_
                                           (gx#syntax-e _%hd229840229992%_)))
                                      (let ((_%tl229857229906%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229855229899%_)))
                                            (_%hd229856229903%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229855229899%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl229841229995%_)
                                            (let ((_%__splice232264232265%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl229841229995%_
                                                    '0)))
                                              (let ((_%tl229860229912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice232264232265%_
                                                        '1)))
                                                    (_%target229858229909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice232264232265%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl229860229912%_)
                                                    (_%__match232312232313%_
                                                     _%e229836229978%_
                                                     _%hd229837229982%_
                                                     _%tl229838229985%_
                                                     _%e229839229988%_
                                                     _%hd229840229992%_
                                                     _%tl229841229995%_
                                                     _%e229855229899%_
                                                     _%hd229856229903%_
                                                     _%tl229857229906%_
                                                     _%__splice232264232265%_
                                                     _%target229858229909%_
                                                     _%tl229860229912%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g229832229872%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g229832229872%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229832229872%_))))))
                        (let () (declare (not safe)) (_%g229832229872%_)))))
                (let () (declare (not safe)) (_%g229832229872%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx230030%_)
       (let* ((_%g230033230053%_
               (lambda (_%g230034230049%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g230034230049%_)))
              (_%g230032230122%_
               (lambda (_%g230034230057%_)
                 (if (gx#stx-pair? _%g230034230057%_)
                     (let ((_%e230036230060%_ (gx#syntax-e _%g230034230057%_)))
                       (let ((_%hd230037230064%_
                              (let ()
                                (declare (not safe))
                                (##car _%e230036230060%_)))
                             (_%tl230038230067%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e230036230060%_))))
                         (if (gx#stx-pair/null? _%tl230038230067%_)
                             (let ((_g232407_
                                    (gx#syntax-split-splice
                                     _%tl230038230067%_
                                     '0)))
                               (begin
                                 (let ((_g232408_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g232407_)
                                              (##values-length _g232407_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g232408_ 2)))
                                       (error "Context expects 2 values"
                                              _g232408_)))
                                 (let ((_%target230039230070%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g232407_ 0)))
                                       (_%tl230041230073%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g232407_ 1))))
                                   (if (gx#stx-null? _%tl230041230073%_)
                                       (letrec ((_%loop230042230076%_
                                                 (lambda (_%hd230040230080%_
                                                          _%body230046230083%_)
                                                   (if (gx#stx-pair?
                                                        _%hd230040230080%_)
                                                       (let ((_%e230043230085%_
                                                              (gx#syntax-e
                                                               _%hd230040230080%_)))
                                                         (let ((_%lp-hd230044230089%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e230043230085%_)))
                       (_%lp-tl230045230092%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230043230085%_))))
                   (_%loop230042230076%_
                    _%lp-tl230045230092%_
                    (cons _%lp-hd230044230089%_ _%body230046230083%_))))
               (let ((_%body230047230095%_ (reverse _%body230046230083%_)))
                 ((lambda (_%g230035230098%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g230113230116%_
                                                _%g230114230119%_)
                                         (cons _%g230113230116%_
                                               _%g230114230119%_))
                                       '()
                                       _%g230035230098%_))))
                  _%body230047230095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop230042230076%_
                                          _%target230039230070%_
                                          '()))
                                       (_%g230033230053%_
                                        _%g230034230057%_)))))
                             (_%g230033230053%_ _%g230034230057%_))))
                     (_%g230033230053%_ _%g230034230057%_)))))
         (_%g230032230122%_ _%stx230030%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx230127%_)
       (let* ((_%g230130230150%_
               (lambda (_%g230131230146%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g230131230146%_)))
              (_%g230129230219%_
               (lambda (_%g230131230154%_)
                 (if (gx#stx-pair? _%g230131230154%_)
                     (let ((_%e230133230157%_ (gx#syntax-e _%g230131230154%_)))
                       (let ((_%hd230134230161%_
                              (let ()
                                (declare (not safe))
                                (##car _%e230133230157%_)))
                             (_%tl230135230164%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e230133230157%_))))
                         (if (gx#stx-pair/null? _%tl230135230164%_)
                             (let ((_g232409_
                                    (gx#syntax-split-splice
                                     _%tl230135230164%_
                                     '0)))
                               (begin
                                 (let ((_g232410_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g232409_)
                                              (##values-length _g232409_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g232410_ 2)))
                                       (error "Context expects 2 values"
                                              _g232410_)))
                                 (let ((_%target230136230167%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g232409_ 0)))
                                       (_%tl230138230170%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g232409_ 1))))
                                   (if (gx#stx-null? _%tl230138230170%_)
                                       (letrec ((_%loop230139230173%_
                                                 (lambda (_%hd230137230177%_
                                                          _%body230143230180%_)
                                                   (if (gx#stx-pair?
                                                        _%hd230137230177%_)
                                                       (let ((_%e230140230182%_
                                                              (gx#syntax-e
                                                               _%hd230137230177%_)))
                                                         (let ((_%lp-hd230141230186%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e230140230182%_)))
                       (_%lp-tl230142230189%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230140230182%_))))
                   (_%loop230139230173%_
                    _%lp-tl230142230189%_
                    (cons _%lp-hd230141230186%_ _%body230143230180%_))))
               (let ((_%body230144230192%_ (reverse _%body230143230180%_)))
                 ((lambda (_%g230132230195%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g230210230213%_
                                                _%g230211230216%_)
                                         (cons _%g230210230213%_
                                               _%g230211230216%_))
                                       '()
                                       _%g230132230195%_))))
                  _%body230144230192%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop230139230173%_
                                          _%target230136230167%_
                                          '()))
                                       (_%g230130230150%_
                                        _%g230131230154%_)))))
                             (_%g230130230150%_ _%g230131230154%_))))
                     (_%g230130230150%_ _%g230131230154%_)))))
         (_%g230129230219%_ _%stx230127%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx230224%_)
       (let* ((_%g230227230251%_
               (lambda (_%g230228230247%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g230228230247%_)))
              (_%g230226230377%_
               (lambda (_%g230228230255%_)
                 (if (gx#stx-pair? _%g230228230255%_)
                     (let ((_%e230231230258%_ (gx#syntax-e _%g230228230255%_)))
                       (let ((_%hd230232230262%_
                              (let ()
                                (declare (not safe))
                                (##car _%e230231230258%_)))
                             (_%tl230233230265%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e230231230258%_))))
                         (if (gx#stx-pair? _%tl230233230265%_)
                             (let ((_%e230234230268%_
                                    (gx#syntax-e _%tl230233230265%_)))
                               (let ((_%hd230235230272%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e230234230268%_)))
                                     (_%tl230236230275%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e230234230268%_))))
                                 (if (gx#stx-pair/null? _%tl230236230275%_)
                                     (let ((_g232411_
                                            (gx#syntax-split-splice
                                             _%tl230236230275%_
                                             '0)))
                                       (begin
                                         (let ((_g232412_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g232411_)
                                                      (##values-length
                                                       _g232411_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g232412_ 2)))
                                               (error "Context expects 2 values"
                                                      _g232412_)))
                                         (let ((_%target230237230278%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232411_ 0)))
                                               (_%tl230239230281%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232411_ 1))))
                                           (if (gx#stx-null?
                                                _%tl230239230281%_)
                                               (letrec ((_%loop230240230284%_
                                                         (lambda (_%hd230238230288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id230244230291%_)
                   (if (gx#stx-pair? _%hd230238230288%_)
                       (let ((_%e230241230293%_
                              (gx#syntax-e _%hd230238230288%_)))
                         (let ((_%lp-hd230242230297%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e230241230293%_)))
                               (_%lp-tl230243230300%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e230241230293%_))))
                           (_%loop230240230284%_
                            _%lp-tl230243230300%_
                            (cons _%lp-hd230242230297%_ _%id230244230291%_))))
                       (let ((_%id230245230303%_ (reverse _%id230244230291%_)))
                         ((lambda (_%g230229230306%_ _%g230230230308%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g230325230328%_
                                                 _%g230326230331%_)
                                          (cons _%g230325230328%_
                                                _%g230326230331%_))
                                        '()
                                        _%g230229230306%_))
                                (let* ((_%keys230342%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g230333230336%_
                                                         _%g230334230339%_)
                                                  (cons _%g230333230336%_
                                                        _%g230334230339%_))
                                                '()
                                                _%g230229230306%_)))
                                       (_%keytab230353%_
                                        (let ((_%ht230345%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g230347230349%_)
                                             (hash-put!
                                              _%ht230345%_
                                              _%g230347230349%_
                                              '#t))
                                           _%keys230342%_)
                                          _%ht230345%_))
                                       (_%imports230356%_
                                        (gx#core-expand-import-source
                                         _%g230230230308%_))
                                       (_%fold-e230372%_
                                        (letrec ((_%fold-e230359%_
                                                  (lambda (_%in230362%_
                                                           _%r230364%_)
                                                    (if (gx#module-import?
                                                         _%in230362%_)
                                                        (if (hash-get
                                                             _%keytab230353%_
                                                             (gx#module-import-name
                                                              _%in230362%_))
                                                            (cons _%in230362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r230364%_)
                    _%r230364%_)
                (if (gx#import-set? _%in230362%_)
                    (foldl _%fold-e230359%_
                           _%r230364%_
                           (gx#import-set-imports _%in230362%_))
                    _%r230364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e230359%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e230372%_
                                               '()
                                               _%imports230356%_)))
                                (_%g230227230251%_ _%g230228230255%_)))
                          _%id230245230303%_
                          _%hd230235230272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop230240230284%_
                                                  _%target230237230278%_
                                                  '()))
                                               (_%g230227230251%_
                                                _%g230228230255%_)))))
                                     (_%g230227230251%_ _%g230228230255%_))))
                             (_%g230227230251%_ _%g230228230255%_))))
                     (_%g230227230251%_ _%g230228230255%_)))))
         (_%g230226230377%_ _%stx230224%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx230382%_)
       (let* ((_%g230385230409%_
               (lambda (_%g230386230405%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g230386230405%_)))
              (_%g230384230535%_
               (lambda (_%g230386230413%_)
                 (if (gx#stx-pair? _%g230386230413%_)
                     (let ((_%e230389230416%_ (gx#syntax-e _%g230386230413%_)))
                       (let ((_%hd230390230420%_
                              (let ()
                                (declare (not safe))
                                (##car _%e230389230416%_)))
                             (_%tl230391230423%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e230389230416%_))))
                         (if (gx#stx-pair? _%tl230391230423%_)
                             (let ((_%e230392230426%_
                                    (gx#syntax-e _%tl230391230423%_)))
                               (let ((_%hd230393230430%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e230392230426%_)))
                                     (_%tl230394230433%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e230392230426%_))))
                                 (if (gx#stx-pair/null? _%tl230394230433%_)
                                     (let ((_g232413_
                                            (gx#syntax-split-splice
                                             _%tl230394230433%_
                                             '0)))
                                       (begin
                                         (let ((_g232414_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g232413_)
                                                      (##values-length
                                                       _g232413_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g232414_ 2)))
                                               (error "Context expects 2 values"
                                                      _g232414_)))
                                         (let ((_%target230395230436%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232413_ 0)))
                                               (_%tl230397230439%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232413_ 1))))
                                           (if (gx#stx-null?
                                                _%tl230397230439%_)
                                               (letrec ((_%loop230398230442%_
                                                         (lambda (_%hd230396230446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id230402230449%_)
                   (if (gx#stx-pair? _%hd230396230446%_)
                       (let ((_%e230399230451%_
                              (gx#syntax-e _%hd230396230446%_)))
                         (let ((_%lp-hd230400230455%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e230399230451%_)))
                               (_%lp-tl230401230458%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e230399230451%_))))
                           (_%loop230398230442%_
                            _%lp-tl230401230458%_
                            (cons _%lp-hd230400230455%_ _%id230402230449%_))))
                       (let ((_%id230403230461%_ (reverse _%id230402230449%_)))
                         ((lambda (_%g230387230464%_ _%g230388230466%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g230483230486%_
                                                 _%g230484230489%_)
                                          (cons _%g230483230486%_
                                                _%g230484230489%_))
                                        '()
                                        _%g230387230464%_))
                                (let* ((_%keys230500%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g230491230494%_
                                                         _%g230492230497%_)
                                                  (cons _%g230491230494%_
                                                        _%g230492230497%_))
                                                '()
                                                _%g230387230464%_)))
                                       (_%keytab230511%_
                                        (let ((_%ht230503%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g230505230507%_)
                                             (hash-put!
                                              _%ht230503%_
                                              _%g230505230507%_
                                              '#t))
                                           _%keys230500%_)
                                          _%ht230503%_))
                                       (_%imports230514%_
                                        (gx#core-expand-import-source
                                         _%g230388230466%_))
                                       (_%fold-e230530%_
                                        (letrec ((_%fold-e230517%_
                                                  (lambda (_%in230520%_
                                                           _%r230522%_)
                                                    (if (gx#module-import?
                                                         _%in230520%_)
                                                        (if (hash-get
                                                             _%keytab230511%_
                                                             (gx#module-import-name
                                                              _%in230520%_))
                                                            _%r230522%_
                                                            (cons _%in230520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r230522%_))
                (if (gx#import-set? _%in230520%_)
                    (foldl _%fold-e230517%_
                           _%r230522%_
                           (gx#import-set-imports _%in230520%_))
                    (cons _%in230520%_ _%r230522%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e230517%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e230530%_
                                               '()
                                               _%imports230514%_)))
                                (_%g230385230409%_ _%g230386230413%_)))
                          _%id230403230461%_
                          _%hd230393230430%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop230398230442%_
                                                  _%target230395230436%_
                                                  '()))
                                               (_%g230385230409%_
                                                _%g230386230413%_)))))
                                     (_%g230385230409%_ _%g230386230413%_))))
                             (_%g230385230409%_ _%g230386230413%_))))
                     (_%g230385230409%_ _%g230386230413%_)))))
         (_%g230384230535%_ _%stx230382%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in230587%_ _%rename230589%_)
      (gx#make-module-import
       (gx#module-import-source _%in230587%_)
       _%rename230589%_
       (gx#module-import-phi _%in230587%_)
       (gx#module-import-weak? _%in230587%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name230540%_ _%pre230542%_)
      (let* ((_%name230543230551%_ _%name230540%_)
             (_%else230545230563%_
              (lambda () (make-symbol _%pre230542%_ _%name230540%_)))
             (_%K230547230571%_
              (lambda (_%mark230567%_ _%id230569%_)
                (cons (make-symbol _%pre230542%_ _%id230569%_)
                      _%mark230567%_))))
        (if (pair? _%name230543230551%_)
            (let ((_%hd230548230575%_
                   (let () (declare (not safe)) (##car _%name230543230551%_)))
                  (_%tl230549230578%_
                   (let () (declare (not safe)) (##cdr _%name230543230551%_))))
              (let* ((_%id230581%_ _%hd230548230575%_)
                     (_%mark230584%_ _%tl230549230578%_))
                (_%K230547230571%_ _%mark230584%_ _%id230581%_)))
            (_%else230545230563%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx230591%_)
       (let* ((_%g230594230627%_
               (lambda (_%g230595230623%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g230595230623%_)))
              (_%g230593230818%_
               (lambda (_%g230595230631%_)
                 (if (gx#stx-pair? _%g230595230631%_)
                     (let ((_%e230599230634%_ (gx#syntax-e _%g230595230631%_)))
                       (let ((_%hd230600230638%_
                              (let ()
                                (declare (not safe))
                                (##car _%e230599230634%_)))
                             (_%tl230601230641%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e230599230634%_))))
                         (if (gx#stx-pair? _%tl230601230641%_)
                             (let ((_%e230602230644%_
                                    (gx#syntax-e _%tl230601230641%_)))
                               (let ((_%hd230603230648%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e230602230644%_)))
                                     (_%tl230604230651%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e230602230644%_))))
                                 (if (gx#stx-pair/null? _%tl230604230651%_)
                                     (let ((_g232415_
                                            (gx#syntax-split-splice
                                             _%tl230604230651%_
                                             '0)))
                                       (begin
                                         (let ((_g232416_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g232415_)
                                                      (##values-length
                                                       _g232415_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g232416_ 2)))
                                               (error "Context expects 2 values"
                                                      _g232416_)))
                                         (let ((_%target230605230654%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232415_ 0)))
                                               (_%tl230607230657%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232415_ 1))))
                                           (if (gx#stx-null?
                                                _%tl230607230657%_)
                                               (letrec ((_%loop230608230660%_
                                                         (lambda (_%hd230606230664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id230612230667%_
                          _%id230613230668%_)
                   (if (gx#stx-pair? _%hd230606230664%_)
                       (let ((_%e230609230670%_
                              (gx#syntax-e _%hd230606230664%_)))
                         (let ((_%lp-hd230610230674%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e230609230670%_)))
                               (_%lp-tl230611230677%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e230609230670%_))))
                           (if (gx#stx-pair? _%lp-hd230610230674%_)
                               (let ((_%e230616230680%_
                                      (gx#syntax-e _%lp-hd230610230674%_)))
                                 (let ((_%hd230617230684%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e230616230680%_)))
                                       (_%tl230618230687%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e230616230680%_))))
                                   (if (gx#stx-pair? _%tl230618230687%_)
                                       (let ((_%e230619230690%_
                                              (gx#syntax-e
                                               _%tl230618230687%_)))
                                         (let ((_%hd230620230694%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e230619230690%_)))
                                               (_%tl230621230697%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e230619230690%_))))
                                           (if (gx#stx-null?
                                                _%tl230621230697%_)
                                               (_%loop230608230660%_
                                                _%lp-tl230611230677%_
                                                (cons _%hd230620230694%_
                                                      _%new-id230612230667%_)
                                                (cons _%hd230617230684%_
                                                      _%id230613230668%_))
                                               (_%g230594230627%_
                                                _%g230595230631%_))))
                                       (_%g230594230627%_ _%g230595230631%_))))
                               (_%g230594230627%_ _%g230595230631%_))))
                       (let ((_%new-id230614230700%_
                              (reverse _%new-id230612230667%_))
                             (_%id230615230702%_ (reverse _%id230613230668%_)))
                         ((lambda (_%g230596230704%_
                                   _%g230597230706%_
                                   _%g230598230707%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g230725230728%_
                                                      _%g230726230731%_)
                                               (cons _%g230725230728%_
                                                     _%g230726230731%_))
                                             '()
                                             _%g230597230706%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g230733230736%_
                                                      _%g230734230739%_)
                                               (cons _%g230733230736%_
                                                     _%g230734230739%_))
                                             '()
                                             _%g230596230704%_)))
                                (let* ((_%keytab230742%_ (make-hash-table))
                                       (_%found230745%_ (make-hash-table))
                                       (_%_230768%_
                                        (for-each
                                         (lambda (_%id230748%_
                                                  _%new-id230750%_)
                                           (hash-put!
                                            _%keytab230742%_
                                            (gx#core-identifier-key
                                             _%id230748%_)
                                            (gx#core-identifier-key
                                             _%new-id230750%_)))
                                         (foldr (lambda (_%g230751230754%_
                                                         _%g230752230757%_)
                                                  (cons _%g230751230754%_
                                                        _%g230752230757%_))
                                                '()
                                                _%g230597230706%_)
                                         (foldr (lambda (_%g230759230762%_
                                                         _%g230760230765%_)
                                                  (cons _%g230759230762%_
                                                        _%g230760230765%_))
                                                '()
                                                _%g230596230704%_)))
                                       (_%imports230771%_
                                        (gx#core-expand-import-source
                                         _%g230598230707%_))
                                       (_%fold-e230799%_
                                        (letrec ((_%fold-e230774%_
                                                  (lambda (_%in230777%_
                                                           _%r230779%_)
                                                    (if (gx#module-import?
                                                         _%in230777%_)
                                                        (let* ((_%name230783%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in230777%_))
                       (_%$e230786%_
                        (hash-get _%keytab230742%_ _%name230783%_)))
                  (if _%$e230786%_
                      ((lambda (_%rename230790%_)
                         (hash-put! _%found230745%_ _%name230783%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in230777%_
                                _%rename230790%_)
                               _%r230779%_))
                       _%$e230786%_)
                      (cons _%in230777%_ _%r230779%_)))
                (if (gx#import-set? _%in230777%_)
                    (foldl _%fold-e230774%_
                           _%r230779%_
                           (gx#import-set-imports _%in230777%_))
                    (cons _%in230777%_ _%r230779%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e230774%_))
                                       (_%new-imports230802%_
                                        (foldl _%fold-e230799%_
                                               '()
                                               _%imports230771%_)))
                                  (for-each
                                   (lambda (_%id230807%_)
                                     (if (hash-get
                                          _%found230745%_
                                          (gx#core-identifier-key
                                           _%id230807%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx230591%_
                                          _%id230807%_)))
                                   (foldr (lambda (_%g230809230812%_
                                                   _%g230810230815%_)
                                            (cons _%g230809230812%_
                                                  _%g230810230815%_))
                                          '()
                                          _%g230597230706%_))
                                  (cons 'begin: _%new-imports230802%_))
                                (_%g230594230627%_ _%g230595230631%_)))
                          _%new-id230614230700%_
                          _%id230615230702%_
                          _%hd230603230648%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop230608230660%_
                                                  _%target230605230654%_
                                                  '()
                                                  '()))
                                               (_%g230594230627%_
                                                _%g230595230631%_)))))
                                     (_%g230594230627%_ _%g230595230631%_))))
                             (_%g230594230627%_ _%g230595230631%_))))
                     (_%g230594230627%_ _%g230595230631%_)))))
         (_%g230593230818%_ _%stx230591%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx230823%_)
       (let* ((_%g230826230844%_
               (lambda (_%g230827230840%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g230827230840%_)))
              (_%g230825230929%_
               (lambda (_%g230827230848%_)
                 (if (gx#stx-pair? _%g230827230848%_)
                     (let ((_%e230830230851%_ (gx#syntax-e _%g230827230848%_)))
                       (let ((_%hd230831230855%_
                              (let ()
                                (declare (not safe))
                                (##car _%e230830230851%_)))
                             (_%tl230832230858%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e230830230851%_))))
                         (if (gx#stx-pair? _%tl230832230858%_)
                             (let ((_%e230833230861%_
                                    (gx#syntax-e _%tl230832230858%_)))
                               (let ((_%hd230834230865%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e230833230861%_)))
                                     (_%tl230835230868%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e230833230861%_))))
                                 (if (gx#stx-pair? _%tl230835230868%_)
                                     (let ((_%e230836230871%_
                                            (gx#syntax-e _%tl230835230868%_)))
                                       (let ((_%hd230837230875%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e230836230871%_)))
                                             (_%tl230838230878%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e230836230871%_))))
                                         (if (gx#stx-null? _%tl230838230878%_)
                                             ((lambda (_%g230828230881%_
                                                       _%g230829230883%_)
                                                (if (gx#identifier?
                                                     _%g230828230881%_)
                                                    (let* ((_%pre230899%_
                                                            (gx#stx-e
                                                             _%g230828230881%_))
                                                           (_%imports230902%_
                                                            (gx#core-expand-import-source
                                                             _%g230829230883%_))
                                                           (_%rename-e230908%_
                                                            (lambda (_%name230905%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name230905%_
                                                               _%pre230899%_)))
                                                           (_%fold-e230924%_
                                                            (letrec ((_%fold-e230911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in230914%_ _%r230916%_)
                                (if (gx#module-import? _%in230914%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in230914%_
                                           (_%rename-e230908%_
                                            (gx#module-import-name
                                             _%in230914%_)))
                                          _%r230916%_)
                                    (if (gx#import-set? _%in230914%_)
                                        (foldl _%fold-e230911%_
                                               _%r230916%_
                                               (gx#import-set-imports
                                                _%in230914%_))
                                        (cons _%in230914%_ _%r230916%_))))))
                      _%fold-e230911%_)))
              (cons 'begin: (foldl _%fold-e230924%_ '() _%imports230902%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g230826230844%_
                                                     _%g230827230848%_)))
                                              _%hd230837230875%_
                                              _%hd230834230865%_)
                                             (_%g230826230844%_
                                              _%g230827230848%_))))
                                     (_%g230826230844%_ _%g230827230848%_))))
                             (_%g230826230844%_ _%g230827230848%_))))
                     (_%g230826230844%_ _%g230827230848%_)))))
         (_%g230825230929%_ _%stx230823%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx230933%_)
       (letrec ((_%flatten230936%_
                 (lambda (_%list-of-lists231187%_)
                   (foldr (lambda (_%v231190%_ _%acc231192%_)
                            (if (null? _%v231190%_)
                                _%acc231192%_
                                (if (pair? _%v231190%_)
                                    (append (_%flatten230936%_ _%v231190%_)
                                            _%acc231192%_)
                                    (cons _%v231190%_ _%acc231192%_))))
                          '()
                          _%list-of-lists231187%_)))
                (_%expand-path230938%_
                 (lambda (_%top231057%_ _%mod231059%_)
                   (let* ((_%__stx232315232316%_ _%mod231059%_)
                          (_%g231062231084%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx232315232316%_))))
                     (let ((_%__kont232318232319%_
                            (lambda (_%g231064231150%_ _%g231065231152%_)
                              (map (lambda (_%mod231167%_)
                                     (gx#stx-identifier
                                      _%top231057%_
                                      _%top231057%_
                                      '"/"
                                      _%mod231167%_))
                                   (_%flatten230936%_
                                    (map (lambda (_%g231169231171%_)
                                           (_%expand-path230938%_
                                            _%g231065231152%_
                                            _%g231169231171%_))
                                         (foldr (lambda (_%g231174231177%_
                                                         _%g231175231180%_)
                                                  (cons _%g231174231177%_
                                                        _%g231175231180%_))
                                                '()
                                                _%g231064231150%_))))))
                           (_%__kont232322232323%_
                            (lambda (_%g231078231091%_)
                              (gx#stx-identifier
                               _%top231057%_
                               _%top231057%_
                               '"/"
                               _%g231078231091%_))))
                       (let* ((_%g231061231105%_
                               (lambda ()
                                 (let ((_%g231078231091%_
                                        _%__stx232315232316%_))
                                   (if (or (gx#identifier? _%g231078231091%_)
                                           (gx#stx-fixnum? _%g231078231091%_))
                                       (_%__kont232322232323%_
                                        _%g231078231091%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g231062231084%_))))))
                              (_%__match232338232339%_
                               (lambda (_%e231066231112%_
                                        _%hd231067231116%_
                                        _%tl231068231119%_
                                        _%__splice232320232321%_
                                        _%target231069231122%_
                                        _%tl231071231125%_)
                                 (letrec ((_%loop231072231128%_
                                           (lambda (_%hd231070231132%_
                                                    _%mod231076231135%_)
                                             (if (gx#stx-pair?
                                                  _%hd231070231132%_)
                                                 (let ((_%e231073231137%_
                                                        (gx#syntax-e
                                                         _%hd231070231132%_)))
                                                   (let ((_%lp-tl231075231144%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231073231137%_)))
                                                         (_%lp-hd231074231141%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231073231137%_))))
                                                     (_%loop231072231128%_
                                                      _%lp-tl231075231144%_
                                                      (cons _%lp-hd231074231141%_
                                                            _%mod231076231135%_))))
                                                 (let ((_%mod231077231147%_
                                                        (reverse _%mod231076231135%_)))
                                                   (_%__kont232318232319%_
                                                    _%mod231077231147%_
                                                    _%hd231067231116%_))))))
                                   (_%loop231072231128%_
                                    _%target231069231122%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx232315232316%_)
                             (let ((_%e231066231112%_
                                    (gx#syntax-e _%__stx232315232316%_)))
                               (let ((_%tl231068231119%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e231066231112%_)))
                                     (_%hd231067231116%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e231066231112%_))))
                                 (if (gx#stx-pair/null? _%tl231068231119%_)
                                     (let ((_%__splice232320232321%_
                                            (gx#syntax-split-splice->vector
                                             _%tl231068231119%_
                                             '0)))
                                       (let ((_%tl231071231125%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice232320232321%_
                                                 '1)))
                                             (_%target231069231122%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice232320232321%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl231071231125%_)
                                             (_%__match232338232339%_
                                              _%e231066231112%_
                                              _%hd231067231116%_
                                              _%tl231068231119%_
                                              _%__splice232320232321%_
                                              _%target231069231122%_
                                              _%tl231071231125%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g231061231105%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g231061231105%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g231061231105%_)))))))))
         (let* ((_%g230940230964%_
                 (lambda (_%g230941230960%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g230941230960%_)))
                (_%g230939231053%_
                 (lambda (_%g230941230968%_)
                   (if (gx#stx-pair? _%g230941230968%_)
                       (let ((_%e230944230971%_
                              (gx#syntax-e _%g230941230968%_)))
                         (let ((_%hd230945230975%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e230944230971%_)))
                               (_%tl230946230978%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e230944230971%_))))
                           (if (gx#stx-pair? _%tl230946230978%_)
                               (let ((_%e230947230981%_
                                      (gx#syntax-e _%tl230946230978%_)))
                                 (let ((_%hd230948230985%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e230947230981%_)))
                                       (_%tl230949230988%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e230947230981%_))))
                                   (if (gx#stx-pair/null? _%tl230949230988%_)
                                       (let ((_g232417_
                                              (gx#syntax-split-splice
                                               _%tl230949230988%_
                                               '0)))
                                         (begin
                                           (let ((_g232418_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g232417_)
                                                        (##values-length
                                                         _g232417_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g232418_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g232418_)))
                                           (let ((_%target230950230991%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g232417_
                                                     0)))
                                                 (_%tl230952230994%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g232417_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl230952230994%_)
                                                 (letrec ((_%loop230953230997%_
                                                           (lambda (_%hd230951231001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod230957231004%_)
                     (if (gx#stx-pair? _%hd230951231001%_)
                         (let ((_%e230954231006%_
                                (gx#syntax-e _%hd230951231001%_)))
                           (let ((_%lp-hd230955231010%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e230954231006%_)))
                                 (_%lp-tl230956231013%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e230954231006%_))))
                             (_%loop230953230997%_
                              _%lp-tl230956231013%_
                              (cons _%lp-hd230955231010%_
                                    _%mod230957231004%_))))
                         (let ((_%mod230958231016%_
                                (reverse _%mod230957231004%_)))
                           ((lambda (_%g230942231019%_ _%g230943231021%_)
                              (cons 'begin:
                                    (_%flatten230936%_
                                     (map (lambda (_%g231039231041%_)
                                            (_%expand-path230938%_
                                             _%g230943231021%_
                                             _%g231039231041%_))
                                          (foldr (lambda (_%g231044231047%_
                                                          _%g231045231050%_)
                                                   (cons _%g231044231047%_
                                                         _%g231045231050%_))
                                                 '()
                                                 _%g230942231019%_)))))
                            _%mod230958231016%_
                            _%hd230948230985%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop230953230997%_
                                                    _%target230950230991%_
                                                    '()))
                                                 (_%g230940230964%_
                                                  _%g230941230968%_)))))
                                       (_%g230940230964%_ _%g230941230968%_))))
                               (_%g230940230964%_ _%g230941230968%_))))
                       (_%g230940230964%_ _%g230941230968%_)))))
           (_%g230939231053%_ _%stx230933%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx231202%_)
       (let* ((_%g231205231229%_
               (lambda (_%g231206231225%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g231206231225%_)))
              (_%g231204231355%_
               (lambda (_%g231206231233%_)
                 (if (gx#stx-pair? _%g231206231233%_)
                     (let ((_%e231209231236%_ (gx#syntax-e _%g231206231233%_)))
                       (let ((_%hd231210231240%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231209231236%_)))
                             (_%tl231211231243%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231209231236%_))))
                         (if (gx#stx-pair? _%tl231211231243%_)
                             (let ((_%e231212231246%_
                                    (gx#syntax-e _%tl231211231243%_)))
                               (let ((_%hd231213231250%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e231212231246%_)))
                                     (_%tl231214231253%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e231212231246%_))))
                                 (if (gx#stx-pair/null? _%tl231214231253%_)
                                     (let ((_g232419_
                                            (gx#syntax-split-splice
                                             _%tl231214231253%_
                                             '0)))
                                       (begin
                                         (let ((_g232420_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g232419_)
                                                      (##values-length
                                                       _g232419_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g232420_ 2)))
                                               (error "Context expects 2 values"
                                                      _g232420_)))
                                         (let ((_%target231215231256%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232419_ 0)))
                                               (_%tl231217231259%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232419_ 1))))
                                           (if (gx#stx-null?
                                                _%tl231217231259%_)
                                               (letrec ((_%loop231218231262%_
                                                         (lambda (_%hd231216231266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id231222231269%_)
                   (if (gx#stx-pair? _%hd231216231266%_)
                       (let ((_%e231219231271%_
                              (gx#syntax-e _%hd231216231266%_)))
                         (let ((_%lp-hd231220231275%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231219231271%_)))
                               (_%lp-tl231221231278%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231219231271%_))))
                           (_%loop231218231262%_
                            _%lp-tl231221231278%_
                            (cons _%lp-hd231220231275%_ _%id231222231269%_))))
                       (let ((_%id231223231281%_ (reverse _%id231222231269%_)))
                         ((lambda (_%g231207231284%_ _%g231208231286%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g231303231306%_
                                                 _%g231304231309%_)
                                          (cons _%g231303231306%_
                                                _%g231304231309%_))
                                        '()
                                        _%g231207231284%_))
                                (let* ((_%keys231320%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g231311231314%_
                                                         _%g231312231317%_)
                                                  (cons _%g231311231314%_
                                                        _%g231312231317%_))
                                                '()
                                                _%g231207231284%_)))
                                       (_%keytab231331%_
                                        (let ((_%ht231323%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g231325231327%_)
                                             (hash-put!
                                              _%ht231323%_
                                              _%g231325231327%_
                                              '#t))
                                           _%keys231320%_)
                                          _%ht231323%_))
                                       (_%exports231334%_
                                        (gx#core-expand-export-source
                                         _%g231208231286%_))
                                       (_%fold-e231350%_
                                        (letrec ((_%fold-e231337%_
                                                  (lambda (_%out231340%_
                                                           _%r231342%_)
                                                    (if (gx#module-export?
                                                         _%out231340%_)
                                                        (if (hash-get
                                                             _%keytab231331%_
                                                             (gx#module-export-name
                                                              _%out231340%_))
                                                            _%r231342%_
                                                            (cons _%out231340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r231342%_))
                (if (gx#export-set? _%out231340%_)
                    (foldl _%fold-e231337%_
                           _%r231342%_
                           (gx#export-set-exports _%out231340%_))
                    _%r231342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e231337%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e231350%_
                                               '()
                                               _%exports231334%_)))
                                (_%g231205231229%_ _%g231206231233%_)))
                          _%id231223231281%_
                          _%hd231213231250%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop231218231262%_
                                                  _%target231215231256%_
                                                  '()))
                                               (_%g231205231229%_
                                                _%g231206231233%_)))))
                                     (_%g231205231229%_ _%g231206231233%_))))
                             (_%g231205231229%_ _%g231206231233%_))))
                     (_%g231205231229%_ _%g231206231233%_)))))
         (_%g231204231355%_ _%stx231202%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx231360%_)
       (let* ((_%g231363231387%_
               (lambda (_%g231364231383%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g231364231383%_)))
              (_%g231362231517%_
               (lambda (_%g231364231391%_)
                 (if (gx#stx-pair? _%g231364231391%_)
                     (let ((_%e231367231394%_ (gx#syntax-e _%g231364231391%_)))
                       (let ((_%hd231368231398%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231367231394%_)))
                             (_%tl231369231401%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231367231394%_))))
                         (if (gx#stx-pair? _%tl231369231401%_)
                             (let ((_%e231370231404%_
                                    (gx#syntax-e _%tl231369231401%_)))
                               (let ((_%hd231371231408%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e231370231404%_)))
                                     (_%tl231372231411%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e231370231404%_))))
                                 (if (gx#stx-pair/null? _%tl231372231411%_)
                                     (let ((_g232421_
                                            (gx#syntax-split-splice
                                             _%tl231372231411%_
                                             '0)))
                                       (begin
                                         (let ((_g232422_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g232421_)
                                                      (##values-length
                                                       _g232421_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g232422_ 2)))
                                               (error "Context expects 2 values"
                                                      _g232422_)))
                                         (let ((_%target231373231414%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232421_ 0)))
                                               (_%tl231375231417%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232421_ 1))))
                                           (if (gx#stx-null?
                                                _%tl231375231417%_)
                                               (letrec ((_%loop231376231420%_
                                                         (lambda (_%hd231374231424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%filter-out231380231427%_)
                   (if (gx#stx-pair? _%hd231374231424%_)
                       (let ((_%e231377231429%_
                              (gx#syntax-e _%hd231374231424%_)))
                         (let ((_%lp-hd231378231433%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231377231429%_)))
                               (_%lp-tl231379231436%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231377231429%_))))
                           (_%loop231376231420%_
                            _%lp-tl231379231436%_
                            (cons _%lp-hd231378231433%_
                                  _%filter-out231380231427%_))))
                       (let ((_%filter-out231381231439%_
                              (reverse _%filter-out231380231427%_)))
                         ((lambda (_%g231365231442%_ _%g231366231444%_)
                            (let ((_%filtered231462%_ (make-hash-table)))
                              (letrec ((_%fold-out231465%_
                                        (lambda (_%out231507%_ _%r231509%_)
                                          (if (gx#module-export? _%out231507%_)
                                              (cons _%out231507%_ _%r231509%_)
                                              (if (gx#export-set?
                                                   _%out231507%_)
                                                  (foldl _%fold-out231465%_
                                                         _%r231509%_
                                                         (gx#export-set-exports
                                                          _%out231507%_))
                                                  _%r231509%_)))))
                                (for-each
                                 (lambda (_%src231468%_)
                                   (let* ((_%exports231474%_
                                           (if (gx#identifier? _%src231468%_)
                                               (let ((_%mod231471%_
                                                      (gx#syntax-local-value
                                                       _%src231468%_)))
                                                 (if (gx#module-context?
                                                      _%mod231471%_)
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a module context"
                                                      _%src231468%_))
                                                 (gx#module-context-export
                                                  _%mod231471%_))
                                               (gx#core-expand-export-source
                                                _%src231468%_)))
                                          (_%exports231477%_
                                           (foldl _%fold-out231465%_
                                                  '()
                                                  _%exports231474%_)))
                                     (for-each
                                      (lambda (_%out231482%_)
                                        (hash-put!
                                         _%filtered231462%_
                                         (gx#module-export-name _%out231482%_)
                                         '#t))
                                      _%exports231477%_)))
                                 (foldr (lambda (_%g231484231487%_
                                                 _%g231485231490%_)
                                          (cons _%g231484231487%_
                                                _%g231485231490%_))
                                        '()
                                        _%g231365231442%_))
                                (let* ((_%exports231493%_
                                        (gx#core-expand-export-source
                                         _%g231366231444%_))
                                       (_%exports231496%_
                                        (foldl _%fold-out231465%_
                                               '()
                                               _%exports231493%_))
                                       (_%exports231502%_
                                        (filter (lambda (_%out231499%_)
                                                  (not (hash-get
                                                        _%filtered231462%_
                                                        (gx#module-export-name
                                                         _%out231499%_))))
                                                _%exports231496%_)))
                                  (cons 'begin: _%exports231502%_)))))
                          _%filter-out231381231439%_
                          _%hd231371231408%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop231376231420%_
                                                  _%target231373231414%_
                                                  '()))
                                               (_%g231363231387%_
                                                _%g231364231391%_)))))
                                     (_%g231363231387%_ _%g231364231391%_))))
                             (_%g231363231387%_ _%g231364231391%_))))
                     (_%g231363231387%_ _%g231364231391%_)))))
         (_%g231362231517%_ _%stx231360%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out231522%_ _%rename231524%_)
      (gx#make-module-export
       (gx#module-export-context _%out231522%_)
       (gx#module-export-key _%out231522%_)
       (gx#module-export-phi _%out231522%_)
       _%rename231524%_
       (gx#module-export-weak? _%out231522%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx231526%_)
       (let* ((_%g231529231562%_
               (lambda (_%g231530231558%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g231530231558%_)))
              (_%g231528231753%_
               (lambda (_%g231530231566%_)
                 (if (gx#stx-pair? _%g231530231566%_)
                     (let ((_%e231534231569%_ (gx#syntax-e _%g231530231566%_)))
                       (let ((_%hd231535231573%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231534231569%_)))
                             (_%tl231536231576%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231534231569%_))))
                         (if (gx#stx-pair? _%tl231536231576%_)
                             (let ((_%e231537231579%_
                                    (gx#syntax-e _%tl231536231576%_)))
                               (let ((_%hd231538231583%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e231537231579%_)))
                                     (_%tl231539231586%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e231537231579%_))))
                                 (if (gx#stx-pair/null? _%tl231539231586%_)
                                     (let ((_g232423_
                                            (gx#syntax-split-splice
                                             _%tl231539231586%_
                                             '0)))
                                       (begin
                                         (let ((_g232424_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g232423_)
                                                      (##values-length
                                                       _g232423_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g232424_ 2)))
                                               (error "Context expects 2 values"
                                                      _g232424_)))
                                         (let ((_%target231540231589%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232423_ 0)))
                                               (_%tl231542231592%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g232423_ 1))))
                                           (if (gx#stx-null?
                                                _%tl231542231592%_)
                                               (letrec ((_%loop231543231595%_
                                                         (lambda (_%hd231541231599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id231547231602%_
                          _%id231548231603%_)
                   (if (gx#stx-pair? _%hd231541231599%_)
                       (let ((_%e231544231605%_
                              (gx#syntax-e _%hd231541231599%_)))
                         (let ((_%lp-hd231545231609%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231544231605%_)))
                               (_%lp-tl231546231612%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231544231605%_))))
                           (if (gx#stx-pair? _%lp-hd231545231609%_)
                               (let ((_%e231551231615%_
                                      (gx#syntax-e _%lp-hd231545231609%_)))
                                 (let ((_%hd231552231619%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231551231615%_)))
                                       (_%tl231553231622%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231551231615%_))))
                                   (if (gx#stx-pair? _%tl231553231622%_)
                                       (let ((_%e231554231625%_
                                              (gx#syntax-e
                                               _%tl231553231622%_)))
                                         (let ((_%hd231555231629%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e231554231625%_)))
                                               (_%tl231556231632%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e231554231625%_))))
                                           (if (gx#stx-null?
                                                _%tl231556231632%_)
                                               (_%loop231543231595%_
                                                _%lp-tl231546231612%_
                                                (cons _%hd231555231629%_
                                                      _%new-id231547231602%_)
                                                (cons _%hd231552231619%_
                                                      _%id231548231603%_))
                                               (_%g231529231562%_
                                                _%g231530231566%_))))
                                       (_%g231529231562%_ _%g231530231566%_))))
                               (_%g231529231562%_ _%g231530231566%_))))
                       (let ((_%new-id231549231635%_
                              (reverse _%new-id231547231602%_))
                             (_%id231550231637%_ (reverse _%id231548231603%_)))
                         ((lambda (_%g231531231639%_
                                   _%g231532231641%_
                                   _%g231533231642%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g231660231663%_
                                                      _%g231661231666%_)
                                               (cons _%g231660231663%_
                                                     _%g231661231666%_))
                                             '()
                                             _%g231532231641%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g231668231671%_
                                                      _%g231669231674%_)
                                               (cons _%g231668231671%_
                                                     _%g231669231674%_))
                                             '()
                                             _%g231531231639%_)))
                                (let* ((_%keytab231677%_ (make-hash-table))
                                       (_%found231680%_ (make-hash-table))
                                       (_%_231703%_
                                        (for-each
                                         (lambda (_%id231683%_
                                                  _%new-id231685%_)
                                           (hash-put!
                                            _%keytab231677%_
                                            (gx#core-identifier-key
                                             _%id231683%_)
                                            (gx#core-identifier-key
                                             _%new-id231685%_)))
                                         (foldr (lambda (_%g231686231689%_
                                                         _%g231687231692%_)
                                                  (cons _%g231686231689%_
                                                        _%g231687231692%_))
                                                '()
                                                _%g231532231641%_)
                                         (foldr (lambda (_%g231694231697%_
                                                         _%g231695231700%_)
                                                  (cons _%g231694231697%_
                                                        _%g231695231700%_))
                                                '()
                                                _%g231531231639%_)))
                                       (_%exports231706%_
                                        (gx#core-expand-export-source
                                         _%g231533231642%_))
                                       (_%fold-e231734%_
                                        (letrec ((_%fold-e231709%_
                                                  (lambda (_%out231712%_
                                                           _%r231714%_)
                                                    (if (gx#module-export?
                                                         _%out231712%_)
                                                        (let* ((_%name231718%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out231712%_))
                       (_%$e231721%_
                        (hash-get _%keytab231677%_ _%name231718%_)))
                  (if _%$e231721%_
                      ((lambda (_%rename231725%_)
                         (hash-put! _%found231680%_ _%name231718%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out231712%_
                                _%rename231725%_)
                               _%r231714%_))
                       _%$e231721%_)
                      (cons _%out231712%_ _%r231714%_)))
                (if (gx#export-set? _%out231712%_)
                    (foldl _%fold-e231709%_
                           _%r231714%_
                           (gx#export-set-exports _%out231712%_))
                    (cons _%out231712%_ _%r231714%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e231709%_))
                                       (_%new-exports231737%_
                                        (foldl _%fold-e231734%_
                                               '()
                                               _%exports231706%_)))
                                  (for-each
                                   (lambda (_%id231742%_)
                                     (if (hash-get
                                          _%found231680%_
                                          (gx#core-identifier-key
                                           _%id231742%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx231526%_
                                          _%id231742%_)))
                                   (foldr (lambda (_%g231744231747%_
                                                   _%g231745231750%_)
                                            (cons _%g231744231747%_
                                                  _%g231745231750%_))
                                          '()
                                          _%g231532231641%_))
                                  (cons 'begin: _%new-exports231737%_))
                                (_%g231529231562%_ _%g231530231566%_)))
                          _%new-id231549231635%_
                          _%id231550231637%_
                          _%hd231538231583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop231543231595%_
                                                  _%target231540231589%_
                                                  '()
                                                  '()))
                                               (_%g231529231562%_
                                                _%g231530231566%_)))))
                                     (_%g231529231562%_ _%g231530231566%_))))
                             (_%g231529231562%_ _%g231530231566%_))))
                     (_%g231529231562%_ _%g231530231566%_)))))
         (_%g231528231753%_ _%stx231526%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx231758%_)
       (let* ((_%g231761231779%_
               (lambda (_%g231762231775%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g231762231775%_)))
              (_%g231760231864%_
               (lambda (_%g231762231783%_)
                 (if (gx#stx-pair? _%g231762231783%_)
                     (let ((_%e231765231786%_ (gx#syntax-e _%g231762231783%_)))
                       (let ((_%hd231766231790%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231765231786%_)))
                             (_%tl231767231793%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231765231786%_))))
                         (if (gx#stx-pair? _%tl231767231793%_)
                             (let ((_%e231768231796%_
                                    (gx#syntax-e _%tl231767231793%_)))
                               (let ((_%hd231769231800%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e231768231796%_)))
                                     (_%tl231770231803%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e231768231796%_))))
                                 (if (gx#stx-pair? _%tl231770231803%_)
                                     (let ((_%e231771231806%_
                                            (gx#syntax-e _%tl231770231803%_)))
                                       (let ((_%hd231772231810%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231771231806%_)))
                                             (_%tl231773231813%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231771231806%_))))
                                         (if (gx#stx-null? _%tl231773231813%_)
                                             ((lambda (_%g231763231816%_
                                                       _%g231764231818%_)
                                                (if (gx#identifier?
                                                     _%g231763231816%_)
                                                    (let* ((_%pre231834%_
                                                            (gx#stx-e
                                                             _%g231763231816%_))
                                                           (_%exports231837%_
                                                            (gx#core-expand-export-source
                                                             _%g231764231818%_))
                                                           (_%rename-e231843%_
                                                            (lambda (_%name231840%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name231840%_
                                                               _%pre231834%_)))
                                                           (_%fold-e231859%_
                                                            (letrec ((_%fold-e231846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out231849%_ _%r231851%_)
                                (if (gx#module-export? _%out231849%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out231849%_
                                           (_%rename-e231843%_
                                            (gx#module-export-name
                                             _%out231849%_)))
                                          _%r231851%_)
                                    (if (gx#export-set? _%out231849%_)
                                        (foldl _%fold-e231846%_
                                               _%r231851%_
                                               (gx#export-set-exports
                                                _%out231849%_))
                                        (cons _%out231849%_ _%r231851%_))))))
                      _%fold-e231846%_)))
              (cons 'begin: (foldl _%fold-e231859%_ '() _%exports231837%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g231761231779%_
                                                     _%g231762231783%_)))
                                              _%hd231772231810%_
                                              _%hd231769231800%_)
                                             (_%g231761231779%_
                                              _%g231762231783%_))))
                                     (_%g231761231779%_ _%g231762231783%_))))
                             (_%g231761231779%_ _%g231762231783%_))))
                     (_%g231761231779%_ _%g231762231783%_)))))
         (_%g231760231864%_ _%stx231758%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx231868%_)
       (letrec ((_%identifiers231871%_
                 (lambda (_%id232099%_ _%unchecked?232101%_)
                   (let ((_%info232103%_
                          (gx#syntax-local-value _%id232099%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info232103%_))
                         (cons _%id232099%_
                               (cons (let ((__obj232400 _%info232103%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj232400
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj232400
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj232400
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj232401
                                                         _%info232103%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj232401
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj232401
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj232401
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?232101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj232402 _%info232103%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj232402
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj232402
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj232402
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj232403 _%info232103%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj232403
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj232403
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj232403
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj232404 _%info232103%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj232404
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj232404
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj232404
                                    'mutators)))))
                 (map cdr
                      (let ((__obj232405 _%info232103%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj232405
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj232405
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj232405 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor232106%_
                                                   (let ((__obj232406
                                                          _%info232103%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj232406
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj232406
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj232406
                                                          'constructor)))))
                                              (if _%ctor232106%_
                                                  (cons _%ctor232106%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx231868%_
                          _%id232099%_))))))
         (let* ((_%__stx232341232342%_ _%stx231868%_)
                (_%g231875231916%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx232341232342%_))))
           (let ((_%__kont232344232345%_
                  (lambda (_%g231877232060%_ _%g231878232062%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g232081232083%_)
                              (_%identifiers231871%_
                               _%g232081232083%_
                               (gx#stx-e _%g231878232062%_)))
                            (foldr (lambda (_%g232086232089%_
                                            _%g232087232092%_)
                                     (cons _%g232086232089%_
                                           _%g232087232092%_))
                                   '()
                                   _%g231877232060%_))))))
                 (_%__kont232348232349%_
                  (lambda (_%g231898231961%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g231977231979%_)
                              (_%identifiers231871%_ _%g231977231979%_ '#f))
                            (foldr (lambda (_%g231982231985%_
                                            _%g231983231988%_)
                                     (cons _%g231982231985%_
                                           _%g231983231988%_))
                                   '()
                                   _%g231898231961%_)))))))
             (let* ((_%__match232398232399%_
                     (lambda (_%e231899231923%_
                              _%hd231900231927%_
                              _%tl231901231930%_
                              _%__splice232350232351%_
                              _%target231902231933%_
                              _%tl231904231936%_)
                       (letrec ((_%loop231905231939%_
                                 (lambda (_%hd231903231943%_
                                          _%id231909231946%_)
                                   (if (gx#stx-pair? _%hd231903231943%_)
                                       (let ((_%e231906231948%_
                                              (gx#syntax-e
                                               _%hd231903231943%_)))
                                         (let ((_%lp-tl231908231955%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e231906231948%_)))
                                               (_%lp-hd231907231952%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e231906231948%_))))
                                           (_%loop231905231939%_
                                            _%lp-tl231908231955%_
                                            (cons _%lp-hd231907231952%_
                                                  _%id231909231946%_))))
                                       (let ((_%id231910231958%_
                                              (reverse _%id231909231946%_)))
                                         (_%__kont232348232349%_
                                          _%id231910231958%_))))))
                         (_%loop231905231939%_ _%target231902231933%_ '()))))
                    (_%__match232384232385%_
                     (lambda (_%e231879231998%_
                              _%hd231880232002%_
                              _%tl231881232005%_
                              _%e231882232008%_
                              _%hd231883232012%_
                              _%tl231884232015%_
                              _%e231885232018%_
                              _%e231886232022%_
                              _%hd231887232026%_
                              _%tl231888232029%_
                              _%__splice232346232347%_
                              _%target231889232032%_
                              _%tl231891232035%_)
                       (letrec ((_%loop231892232038%_
                                 (lambda (_%hd231890232042%_
                                          _%id231896232045%_)
                                   (if (gx#stx-pair? _%hd231890232042%_)
                                       (let ((_%e231893232047%_
                                              (gx#syntax-e
                                               _%hd231890232042%_)))
                                         (let ((_%lp-tl231895232054%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e231893232047%_)))
                                               (_%lp-hd231894232051%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e231893232047%_))))
                                           (_%loop231892232038%_
                                            _%lp-tl231895232054%_
                                            (cons _%lp-hd231894232051%_
                                                  _%id231896232045%_))))
                                       (let ((_%id231897232057%_
                                              (reverse _%id231896232045%_)))
                                         (_%__kont232344232345%_
                                          _%id231897232057%_
                                          _%hd231887232026%_))))))
                         (_%loop231892232038%_ _%target231889232032%_ '())))))
               (if (gx#stx-pair? _%__stx232341232342%_)
                   (let ((_%e231879231998%_
                          (gx#syntax-e _%__stx232341232342%_)))
                     (let ((_%tl231881232005%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231879231998%_)))
                           (_%hd231880232002%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231879231998%_))))
                       (if (gx#stx-pair? _%tl231881232005%_)
                           (let ((_%e231882232008%_
                                  (gx#syntax-e _%tl231881232005%_)))
                             (let ((_%tl231884232015%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e231882232008%_)))
                                   (_%hd231883232012%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e231882232008%_))))
                               (if (gx#stx-datum? _%hd231883232012%_)
                                   (let ((_%e231885232018%_
                                          (gx#stx-e _%hd231883232012%_)))
                                     (if (equal? _%e231885232018%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl231884232015%_)
                                             (let ((_%e231886232022%_
                                                    (gx#syntax-e
                                                     _%tl231884232015%_)))
                                               (let ((_%tl231888232029%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231886232022%_)))
                                                     (_%hd231887232026%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231886232022%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl231888232029%_)
                                                     (let ((_%__splice232346232347%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl231888232029%_
                                                             '0)))
                                                       (let ((_%tl231891232035%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice232346232347%_ '1)))
                     (_%target231889232032%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice232346232347%_ '0))))
                 (if (gx#stx-null? _%tl231891232035%_)
                     (_%__match232384232385%_
                      _%e231879231998%_
                      _%hd231880232002%_
                      _%tl231881232005%_
                      _%e231882232008%_
                      _%hd231883232012%_
                      _%tl231884232015%_
                      _%e231885232018%_
                      _%e231886232022%_
                      _%hd231887232026%_
                      _%tl231888232029%_
                      _%__splice232346232347%_
                      _%target231889232032%_
                      _%tl231891232035%_)
                     (if (gx#stx-pair/null? _%tl231881232005%_)
                         (let ((_%__splice232350232351%_
                                (gx#syntax-split-splice->vector
                                 _%tl231881232005%_
                                 '0)))
                           (let ((_%tl231904231936%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref
                                     _%__splice232350232351%_
                                     '1)))
                                 (_%target231902231933%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref
                                     _%__splice232350232351%_
                                     '0))))
                             (if (gx#stx-null? _%tl231904231936%_)
                                 (_%__match232398232399%_
                                  _%e231879231998%_
                                  _%hd231880232002%_
                                  _%tl231881232005%_
                                  _%__splice232350232351%_
                                  _%target231902231933%_
                                  _%tl231904231936%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g231875231916%_)))))
                         (let () (declare (not safe)) (_%g231875231916%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl231881232005%_)
                                                         (let ((_%__splice232350232351%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl231881232005%_
                         '0)))
                   (let ((_%tl231904231936%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice232350232351%_ '1)))
                         (_%target231902231933%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice232350232351%_ '0))))
                     (if (gx#stx-null? _%tl231904231936%_)
                         (_%__match232398232399%_
                          _%e231879231998%_
                          _%hd231880232002%_
                          _%tl231881232005%_
                          _%__splice232350232351%_
                          _%target231902231933%_
                          _%tl231904231936%_)
                         (let () (declare (not safe)) (_%g231875231916%_)))))
                 (let () (declare (not safe)) (_%g231875231916%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl231881232005%_)
                                                 (let ((_%__splice232350232351%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl231881232005%_
                                                         '0)))
                                                   (let ((_%tl231904231936%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice232350232351%_
                                                             '1)))
                                                         (_%target231902231933%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice232350232351%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl231904231936%_)
                                                         (_%__match232398232399%_
                                                          _%e231879231998%_
                                                          _%hd231880232002%_
                                                          _%tl231881232005%_
                                                          _%__splice232350232351%_
                                                          _%target231902231933%_
                                                          _%tl231904231936%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g231875231916%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g231875231916%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl231881232005%_)
                                             (let ((_%__splice232350232351%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl231881232005%_
                                                     '0)))
                                               (let ((_%tl231904231936%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice232350232351%_
                                                         '1)))
                                                     (_%target231902231933%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice232350232351%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl231904231936%_)
                                                     (_%__match232398232399%_
                                                      _%e231879231998%_
                                                      _%hd231880232002%_
                                                      _%tl231881232005%_
                                                      _%__splice232350232351%_
                                                      _%target231902231933%_
                                                      _%tl231904231936%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g231875231916%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g231875231916%_)))))
                                   (if (gx#stx-pair/null? _%tl231881232005%_)
                                       (let ((_%__splice232350232351%_
                                              (gx#syntax-split-splice->vector
                                               _%tl231881232005%_
                                               '0)))
                                         (let ((_%tl231904231936%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice232350232351%_
                                                   '1)))
                                               (_%target231902231933%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice232350232351%_
                                                   '0))))
                                           (if (gx#stx-null?
                                                _%tl231904231936%_)
                                               (_%__match232398232399%_
                                                _%e231879231998%_
                                                _%hd231880232002%_
                                                _%tl231881232005%_
                                                _%__splice232350232351%_
                                                _%target231902231933%_
                                                _%tl231904231936%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g231875231916%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g231875231916%_))))))
                           (if (gx#stx-pair/null? _%tl231881232005%_)
                               (let ((_%__splice232350232351%_
                                      (gx#syntax-split-splice->vector
                                       _%tl231881232005%_
                                       '0)))
                                 (let ((_%tl231904231936%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice232350232351%_
                                           '1)))
                                       (_%target231902231933%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice232350232351%_
                                           '0))))
                                   (if (gx#stx-null? _%tl231904231936%_)
                                       (_%__match232398232399%_
                                        _%e231879231998%_
                                        _%hd231880232002%_
                                        _%tl231881232005%_
                                        _%__splice232350232351%_
                                        _%target231902231933%_
                                        _%tl231904231936%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g231875231916%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g231875231916%_))))))
                   (let () (declare (not safe)) (_%g231875231916%_)))))))))))
