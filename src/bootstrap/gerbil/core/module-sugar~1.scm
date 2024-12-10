(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx41656%_)
      (let* ((_%__stx4431044311%_ _%$stx41656%_)
             (_%g4166141680%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4431044311%_))))
        (let ((_%__kont4431344314%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4431544316%_
               (lambda (_%L41707%_ _%L41709%_ _%L41710%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L41709%_
                                   (cons (cons _%L41710%_ _%L41707%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L41709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4431044311%_)
              (let ((_%e4166341732%_ (gx#syntax-e _%__stx4431044311%_)))
                (let ((_%tl4166541739%_
                       (let () (declare (not safe)) (##cdr _%e4166341732%_)))
                      (_%hd4166441736%_
                       (let () (declare (not safe)) (##car _%e4166341732%_))))
                  (if (gx#stx-null? _%tl4166541739%_)
                      (_%__kont4431344314%_)
                      (if (gx#stx-pair? _%tl4166541739%_)
                          (let ((_%e4167241697%_
                                 (gx#syntax-e _%tl4166541739%_)))
                            (let ((_%tl4167441704%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4167241697%_)))
                                  (_%hd4167341701%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4167241697%_))))
                              (_%__kont4431544316%_
                               _%tl4167441704%_
                               _%hd4167341701%_
                               _%hd4166441736%_)))
                          (let () (declare (not safe)) (_%g4166141680%_))))))
              (let () (declare (not safe)) (_%g4166141680%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx41750%_)
      (let* ((_%__stx4434044341%_ _%$stx41750%_)
             (_%g4175541795%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4434044341%_))))
        (let ((_%__kont4434344344%_
               (lambda (_%L41933%_ _%L41935%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L41935%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L41933%_ '()))
                                   '())))))
              (_%__kont4434544346%_
               (lambda (_%L41862%_ _%L41864%_ _%L41865%_ _%L41866%_)
                 (cons _%L41866%_
                       (cons _%L41865%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L41864%_
                                               (foldr (lambda (_%g4188741890%_
                                                               _%g4188841893%_)
                                                        (cons _%g4188741890%_
                                                              _%g4188841893%_))
                                                      '()
                                                      _%L41862%_)))
                                   '()))))))
          (let* ((_%__match4439544396%_
                  (lambda (_%e4177241802%_
                           _%hd4177341806%_
                           _%tl4177441809%_
                           _%e4177541812%_
                           _%hd4177641816%_
                           _%tl4177741819%_
                           _%e4177841822%_
                           _%hd4177941826%_
                           _%tl4178041829%_
                           _%__splice4434744348%_
                           _%target4178141832%_
                           _%tl4178341835%_)
                    (letrec ((_%loop4178441838%_
                              (lambda (_%hd4178241842%_ _%body4178841845%_)
                                (if (gx#stx-pair? _%hd4178241842%_)
                                    (let ((_%e4178541848%_
                                           (gx#syntax-e _%hd4178241842%_)))
                                      (let ((_%lp-tl4178741855%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4178541848%_)))
                                            (_%lp-hd4178641852%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4178541848%_))))
                                        (_%loop4178441838%_
                                         _%lp-tl4178741855%_
                                         (cons _%lp-hd4178641852%_
                                               _%body4178841845%_))))
                                    (let ((_%body4178941858%_
                                           (reverse _%body4178841845%_)))
                                      (let ((_%L41862%_ _%body4178941858%_)
                                            (_%L41864%_ _%tl4178041829%_)
                                            (_%L41865%_ _%hd4177941826%_)
                                            (_%L41866%_ _%hd4177341806%_))
                                        (if (gx#identifier? _%L41865%_)
                                            (_%__kont4434544346%_
                                             _%L41862%_
                                             _%L41864%_
                                             _%L41865%_
                                             _%L41866%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4175541795%_)))))))))
                      (_%loop4178441838%_ _%target4178141832%_ '()))))
                 (_%__match4436944370%_
                  (lambda (_%e4175941903%_
                           _%hd4176041907%_
                           _%tl4176141910%_
                           _%e4176241913%_
                           _%hd4176341917%_
                           _%tl4176441920%_
                           _%e4176541923%_
                           _%hd4176641927%_
                           _%tl4176741930%_)
                    (let ((_%L41933%_ _%hd4176641927%_)
                          (_%L41935%_ _%hd4176341917%_))
                      (if (gx#identifier? _%L41935%_)
                          (_%__kont4434344344%_ _%L41933%_ _%L41935%_)
                          (if (gx#stx-pair? _%hd4176341917%_)
                              (let ((_%e4177841822%_
                                     (gx#syntax-e _%hd4176341917%_)))
                                (let ((_%tl4178041829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4177841822%_)))
                                      (_%hd4177941826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4177841822%_))))
                                  (if (gx#stx-pair/null? _%tl4176441920%_)
                                      (let ((_%__splice4434744348%_
                                             (gx#syntax-split-splice
                                              _%tl4176441920%_
                                              '0)))
                                        (let ((_%tl4178341835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4434744348%_
                                                  '1)))
                                              (_%target4178141832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4434744348%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4178341835%_)
                                              (_%__match4439544396%_
                                               _%e4175941903%_
                                               _%hd4176041907%_
                                               _%tl4176141910%_
                                               _%e4176241913%_
                                               _%hd4176341917%_
                                               _%tl4176441920%_
                                               _%e4177841822%_
                                               _%hd4177941826%_
                                               _%tl4178041829%_
                                               _%__splice4434744348%_
                                               _%target4178141832%_
                                               _%tl4178341835%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4175541795%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4175541795%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4175541795%_))))))))
            (if (gx#stx-pair? _%__stx4434044341%_)
                (let ((_%e4175941903%_ (gx#syntax-e _%__stx4434044341%_)))
                  (let ((_%tl4176141910%_
                         (let () (declare (not safe)) (##cdr _%e4175941903%_)))
                        (_%hd4176041907%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4175941903%_))))
                    (if (gx#stx-pair? _%tl4176141910%_)
                        (let ((_%e4176241913%_ (gx#syntax-e _%tl4176141910%_)))
                          (let ((_%tl4176441920%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4176241913%_)))
                                (_%hd4176341917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4176241913%_))))
                            (if (gx#stx-pair? _%tl4176441920%_)
                                (let ((_%e4176541923%_
                                       (gx#syntax-e _%tl4176441920%_)))
                                  (let ((_%tl4176741930%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4176541923%_)))
                                        (_%hd4176641927%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4176541923%_))))
                                    (if (gx#stx-null? _%tl4176741930%_)
                                        (_%__match4436944370%_
                                         _%e4175941903%_
                                         _%hd4176041907%_
                                         _%tl4176141910%_
                                         _%e4176241913%_
                                         _%hd4176341917%_
                                         _%tl4176441920%_
                                         _%e4176541923%_
                                         _%hd4176641927%_
                                         _%tl4176741930%_)
                                        (if (gx#stx-pair? _%hd4176341917%_)
                                            (let ((_%e4177841822%_
                                                   (gx#syntax-e
                                                    _%hd4176341917%_)))
                                              (let ((_%tl4178041829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4177841822%_)))
                                                    (_%hd4177941826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4177841822%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4176441920%_)
                                                    (let ((_%__splice4434744348%_
                                                           (gx#syntax-split-splice
                                                            _%tl4176441920%_
                                                            '0)))
                                                      (let ((_%tl4178341835%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4434744348%_ '1)))
                    (_%target4178141832%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4434744348%_ '0))))
                (if (gx#stx-null? _%tl4178341835%_)
                    (_%__match4439544396%_
                     _%e4175941903%_
                     _%hd4176041907%_
                     _%tl4176141910%_
                     _%e4176241913%_
                     _%hd4176341917%_
                     _%tl4176441920%_
                     _%e4177841822%_
                     _%hd4177941826%_
                     _%tl4178041829%_
                     _%__splice4434744348%_
                     _%target4178141832%_
                     _%tl4178341835%_)
                    (let () (declare (not safe)) (_%g4175541795%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4175541795%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4175541795%_))))))
                                (if (gx#stx-pair? _%hd4176341917%_)
                                    (let ((_%e4177841822%_
                                           (gx#syntax-e _%hd4176341917%_)))
                                      (let ((_%tl4178041829%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4177841822%_)))
                                            (_%hd4177941826%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4177841822%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4176441920%_)
                                            (let ((_%__splice4434744348%_
                                                   (gx#syntax-split-splice
                                                    _%tl4176441920%_
                                                    '0)))
                                              (let ((_%tl4178341835%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4434744348%_
                                                        '1)))
                                                    (_%target4178141832%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4434744348%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4178341835%_)
                                                    (_%__match4439544396%_
                                                     _%e4175941903%_
                                                     _%hd4176041907%_
                                                     _%tl4176141910%_
                                                     _%e4176241913%_
                                                     _%hd4176341917%_
                                                     _%tl4176441920%_
                                                     _%e4177841822%_
                                                     _%hd4177941826%_
                                                     _%tl4178041829%_
                                                     _%__splice4434744348%_
                                                     _%target4178141832%_
                                                     _%tl4178341835%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4175541795%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4175541795%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4175541795%_))))))
                        (let () (declare (not safe)) (_%g4175541795%_)))))
                (let () (declare (not safe)) (_%g4175541795%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx41955%_)
      (let* ((_%__stx4439844399%_ _%$stx41955%_)
             (_%g4196042000%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4439844399%_))))
        (let ((_%__kont4440144402%_
               (lambda (_%L42138%_ _%L42140%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42140%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L42138%_ '()))
                                   '())))))
              (_%__kont4440344404%_
               (lambda (_%L42067%_ _%L42069%_ _%L42070%_ _%L42071%_)
                 (cons _%L42071%_
                       (cons _%L42070%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42069%_
                                               (foldr (lambda (_%g4209242095%_
                                                               _%g4209342098%_)
                                                        (cons _%g4209242095%_
                                                              _%g4209342098%_))
                                                      '()
                                                      _%L42067%_)))
                                   '()))))))
          (let* ((_%__match4445344454%_
                  (lambda (_%e4197742007%_
                           _%hd4197842011%_
                           _%tl4197942014%_
                           _%e4198042017%_
                           _%hd4198142021%_
                           _%tl4198242024%_
                           _%e4198342027%_
                           _%hd4198442031%_
                           _%tl4198542034%_
                           _%__splice4440544406%_
                           _%target4198642037%_
                           _%tl4198842040%_)
                    (letrec ((_%loop4198942043%_
                              (lambda (_%hd4198742047%_ _%body4199342050%_)
                                (if (gx#stx-pair? _%hd4198742047%_)
                                    (let ((_%e4199042053%_
                                           (gx#syntax-e _%hd4198742047%_)))
                                      (let ((_%lp-tl4199242060%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4199042053%_)))
                                            (_%lp-hd4199142057%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4199042053%_))))
                                        (_%loop4198942043%_
                                         _%lp-tl4199242060%_
                                         (cons _%lp-hd4199142057%_
                                               _%body4199342050%_))))
                                    (let ((_%body4199442063%_
                                           (reverse _%body4199342050%_)))
                                      (let ((_%L42067%_ _%body4199442063%_)
                                            (_%L42069%_ _%tl4198542034%_)
                                            (_%L42070%_ _%hd4198442031%_)
                                            (_%L42071%_ _%hd4197842011%_))
                                        (if (gx#identifier? _%L42070%_)
                                            (_%__kont4440344404%_
                                             _%L42067%_
                                             _%L42069%_
                                             _%L42070%_
                                             _%L42071%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4196042000%_)))))))))
                      (_%loop4198942043%_ _%target4198642037%_ '()))))
                 (_%__match4442744428%_
                  (lambda (_%e4196442108%_
                           _%hd4196542112%_
                           _%tl4196642115%_
                           _%e4196742118%_
                           _%hd4196842122%_
                           _%tl4196942125%_
                           _%e4197042128%_
                           _%hd4197142132%_
                           _%tl4197242135%_)
                    (let ((_%L42138%_ _%hd4197142132%_)
                          (_%L42140%_ _%hd4196842122%_))
                      (if (gx#identifier? _%L42140%_)
                          (_%__kont4440144402%_ _%L42138%_ _%L42140%_)
                          (if (gx#stx-pair? _%hd4196842122%_)
                              (let ((_%e4198342027%_
                                     (gx#syntax-e _%hd4196842122%_)))
                                (let ((_%tl4198542034%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4198342027%_)))
                                      (_%hd4198442031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4198342027%_))))
                                  (if (gx#stx-pair/null? _%tl4196942125%_)
                                      (let ((_%__splice4440544406%_
                                             (gx#syntax-split-splice
                                              _%tl4196942125%_
                                              '0)))
                                        (let ((_%tl4198842040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4440544406%_
                                                  '1)))
                                              (_%target4198642037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4440544406%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4198842040%_)
                                              (_%__match4445344454%_
                                               _%e4196442108%_
                                               _%hd4196542112%_
                                               _%tl4196642115%_
                                               _%e4196742118%_
                                               _%hd4196842122%_
                                               _%tl4196942125%_
                                               _%e4198342027%_
                                               _%hd4198442031%_
                                               _%tl4198542034%_
                                               _%__splice4440544406%_
                                               _%target4198642037%_
                                               _%tl4198842040%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4196042000%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4196042000%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4196042000%_))))))))
            (if (gx#stx-pair? _%__stx4439844399%_)
                (let ((_%e4196442108%_ (gx#syntax-e _%__stx4439844399%_)))
                  (let ((_%tl4196642115%_
                         (let () (declare (not safe)) (##cdr _%e4196442108%_)))
                        (_%hd4196542112%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4196442108%_))))
                    (if (gx#stx-pair? _%tl4196642115%_)
                        (let ((_%e4196742118%_ (gx#syntax-e _%tl4196642115%_)))
                          (let ((_%tl4196942125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4196742118%_)))
                                (_%hd4196842122%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4196742118%_))))
                            (if (gx#stx-pair? _%tl4196942125%_)
                                (let ((_%e4197042128%_
                                       (gx#syntax-e _%tl4196942125%_)))
                                  (let ((_%tl4197242135%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4197042128%_)))
                                        (_%hd4197142132%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4197042128%_))))
                                    (if (gx#stx-null? _%tl4197242135%_)
                                        (_%__match4442744428%_
                                         _%e4196442108%_
                                         _%hd4196542112%_
                                         _%tl4196642115%_
                                         _%e4196742118%_
                                         _%hd4196842122%_
                                         _%tl4196942125%_
                                         _%e4197042128%_
                                         _%hd4197142132%_
                                         _%tl4197242135%_)
                                        (if (gx#stx-pair? _%hd4196842122%_)
                                            (let ((_%e4198342027%_
                                                   (gx#syntax-e
                                                    _%hd4196842122%_)))
                                              (let ((_%tl4198542034%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4198342027%_)))
                                                    (_%hd4198442031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4198342027%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4196942125%_)
                                                    (let ((_%__splice4440544406%_
                                                           (gx#syntax-split-splice
                                                            _%tl4196942125%_
                                                            '0)))
                                                      (let ((_%tl4198842040%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4440544406%_ '1)))
                    (_%target4198642037%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4440544406%_ '0))))
                (if (gx#stx-null? _%tl4198842040%_)
                    (_%__match4445344454%_
                     _%e4196442108%_
                     _%hd4196542112%_
                     _%tl4196642115%_
                     _%e4196742118%_
                     _%hd4196842122%_
                     _%tl4196942125%_
                     _%e4198342027%_
                     _%hd4198442031%_
                     _%tl4198542034%_
                     _%__splice4440544406%_
                     _%target4198642037%_
                     _%tl4198842040%_)
                    (let () (declare (not safe)) (_%g4196042000%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4196042000%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4196042000%_))))))
                                (if (gx#stx-pair? _%hd4196842122%_)
                                    (let ((_%e4198342027%_
                                           (gx#syntax-e _%hd4196842122%_)))
                                      (let ((_%tl4198542034%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4198342027%_)))
                                            (_%hd4198442031%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4198342027%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4196942125%_)
                                            (let ((_%__splice4440544406%_
                                                   (gx#syntax-split-splice
                                                    _%tl4196942125%_
                                                    '0)))
                                              (let ((_%tl4198842040%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4440544406%_
                                                        '1)))
                                                    (_%target4198642037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4440544406%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4198842040%_)
                                                    (_%__match4445344454%_
                                                     _%e4196442108%_
                                                     _%hd4196542112%_
                                                     _%tl4196642115%_
                                                     _%e4196742118%_
                                                     _%hd4196842122%_
                                                     _%tl4196942125%_
                                                     _%e4198342027%_
                                                     _%hd4198442031%_
                                                     _%tl4198542034%_
                                                     _%__splice4440544406%_
                                                     _%target4198642037%_
                                                     _%tl4198842040%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4196042000%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4196042000%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4196042000%_))))))
                        (let () (declare (not safe)) (_%g4196042000%_)))))
                (let () (declare (not safe)) (_%g4196042000%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx42160%_)
      (let* ((_%__stx4445644457%_ _%$stx42160%_)
             (_%g4216542205%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4445644457%_))))
        (let ((_%__kont4445944460%_
               (lambda (_%L42343%_ _%L42345%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42345%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L42343%_ '()))
                                   '())))))
              (_%__kont4446144462%_
               (lambda (_%L42272%_ _%L42274%_ _%L42275%_ _%L42276%_)
                 (cons _%L42276%_
                       (cons _%L42275%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42274%_
                                               (foldr (lambda (_%g4229742300%_
                                                               _%g4229842303%_)
                                                        (cons _%g4229742300%_
                                                              _%g4229842303%_))
                                                      '()
                                                      _%L42272%_)))
                                   '()))))))
          (let* ((_%__match4451144512%_
                  (lambda (_%e4218242212%_
                           _%hd4218342216%_
                           _%tl4218442219%_
                           _%e4218542222%_
                           _%hd4218642226%_
                           _%tl4218742229%_
                           _%e4218842232%_
                           _%hd4218942236%_
                           _%tl4219042239%_
                           _%__splice4446344464%_
                           _%target4219142242%_
                           _%tl4219342245%_)
                    (letrec ((_%loop4219442248%_
                              (lambda (_%hd4219242252%_ _%body4219842255%_)
                                (if (gx#stx-pair? _%hd4219242252%_)
                                    (let ((_%e4219542258%_
                                           (gx#syntax-e _%hd4219242252%_)))
                                      (let ((_%lp-tl4219742265%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4219542258%_)))
                                            (_%lp-hd4219642262%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4219542258%_))))
                                        (_%loop4219442248%_
                                         _%lp-tl4219742265%_
                                         (cons _%lp-hd4219642262%_
                                               _%body4219842255%_))))
                                    (let ((_%body4219942268%_
                                           (reverse _%body4219842255%_)))
                                      (let ((_%L42272%_ _%body4219942268%_)
                                            (_%L42274%_ _%tl4219042239%_)
                                            (_%L42275%_ _%hd4218942236%_)
                                            (_%L42276%_ _%hd4218342216%_))
                                        (if (gx#identifier? _%L42275%_)
                                            (_%__kont4446144462%_
                                             _%L42272%_
                                             _%L42274%_
                                             _%L42275%_
                                             _%L42276%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4216542205%_)))))))))
                      (_%loop4219442248%_ _%target4219142242%_ '()))))
                 (_%__match4448544486%_
                  (lambda (_%e4216942313%_
                           _%hd4217042317%_
                           _%tl4217142320%_
                           _%e4217242323%_
                           _%hd4217342327%_
                           _%tl4217442330%_
                           _%e4217542333%_
                           _%hd4217642337%_
                           _%tl4217742340%_)
                    (let ((_%L42343%_ _%hd4217642337%_)
                          (_%L42345%_ _%hd4217342327%_))
                      (if (gx#identifier? _%L42345%_)
                          (_%__kont4445944460%_ _%L42343%_ _%L42345%_)
                          (if (gx#stx-pair? _%hd4217342327%_)
                              (let ((_%e4218842232%_
                                     (gx#syntax-e _%hd4217342327%_)))
                                (let ((_%tl4219042239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4218842232%_)))
                                      (_%hd4218942236%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4218842232%_))))
                                  (if (gx#stx-pair/null? _%tl4217442330%_)
                                      (let ((_%__splice4446344464%_
                                             (gx#syntax-split-splice
                                              _%tl4217442330%_
                                              '0)))
                                        (let ((_%tl4219342245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4446344464%_
                                                  '1)))
                                              (_%target4219142242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4446344464%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4219342245%_)
                                              (_%__match4451144512%_
                                               _%e4216942313%_
                                               _%hd4217042317%_
                                               _%tl4217142320%_
                                               _%e4217242323%_
                                               _%hd4217342327%_
                                               _%tl4217442330%_
                                               _%e4218842232%_
                                               _%hd4218942236%_
                                               _%tl4219042239%_
                                               _%__splice4446344464%_
                                               _%target4219142242%_
                                               _%tl4219342245%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4216542205%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4216542205%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4216542205%_))))))))
            (if (gx#stx-pair? _%__stx4445644457%_)
                (let ((_%e4216942313%_ (gx#syntax-e _%__stx4445644457%_)))
                  (let ((_%tl4217142320%_
                         (let () (declare (not safe)) (##cdr _%e4216942313%_)))
                        (_%hd4217042317%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4216942313%_))))
                    (if (gx#stx-pair? _%tl4217142320%_)
                        (let ((_%e4217242323%_ (gx#syntax-e _%tl4217142320%_)))
                          (let ((_%tl4217442330%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4217242323%_)))
                                (_%hd4217342327%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4217242323%_))))
                            (if (gx#stx-pair? _%tl4217442330%_)
                                (let ((_%e4217542333%_
                                       (gx#syntax-e _%tl4217442330%_)))
                                  (let ((_%tl4217742340%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4217542333%_)))
                                        (_%hd4217642337%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4217542333%_))))
                                    (if (gx#stx-null? _%tl4217742340%_)
                                        (_%__match4448544486%_
                                         _%e4216942313%_
                                         _%hd4217042317%_
                                         _%tl4217142320%_
                                         _%e4217242323%_
                                         _%hd4217342327%_
                                         _%tl4217442330%_
                                         _%e4217542333%_
                                         _%hd4217642337%_
                                         _%tl4217742340%_)
                                        (if (gx#stx-pair? _%hd4217342327%_)
                                            (let ((_%e4218842232%_
                                                   (gx#syntax-e
                                                    _%hd4217342327%_)))
                                              (let ((_%tl4219042239%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4218842232%_)))
                                                    (_%hd4218942236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4218842232%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4217442330%_)
                                                    (let ((_%__splice4446344464%_
                                                           (gx#syntax-split-splice
                                                            _%tl4217442330%_
                                                            '0)))
                                                      (let ((_%tl4219342245%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4446344464%_ '1)))
                    (_%target4219142242%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4446344464%_ '0))))
                (if (gx#stx-null? _%tl4219342245%_)
                    (_%__match4451144512%_
                     _%e4216942313%_
                     _%hd4217042317%_
                     _%tl4217142320%_
                     _%e4217242323%_
                     _%hd4217342327%_
                     _%tl4217442330%_
                     _%e4218842232%_
                     _%hd4218942236%_
                     _%tl4219042239%_
                     _%__splice4446344464%_
                     _%target4219142242%_
                     _%tl4219342245%_)
                    (let () (declare (not safe)) (_%g4216542205%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4216542205%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4216542205%_))))))
                                (if (gx#stx-pair? _%hd4217342327%_)
                                    (let ((_%e4218842232%_
                                           (gx#syntax-e _%hd4217342327%_)))
                                      (let ((_%tl4219042239%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4218842232%_)))
                                            (_%hd4218942236%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4218842232%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4217442330%_)
                                            (let ((_%__splice4446344464%_
                                                   (gx#syntax-split-splice
                                                    _%tl4217442330%_
                                                    '0)))
                                              (let ((_%tl4219342245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4446344464%_
                                                        '1)))
                                                    (_%target4219142242%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4446344464%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4219342245%_)
                                                    (_%__match4451144512%_
                                                     _%e4216942313%_
                                                     _%hd4217042317%_
                                                     _%tl4217142320%_
                                                     _%e4217242323%_
                                                     _%hd4217342327%_
                                                     _%tl4217442330%_
                                                     _%e4218842232%_
                                                     _%hd4218942236%_
                                                     _%tl4219042239%_
                                                     _%__splice4446344464%_
                                                     _%target4219142242%_
                                                     _%tl4219342245%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4216542205%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4216542205%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4216542205%_))))))
                        (let () (declare (not safe)) (_%g4216542205%_)))))
                (let () (declare (not safe)) (_%g4216542205%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx42365%_)
       (let* ((_%g4236842388%_
               (lambda (_%g4236942384%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4236942384%_)))
              (_%g4236742459%_
               (lambda (_%g4236942392%_)
                 (if (gx#stx-pair? _%g4236942392%_)
                     (let ((_%e4237142395%_ (gx#syntax-e _%g4236942392%_)))
                       (let ((_%hd4237242399%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4237142395%_)))
                             (_%tl4237342402%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4237142395%_))))
                         (if (gx#stx-pair/null? _%tl4237342402%_)
                             (let ((_g44606_
                                    (gx#syntax-split-splice
                                     _%tl4237342402%_
                                     '0)))
                               (begin
                                 (let ((_g44607_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44606_)
                                              (##vector-length _g44606_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44607_ 2)))
                                       (error "Context expects 2 values"
                                              _g44607_)))
                                 (let ((_%target4237442405%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44606_ 0)))
                                       (_%tl4237642408%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44606_ 1))))
                                   (if (gx#stx-null? _%tl4237642408%_)
                                       (letrec ((_%loop4237742411%_
                                                 (lambda (_%hd4237542415%_
                                                          _%body4238142418%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4237542415%_)
                                                       (let ((_%e4237842421%_
                                                              (gx#syntax-e
                                                               _%hd4237542415%_)))
                                                         (let ((_%lp-hd4237942425%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4237842421%_)))
                       (_%lp-tl4238042428%_
                        (let () (declare (not safe)) (##cdr _%e4237842421%_))))
                   (_%loop4237742411%_
                    _%lp-tl4238042428%_
                    (cons _%lp-hd4237942425%_ _%body4238142418%_))))
               (let ((_%body4238242431%_ (reverse _%body4238142418%_)))
                 ((lambda (_%L42435%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4245042453%_
                                                _%g4245142456%_)
                                         (cons _%g4245042453%_
                                               _%g4245142456%_))
                                       '()
                                       _%L42435%_))))
                  _%body4238242431%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4237742411%_
                                          _%target4237442405%_
                                          '()))
                                       (_%g4236842388%_ _%g4236942392%_)))))
                             (_%g4236842388%_ _%g4236942392%_))))
                     (_%g4236842388%_ _%g4236942392%_)))))
         (_%g4236742459%_ _%stx42365%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx42464%_)
       (let* ((_%g4246742487%_
               (lambda (_%g4246842483%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4246842483%_)))
              (_%g4246642558%_
               (lambda (_%g4246842491%_)
                 (if (gx#stx-pair? _%g4246842491%_)
                     (let ((_%e4247042494%_ (gx#syntax-e _%g4246842491%_)))
                       (let ((_%hd4247142498%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4247042494%_)))
                             (_%tl4247242501%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4247042494%_))))
                         (if (gx#stx-pair/null? _%tl4247242501%_)
                             (let ((_g44608_
                                    (gx#syntax-split-splice
                                     _%tl4247242501%_
                                     '0)))
                               (begin
                                 (let ((_g44609_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44608_)
                                              (##vector-length _g44608_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44609_ 2)))
                                       (error "Context expects 2 values"
                                              _g44609_)))
                                 (let ((_%target4247342504%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44608_ 0)))
                                       (_%tl4247542507%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44608_ 1))))
                                   (if (gx#stx-null? _%tl4247542507%_)
                                       (letrec ((_%loop4247642510%_
                                                 (lambda (_%hd4247442514%_
                                                          _%body4248042517%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4247442514%_)
                                                       (let ((_%e4247742520%_
                                                              (gx#syntax-e
                                                               _%hd4247442514%_)))
                                                         (let ((_%lp-hd4247842524%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4247742520%_)))
                       (_%lp-tl4247942527%_
                        (let () (declare (not safe)) (##cdr _%e4247742520%_))))
                   (_%loop4247642510%_
                    _%lp-tl4247942527%_
                    (cons _%lp-hd4247842524%_ _%body4248042517%_))))
               (let ((_%body4248142530%_ (reverse _%body4248042517%_)))
                 ((lambda (_%L42534%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4254942552%_
                                                _%g4255042555%_)
                                         (cons _%g4254942552%_
                                               _%g4255042555%_))
                                       '()
                                       _%L42534%_))))
                  _%body4248142530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4247642510%_
                                          _%target4247342504%_
                                          '()))
                                       (_%g4246742487%_ _%g4246842491%_)))))
                             (_%g4246742487%_ _%g4246842491%_))))
                     (_%g4246742487%_ _%g4246842491%_)))))
         (_%g4246642558%_ _%stx42464%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx42563%_)
       (let* ((_%g4256642590%_
               (lambda (_%g4256742586%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4256742586%_)))
              (_%g4256542718%_
               (lambda (_%g4256742594%_)
                 (if (gx#stx-pair? _%g4256742594%_)
                     (let ((_%e4257042597%_ (gx#syntax-e _%g4256742594%_)))
                       (let ((_%hd4257142601%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4257042597%_)))
                             (_%tl4257242604%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4257042597%_))))
                         (if (gx#stx-pair? _%tl4257242604%_)
                             (let ((_%e4257342607%_
                                    (gx#syntax-e _%tl4257242604%_)))
                               (let ((_%hd4257442611%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4257342607%_)))
                                     (_%tl4257542614%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4257342607%_))))
                                 (if (gx#stx-pair/null? _%tl4257542614%_)
                                     (let ((_g44610_
                                            (gx#syntax-split-splice
                                             _%tl4257542614%_
                                             '0)))
                                       (begin
                                         (let ((_g44611_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44610_)
                                                      (##vector-length
                                                       _g44610_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44611_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44611_)))
                                         (let ((_%target4257642617%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44610_ 0)))
                                               (_%tl4257842620%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44610_ 1))))
                                           (if (gx#stx-null? _%tl4257842620%_)
                                               (letrec ((_%loop4257942623%_
                                                         (lambda (_%hd4257742627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4258342630%_)
                   (if (gx#stx-pair? _%hd4257742627%_)
                       (let ((_%e4258042633%_ (gx#syntax-e _%hd4257742627%_)))
                         (let ((_%lp-hd4258142637%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4258042633%_)))
                               (_%lp-tl4258242640%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4258042633%_))))
                           (_%loop4257942623%_
                            _%lp-tl4258242640%_
                            (cons _%lp-hd4258142637%_ _%id4258342630%_))))
                       (let ((_%id4258442643%_ (reverse _%id4258342630%_)))
                         ((lambda (_%L42647%_ _%L42649%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4266642669%_
                                                 _%g4266742672%_)
                                          (cons _%g4266642669%_
                                                _%g4266742672%_))
                                        '()
                                        _%L42647%_))
                                (let* ((_%keys42683%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4267442677%_
                                                         _%g4267542680%_)
                                                  (cons _%g4267442677%_
                                                        _%g4267542680%_))
                                                '()
                                                _%L42647%_)))
                                       (_%keytab42694%_
                                        (let ((_%ht42686%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4268842690%_)
                                             (hash-put!
                                              _%ht42686%_
                                              _%g4268842690%_
                                              '#t))
                                           _%keys42683%_)
                                          _%ht42686%_))
                                       (_%imports42697%_
                                        (gx#core-expand-import-source
                                         _%L42649%_))
                                       (_%fold-e42713%_
                                        (letrec ((_%fold-e42700%_
                                                  (lambda (_%in42703%_
                                                           _%r42705%_)
                                                    (if (gx#module-import?
                                                         _%in42703%_)
                                                        (if (hash-get
                                                             _%keytab42694%_
                                                             (gx#module-import-name
                                                              _%in42703%_))
                                                            (cons _%in42703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42705%_)
                    _%r42705%_)
                (if (gx#import-set? _%in42703%_)
                    (foldl _%fold-e42700%_
                           _%r42705%_
                           (gx#import-set-imports _%in42703%_))
                    _%r42705%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42700%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42713%_
                                               '()
                                               _%imports42697%_)))
                                (_%g4256642590%_ _%g4256742594%_)))
                          _%id4258442643%_
                          _%hd4257442611%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4257942623%_
                                                  _%target4257642617%_
                                                  '()))
                                               (_%g4256642590%_
                                                _%g4256742594%_)))))
                                     (_%g4256642590%_ _%g4256742594%_))))
                             (_%g4256642590%_ _%g4256742594%_))))
                     (_%g4256642590%_ _%g4256742594%_)))))
         (_%g4256542718%_ _%stx42563%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx42723%_)
       (let* ((_%g4272642750%_
               (lambda (_%g4272742746%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4272742746%_)))
              (_%g4272542878%_
               (lambda (_%g4272742754%_)
                 (if (gx#stx-pair? _%g4272742754%_)
                     (let ((_%e4273042757%_ (gx#syntax-e _%g4272742754%_)))
                       (let ((_%hd4273142761%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4273042757%_)))
                             (_%tl4273242764%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4273042757%_))))
                         (if (gx#stx-pair? _%tl4273242764%_)
                             (let ((_%e4273342767%_
                                    (gx#syntax-e _%tl4273242764%_)))
                               (let ((_%hd4273442771%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4273342767%_)))
                                     (_%tl4273542774%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4273342767%_))))
                                 (if (gx#stx-pair/null? _%tl4273542774%_)
                                     (let ((_g44612_
                                            (gx#syntax-split-splice
                                             _%tl4273542774%_
                                             '0)))
                                       (begin
                                         (let ((_g44613_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44612_)
                                                      (##vector-length
                                                       _g44612_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44613_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44613_)))
                                         (let ((_%target4273642777%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44612_ 0)))
                                               (_%tl4273842780%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44612_ 1))))
                                           (if (gx#stx-null? _%tl4273842780%_)
                                               (letrec ((_%loop4273942783%_
                                                         (lambda (_%hd4273742787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4274342790%_)
                   (if (gx#stx-pair? _%hd4273742787%_)
                       (let ((_%e4274042793%_ (gx#syntax-e _%hd4273742787%_)))
                         (let ((_%lp-hd4274142797%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4274042793%_)))
                               (_%lp-tl4274242800%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4274042793%_))))
                           (_%loop4273942783%_
                            _%lp-tl4274242800%_
                            (cons _%lp-hd4274142797%_ _%id4274342790%_))))
                       (let ((_%id4274442803%_ (reverse _%id4274342790%_)))
                         ((lambda (_%L42807%_ _%L42809%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4282642829%_
                                                 _%g4282742832%_)
                                          (cons _%g4282642829%_
                                                _%g4282742832%_))
                                        '()
                                        _%L42807%_))
                                (let* ((_%keys42843%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4283442837%_
                                                         _%g4283542840%_)
                                                  (cons _%g4283442837%_
                                                        _%g4283542840%_))
                                                '()
                                                _%L42807%_)))
                                       (_%keytab42854%_
                                        (let ((_%ht42846%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4284842850%_)
                                             (hash-put!
                                              _%ht42846%_
                                              _%g4284842850%_
                                              '#t))
                                           _%keys42843%_)
                                          _%ht42846%_))
                                       (_%imports42857%_
                                        (gx#core-expand-import-source
                                         _%L42809%_))
                                       (_%fold-e42873%_
                                        (letrec ((_%fold-e42860%_
                                                  (lambda (_%in42863%_
                                                           _%r42865%_)
                                                    (if (gx#module-import?
                                                         _%in42863%_)
                                                        (if (hash-get
                                                             _%keytab42854%_
                                                             (gx#module-import-name
                                                              _%in42863%_))
                                                            _%r42865%_
                                                            (cons _%in42863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42865%_))
                (if (gx#import-set? _%in42863%_)
                    (foldl _%fold-e42860%_
                           _%r42865%_
                           (gx#import-set-imports _%in42863%_))
                    (cons _%in42863%_ _%r42865%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42860%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42873%_
                                               '()
                                               _%imports42857%_)))
                                (_%g4272642750%_ _%g4272742754%_)))
                          _%id4274442803%_
                          _%hd4273442771%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4273942783%_
                                                  _%target4273642777%_
                                                  '()))
                                               (_%g4272642750%_
                                                _%g4272742754%_)))))
                                     (_%g4272642750%_ _%g4272742754%_))))
                             (_%g4272642750%_ _%g4272742754%_))))
                     (_%g4272642750%_ _%g4272742754%_)))))
         (_%g4272542878%_ _%stx42723%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in42930%_ _%rename42932%_)
      (gx#make-module-import
       (gx#module-import-source _%in42930%_)
       _%rename42932%_
       (gx#module-import-phi _%in42930%_)
       (gx#module-import-weak? _%in42930%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name42883%_ _%pre42885%_)
      (let* ((_%name4288642894%_ _%name42883%_)
             (_%else4288842906%_
              (lambda () (make-symbol _%pre42885%_ _%name42883%_)))
             (_%K4289042914%_
              (lambda (_%mark42910%_ _%id42912%_)
                (cons (make-symbol _%pre42885%_ _%id42912%_) _%mark42910%_))))
        (if (pair? _%name4288642894%_)
            (let ((_%hd4289142918%_
                   (let () (declare (not safe)) (##car _%name4288642894%_)))
                  (_%tl4289242921%_
                   (let () (declare (not safe)) (##cdr _%name4288642894%_))))
              (let* ((_%id42924%_ _%hd4289142918%_)
                     (_%mark42927%_ _%tl4289242921%_))
                (_%K4289042914%_ _%mark42927%_ _%id42924%_)))
            (_%else4288842906%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx42934%_)
       (let* ((_%g4293742970%_
               (lambda (_%g4293842966%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4293842966%_)))
              (_%g4293643165%_
               (lambda (_%g4293842974%_)
                 (if (gx#stx-pair? _%g4293842974%_)
                     (let ((_%e4294242977%_ (gx#syntax-e _%g4293842974%_)))
                       (let ((_%hd4294342981%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4294242977%_)))
                             (_%tl4294442984%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4294242977%_))))
                         (if (gx#stx-pair? _%tl4294442984%_)
                             (let ((_%e4294542987%_
                                    (gx#syntax-e _%tl4294442984%_)))
                               (let ((_%hd4294642991%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4294542987%_)))
                                     (_%tl4294742994%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4294542987%_))))
                                 (if (gx#stx-pair/null? _%tl4294742994%_)
                                     (let ((_g44614_
                                            (gx#syntax-split-splice
                                             _%tl4294742994%_
                                             '0)))
                                       (begin
                                         (let ((_g44615_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44614_)
                                                      (##vector-length
                                                       _g44614_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44615_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44615_)))
                                         (let ((_%target4294842997%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44614_ 0)))
                                               (_%tl4295043000%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44614_ 1))))
                                           (if (gx#stx-null? _%tl4295043000%_)
                                               (letrec ((_%loop4295143003%_
                                                         (lambda (_%hd4294943007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4295543010%_
                          _%id4295643012%_)
                   (if (gx#stx-pair? _%hd4294943007%_)
                       (let ((_%e4295243015%_ (gx#syntax-e _%hd4294943007%_)))
                         (let ((_%lp-hd4295343019%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4295243015%_)))
                               (_%lp-tl4295443022%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4295243015%_))))
                           (if (gx#stx-pair? _%lp-hd4295343019%_)
                               (let ((_%e4295943025%_
                                      (gx#syntax-e _%lp-hd4295343019%_)))
                                 (let ((_%hd4296043029%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4295943025%_)))
                                       (_%tl4296143032%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4295943025%_))))
                                   (if (gx#stx-pair? _%tl4296143032%_)
                                       (let ((_%e4296243035%_
                                              (gx#syntax-e _%tl4296143032%_)))
                                         (let ((_%hd4296343039%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4296243035%_)))
                                               (_%tl4296443042%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4296243035%_))))
                                           (if (gx#stx-null? _%tl4296443042%_)
                                               (_%loop4295143003%_
                                                _%lp-tl4295443022%_
                                                (cons _%hd4296343039%_
                                                      _%new-id4295543010%_)
                                                (cons _%hd4296043029%_
                                                      _%id4295643012%_))
                                               (_%g4293742970%_
                                                _%g4293842974%_))))
                                       (_%g4293742970%_ _%g4293842974%_))))
                               (_%g4293742970%_ _%g4293842974%_))))
                       (let ((_%new-id4295743045%_
                              (reverse _%new-id4295543010%_))
                             (_%id4295843048%_ (reverse _%id4295643012%_)))
                         ((lambda (_%L43051%_ _%L43053%_ _%L43054%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4307243075%_
                                                      _%g4307343078%_)
                                               (cons _%g4307243075%_
                                                     _%g4307343078%_))
                                             '()
                                             _%L43053%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4308043083%_
                                                      _%g4308143086%_)
                                               (cons _%g4308043083%_
                                                     _%g4308143086%_))
                                             '()
                                             _%L43051%_)))
                                (let* ((_%keytab43089%_ (make-hash-table))
                                       (_%found43092%_ (make-hash-table))
                                       (_%_43115%_
                                        (for-each
                                         (lambda (_%id43095%_ _%new-id43097%_)
                                           (hash-put!
                                            _%keytab43089%_
                                            (gx#core-identifier-key
                                             _%id43095%_)
                                            (gx#core-identifier-key
                                             _%new-id43097%_)))
                                         (foldr (lambda (_%g4309843101%_
                                                         _%g4309943104%_)
                                                  (cons _%g4309843101%_
                                                        _%g4309943104%_))
                                                '()
                                                _%L43053%_)
                                         (foldr (lambda (_%g4310643109%_
                                                         _%g4310743112%_)
                                                  (cons _%g4310643109%_
                                                        _%g4310743112%_))
                                                '()
                                                _%L43051%_)))
                                       (_%imports43118%_
                                        (gx#core-expand-import-source
                                         _%L43054%_))
                                       (_%fold-e43146%_
                                        (letrec ((_%fold-e43121%_
                                                  (lambda (_%in43124%_
                                                           _%r43126%_)
                                                    (if (gx#module-import?
                                                         _%in43124%_)
                                                        (let* ((_%name43130%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in43124%_))
                       (_%$e43133%_ (hash-get _%keytab43089%_ _%name43130%_)))
                  (if _%$e43133%_
                      ((lambda (_%rename43137%_)
                         (hash-put! _%found43092%_ _%name43130%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in43124%_
                                _%rename43137%_)
                               _%r43126%_))
                       _%$e43133%_)
                      (cons _%in43124%_ _%r43126%_)))
                (if (gx#import-set? _%in43124%_)
                    (foldl _%fold-e43121%_
                           _%r43126%_
                           (gx#import-set-imports _%in43124%_))
                    (cons _%in43124%_ _%r43126%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43121%_))
                                       (_%new-imports43149%_
                                        (foldl _%fold-e43146%_
                                               '()
                                               _%imports43118%_)))
                                  (for-each
                                   (lambda (_%id43154%_)
                                     (if (hash-get
                                          _%found43092%_
                                          (gx#core-identifier-key _%id43154%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx42934%_
                                          _%id43154%_)))
                                   (foldr (lambda (_%g4315643159%_
                                                   _%g4315743162%_)
                                            (cons _%g4315643159%_
                                                  _%g4315743162%_))
                                          '()
                                          _%L43053%_))
                                  (cons 'begin: _%new-imports43149%_))
                                (_%g4293742970%_ _%g4293842974%_)))
                          _%new-id4295743045%_
                          _%id4295843048%_
                          _%hd4294642991%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4295143003%_
                                                  _%target4294842997%_
                                                  '()
                                                  '()))
                                               (_%g4293742970%_
                                                _%g4293842974%_)))))
                                     (_%g4293742970%_ _%g4293842974%_))))
                             (_%g4293742970%_ _%g4293842974%_))))
                     (_%g4293742970%_ _%g4293842974%_)))))
         (_%g4293643165%_ _%stx42934%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx43170%_)
       (let* ((_%g4317343191%_
               (lambda (_%g4317443187%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4317443187%_)))
              (_%g4317243276%_
               (lambda (_%g4317443195%_)
                 (if (gx#stx-pair? _%g4317443195%_)
                     (let ((_%e4317743198%_ (gx#syntax-e _%g4317443195%_)))
                       (let ((_%hd4317843202%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4317743198%_)))
                             (_%tl4317943205%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4317743198%_))))
                         (if (gx#stx-pair? _%tl4317943205%_)
                             (let ((_%e4318043208%_
                                    (gx#syntax-e _%tl4317943205%_)))
                               (let ((_%hd4318143212%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4318043208%_)))
                                     (_%tl4318243215%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4318043208%_))))
                                 (if (gx#stx-pair? _%tl4318243215%_)
                                     (let ((_%e4318343218%_
                                            (gx#syntax-e _%tl4318243215%_)))
                                       (let ((_%hd4318443222%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4318343218%_)))
                                             (_%tl4318543225%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4318343218%_))))
                                         (if (gx#stx-null? _%tl4318543225%_)
                                             ((lambda (_%L43228%_ _%L43230%_)
                                                (if (gx#identifier? _%L43228%_)
                                                    (let* ((_%pre43246%_
                                                            (gx#stx-e
                                                             _%L43228%_))
                                                           (_%imports43249%_
                                                            (gx#core-expand-import-source
                                                             _%L43230%_))
                                                           (_%rename-e43255%_
                                                            (lambda (_%name43252%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name43252%_
                                                               _%pre43246%_)))
                                                           (_%fold-e43271%_
                                                            (letrec ((_%fold-e43258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in43261%_ _%r43263%_)
                                (if (gx#module-import? _%in43261%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in43261%_
                                           (_%rename-e43255%_
                                            (gx#module-import-name
                                             _%in43261%_)))
                                          _%r43263%_)
                                    (if (gx#import-set? _%in43261%_)
                                        (foldl _%fold-e43258%_
                                               _%r43263%_
                                               (gx#import-set-imports
                                                _%in43261%_))
                                        (cons _%in43261%_ _%r43263%_))))))
                      _%fold-e43258%_)))
              (cons 'begin: (foldl _%fold-e43271%_ '() _%imports43249%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4317343191%_
                                                     _%g4317443195%_)))
                                              _%hd4318443222%_
                                              _%hd4318143212%_)
                                             (_%g4317343191%_
                                              _%g4317443195%_))))
                                     (_%g4317343191%_ _%g4317443195%_))))
                             (_%g4317343191%_ _%g4317443195%_))))
                     (_%g4317343191%_ _%g4317443195%_)))))
         (_%g4317243276%_ _%stx43170%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx43280%_)
       (letrec ((_%flatten43283%_
                 (lambda (_%list-of-lists43538%_)
                   (foldr (lambda (_%v43541%_ _%acc43543%_)
                            (if (null? _%v43541%_)
                                _%acc43543%_
                                (if (pair? _%v43541%_)
                                    (append (_%flatten43283%_ _%v43541%_)
                                            _%acc43543%_)
                                    (cons _%v43541%_ _%acc43543%_))))
                          '()
                          _%list-of-lists43538%_)))
                (_%expand-path43285%_
                 (lambda (_%top43406%_ _%mod43408%_)
                   (let* ((_%__stx4451444515%_ _%mod43408%_)
                          (_%g4341143433%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4451444515%_))))
                     (let ((_%__kont4451744518%_
                            (lambda (_%L43501%_ _%L43503%_)
                              (map (lambda (_%mod43518%_)
                                     (gx#stx-identifier
                                      _%top43406%_
                                      _%top43406%_
                                      '"/"
                                      _%mod43518%_))
                                   (_%flatten43283%_
                                    (map (lambda (_%g4352043522%_)
                                           (_%expand-path43285%_
                                            _%L43503%_
                                            _%g4352043522%_))
                                         (foldr (lambda (_%g4352543528%_
                                                         _%g4352643531%_)
                                                  (cons _%g4352543528%_
                                                        _%g4352643531%_))
                                                '()
                                                _%L43501%_))))))
                           (_%__kont4452144522%_
                            (lambda (_%L43440%_)
                              (gx#stx-identifier
                               _%top43406%_
                               _%top43406%_
                               '"/"
                               _%L43440%_))))
                       (let* ((_%g4341043454%_
                               (lambda ()
                                 (let ((_%L43440%_ _%__stx4451444515%_))
                                   (if (or (gx#identifier? _%L43440%_)
                                           (gx#stx-fixnum? _%L43440%_))
                                       (_%__kont4452144522%_ _%L43440%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4341143433%_))))))
                              (_%__match4453744538%_
                               (lambda (_%e4341543461%_
                                        _%hd4341643465%_
                                        _%tl4341743468%_
                                        _%__splice4451944520%_
                                        _%target4341843471%_
                                        _%tl4342043474%_)
                                 (letrec ((_%loop4342143477%_
                                           (lambda (_%hd4341943481%_
                                                    _%mod4342543484%_)
                                             (if (gx#stx-pair?
                                                  _%hd4341943481%_)
                                                 (let ((_%e4342243487%_
                                                        (gx#syntax-e
                                                         _%hd4341943481%_)))
                                                   (let ((_%lp-tl4342443494%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4342243487%_)))
                                                         (_%lp-hd4342343491%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4342243487%_))))
                                                     (_%loop4342143477%_
                                                      _%lp-tl4342443494%_
                                                      (cons _%lp-hd4342343491%_
                                                            _%mod4342543484%_))))
                                                 (let ((_%mod4342643497%_
                                                        (reverse _%mod4342543484%_)))
                                                   (_%__kont4451744518%_
                                                    _%mod4342643497%_
                                                    _%hd4341643465%_))))))
                                   (_%loop4342143477%_
                                    _%target4341843471%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4451444515%_)
                             (let ((_%e4341543461%_
                                    (gx#syntax-e _%__stx4451444515%_)))
                               (let ((_%tl4341743468%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4341543461%_)))
                                     (_%hd4341643465%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4341543461%_))))
                                 (if (gx#stx-pair/null? _%tl4341743468%_)
                                     (let ((_%__splice4451944520%_
                                            (gx#syntax-split-splice
                                             _%tl4341743468%_
                                             '0)))
                                       (let ((_%tl4342043474%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4451944520%_
                                                 '1)))
                                             (_%target4341843471%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4451944520%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4342043474%_)
                                             (_%__match4453744538%_
                                              _%e4341543461%_
                                              _%hd4341643465%_
                                              _%tl4341743468%_
                                              _%__splice4451944520%_
                                              _%target4341843471%_
                                              _%tl4342043474%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4341043454%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4341043454%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4341043454%_)))))))))
         (let* ((_%g4328743311%_
                 (lambda (_%g4328843307%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4328843307%_)))
                (_%g4328643402%_
                 (lambda (_%g4328843315%_)
                   (if (gx#stx-pair? _%g4328843315%_)
                       (let ((_%e4329143318%_ (gx#syntax-e _%g4328843315%_)))
                         (let ((_%hd4329243322%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4329143318%_)))
                               (_%tl4329343325%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4329143318%_))))
                           (if (gx#stx-pair? _%tl4329343325%_)
                               (let ((_%e4329443328%_
                                      (gx#syntax-e _%tl4329343325%_)))
                                 (let ((_%hd4329543332%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4329443328%_)))
                                       (_%tl4329643335%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4329443328%_))))
                                   (if (gx#stx-pair/null? _%tl4329643335%_)
                                       (let ((_g44616_
                                              (gx#syntax-split-splice
                                               _%tl4329643335%_
                                               '0)))
                                         (begin
                                           (let ((_g44617_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g44616_)
                                                        (##vector-length
                                                         _g44616_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g44617_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g44617_)))
                                           (let ((_%target4329743338%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g44616_ 0)))
                                                 (_%tl4329943341%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g44616_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4329943341%_)
                                                 (letrec ((_%loop4330043344%_
                                                           (lambda (_%hd4329843348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4330443351%_)
                     (if (gx#stx-pair? _%hd4329843348%_)
                         (let ((_%e4330143354%_
                                (gx#syntax-e _%hd4329843348%_)))
                           (let ((_%lp-hd4330243358%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4330143354%_)))
                                 (_%lp-tl4330343361%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4330143354%_))))
                             (_%loop4330043344%_
                              _%lp-tl4330343361%_
                              (cons _%lp-hd4330243358%_ _%mod4330443351%_))))
                         (let ((_%mod4330543364%_ (reverse _%mod4330443351%_)))
                           ((lambda (_%L43368%_ _%L43370%_)
                              (cons 'begin:
                                    (_%flatten43283%_
                                     (map (lambda (_%g4338843390%_)
                                            (_%expand-path43285%_
                                             _%L43370%_
                                             _%g4338843390%_))
                                          (foldr (lambda (_%g4339343396%_
                                                          _%g4339443399%_)
                                                   (cons _%g4339343396%_
                                                         _%g4339443399%_))
                                                 '()
                                                 _%L43368%_)))))
                            _%mod4330543364%_
                            _%hd4329543332%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4330043344%_
                                                    _%target4329743338%_
                                                    '()))
                                                 (_%g4328743311%_
                                                  _%g4328843315%_)))))
                                       (_%g4328743311%_ _%g4328843315%_))))
                               (_%g4328743311%_ _%g4328843315%_))))
                       (_%g4328743311%_ _%g4328843315%_)))))
           (_%g4328643402%_ _%stx43280%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx43553%_)
       (let* ((_%g4355643580%_
               (lambda (_%g4355743576%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4355743576%_)))
              (_%g4355543708%_
               (lambda (_%g4355743584%_)
                 (if (gx#stx-pair? _%g4355743584%_)
                     (let ((_%e4356043587%_ (gx#syntax-e _%g4355743584%_)))
                       (let ((_%hd4356143591%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4356043587%_)))
                             (_%tl4356243594%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4356043587%_))))
                         (if (gx#stx-pair? _%tl4356243594%_)
                             (let ((_%e4356343597%_
                                    (gx#syntax-e _%tl4356243594%_)))
                               (let ((_%hd4356443601%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4356343597%_)))
                                     (_%tl4356543604%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4356343597%_))))
                                 (if (gx#stx-pair/null? _%tl4356543604%_)
                                     (let ((_g44618_
                                            (gx#syntax-split-splice
                                             _%tl4356543604%_
                                             '0)))
                                       (begin
                                         (let ((_g44619_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44618_)
                                                      (##vector-length
                                                       _g44618_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44619_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44619_)))
                                         (let ((_%target4356643607%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44618_ 0)))
                                               (_%tl4356843610%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44618_ 1))))
                                           (if (gx#stx-null? _%tl4356843610%_)
                                               (letrec ((_%loop4356943613%_
                                                         (lambda (_%hd4356743617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4357343620%_)
                   (if (gx#stx-pair? _%hd4356743617%_)
                       (let ((_%e4357043623%_ (gx#syntax-e _%hd4356743617%_)))
                         (let ((_%lp-hd4357143627%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4357043623%_)))
                               (_%lp-tl4357243630%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4357043623%_))))
                           (_%loop4356943613%_
                            _%lp-tl4357243630%_
                            (cons _%lp-hd4357143627%_ _%id4357343620%_))))
                       (let ((_%id4357443633%_ (reverse _%id4357343620%_)))
                         ((lambda (_%L43637%_ _%L43639%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4365643659%_
                                                 _%g4365743662%_)
                                          (cons _%g4365643659%_
                                                _%g4365743662%_))
                                        '()
                                        _%L43637%_))
                                (let* ((_%keys43673%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4366443667%_
                                                         _%g4366543670%_)
                                                  (cons _%g4366443667%_
                                                        _%g4366543670%_))
                                                '()
                                                _%L43637%_)))
                                       (_%keytab43684%_
                                        (let ((_%ht43676%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4367843680%_)
                                             (hash-put!
                                              _%ht43676%_
                                              _%g4367843680%_
                                              '#t))
                                           _%keys43673%_)
                                          _%ht43676%_))
                                       (_%exports43687%_
                                        (gx#core-expand-export-source
                                         _%L43639%_))
                                       (_%fold-e43703%_
                                        (letrec ((_%fold-e43690%_
                                                  (lambda (_%out43693%_
                                                           _%r43695%_)
                                                    (if (gx#module-export?
                                                         _%out43693%_)
                                                        (if (hash-get
                                                             _%keytab43684%_
                                                             (gx#module-export-name
                                                              _%out43693%_))
                                                            _%r43695%_
                                                            (cons _%out43693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r43695%_))
                (if (gx#export-set? _%out43693%_)
                    (foldl _%fold-e43690%_
                           _%r43695%_
                           (gx#export-set-exports _%out43693%_))
                    _%r43695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43690%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43703%_
                                               '()
                                               _%exports43687%_)))
                                (_%g4355643580%_ _%g4355743584%_)))
                          _%id4357443633%_
                          _%hd4356443601%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4356943613%_
                                                  _%target4356643607%_
                                                  '()))
                                               (_%g4355643580%_
                                                _%g4355743584%_)))))
                                     (_%g4355643580%_ _%g4355743584%_))))
                             (_%g4355643580%_ _%g4355743584%_))))
                     (_%g4355643580%_ _%g4355743584%_)))))
         (_%g4355543708%_ _%stx43553%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out43713%_ _%rename43715%_)
      (gx#make-module-export
       (gx#module-export-context _%out43713%_)
       (gx#module-export-key _%out43713%_)
       (gx#module-export-phi _%out43713%_)
       _%rename43715%_
       (gx#module-export-weak? _%out43713%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx43717%_)
       (let* ((_%g4372043753%_
               (lambda (_%g4372143749%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4372143749%_)))
              (_%g4371943948%_
               (lambda (_%g4372143757%_)
                 (if (gx#stx-pair? _%g4372143757%_)
                     (let ((_%e4372543760%_ (gx#syntax-e _%g4372143757%_)))
                       (let ((_%hd4372643764%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4372543760%_)))
                             (_%tl4372743767%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4372543760%_))))
                         (if (gx#stx-pair? _%tl4372743767%_)
                             (let ((_%e4372843770%_
                                    (gx#syntax-e _%tl4372743767%_)))
                               (let ((_%hd4372943774%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4372843770%_)))
                                     (_%tl4373043777%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4372843770%_))))
                                 (if (gx#stx-pair/null? _%tl4373043777%_)
                                     (let ((_g44620_
                                            (gx#syntax-split-splice
                                             _%tl4373043777%_
                                             '0)))
                                       (begin
                                         (let ((_g44621_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44620_)
                                                      (##vector-length
                                                       _g44620_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44621_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44621_)))
                                         (let ((_%target4373143780%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44620_ 0)))
                                               (_%tl4373343783%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44620_ 1))))
                                           (if (gx#stx-null? _%tl4373343783%_)
                                               (letrec ((_%loop4373443786%_
                                                         (lambda (_%hd4373243790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4373843793%_
                          _%id4373943795%_)
                   (if (gx#stx-pair? _%hd4373243790%_)
                       (let ((_%e4373543798%_ (gx#syntax-e _%hd4373243790%_)))
                         (let ((_%lp-hd4373643802%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4373543798%_)))
                               (_%lp-tl4373743805%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4373543798%_))))
                           (if (gx#stx-pair? _%lp-hd4373643802%_)
                               (let ((_%e4374243808%_
                                      (gx#syntax-e _%lp-hd4373643802%_)))
                                 (let ((_%hd4374343812%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4374243808%_)))
                                       (_%tl4374443815%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4374243808%_))))
                                   (if (gx#stx-pair? _%tl4374443815%_)
                                       (let ((_%e4374543818%_
                                              (gx#syntax-e _%tl4374443815%_)))
                                         (let ((_%hd4374643822%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4374543818%_)))
                                               (_%tl4374743825%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4374543818%_))))
                                           (if (gx#stx-null? _%tl4374743825%_)
                                               (_%loop4373443786%_
                                                _%lp-tl4373743805%_
                                                (cons _%hd4374643822%_
                                                      _%new-id4373843793%_)
                                                (cons _%hd4374343812%_
                                                      _%id4373943795%_))
                                               (_%g4372043753%_
                                                _%g4372143757%_))))
                                       (_%g4372043753%_ _%g4372143757%_))))
                               (_%g4372043753%_ _%g4372143757%_))))
                       (let ((_%new-id4374043828%_
                              (reverse _%new-id4373843793%_))
                             (_%id4374143831%_ (reverse _%id4373943795%_)))
                         ((lambda (_%L43834%_ _%L43836%_ _%L43837%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4385543858%_
                                                      _%g4385643861%_)
                                               (cons _%g4385543858%_
                                                     _%g4385643861%_))
                                             '()
                                             _%L43836%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4386343866%_
                                                      _%g4386443869%_)
                                               (cons _%g4386343866%_
                                                     _%g4386443869%_))
                                             '()
                                             _%L43834%_)))
                                (let* ((_%keytab43872%_ (make-hash-table))
                                       (_%found43875%_ (make-hash-table))
                                       (_%_43898%_
                                        (for-each
                                         (lambda (_%id43878%_ _%new-id43880%_)
                                           (hash-put!
                                            _%keytab43872%_
                                            (gx#core-identifier-key
                                             _%id43878%_)
                                            (gx#core-identifier-key
                                             _%new-id43880%_)))
                                         (foldr (lambda (_%g4388143884%_
                                                         _%g4388243887%_)
                                                  (cons _%g4388143884%_
                                                        _%g4388243887%_))
                                                '()
                                                _%L43836%_)
                                         (foldr (lambda (_%g4388943892%_
                                                         _%g4389043895%_)
                                                  (cons _%g4388943892%_
                                                        _%g4389043895%_))
                                                '()
                                                _%L43834%_)))
                                       (_%exports43901%_
                                        (gx#core-expand-export-source
                                         _%L43837%_))
                                       (_%fold-e43929%_
                                        (letrec ((_%fold-e43904%_
                                                  (lambda (_%out43907%_
                                                           _%r43909%_)
                                                    (if (gx#module-export?
                                                         _%out43907%_)
                                                        (let* ((_%name43913%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out43907%_))
                       (_%$e43916%_ (hash-get _%keytab43872%_ _%name43913%_)))
                  (if _%$e43916%_
                      ((lambda (_%rename43920%_)
                         (hash-put! _%found43875%_ _%name43913%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out43907%_
                                _%rename43920%_)
                               _%r43909%_))
                       _%$e43916%_)
                      (cons _%out43907%_ _%r43909%_)))
                (if (gx#export-set? _%out43907%_)
                    (foldl _%fold-e43904%_
                           _%r43909%_
                           (gx#export-set-exports _%out43907%_))
                    (cons _%out43907%_ _%r43909%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43904%_))
                                       (_%new-exports43932%_
                                        (foldl _%fold-e43929%_
                                               '()
                                               _%exports43901%_)))
                                  (for-each
                                   (lambda (_%id43937%_)
                                     (if (hash-get
                                          _%found43875%_
                                          (gx#core-identifier-key _%id43937%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx43717%_
                                          _%id43937%_)))
                                   (foldr (lambda (_%g4393943942%_
                                                   _%g4394043945%_)
                                            (cons _%g4393943942%_
                                                  _%g4394043945%_))
                                          '()
                                          _%L43836%_))
                                  (cons 'begin: _%new-exports43932%_))
                                (_%g4372043753%_ _%g4372143757%_)))
                          _%new-id4374043828%_
                          _%id4374143831%_
                          _%hd4372943774%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4373443786%_
                                                  _%target4373143780%_
                                                  '()
                                                  '()))
                                               (_%g4372043753%_
                                                _%g4372143757%_)))))
                                     (_%g4372043753%_ _%g4372143757%_))))
                             (_%g4372043753%_ _%g4372143757%_))))
                     (_%g4372043753%_ _%g4372143757%_)))))
         (_%g4371943948%_ _%stx43717%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx43953%_)
       (let* ((_%g4395643974%_
               (lambda (_%g4395743970%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4395743970%_)))
              (_%g4395544059%_
               (lambda (_%g4395743978%_)
                 (if (gx#stx-pair? _%g4395743978%_)
                     (let ((_%e4396043981%_ (gx#syntax-e _%g4395743978%_)))
                       (let ((_%hd4396143985%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4396043981%_)))
                             (_%tl4396243988%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4396043981%_))))
                         (if (gx#stx-pair? _%tl4396243988%_)
                             (let ((_%e4396343991%_
                                    (gx#syntax-e _%tl4396243988%_)))
                               (let ((_%hd4396443995%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4396343991%_)))
                                     (_%tl4396543998%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4396343991%_))))
                                 (if (gx#stx-pair? _%tl4396543998%_)
                                     (let ((_%e4396644001%_
                                            (gx#syntax-e _%tl4396543998%_)))
                                       (let ((_%hd4396744005%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4396644001%_)))
                                             (_%tl4396844008%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4396644001%_))))
                                         (if (gx#stx-null? _%tl4396844008%_)
                                             ((lambda (_%L44011%_ _%L44013%_)
                                                (if (gx#identifier? _%L44011%_)
                                                    (let* ((_%pre44029%_
                                                            (gx#stx-e
                                                             _%L44011%_))
                                                           (_%exports44032%_
                                                            (gx#core-expand-export-source
                                                             _%L44013%_))
                                                           (_%rename-e44038%_
                                                            (lambda (_%name44035%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name44035%_
                                                               _%pre44029%_)))
                                                           (_%fold-e44054%_
                                                            (letrec ((_%fold-e44041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out44044%_ _%r44046%_)
                                (if (gx#module-export? _%out44044%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out44044%_
                                           (_%rename-e44038%_
                                            (gx#module-export-name
                                             _%out44044%_)))
                                          _%r44046%_)
                                    (if (gx#export-set? _%out44044%_)
                                        (foldl _%fold-e44041%_
                                               _%r44046%_
                                               (gx#export-set-exports
                                                _%out44044%_))
                                        (cons _%out44044%_ _%r44046%_))))))
                      _%fold-e44041%_)))
              (cons 'begin: (foldl _%fold-e44054%_ '() _%exports44032%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4395643974%_
                                                     _%g4395743978%_)))
                                              _%hd4396744005%_
                                              _%hd4396443995%_)
                                             (_%g4395643974%_
                                              _%g4395743978%_))))
                                     (_%g4395643974%_ _%g4395743978%_))))
                             (_%g4395643974%_ _%g4395743978%_))))
                     (_%g4395643974%_ _%g4395743978%_)))))
         (_%g4395544059%_ _%stx43953%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx44063%_)
       (letrec ((_%identifiers44066%_
                 (lambda (_%id44298%_ _%unchecked?44300%_)
                   (let ((_%info44302%_
                          (gx#syntax-local-value _%id44298%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info44302%_))
                         (cons _%id44298%_
                               (cons (let ((__obj44599 _%info44302%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj44599
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj44599
                                              '12
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj44599
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj44600
                                                         _%info44302%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj44600
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj44600
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj44600
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?44300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj44601 _%info44302%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44601
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44601
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj44601
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj44602 _%info44302%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44602
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44602
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj44602
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj44603 _%info44302%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj44603
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj44603
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj44603
                                    'mutators)))))
                 (map cdr
                      (let ((__obj44604 _%info44302%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj44604
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj44604
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj44604 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor44305%_
                                                   (let ((__obj44605
                                                          _%info44302%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj44605
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj44605
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj44605
                                                          'constructor)))))
                                              (if _%ctor44305%_
                                                  (cons _%ctor44305%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx44063%_
                          _%id44298%_))))))
         (let* ((_%__stx4454044541%_ _%stx44063%_)
                (_%g4407044111%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4454044541%_))))
           (let ((_%__kont4454344544%_
                  (lambda (_%L44259%_ _%L44261%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4428044282%_)
                              (_%identifiers44066%_
                               _%g4428044282%_
                               (gx#stx-e _%L44261%_)))
                            (foldr (lambda (_%g4428544288%_ _%g4428644291%_)
                                     (cons _%g4428544288%_ _%g4428644291%_))
                                   '()
                                   _%L44259%_))))))
                 (_%__kont4454744548%_
                  (lambda (_%L44158%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4417444176%_)
                              (_%identifiers44066%_ _%g4417444176%_ '#f))
                            (foldr (lambda (_%g4417944182%_ _%g4418044185%_)
                                     (cons _%g4417944182%_ _%g4418044185%_))
                                   '()
                                   _%L44158%_)))))))
             (let* ((_%__match4459744598%_
                     (lambda (_%e4409444118%_
                              _%hd4409544122%_
                              _%tl4409644125%_
                              _%__splice4454944550%_
                              _%target4409744128%_
                              _%tl4409944131%_)
                       (letrec ((_%loop4410044134%_
                                 (lambda (_%hd4409844138%_ _%id4410444141%_)
                                   (if (gx#stx-pair? _%hd4409844138%_)
                                       (let ((_%e4410144144%_
                                              (gx#syntax-e _%hd4409844138%_)))
                                         (let ((_%lp-tl4410344151%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4410144144%_)))
                                               (_%lp-hd4410244148%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4410144144%_))))
                                           (_%loop4410044134%_
                                            _%lp-tl4410344151%_
                                            (cons _%lp-hd4410244148%_
                                                  _%id4410444141%_))))
                                       (let ((_%id4410544154%_
                                              (reverse _%id4410444141%_)))
                                         (_%__kont4454744548%_
                                          _%id4410544154%_))))))
                         (_%loop4410044134%_ _%target4409744128%_ '()))))
                    (_%__match4458344584%_
                     (lambda (_%e4407444195%_
                              _%hd4407544199%_
                              _%tl4407644202%_
                              _%e4407744205%_
                              _%hd4407844209%_
                              _%tl4407944212%_
                              _%e4408044215%_
                              _%e4408144219%_
                              _%hd4408244223%_
                              _%tl4408344226%_
                              _%__splice4454544546%_
                              _%target4408444229%_
                              _%tl4408644232%_)
                       (letrec ((_%loop4408744235%_
                                 (lambda (_%hd4408544239%_ _%id4409144242%_)
                                   (if (gx#stx-pair? _%hd4408544239%_)
                                       (let ((_%e4408844245%_
                                              (gx#syntax-e _%hd4408544239%_)))
                                         (let ((_%lp-tl4409044252%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4408844245%_)))
                                               (_%lp-hd4408944249%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4408844245%_))))
                                           (_%loop4408744235%_
                                            _%lp-tl4409044252%_
                                            (cons _%lp-hd4408944249%_
                                                  _%id4409144242%_))))
                                       (let ((_%id4409244255%_
                                              (reverse _%id4409144242%_)))
                                         (_%__kont4454344544%_
                                          _%id4409244255%_
                                          _%hd4408244223%_))))))
                         (_%loop4408744235%_ _%target4408444229%_ '())))))
               (if (gx#stx-pair? _%__stx4454044541%_)
                   (let ((_%e4407444195%_ (gx#syntax-e _%__stx4454044541%_)))
                     (let ((_%tl4407644202%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4407444195%_)))
                           (_%hd4407544199%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4407444195%_))))
                       (if (gx#stx-pair? _%tl4407644202%_)
                           (let ((_%e4407744205%_
                                  (gx#syntax-e _%tl4407644202%_)))
                             (let ((_%tl4407944212%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4407744205%_)))
                                   (_%hd4407844209%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4407744205%_))))
                               (if (gx#stx-datum? _%hd4407844209%_)
                                   (let ((_%e4408044215%_
                                          (gx#stx-e _%hd4407844209%_)))
                                     (if (equal? _%e4408044215%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4407944212%_)
                                             (let ((_%e4408144219%_
                                                    (gx#syntax-e
                                                     _%tl4407944212%_)))
                                               (let ((_%tl4408344226%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4408144219%_)))
                                                     (_%hd4408244223%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4408144219%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4408344226%_)
                                                     (let ((_%__splice4454544546%_
                                                            (gx#syntax-split-splice
                                                             _%tl4408344226%_
                                                             '0)))
                                                       (let ((_%tl4408644232%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4454544546%_ '1)))
                     (_%target4408444229%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4454544546%_ '0))))
                 (if (gx#stx-null? _%tl4408644232%_)
                     (_%__match4458344584%_
                      _%e4407444195%_
                      _%hd4407544199%_
                      _%tl4407644202%_
                      _%e4407744205%_
                      _%hd4407844209%_
                      _%tl4407944212%_
                      _%e4408044215%_
                      _%e4408144219%_
                      _%hd4408244223%_
                      _%tl4408344226%_
                      _%__splice4454544546%_
                      _%target4408444229%_
                      _%tl4408644232%_)
                     (if (gx#stx-pair/null? _%tl4407644202%_)
                         (let ((_%__splice4454944550%_
                                (gx#syntax-split-splice _%tl4407644202%_ '0)))
                           (let ((_%tl4409944131%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4454944550%_ '1)))
                                 (_%target4409744128%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4454944550%_ '0))))
                             (if (gx#stx-null? _%tl4409944131%_)
                                 (_%__match4459744598%_
                                  _%e4407444195%_
                                  _%hd4407544199%_
                                  _%tl4407644202%_
                                  _%__splice4454944550%_
                                  _%target4409744128%_
                                  _%tl4409944131%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4407044111%_)))))
                         (let () (declare (not safe)) (_%g4407044111%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4407644202%_)
                                                         (let ((_%__splice4454944550%_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4407644202%_
                         '0)))
                   (let ((_%tl4409944131%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4454944550%_ '1)))
                         (_%target4409744128%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4454944550%_ '0))))
                     (if (gx#stx-null? _%tl4409944131%_)
                         (_%__match4459744598%_
                          _%e4407444195%_
                          _%hd4407544199%_
                          _%tl4407644202%_
                          _%__splice4454944550%_
                          _%target4409744128%_
                          _%tl4409944131%_)
                         (let () (declare (not safe)) (_%g4407044111%_)))))
                 (let () (declare (not safe)) (_%g4407044111%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4407644202%_)
                                                 (let ((_%__splice4454944550%_
                                                        (gx#syntax-split-splice
                                                         _%tl4407644202%_
                                                         '0)))
                                                   (let ((_%tl4409944131%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4454944550%_
                                                             '1)))
                                                         (_%target4409744128%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4454944550%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4409944131%_)
                                                         (_%__match4459744598%_
                                                          _%e4407444195%_
                                                          _%hd4407544199%_
                                                          _%tl4407644202%_
                                                          _%__splice4454944550%_
                                                          _%target4409744128%_
                                                          _%tl4409944131%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4407044111%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4407044111%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4407644202%_)
                                             (let ((_%__splice4454944550%_
                                                    (gx#syntax-split-splice
                                                     _%tl4407644202%_
                                                     '0)))
                                               (let ((_%tl4409944131%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4454944550%_
                                                         '1)))
                                                     (_%target4409744128%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4454944550%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4409944131%_)
                                                     (_%__match4459744598%_
                                                      _%e4407444195%_
                                                      _%hd4407544199%_
                                                      _%tl4407644202%_
                                                      _%__splice4454944550%_
                                                      _%target4409744128%_
                                                      _%tl4409944131%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4407044111%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4407044111%_)))))
                                   (if (gx#stx-pair/null? _%tl4407644202%_)
                                       (let ((_%__splice4454944550%_
                                              (gx#syntax-split-splice
                                               _%tl4407644202%_
                                               '0)))
                                         (let ((_%tl4409944131%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4454944550%_
                                                   '1)))
                                               (_%target4409744128%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4454944550%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4409944131%_)
                                               (_%__match4459744598%_
                                                _%e4407444195%_
                                                _%hd4407544199%_
                                                _%tl4407644202%_
                                                _%__splice4454944550%_
                                                _%target4409744128%_
                                                _%tl4409944131%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4407044111%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4407044111%_))))))
                           (if (gx#stx-pair/null? _%tl4407644202%_)
                               (let ((_%__splice4454944550%_
                                      (gx#syntax-split-splice
                                       _%tl4407644202%_
                                       '0)))
                                 (let ((_%tl4409944131%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4454944550%_
                                           '1)))
                                       (_%target4409744128%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4454944550%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4409944131%_)
                                       (_%__match4459744598%_
                                        _%e4407444195%_
                                        _%hd4407544199%_
                                        _%tl4407644202%_
                                        _%__splice4454944550%_
                                        _%target4409744128%_
                                        _%tl4409944131%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4407044111%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4407044111%_))))))
                   (let () (declare (not safe)) (_%g4407044111%_)))))))))))
