(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx95817%_)
      (let* ((_%__stx102368102369%_ _%$stx95817%_)
             (_%g9582295851%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102368102369%_))))
        (let ((_%__kont102371102372%_
               (lambda (_%L95944%_ _%L95946%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L95946%_ (cons _%L95944%_ '())))
                             (cons _%L95944%_ '())))))
              (_%__kont102373102374%_
               (lambda (_%L95888%_ _%L95890%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95888%_ (cons _%L95888%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95890%_
                                                           (cons _%L95888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L95888%_ '())))
                                   '()))))))
          (let ((_%__match102395102396%_
                 (lambda (_%e9582695914%_
                          _%hd9582795918%_
                          _%tl9582895921%_
                          _%e9582995924%_
                          _%hd9583095928%_
                          _%tl9583195931%_
                          _%e9583295934%_
                          _%hd9583395938%_
                          _%tl9583495941%_)
                   (let ((_%L95944%_ _%hd9583395938%_)
                         (_%L95946%_ _%hd9583095928%_))
                     (if (or (gx#identifier? _%L95944%_)
                             (gx#stx-fixnum? _%L95944%_))
                         (_%__kont102371102372%_ _%L95944%_ _%L95946%_)
                         (_%__kont102373102374%_
                          _%hd9583395938%_
                          _%hd9583095928%_))))))
            (if (gx#stx-pair? _%__stx102368102369%_)
                (let ((_%e9582695914%_ (gx#syntax-e _%__stx102368102369%_)))
                  (let ((_%tl9582895921%_
                         (let () (declare (not safe)) (##cdr _%e9582695914%_)))
                        (_%hd9582795918%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9582695914%_))))
                    (if (gx#stx-pair? _%tl9582895921%_)
                        (let ((_%e9582995924%_ (gx#syntax-e _%tl9582895921%_)))
                          (let ((_%tl9583195931%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9582995924%_)))
                                (_%hd9583095928%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9582995924%_))))
                            (if (gx#stx-pair? _%tl9583195931%_)
                                (let ((_%e9583295934%_
                                       (gx#syntax-e _%tl9583195931%_)))
                                  (let ((_%tl9583495941%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9583295934%_)))
                                        (_%hd9583395938%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9583295934%_))))
                                    (if (gx#stx-null? _%tl9583495941%_)
                                        (_%__match102395102396%_
                                         _%e9582695914%_
                                         _%hd9582795918%_
                                         _%tl9582895921%_
                                         _%e9582995924%_
                                         _%hd9583095928%_
                                         _%tl9583195931%_
                                         _%e9583295934%_
                                         _%hd9583395938%_
                                         _%tl9583495941%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9582295851%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9582295851%_)))))
                        (let () (declare (not safe)) (_%g9582295851%_)))))
                (let () (declare (not safe)) (_%g9582295851%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx95969%_)
      (let* ((_%__stx102418102419%_ _%$stx95969%_)
             (_%g9597496003%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102418102419%_))))
        (let ((_%__kont102421102422%_
               (lambda (_%L96095%_ _%L96097%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L96097%_ (cons _%L96095%_ '())))
                             (cons '0 '())))))
              (_%__kont102423102424%_
               (lambda (_%L96040%_ _%L96042%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L96040%_ (cons _%L96040%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L96042%_
                                                           (cons _%L96040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match102445102446%_
                 (lambda (_%e9597896065%_
                          _%hd9597996069%_
                          _%tl9598096072%_
                          _%e9598196075%_
                          _%hd9598296079%_
                          _%tl9598396082%_
                          _%e9598496085%_
                          _%hd9598596089%_
                          _%tl9598696092%_)
                   (let ((_%L96095%_ _%hd9598596089%_)
                         (_%L96097%_ _%hd9598296079%_))
                     (if (or (gx#identifier? _%L96095%_)
                             (gx#stx-fixnum? _%L96095%_))
                         (_%__kont102421102422%_ _%L96095%_ _%L96097%_)
                         (_%__kont102423102424%_
                          _%hd9598596089%_
                          _%hd9598296079%_))))))
            (if (gx#stx-pair? _%__stx102418102419%_)
                (let ((_%e9597896065%_ (gx#syntax-e _%__stx102418102419%_)))
                  (let ((_%tl9598096072%_
                         (let () (declare (not safe)) (##cdr _%e9597896065%_)))
                        (_%hd9597996069%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9597896065%_))))
                    (if (gx#stx-pair? _%tl9598096072%_)
                        (let ((_%e9598196075%_ (gx#syntax-e _%tl9598096072%_)))
                          (let ((_%tl9598396082%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9598196075%_)))
                                (_%hd9598296079%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9598196075%_))))
                            (if (gx#stx-pair? _%tl9598396082%_)
                                (let ((_%e9598496085%_
                                       (gx#syntax-e _%tl9598396082%_)))
                                  (let ((_%tl9598696092%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9598496085%_)))
                                        (_%hd9598596089%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9598496085%_))))
                                    (if (gx#stx-null? _%tl9598696092%_)
                                        (_%__match102445102446%_
                                         _%e9597896065%_
                                         _%hd9597996069%_
                                         _%tl9598096072%_
                                         _%e9598196075%_
                                         _%hd9598296079%_
                                         _%tl9598396082%_
                                         _%e9598496085%_
                                         _%hd9598596089%_
                                         _%tl9598696092%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9597496003%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9597496003%_)))))
                        (let () (declare (not safe)) (_%g9597496003%_)))))
                (let () (declare (not safe)) (_%g9597496003%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx96120%_)
      (let* ((_%g9612396144%_
              (lambda (_%g9612496140%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9612496140%_)))
             (_%g9612296372%_
              (lambda (_%g9612496148%_)
                (if (gx#stx-pair? _%g9612496148%_)
                    (let ((_%e9612796151%_ (gx#syntax-e _%g9612496148%_)))
                      (let ((_%hd9612896155%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9612796151%_)))
                            (_%tl9612996158%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9612796151%_))))
                        (if (gx#stx-pair? _%tl9612996158%_)
                            (let ((_%e9613096161%_
                                   (gx#syntax-e _%tl9612996158%_)))
                              (let ((_%hd9613196165%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9613096161%_)))
                                    (_%tl9613296168%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9613096161%_))))
                                (if (gx#stx-pair? _%hd9613196165%_)
                                    (let ((_%e9613396171%_
                                           (gx#syntax-e _%hd9613196165%_)))
                                      (let ((_%hd9613496175%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9613396171%_)))
                                            (_%tl9613596178%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9613396171%_))))
                                        (if (gx#stx-pair? _%tl9613596178%_)
                                            (let ((_%e9613696181%_
                                                   (gx#syntax-e
                                                    _%tl9613596178%_)))
                                              (let ((_%hd9613796185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9613696181%_)))
                                                    (_%tl9613896188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9613696181%_))))
                                                (if (gx#stx-null?
                                                     _%tl9613896188%_)
                                                    (if (gx#stx-null?
                                                         _%tl9613296168%_)
                                                        ((lambda (_%L96191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L96193%_)
                   (let* ((_%g9621196219%_
                           (lambda (_%g9621296215%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9621296215%_)))
                          (_%g9621096368%_
                           (lambda (_%g9621296223%_)
                             ((lambda (_%L96226%_)
                                (let* ((_%g9623896246%_
                                        (lambda (_%g9623996242%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9623996242%_)))
                                       (_%g9623796364%_
                                        (lambda (_%g9623996250%_)
                                          ((lambda (_%L96253%_)
                                             (let* ((_%g9626696274%_
                                                     (lambda (_%g9626796270%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9626796270%_)))
                                                    (_%g9626596360%_
                                                     (lambda (_%g9626796278%_)
                                                       ((lambda (_%L96281%_)
                                                          (let* ((_%g9629496302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9629596298%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9629596298%_)))
                         (_%g9629396356%_
                          (lambda (_%g9629596306%_)
                            ((lambda (_%L96309%_)
                               (let* ((_%g9632296330%_
                                       (lambda (_%g9632396326%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9632396326%_)))
                                      (_%g9632196352%_
                                       (lambda (_%g9632396334%_)
                                         ((lambda (_%L96337%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L96253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L96226%_
                                                          (cons _%L96193%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'klass)
                              '())
                        (cons (cons (gx#datum->syntax '#f '##structure-ref)
                                    (cons (gx#datum->syntax '#f 'klass)
                                          (cons _%L96191%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L96193%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L96281%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L96226%_
                                                                (cons _%L96193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons (cons (gx#datum->syntax '#f 'klass) '())
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '##unchecked-structure-ref)
                                          (cons (gx#datum->syntax '#f 'klass)
                                                (cons _%L96191%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L96193%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L96309%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L96226%_ (cons _%L96193%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            (cons _%L96191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L96193%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L96337%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L96226%_
                                    (cons _%L96193%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          (cons _%L96191%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L96193%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9632396334%_))))
                                 (_%g9632196352%_
                                  (gx#stx-identifier
                                   _%L96193%_
                                   '"&"
                                   _%L96309%_))))
                             _%g9629596306%_))))
                    (_%g9629396356%_
                     (gx#stx-identifier _%L96193%_ _%L96253%_ '"-set!"))))
                _%g9626796278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9626596360%_
                                                (gx#stx-identifier
                                                 _%L96193%_
                                                 '"&"
                                                 _%L96253%_))))
                                           _%g9623996250%_))))
                                  (_%g9623796364%_
                                   (gx#stx-identifier
                                    _%L96193%_
                                    '"class-type-"
                                    _%L96193%_))))
                              _%g9621296223%_))))
                     (_%g9621096368%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9613796185%_
                 _%hd9613496175%_)
                (_%g9612396144%_ _%g9612496148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9612396144%_
                                                     _%g9612496148%_))))
                                            (_%g9612396144%_
                                             _%g9612496148%_))))
                                    (_%g9612396144%_ _%g9612496148%_))))
                            (_%g9612396144%_ _%g9612496148%_))))
                    (_%g9612396144%_ _%g9612496148%_)))))
        (_%g9612296372%_ _%stx96120%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx96376%_)
      (let* ((_%g9638096409%_
              (lambda (_%g9638196405%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9638196405%_)))
             (_%g9637996509%_
              (lambda (_%g9638196413%_)
                (if (gx#stx-pair? _%g9638196413%_)
                    (let ((_%e9638496416%_ (gx#syntax-e _%g9638196413%_)))
                      (let ((_%hd9638596420%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9638496416%_)))
                            (_%tl9638696423%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9638496416%_))))
                        (if (gx#stx-pair/null? _%tl9638696423%_)
                            (let ((_g102657_
                                   (gx#syntax-split-splice
                                    _%tl9638696423%_
                                    '0)))
                              (begin
                                (let ((_g102658_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102657_)
                                             (##values-length _g102657_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102658_ 2)))
                                      (error "Context expects 2 values"
                                             _g102658_)))
                                (let ((_%target9638796426%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102657_ 0)))
                                      (_%tl9638996429%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102657_ 1))))
                                  (if (gx#stx-null? _%tl9638996429%_)
                                      (letrec ((_%loop9639096432%_
                                                (lambda (_%hd9638896436%_
                                                         _%field9639496439%_
                                                         _%slot9639596441%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9638896436%_)
                                                      (let ((_%e9639196444%_
                                                             (gx#syntax-e
                                                              _%hd9638896436%_)))
                                                        (let ((_%lp-hd9639296448%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9639196444%_)))
                      (_%lp-tl9639396451%_
                       (let () (declare (not safe)) (##cdr _%e9639196444%_))))
                  (if (gx#stx-pair? _%lp-hd9639296448%_)
                      (let ((_%e9639896454%_
                             (gx#syntax-e _%lp-hd9639296448%_)))
                        (let ((_%hd9639996458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9639896454%_)))
                              (_%tl9640096461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9639896454%_))))
                          (if (gx#stx-pair? _%tl9640096461%_)
                              (let ((_%e9640196464%_
                                     (gx#syntax-e _%tl9640096461%_)))
                                (let ((_%hd9640296468%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9640196464%_)))
                                      (_%tl9640396471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9640196464%_))))
                                  (if (gx#stx-null? _%tl9640396471%_)
                                      (_%loop9639096432%_
                                       _%lp-tl9639396451%_
                                       (cons _%hd9640296468%_
                                             _%field9639496439%_)
                                       (cons _%hd9639996458%_
                                             _%slot9639596441%_))
                                      (_%g9638096409%_ _%g9638196413%_))))
                              (_%g9638096409%_ _%g9638196413%_))))
                      (_%g9638096409%_ _%g9638196413%_))))
              (let ((_%field9639696474%_ (reverse _%field9639496439%_))
                    (_%slot9639796477%_ (reverse _%slot9639596441%_)))
                ((lambda (_%L96480%_ _%L96482%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96480%_
                            _%L96482%_)
                           (let ((__tmp102659
                                  (lambda (_%g9649796501%_
                                           _%g9649896504%_
                                           _%g9649996506%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9649896504%_
                                                            (cons _%g9649796501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9649996506%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102659
                              '()
                              _%L96480%_
                              _%L96482%_)))))
                 _%field9639696474%_
                 _%slot9639796477%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9639096432%_
                                         _%target9638796426%_
                                         '()
                                         '()))
                                      (_%g9638096409%_ _%g9638196413%_)))))
                            (_%g9638096409%_ _%g9638196413%_))))
                    (_%g9638096409%_ _%g9638196413%_)))))
        (_%g9637996509%_ _%$stx96376%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx96514%_)
      (let* ((_%g9651896552%_
              (lambda (_%g9651996548%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9651996548%_)))
             (_%g9651796663%_
              (lambda (_%g9651996556%_)
                (if (gx#stx-pair? _%g9651996556%_)
                    (let ((_%e9652696559%_ (gx#syntax-e _%g9651996556%_)))
                      (let ((_%hd9652796563%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9652696559%_)))
                            (_%tl9652896566%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9652696559%_))))
                        (if (gx#stx-pair? _%tl9652896566%_)
                            (let ((_%e9652996569%_
                                   (gx#syntax-e _%tl9652896566%_)))
                              (let ((_%hd9653096573%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9652996569%_)))
                                    (_%tl9653196576%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9652996569%_))))
                                (if (gx#stx-pair? _%tl9653196576%_)
                                    (let ((_%e9653296579%_
                                           (gx#syntax-e _%tl9653196576%_)))
                                      (let ((_%hd9653396583%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9653296579%_)))
                                            (_%tl9653496586%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9653296579%_))))
                                        (if (gx#stx-pair? _%tl9653496586%_)
                                            (let ((_%e9653596589%_
                                                   (gx#syntax-e
                                                    _%tl9653496586%_)))
                                              (let ((_%hd9653696593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9653596589%_)))
                                                    (_%tl9653796596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9653596589%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9653796596%_)
                                                    (let ((_%e9653896599%_
                                                           (gx#syntax-e
                                                            _%tl9653796596%_)))
                                                      (let ((_%hd9653996603%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9653896599%_)))
                    (_%tl9654096606%_
                     (let () (declare (not safe)) (##cdr _%e9653896599%_))))
                (if (gx#stx-pair? _%tl9654096606%_)
                    (let ((_%e9654196609%_ (gx#syntax-e _%tl9654096606%_)))
                      (let ((_%hd9654296613%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9654196609%_)))
                            (_%tl9654396616%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9654196609%_))))
                        (if (gx#stx-pair? _%tl9654396616%_)
                            (let ((_%e9654496619%_
                                   (gx#syntax-e _%tl9654396616%_)))
                              (let ((_%hd9654596623%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9654496619%_)))
                                    (_%tl9654696626%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9654496619%_))))
                                (if (gx#stx-null? _%tl9654696626%_)
                                    ((lambda (_%L96629%_
                                              _%L96631%_
                                              _%L96632%_
                                              _%L96633%_
                                              _%L96634%_
                                              _%L96635%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'field)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbolic-table-ref)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '&class-type-slot-table)
                                         (cons _%L96635%_ '()))
                                   (cons _%L96634%_ (cons '#f '()))))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cond)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          'not)
                                         (cons (gx#datum->syntax '#f 'field)
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'abort!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'error)
                                                           (cons '"unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'class:
                               (cons _%L96635%_
                                     (cons 'slot: (cons _%L96634%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L96635%_ '()))
                                         (cons (cons _%L96633%_
                                                     (cons _%L96635%_
                                                           (cons _%L96634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L96635%_ '()))
                                               (cons (cons _%L96632%_
                                                           (cons _%L96635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96634%_
                               (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'strukt)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'base-struct/1)
                                           (cons _%L96635%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'and)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'class-type?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'strukt)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'field)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector-length)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&class-type-slot-vector)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'strukt)
                                                   '()))
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _%L96631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96635%_
                               (cons _%L96634%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L96629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L96635%_
                                     (cons _%L96634%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9654596623%_
                                     _%hd9654296613%_
                                     _%hd9653996603%_
                                     _%hd9653696593%_
                                     _%hd9653396583%_
                                     _%hd9653096573%_)
                                    (_%g9651896552%_ _%g9651996556%_))))
                            (_%g9651896552%_ _%g9651996556%_))))
                    (_%g9651896552%_ _%g9651996556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9651896552%_
                                                     _%g9651996556%_))))
                                            (_%g9651896552%_
                                             _%g9651996556%_))))
                                    (_%g9651896552%_ _%g9651996556%_))))
                            (_%g9651896552%_ _%g9651996556%_))))
                    (_%g9651896552%_ _%g9651996556%_)))))
        (_%g9651796663%_ _%$stx96514%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx96667%_)
      (let* ((_%g9667196697%_
              (lambda (_%g9667296693%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9667296693%_)))
             (_%g9667096780%_
              (lambda (_%g9667296701%_)
                (if (gx#stx-pair? _%g9667296701%_)
                    (let ((_%e9667796704%_ (gx#syntax-e _%g9667296701%_)))
                      (let ((_%hd9667896708%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9667796704%_)))
                            (_%tl9667996711%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9667796704%_))))
                        (if (gx#stx-pair? _%tl9667996711%_)
                            (let ((_%e9668096714%_
                                   (gx#syntax-e _%tl9667996711%_)))
                              (let ((_%hd9668196718%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9668096714%_)))
                                    (_%tl9668296721%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9668096714%_))))
                                (if (gx#stx-pair? _%tl9668296721%_)
                                    (let ((_%e9668396724%_
                                           (gx#syntax-e _%tl9668296721%_)))
                                      (let ((_%hd9668496728%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9668396724%_)))
                                            (_%tl9668596731%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9668396724%_))))
                                        (if (gx#stx-pair? _%tl9668596731%_)
                                            (let ((_%e9668696734%_
                                                   (gx#syntax-e
                                                    _%tl9668596731%_)))
                                              (let ((_%hd9668796738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9668696734%_)))
                                                    (_%tl9668896741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9668696734%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9668896741%_)
                                                    (let ((_%e9668996744%_
                                                           (gx#syntax-e
                                                            _%tl9668896741%_)))
                                                      (let ((_%hd9669096748%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9668996744%_)))
                    (_%tl9669196751%_
                     (let () (declare (not safe)) (##cdr _%e9668996744%_))))
                (if (gx#stx-null? _%tl9669196751%_)
                    ((lambda (_%L96754%_ _%L96756%_ _%L96757%_ _%L96758%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L96758%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L96757%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L96756%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L96754%_
                                     (cons _%L96758%_ (cons _%L96757%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9669096748%_
                     _%hd9668796738%_
                     _%hd9668496728%_
                     _%hd9668196718%_)
                    (_%g9667196697%_ _%g9667296701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9667196697%_
                                                     _%g9667296701%_))))
                                            (_%g9667196697%_
                                             _%g9667296701%_))))
                                    (_%g9667196697%_ _%g9667296701%_))))
                            (_%g9667196697%_ _%g9667296701%_))))
                    (_%g9667196697%_ _%g9667296701%_)))))
        (_%g9667096780%_ _%$stx96667%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx96784%_)
      (let* ((_%g9678896817%_
              (lambda (_%g9678996813%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9678996813%_)))
             (_%g9678796917%_
              (lambda (_%g9678996821%_)
                (if (gx#stx-pair? _%g9678996821%_)
                    (let ((_%e9679296824%_ (gx#syntax-e _%g9678996821%_)))
                      (let ((_%hd9679396828%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9679296824%_)))
                            (_%tl9679496831%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9679296824%_))))
                        (if (gx#stx-pair/null? _%tl9679496831%_)
                            (let ((_g102660_
                                   (gx#syntax-split-splice
                                    _%tl9679496831%_
                                    '0)))
                              (begin
                                (let ((_g102661_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102660_)
                                             (##values-length _g102660_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102661_ 2)))
                                      (error "Context expects 2 values"
                                             _g102661_)))
                                (let ((_%target9679596834%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102660_ 0)))
                                      (_%tl9679796837%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102660_ 1))))
                                  (if (gx#stx-null? _%tl9679796837%_)
                                      (letrec ((_%loop9679896840%_
                                                (lambda (_%hd9679696844%_
                                                         _%name9680296847%_
                                                         _%t9680396849%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9679696844%_)
                                                      (let ((_%e9679996852%_
                                                             (gx#syntax-e
                                                              _%hd9679696844%_)))
                                                        (let ((_%lp-hd9680096856%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9679996852%_)))
                      (_%lp-tl9680196859%_
                       (let () (declare (not safe)) (##cdr _%e9679996852%_))))
                  (if (gx#stx-pair? _%lp-hd9680096856%_)
                      (let ((_%e9680696862%_
                             (gx#syntax-e _%lp-hd9680096856%_)))
                        (let ((_%hd9680796866%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9680696862%_)))
                              (_%tl9680896869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9680696862%_))))
                          (if (gx#stx-pair? _%tl9680896869%_)
                              (let ((_%e9680996872%_
                                     (gx#syntax-e _%tl9680896869%_)))
                                (let ((_%hd9681096876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9680996872%_)))
                                      (_%tl9681196879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9680996872%_))))
                                  (if (gx#stx-null? _%tl9681196879%_)
                                      (_%loop9679896840%_
                                       _%lp-tl9680196859%_
                                       (cons _%hd9681096876%_
                                             _%name9680296847%_)
                                       (cons _%hd9680796866%_ _%t9680396849%_))
                                      (_%g9678896817%_ _%g9678996821%_))))
                              (_%g9678896817%_ _%g9678996821%_))))
                      (_%g9678896817%_ _%g9678996821%_))))
              (let ((_%name9680496882%_ (reverse _%name9680296847%_))
                    (_%t9680596885%_ (reverse _%t9680396849%_)))
                ((lambda (_%L96888%_ _%L96890%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96888%_
                            _%L96890%_)
                           (let ((__tmp102662
                                  (lambda (_%g9690596909%_
                                           _%g9690696912%_
                                           _%g9690796914%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9690696912%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9690596909%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9690796914%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102662
                              '()
                              _%L96888%_
                              _%L96890%_)))))
                 _%name9680496882%_
                 _%t9680596885%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9679896840%_
                                         _%target9679596834%_
                                         '()
                                         '()))
                                      (_%g9678896817%_ _%g9678996821%_)))))
                            (_%g9678896817%_ _%g9678996821%_))))
                    (_%g9678896817%_ _%g9678996821%_)))))
        (_%g9678796917%_ _%$stx96784%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx96922%_)
      (let* ((_%g9692696957%_
              (lambda (_%g9692796953%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9692796953%_)))
             (_%g9692597076%_
              (lambda (_%g9692796961%_)
                (if (gx#stx-pair? _%g9692796961%_)
                    (let ((_%e9693196964%_ (gx#syntax-e _%g9692796961%_)))
                      (let ((_%hd9693296968%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9693196964%_)))
                            (_%tl9693396971%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9693196964%_))))
                        (if (gx#stx-pair? _%tl9693396971%_)
                            (let ((_%e9693496974%_
                                   (gx#syntax-e _%tl9693396971%_)))
                              (let ((_%hd9693596978%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9693496974%_)))
                                    (_%tl9693696981%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9693496974%_))))
                                (if (gx#stx-pair? _%tl9693696981%_)
                                    (let ((_%e9693796984%_
                                           (gx#syntax-e _%tl9693696981%_)))
                                      (let ((_%hd9693896988%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9693796984%_)))
                                            (_%tl9693996991%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9693796984%_))))
                                        (if (gx#stx-pair? _%tl9693996991%_)
                                            (let ((_%e9694096994%_
                                                   (gx#syntax-e
                                                    _%tl9693996991%_)))
                                              (let ((_%hd9694196998%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9694096994%_)))
                                                    (_%tl9694297001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9694096994%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9694196998%_)
                                                    (let ((_g102663_
                                                           (gx#syntax-split-splice
                                                            _%hd9694196998%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102664_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102663_)
                             (##values-length _g102663_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102664_ 2)))
                      (error "Context expects 2 values" _g102664_)))
                (let ((_%target9694397004%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102663_ 0)))
                      (_%tl9694597007%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102663_ 1))))
                  (if (gx#stx-null? _%tl9694597007%_)
                      (letrec ((_%loop9694697010%_
                                (lambda (_%hd9694497014%_ _%super9695097017%_)
                                  (if (gx#stx-pair? _%hd9694497014%_)
                                      (let ((_%e9694797020%_
                                             (gx#syntax-e _%hd9694497014%_)))
                                        (let ((_%lp-hd9694897024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9694797020%_)))
                                              (_%lp-tl9694997027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9694797020%_))))
                                          (_%loop9694697010%_
                                           _%lp-tl9694997027%_
                                           (cons _%lp-hd9694897024%_
                                                 _%super9695097017%_))))
                                      (let ((_%super9695197030%_
                                             (reverse _%super9695097017%_)))
                                        (if (gx#stx-null? _%tl9694297001%_)
                                            ((lambda (_%L97034%_
                                                      _%L97036%_
                                                      _%L97037%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97037%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97036%_
                                                 (cons (let ((__tmp102665
                                                              (lambda (_%g9706197064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9706297067%_)
                        (cons _%g9706197064%_ _%g9706297067%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102665 '() _%L97034%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L97036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp102666
                                  (lambda (_%g9705997070%_ _%g9706097073%_)
                                    (cons _%g9705997070%_ _%g9706097073%_))))
                             (declare (not safe))
                             (__foldr1 __tmp102666 '() _%L97034%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9695197030%_
                                             _%hd9693896988%_
                                             _%hd9693596978%_)
                                            (_%g9692696957%_
                                             _%g9692796961%_)))))))
                        (_%loop9694697010%_ _%target9694397004%_ '()))
                      (_%g9692696957%_ _%g9692796961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9692696957%_
                                                     _%g9692796961%_))))
                                            (_%g9692696957%_
                                             _%g9692796961%_))))
                                    (_%g9692696957%_ _%g9692796961%_))))
                            (_%g9692696957%_ _%g9692796961%_))))
                    (_%g9692696957%_ _%g9692796961%_)))))
        (_%g9692597076%_ _%$stx96922%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx97081%_)
      (let* ((_%g9708597116%_
              (lambda (_%g9708697112%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9708697112%_)))
             (_%g9708497227%_
              (lambda (_%g9708697120%_)
                (if (gx#stx-pair? _%g9708697120%_)
                    (let ((_%e9709097123%_ (gx#syntax-e _%g9708697120%_)))
                      (let ((_%hd9709197127%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9709097123%_)))
                            (_%tl9709297130%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9709097123%_))))
                        (if (gx#stx-pair? _%tl9709297130%_)
                            (let ((_%e9709397133%_
                                   (gx#syntax-e _%tl9709297130%_)))
                              (let ((_%hd9709497137%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9709397133%_)))
                                    (_%tl9709597140%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9709397133%_))))
                                (if (gx#stx-pair? _%tl9709597140%_)
                                    (let ((_%e9709697143%_
                                           (gx#syntax-e _%tl9709597140%_)))
                                      (let ((_%hd9709797147%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9709697143%_)))
                                            (_%tl9709897150%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9709697143%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9709797147%_)
                                            (let ((_g102667_
                                                   (gx#syntax-split-splice
                                                    _%hd9709797147%_
                                                    '0)))
                                              (begin
                                                (let ((_g102668_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g102667_)
                                                             (##values-length
                                                              _g102667_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g102668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g102668_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9709997153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102667_
                                                          0)))
                                                      (_%tl9710197156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102667_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9710197156%_)
                                                      (letrec ((_%loop9710297159%_
                                                                (lambda (_%hd9710097163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9710697166%_)
                          (if (gx#stx-pair? _%hd9710097163%_)
                              (let ((_%e9710397169%_
                                     (gx#syntax-e _%hd9710097163%_)))
                                (let ((_%lp-hd9710497173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9710397169%_)))
                                      (_%lp-tl9710597176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9710397169%_))))
                                  (_%loop9710297159%_
                                   _%lp-tl9710597176%_
                                   (cons _%lp-hd9710497173%_
                                         _%super9710697166%_))))
                              (let ((_%super9710797179%_
                                     (reverse _%super9710697166%_)))
                                (if (gx#stx-pair? _%tl9709897150%_)
                                    (let ((_%e9710897183%_
                                           (gx#syntax-e _%tl9709897150%_)))
                                      (let ((_%hd9710997187%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9710897183%_)))
                                            (_%tl9711097190%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9710897183%_))))
                                        (if (gx#stx-null? _%tl9711097190%_)
                                            ((lambda (_%L97193%_
                                                      _%L97195%_
                                                      _%L97196%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97196%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97196%_
                                                 (cons (let ((__tmp102669
                                                              (lambda (_%g9721897221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9721997224%_)
                        (cons _%g9721897221%_ _%g9721997224%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102669 '() _%L97195%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L97193%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9710997187%_
                                             _%super9710797179%_
                                             _%hd9709497137%_)
                                            (_%g9708597116%_
                                             _%g9708697120%_))))
                                    (_%g9708597116%_ _%g9708697120%_)))))))
                (_%loop9710297159%_ _%target9709997153%_ '()))
              (_%g9708597116%_ _%g9708697120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9708597116%_
                                             _%g9708697120%_))))
                                    (_%g9708597116%_ _%g9708697120%_))))
                            (_%g9708597116%_ _%g9708697120%_))))
                    (_%g9708597116%_ _%g9708697120%_)))))
        (_%g9708497227%_ _%$stx97081%_)))))
