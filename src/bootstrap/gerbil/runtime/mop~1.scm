(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx95811%_)
      (let* ((_%__stx102362102363%_ _%$stx95811%_)
             (_%g9581695845%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102362102363%_))))
        (let ((_%__kont102365102366%_
               (lambda (_%L95938%_ _%L95940%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L95940%_ (cons _%L95938%_ '())))
                             (cons _%L95938%_ '())))))
              (_%__kont102367102368%_
               (lambda (_%L95882%_ _%L95884%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95882%_ (cons _%L95882%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95884%_
                                                           (cons _%L95882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L95882%_ '())))
                                   '()))))))
          (let ((_%__match102389102390%_
                 (lambda (_%e9582095908%_
                          _%hd9582195912%_
                          _%tl9582295915%_
                          _%e9582395918%_
                          _%hd9582495922%_
                          _%tl9582595925%_
                          _%e9582695928%_
                          _%hd9582795932%_
                          _%tl9582895935%_)
                   (let ((_%L95938%_ _%hd9582795932%_)
                         (_%L95940%_ _%hd9582495922%_))
                     (if (or (gx#identifier? _%L95938%_)
                             (gx#stx-fixnum? _%L95938%_))
                         (_%__kont102365102366%_ _%L95938%_ _%L95940%_)
                         (_%__kont102367102368%_
                          _%hd9582795932%_
                          _%hd9582495922%_))))))
            (if (gx#stx-pair? _%__stx102362102363%_)
                (let ((_%e9582095908%_ (gx#syntax-e _%__stx102362102363%_)))
                  (let ((_%tl9582295915%_
                         (let () (declare (not safe)) (##cdr _%e9582095908%_)))
                        (_%hd9582195912%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9582095908%_))))
                    (if (gx#stx-pair? _%tl9582295915%_)
                        (let ((_%e9582395918%_ (gx#syntax-e _%tl9582295915%_)))
                          (let ((_%tl9582595925%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9582395918%_)))
                                (_%hd9582495922%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9582395918%_))))
                            (if (gx#stx-pair? _%tl9582595925%_)
                                (let ((_%e9582695928%_
                                       (gx#syntax-e _%tl9582595925%_)))
                                  (let ((_%tl9582895935%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9582695928%_)))
                                        (_%hd9582795932%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9582695928%_))))
                                    (if (gx#stx-null? _%tl9582895935%_)
                                        (_%__match102389102390%_
                                         _%e9582095908%_
                                         _%hd9582195912%_
                                         _%tl9582295915%_
                                         _%e9582395918%_
                                         _%hd9582495922%_
                                         _%tl9582595925%_
                                         _%e9582695928%_
                                         _%hd9582795932%_
                                         _%tl9582895935%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9581695845%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9581695845%_)))))
                        (let () (declare (not safe)) (_%g9581695845%_)))))
                (let () (declare (not safe)) (_%g9581695845%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx95963%_)
      (let* ((_%__stx102412102413%_ _%$stx95963%_)
             (_%g9596895997%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102412102413%_))))
        (let ((_%__kont102415102416%_
               (lambda (_%L96089%_ _%L96091%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L96091%_ (cons _%L96089%_ '())))
                             (cons '0 '())))))
              (_%__kont102417102418%_
               (lambda (_%L96034%_ _%L96036%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L96034%_ (cons _%L96034%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L96036%_
                                                           (cons _%L96034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match102439102440%_
                 (lambda (_%e9597296059%_
                          _%hd9597396063%_
                          _%tl9597496066%_
                          _%e9597596069%_
                          _%hd9597696073%_
                          _%tl9597796076%_
                          _%e9597896079%_
                          _%hd9597996083%_
                          _%tl9598096086%_)
                   (let ((_%L96089%_ _%hd9597996083%_)
                         (_%L96091%_ _%hd9597696073%_))
                     (if (or (gx#identifier? _%L96089%_)
                             (gx#stx-fixnum? _%L96089%_))
                         (_%__kont102415102416%_ _%L96089%_ _%L96091%_)
                         (_%__kont102417102418%_
                          _%hd9597996083%_
                          _%hd9597696073%_))))))
            (if (gx#stx-pair? _%__stx102412102413%_)
                (let ((_%e9597296059%_ (gx#syntax-e _%__stx102412102413%_)))
                  (let ((_%tl9597496066%_
                         (let () (declare (not safe)) (##cdr _%e9597296059%_)))
                        (_%hd9597396063%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9597296059%_))))
                    (if (gx#stx-pair? _%tl9597496066%_)
                        (let ((_%e9597596069%_ (gx#syntax-e _%tl9597496066%_)))
                          (let ((_%tl9597796076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9597596069%_)))
                                (_%hd9597696073%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9597596069%_))))
                            (if (gx#stx-pair? _%tl9597796076%_)
                                (let ((_%e9597896079%_
                                       (gx#syntax-e _%tl9597796076%_)))
                                  (let ((_%tl9598096086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9597896079%_)))
                                        (_%hd9597996083%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9597896079%_))))
                                    (if (gx#stx-null? _%tl9598096086%_)
                                        (_%__match102439102440%_
                                         _%e9597296059%_
                                         _%hd9597396063%_
                                         _%tl9597496066%_
                                         _%e9597596069%_
                                         _%hd9597696073%_
                                         _%tl9597796076%_
                                         _%e9597896079%_
                                         _%hd9597996083%_
                                         _%tl9598096086%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9596895997%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9596895997%_)))))
                        (let () (declare (not safe)) (_%g9596895997%_)))))
                (let () (declare (not safe)) (_%g9596895997%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx96114%_)
      (let* ((_%g9611796138%_
              (lambda (_%g9611896134%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9611896134%_)))
             (_%g9611696366%_
              (lambda (_%g9611896142%_)
                (if (gx#stx-pair? _%g9611896142%_)
                    (let ((_%e9612196145%_ (gx#syntax-e _%g9611896142%_)))
                      (let ((_%hd9612296149%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9612196145%_)))
                            (_%tl9612396152%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9612196145%_))))
                        (if (gx#stx-pair? _%tl9612396152%_)
                            (let ((_%e9612496155%_
                                   (gx#syntax-e _%tl9612396152%_)))
                              (let ((_%hd9612596159%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9612496155%_)))
                                    (_%tl9612696162%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9612496155%_))))
                                (if (gx#stx-pair? _%hd9612596159%_)
                                    (let ((_%e9612796165%_
                                           (gx#syntax-e _%hd9612596159%_)))
                                      (let ((_%hd9612896169%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9612796165%_)))
                                            (_%tl9612996172%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9612796165%_))))
                                        (if (gx#stx-pair? _%tl9612996172%_)
                                            (let ((_%e9613096175%_
                                                   (gx#syntax-e
                                                    _%tl9612996172%_)))
                                              (let ((_%hd9613196179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9613096175%_)))
                                                    (_%tl9613296182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9613096175%_))))
                                                (if (gx#stx-null?
                                                     _%tl9613296182%_)
                                                    (if (gx#stx-null?
                                                         _%tl9612696162%_)
                                                        ((lambda (_%L96185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L96187%_)
                   (let* ((_%g9620596213%_
                           (lambda (_%g9620696209%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9620696209%_)))
                          (_%g9620496362%_
                           (lambda (_%g9620696217%_)
                             ((lambda (_%L96220%_)
                                (let* ((_%g9623296240%_
                                        (lambda (_%g9623396236%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9623396236%_)))
                                       (_%g9623196358%_
                                        (lambda (_%g9623396244%_)
                                          ((lambda (_%L96247%_)
                                             (let* ((_%g9626096268%_
                                                     (lambda (_%g9626196264%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9626196264%_)))
                                                    (_%g9625996354%_
                                                     (lambda (_%g9626196272%_)
                                                       ((lambda (_%L96275%_)
                                                          (let* ((_%g9628896296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9628996292%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9628996292%_)))
                         (_%g9628796350%_
                          (lambda (_%g9628996300%_)
                            ((lambda (_%L96303%_)
                               (let* ((_%g9631696324%_
                                       (lambda (_%g9631796320%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9631796320%_)))
                                      (_%g9631596346%_
                                       (lambda (_%g9631796328%_)
                                         ((lambda (_%L96331%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L96247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L96220%_
                                                          (cons _%L96187%_
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
                                          (cons _%L96185%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L96187%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L96275%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L96220%_
                                                                (cons _%L96187%_
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
                                                (cons _%L96185%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L96187%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L96303%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L96220%_ (cons _%L96187%_ (cons '#t '()))))
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
                                                            (cons _%L96185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L96187%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L96331%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L96220%_
                                    (cons _%L96187%_ (cons '#f '()))))
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
                          (cons _%L96185%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L96187%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9631796328%_))))
                                 (_%g9631596346%_
                                  (gx#stx-identifier
                                   _%L96187%_
                                   '"&"
                                   _%L96303%_))))
                             _%g9628996300%_))))
                    (_%g9628796350%_
                     (gx#stx-identifier _%L96187%_ _%L96247%_ '"-set!"))))
                _%g9626196272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9625996354%_
                                                (gx#stx-identifier
                                                 _%L96187%_
                                                 '"&"
                                                 _%L96247%_))))
                                           _%g9623396244%_))))
                                  (_%g9623196358%_
                                   (gx#stx-identifier
                                    _%L96187%_
                                    '"class-type-"
                                    _%L96187%_))))
                              _%g9620696217%_))))
                     (_%g9620496362%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9613196179%_
                 _%hd9612896169%_)
                (_%g9611796138%_ _%g9611896142%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9611796138%_
                                                     _%g9611896142%_))))
                                            (_%g9611796138%_
                                             _%g9611896142%_))))
                                    (_%g9611796138%_ _%g9611896142%_))))
                            (_%g9611796138%_ _%g9611896142%_))))
                    (_%g9611796138%_ _%g9611896142%_)))))
        (_%g9611696366%_ _%stx96114%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx96370%_)
      (let* ((_%g9637496403%_
              (lambda (_%g9637596399%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9637596399%_)))
             (_%g9637396503%_
              (lambda (_%g9637596407%_)
                (if (gx#stx-pair? _%g9637596407%_)
                    (let ((_%e9637896410%_ (gx#syntax-e _%g9637596407%_)))
                      (let ((_%hd9637996414%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9637896410%_)))
                            (_%tl9638096417%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9637896410%_))))
                        (if (gx#stx-pair/null? _%tl9638096417%_)
                            (let ((_g102651_
                                   (gx#syntax-split-splice
                                    _%tl9638096417%_
                                    '0)))
                              (begin
                                (let ((_g102652_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102651_)
                                             (##values-length _g102651_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102652_ 2)))
                                      (error "Context expects 2 values"
                                             _g102652_)))
                                (let ((_%target9638196420%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102651_ 0)))
                                      (_%tl9638396423%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102651_ 1))))
                                  (if (gx#stx-null? _%tl9638396423%_)
                                      (letrec ((_%loop9638496426%_
                                                (lambda (_%hd9638296430%_
                                                         _%field9638896433%_
                                                         _%slot9638996435%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9638296430%_)
                                                      (let ((_%e9638596438%_
                                                             (gx#syntax-e
                                                              _%hd9638296430%_)))
                                                        (let ((_%lp-hd9638696442%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9638596438%_)))
                      (_%lp-tl9638796445%_
                       (let () (declare (not safe)) (##cdr _%e9638596438%_))))
                  (if (gx#stx-pair? _%lp-hd9638696442%_)
                      (let ((_%e9639296448%_
                             (gx#syntax-e _%lp-hd9638696442%_)))
                        (let ((_%hd9639396452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9639296448%_)))
                              (_%tl9639496455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9639296448%_))))
                          (if (gx#stx-pair? _%tl9639496455%_)
                              (let ((_%e9639596458%_
                                     (gx#syntax-e _%tl9639496455%_)))
                                (let ((_%hd9639696462%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9639596458%_)))
                                      (_%tl9639796465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9639596458%_))))
                                  (if (gx#stx-null? _%tl9639796465%_)
                                      (_%loop9638496426%_
                                       _%lp-tl9638796445%_
                                       (cons _%hd9639696462%_
                                             _%field9638896433%_)
                                       (cons _%hd9639396452%_
                                             _%slot9638996435%_))
                                      (_%g9637496403%_ _%g9637596407%_))))
                              (_%g9637496403%_ _%g9637596407%_))))
                      (_%g9637496403%_ _%g9637596407%_))))
              (let ((_%field9639096468%_ (reverse _%field9638896433%_))
                    (_%slot9639196471%_ (reverse _%slot9638996435%_)))
                ((lambda (_%L96474%_ _%L96476%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96474%_
                            _%L96476%_)
                           (let ((__tmp102653
                                  (lambda (_%g9649196495%_
                                           _%g9649296498%_
                                           _%g9649396500%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9649296498%_
                                                            (cons _%g9649196495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9649396500%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102653
                              '()
                              _%L96474%_
                              _%L96476%_)))))
                 _%field9639096468%_
                 _%slot9639196471%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9638496426%_
                                         _%target9638196420%_
                                         '()
                                         '()))
                                      (_%g9637496403%_ _%g9637596407%_)))))
                            (_%g9637496403%_ _%g9637596407%_))))
                    (_%g9637496403%_ _%g9637596407%_)))))
        (_%g9637396503%_ _%$stx96370%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx96508%_)
      (let* ((_%g9651296546%_
              (lambda (_%g9651396542%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9651396542%_)))
             (_%g9651196657%_
              (lambda (_%g9651396550%_)
                (if (gx#stx-pair? _%g9651396550%_)
                    (let ((_%e9652096553%_ (gx#syntax-e _%g9651396550%_)))
                      (let ((_%hd9652196557%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9652096553%_)))
                            (_%tl9652296560%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9652096553%_))))
                        (if (gx#stx-pair? _%tl9652296560%_)
                            (let ((_%e9652396563%_
                                   (gx#syntax-e _%tl9652296560%_)))
                              (let ((_%hd9652496567%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9652396563%_)))
                                    (_%tl9652596570%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9652396563%_))))
                                (if (gx#stx-pair? _%tl9652596570%_)
                                    (let ((_%e9652696573%_
                                           (gx#syntax-e _%tl9652596570%_)))
                                      (let ((_%hd9652796577%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9652696573%_)))
                                            (_%tl9652896580%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9652696573%_))))
                                        (if (gx#stx-pair? _%tl9652896580%_)
                                            (let ((_%e9652996583%_
                                                   (gx#syntax-e
                                                    _%tl9652896580%_)))
                                              (let ((_%hd9653096587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9652996583%_)))
                                                    (_%tl9653196590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9652996583%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9653196590%_)
                                                    (let ((_%e9653296593%_
                                                           (gx#syntax-e
                                                            _%tl9653196590%_)))
                                                      (let ((_%hd9653396597%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9653296593%_)))
                    (_%tl9653496600%_
                     (let () (declare (not safe)) (##cdr _%e9653296593%_))))
                (if (gx#stx-pair? _%tl9653496600%_)
                    (let ((_%e9653596603%_ (gx#syntax-e _%tl9653496600%_)))
                      (let ((_%hd9653696607%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9653596603%_)))
                            (_%tl9653796610%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9653596603%_))))
                        (if (gx#stx-pair? _%tl9653796610%_)
                            (let ((_%e9653896613%_
                                   (gx#syntax-e _%tl9653796610%_)))
                              (let ((_%hd9653996617%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9653896613%_)))
                                    (_%tl9654096620%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9653896613%_))))
                                (if (gx#stx-null? _%tl9654096620%_)
                                    ((lambda (_%L96623%_
                                              _%L96625%_
                                              _%L96626%_
                                              _%L96627%_
                                              _%L96628%_
                                              _%L96629%_)
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
                                         (cons _%L96629%_ '()))
                                   (cons _%L96628%_ (cons '#f '()))))
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
                               (cons _%L96629%_
                                     (cons 'slot: (cons _%L96628%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L96629%_ '()))
                                         (cons (cons _%L96627%_
                                                     (cons _%L96629%_
                                                           (cons _%L96628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L96629%_ '()))
                                               (cons (cons _%L96626%_
                                                           (cons _%L96629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96628%_
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
                                           (cons _%L96629%_ '()))
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
                                                     (cons (cons _%L96625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96629%_
                               (cons _%L96628%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L96623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L96629%_
                                     (cons _%L96628%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9653996617%_
                                     _%hd9653696607%_
                                     _%hd9653396597%_
                                     _%hd9653096587%_
                                     _%hd9652796577%_
                                     _%hd9652496567%_)
                                    (_%g9651296546%_ _%g9651396550%_))))
                            (_%g9651296546%_ _%g9651396550%_))))
                    (_%g9651296546%_ _%g9651396550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9651296546%_
                                                     _%g9651396550%_))))
                                            (_%g9651296546%_
                                             _%g9651396550%_))))
                                    (_%g9651296546%_ _%g9651396550%_))))
                            (_%g9651296546%_ _%g9651396550%_))))
                    (_%g9651296546%_ _%g9651396550%_)))))
        (_%g9651196657%_ _%$stx96508%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx96661%_)
      (let* ((_%g9666596691%_
              (lambda (_%g9666696687%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9666696687%_)))
             (_%g9666496774%_
              (lambda (_%g9666696695%_)
                (if (gx#stx-pair? _%g9666696695%_)
                    (let ((_%e9667196698%_ (gx#syntax-e _%g9666696695%_)))
                      (let ((_%hd9667296702%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9667196698%_)))
                            (_%tl9667396705%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9667196698%_))))
                        (if (gx#stx-pair? _%tl9667396705%_)
                            (let ((_%e9667496708%_
                                   (gx#syntax-e _%tl9667396705%_)))
                              (let ((_%hd9667596712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9667496708%_)))
                                    (_%tl9667696715%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9667496708%_))))
                                (if (gx#stx-pair? _%tl9667696715%_)
                                    (let ((_%e9667796718%_
                                           (gx#syntax-e _%tl9667696715%_)))
                                      (let ((_%hd9667896722%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9667796718%_)))
                                            (_%tl9667996725%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9667796718%_))))
                                        (if (gx#stx-pair? _%tl9667996725%_)
                                            (let ((_%e9668096728%_
                                                   (gx#syntax-e
                                                    _%tl9667996725%_)))
                                              (let ((_%hd9668196732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9668096728%_)))
                                                    (_%tl9668296735%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9668096728%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9668296735%_)
                                                    (let ((_%e9668396738%_
                                                           (gx#syntax-e
                                                            _%tl9668296735%_)))
                                                      (let ((_%hd9668496742%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9668396738%_)))
                    (_%tl9668596745%_
                     (let () (declare (not safe)) (##cdr _%e9668396738%_))))
                (if (gx#stx-null? _%tl9668596745%_)
                    ((lambda (_%L96748%_ _%L96750%_ _%L96751%_ _%L96752%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L96752%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L96751%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L96750%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L96748%_
                                     (cons _%L96752%_ (cons _%L96751%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9668496742%_
                     _%hd9668196732%_
                     _%hd9667896722%_
                     _%hd9667596712%_)
                    (_%g9666596691%_ _%g9666696695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9666596691%_
                                                     _%g9666696695%_))))
                                            (_%g9666596691%_
                                             _%g9666696695%_))))
                                    (_%g9666596691%_ _%g9666696695%_))))
                            (_%g9666596691%_ _%g9666696695%_))))
                    (_%g9666596691%_ _%g9666696695%_)))))
        (_%g9666496774%_ _%$stx96661%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx96778%_)
      (let* ((_%g9678296811%_
              (lambda (_%g9678396807%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9678396807%_)))
             (_%g9678196911%_
              (lambda (_%g9678396815%_)
                (if (gx#stx-pair? _%g9678396815%_)
                    (let ((_%e9678696818%_ (gx#syntax-e _%g9678396815%_)))
                      (let ((_%hd9678796822%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9678696818%_)))
                            (_%tl9678896825%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9678696818%_))))
                        (if (gx#stx-pair/null? _%tl9678896825%_)
                            (let ((_g102654_
                                   (gx#syntax-split-splice
                                    _%tl9678896825%_
                                    '0)))
                              (begin
                                (let ((_g102655_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102654_)
                                             (##values-length _g102654_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102655_ 2)))
                                      (error "Context expects 2 values"
                                             _g102655_)))
                                (let ((_%target9678996828%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102654_ 0)))
                                      (_%tl9679196831%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102654_ 1))))
                                  (if (gx#stx-null? _%tl9679196831%_)
                                      (letrec ((_%loop9679296834%_
                                                (lambda (_%hd9679096838%_
                                                         _%name9679696841%_
                                                         _%t9679796843%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9679096838%_)
                                                      (let ((_%e9679396846%_
                                                             (gx#syntax-e
                                                              _%hd9679096838%_)))
                                                        (let ((_%lp-hd9679496850%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9679396846%_)))
                      (_%lp-tl9679596853%_
                       (let () (declare (not safe)) (##cdr _%e9679396846%_))))
                  (if (gx#stx-pair? _%lp-hd9679496850%_)
                      (let ((_%e9680096856%_
                             (gx#syntax-e _%lp-hd9679496850%_)))
                        (let ((_%hd9680196860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9680096856%_)))
                              (_%tl9680296863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9680096856%_))))
                          (if (gx#stx-pair? _%tl9680296863%_)
                              (let ((_%e9680396866%_
                                     (gx#syntax-e _%tl9680296863%_)))
                                (let ((_%hd9680496870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9680396866%_)))
                                      (_%tl9680596873%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9680396866%_))))
                                  (if (gx#stx-null? _%tl9680596873%_)
                                      (_%loop9679296834%_
                                       _%lp-tl9679596853%_
                                       (cons _%hd9680496870%_
                                             _%name9679696841%_)
                                       (cons _%hd9680196860%_ _%t9679796843%_))
                                      (_%g9678296811%_ _%g9678396815%_))))
                              (_%g9678296811%_ _%g9678396815%_))))
                      (_%g9678296811%_ _%g9678396815%_))))
              (let ((_%name9679896876%_ (reverse _%name9679696841%_))
                    (_%t9679996879%_ (reverse _%t9679796843%_)))
                ((lambda (_%L96882%_ _%L96884%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96882%_
                            _%L96884%_)
                           (let ((__tmp102656
                                  (lambda (_%g9689996903%_
                                           _%g9690096906%_
                                           _%g9690196908%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9690096906%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9689996903%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9690196908%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102656
                              '()
                              _%L96882%_
                              _%L96884%_)))))
                 _%name9679896876%_
                 _%t9679996879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9679296834%_
                                         _%target9678996828%_
                                         '()
                                         '()))
                                      (_%g9678296811%_ _%g9678396815%_)))))
                            (_%g9678296811%_ _%g9678396815%_))))
                    (_%g9678296811%_ _%g9678396815%_)))))
        (_%g9678196911%_ _%$stx96778%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx96916%_)
      (let* ((_%g9692096951%_
              (lambda (_%g9692196947%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9692196947%_)))
             (_%g9691997070%_
              (lambda (_%g9692196955%_)
                (if (gx#stx-pair? _%g9692196955%_)
                    (let ((_%e9692596958%_ (gx#syntax-e _%g9692196955%_)))
                      (let ((_%hd9692696962%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9692596958%_)))
                            (_%tl9692796965%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9692596958%_))))
                        (if (gx#stx-pair? _%tl9692796965%_)
                            (let ((_%e9692896968%_
                                   (gx#syntax-e _%tl9692796965%_)))
                              (let ((_%hd9692996972%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9692896968%_)))
                                    (_%tl9693096975%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9692896968%_))))
                                (if (gx#stx-pair? _%tl9693096975%_)
                                    (let ((_%e9693196978%_
                                           (gx#syntax-e _%tl9693096975%_)))
                                      (let ((_%hd9693296982%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9693196978%_)))
                                            (_%tl9693396985%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9693196978%_))))
                                        (if (gx#stx-pair? _%tl9693396985%_)
                                            (let ((_%e9693496988%_
                                                   (gx#syntax-e
                                                    _%tl9693396985%_)))
                                              (let ((_%hd9693596992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9693496988%_)))
                                                    (_%tl9693696995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9693496988%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9693596992%_)
                                                    (let ((_g102657_
                                                           (gx#syntax-split-splice
                                                            _%hd9693596992%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102658_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102657_)
                             (##values-length _g102657_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102658_ 2)))
                      (error "Context expects 2 values" _g102658_)))
                (let ((_%target9693796998%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102657_ 0)))
                      (_%tl9693997001%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102657_ 1))))
                  (if (gx#stx-null? _%tl9693997001%_)
                      (letrec ((_%loop9694097004%_
                                (lambda (_%hd9693897008%_ _%super9694497011%_)
                                  (if (gx#stx-pair? _%hd9693897008%_)
                                      (let ((_%e9694197014%_
                                             (gx#syntax-e _%hd9693897008%_)))
                                        (let ((_%lp-hd9694297018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9694197014%_)))
                                              (_%lp-tl9694397021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9694197014%_))))
                                          (_%loop9694097004%_
                                           _%lp-tl9694397021%_
                                           (cons _%lp-hd9694297018%_
                                                 _%super9694497011%_))))
                                      (let ((_%super9694597024%_
                                             (reverse _%super9694497011%_)))
                                        (if (gx#stx-null? _%tl9693696995%_)
                                            ((lambda (_%L97028%_
                                                      _%L97030%_
                                                      _%L97031%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97031%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97030%_
                                                 (cons (let ((__tmp102659
                                                              (lambda (_%g9705597058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9705697061%_)
                        (cons _%g9705597058%_ _%g9705697061%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102659 '() _%L97028%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L97030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp102660
                                  (lambda (_%g9705397064%_ _%g9705497067%_)
                                    (cons _%g9705397064%_ _%g9705497067%_))))
                             (declare (not safe))
                             (__foldr1 __tmp102660 '() _%L97028%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9694597024%_
                                             _%hd9693296982%_
                                             _%hd9692996972%_)
                                            (_%g9692096951%_
                                             _%g9692196955%_)))))))
                        (_%loop9694097004%_ _%target9693796998%_ '()))
                      (_%g9692096951%_ _%g9692196955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9692096951%_
                                                     _%g9692196955%_))))
                                            (_%g9692096951%_
                                             _%g9692196955%_))))
                                    (_%g9692096951%_ _%g9692196955%_))))
                            (_%g9692096951%_ _%g9692196955%_))))
                    (_%g9692096951%_ _%g9692196955%_)))))
        (_%g9691997070%_ _%$stx96916%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx97075%_)
      (let* ((_%g9707997110%_
              (lambda (_%g9708097106%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9708097106%_)))
             (_%g9707897221%_
              (lambda (_%g9708097114%_)
                (if (gx#stx-pair? _%g9708097114%_)
                    (let ((_%e9708497117%_ (gx#syntax-e _%g9708097114%_)))
                      (let ((_%hd9708597121%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9708497117%_)))
                            (_%tl9708697124%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9708497117%_))))
                        (if (gx#stx-pair? _%tl9708697124%_)
                            (let ((_%e9708797127%_
                                   (gx#syntax-e _%tl9708697124%_)))
                              (let ((_%hd9708897131%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9708797127%_)))
                                    (_%tl9708997134%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9708797127%_))))
                                (if (gx#stx-pair? _%tl9708997134%_)
                                    (let ((_%e9709097137%_
                                           (gx#syntax-e _%tl9708997134%_)))
                                      (let ((_%hd9709197141%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9709097137%_)))
                                            (_%tl9709297144%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9709097137%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9709197141%_)
                                            (let ((_g102661_
                                                   (gx#syntax-split-splice
                                                    _%hd9709197141%_
                                                    '0)))
                                              (begin
                                                (let ((_g102662_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g102661_)
                                                             (##values-length
                                                              _g102661_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g102662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g102662_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9709397147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102661_
                                                          0)))
                                                      (_%tl9709597150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102661_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9709597150%_)
                                                      (letrec ((_%loop9709697153%_
                                                                (lambda (_%hd9709497157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9710097160%_)
                          (if (gx#stx-pair? _%hd9709497157%_)
                              (let ((_%e9709797163%_
                                     (gx#syntax-e _%hd9709497157%_)))
                                (let ((_%lp-hd9709897167%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9709797163%_)))
                                      (_%lp-tl9709997170%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9709797163%_))))
                                  (_%loop9709697153%_
                                   _%lp-tl9709997170%_
                                   (cons _%lp-hd9709897167%_
                                         _%super9710097160%_))))
                              (let ((_%super9710197173%_
                                     (reverse _%super9710097160%_)))
                                (if (gx#stx-pair? _%tl9709297144%_)
                                    (let ((_%e9710297177%_
                                           (gx#syntax-e _%tl9709297144%_)))
                                      (let ((_%hd9710397181%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9710297177%_)))
                                            (_%tl9710497184%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9710297177%_))))
                                        (if (gx#stx-null? _%tl9710497184%_)
                                            ((lambda (_%L97187%_
                                                      _%L97189%_
                                                      _%L97190%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97190%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97190%_
                                                 (cons (let ((__tmp102663
                                                              (lambda (_%g9721297215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9721397218%_)
                        (cons _%g9721297215%_ _%g9721397218%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102663 '() _%L97189%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L97187%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9710397181%_
                                             _%super9710197173%_
                                             _%hd9708897131%_)
                                            (_%g9707997110%_
                                             _%g9708097114%_))))
                                    (_%g9707997110%_ _%g9708097114%_)))))))
                (_%loop9709697153%_ _%target9709397147%_ '()))
              (_%g9707997110%_ _%g9708097114%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9707997110%_
                                             _%g9708097114%_))))
                                    (_%g9707997110%_ _%g9708097114%_))))
                            (_%g9707997110%_ _%g9708097114%_))))
                    (_%g9707997110%_ _%g9708097114%_)))))
        (_%g9707897221%_ _%$stx97075%_)))))
