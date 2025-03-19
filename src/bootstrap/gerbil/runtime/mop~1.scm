(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx95858%_)
      (let* ((_%__stx102416102417%_ _%$stx95858%_)
             (_%g9586395892%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102416102417%_))))
        (let ((_%__kont102419102420%_
               (lambda (_%L95985%_ _%L95987%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L95987%_ (cons _%L95985%_ '())))
                             (cons _%L95985%_ '())))))
              (_%__kont102421102422%_
               (lambda (_%L95929%_ _%L95931%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95929%_ (cons _%L95929%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95931%_
                                                           (cons _%L95929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L95929%_ '())))
                                   '()))))))
          (let ((_%__match102443102444%_
                 (lambda (_%e9586795955%_
                          _%hd9586895959%_
                          _%tl9586995962%_
                          _%e9587095965%_
                          _%hd9587195969%_
                          _%tl9587295972%_
                          _%e9587395975%_
                          _%hd9587495979%_
                          _%tl9587595982%_)
                   (let ((_%L95985%_ _%hd9587495979%_)
                         (_%L95987%_ _%hd9587195969%_))
                     (if (or (gx#identifier? _%L95985%_)
                             (gx#stx-fixnum? _%L95985%_))
                         (_%__kont102419102420%_ _%L95985%_ _%L95987%_)
                         (_%__kont102421102422%_
                          _%hd9587495979%_
                          _%hd9587195969%_))))))
            (if (gx#stx-pair? _%__stx102416102417%_)
                (let ((_%e9586795955%_ (gx#syntax-e _%__stx102416102417%_)))
                  (let ((_%tl9586995962%_
                         (let () (declare (not safe)) (##cdr _%e9586795955%_)))
                        (_%hd9586895959%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9586795955%_))))
                    (if (gx#stx-pair? _%tl9586995962%_)
                        (let ((_%e9587095965%_ (gx#syntax-e _%tl9586995962%_)))
                          (let ((_%tl9587295972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9587095965%_)))
                                (_%hd9587195969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9587095965%_))))
                            (if (gx#stx-pair? _%tl9587295972%_)
                                (let ((_%e9587395975%_
                                       (gx#syntax-e _%tl9587295972%_)))
                                  (let ((_%tl9587595982%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9587395975%_)))
                                        (_%hd9587495979%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9587395975%_))))
                                    (if (gx#stx-null? _%tl9587595982%_)
                                        (_%__match102443102444%_
                                         _%e9586795955%_
                                         _%hd9586895959%_
                                         _%tl9586995962%_
                                         _%e9587095965%_
                                         _%hd9587195969%_
                                         _%tl9587295972%_
                                         _%e9587395975%_
                                         _%hd9587495979%_
                                         _%tl9587595982%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9586395892%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9586395892%_)))))
                        (let () (declare (not safe)) (_%g9586395892%_)))))
                (let () (declare (not safe)) (_%g9586395892%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx96010%_)
      (let* ((_%__stx102466102467%_ _%$stx96010%_)
             (_%g9601596044%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102466102467%_))))
        (let ((_%__kont102469102470%_
               (lambda (_%L96136%_ _%L96138%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L96138%_ (cons _%L96136%_ '())))
                             (cons '0 '())))))
              (_%__kont102471102472%_
               (lambda (_%L96081%_ _%L96083%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L96081%_ (cons _%L96081%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L96083%_
                                                           (cons _%L96081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match102493102494%_
                 (lambda (_%e9601996106%_
                          _%hd9602096110%_
                          _%tl9602196113%_
                          _%e9602296116%_
                          _%hd9602396120%_
                          _%tl9602496123%_
                          _%e9602596126%_
                          _%hd9602696130%_
                          _%tl9602796133%_)
                   (let ((_%L96136%_ _%hd9602696130%_)
                         (_%L96138%_ _%hd9602396120%_))
                     (if (or (gx#identifier? _%L96136%_)
                             (gx#stx-fixnum? _%L96136%_))
                         (_%__kont102469102470%_ _%L96136%_ _%L96138%_)
                         (_%__kont102471102472%_
                          _%hd9602696130%_
                          _%hd9602396120%_))))))
            (if (gx#stx-pair? _%__stx102466102467%_)
                (let ((_%e9601996106%_ (gx#syntax-e _%__stx102466102467%_)))
                  (let ((_%tl9602196113%_
                         (let () (declare (not safe)) (##cdr _%e9601996106%_)))
                        (_%hd9602096110%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9601996106%_))))
                    (if (gx#stx-pair? _%tl9602196113%_)
                        (let ((_%e9602296116%_ (gx#syntax-e _%tl9602196113%_)))
                          (let ((_%tl9602496123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9602296116%_)))
                                (_%hd9602396120%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9602296116%_))))
                            (if (gx#stx-pair? _%tl9602496123%_)
                                (let ((_%e9602596126%_
                                       (gx#syntax-e _%tl9602496123%_)))
                                  (let ((_%tl9602796133%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9602596126%_)))
                                        (_%hd9602696130%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9602596126%_))))
                                    (if (gx#stx-null? _%tl9602796133%_)
                                        (_%__match102493102494%_
                                         _%e9601996106%_
                                         _%hd9602096110%_
                                         _%tl9602196113%_
                                         _%e9602296116%_
                                         _%hd9602396120%_
                                         _%tl9602496123%_
                                         _%e9602596126%_
                                         _%hd9602696130%_
                                         _%tl9602796133%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9601596044%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9601596044%_)))))
                        (let () (declare (not safe)) (_%g9601596044%_)))))
                (let () (declare (not safe)) (_%g9601596044%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx96161%_)
      (let* ((_%g9616496185%_
              (lambda (_%g9616596181%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9616596181%_)))
             (_%g9616396413%_
              (lambda (_%g9616596189%_)
                (if (gx#stx-pair? _%g9616596189%_)
                    (let ((_%e9616896192%_ (gx#syntax-e _%g9616596189%_)))
                      (let ((_%hd9616996196%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9616896192%_)))
                            (_%tl9617096199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9616896192%_))))
                        (if (gx#stx-pair? _%tl9617096199%_)
                            (let ((_%e9617196202%_
                                   (gx#syntax-e _%tl9617096199%_)))
                              (let ((_%hd9617296206%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9617196202%_)))
                                    (_%tl9617396209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9617196202%_))))
                                (if (gx#stx-pair? _%hd9617296206%_)
                                    (let ((_%e9617496212%_
                                           (gx#syntax-e _%hd9617296206%_)))
                                      (let ((_%hd9617596216%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9617496212%_)))
                                            (_%tl9617696219%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9617496212%_))))
                                        (if (gx#stx-pair? _%tl9617696219%_)
                                            (let ((_%e9617796222%_
                                                   (gx#syntax-e
                                                    _%tl9617696219%_)))
                                              (let ((_%hd9617896226%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9617796222%_)))
                                                    (_%tl9617996229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9617796222%_))))
                                                (if (gx#stx-null?
                                                     _%tl9617996229%_)
                                                    (if (gx#stx-null?
                                                         _%tl9617396209%_)
                                                        ((lambda (_%L96232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L96234%_)
                   (let* ((_%g9625296260%_
                           (lambda (_%g9625396256%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9625396256%_)))
                          (_%g9625196409%_
                           (lambda (_%g9625396264%_)
                             ((lambda (_%L96267%_)
                                (let* ((_%g9627996287%_
                                        (lambda (_%g9628096283%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9628096283%_)))
                                       (_%g9627896405%_
                                        (lambda (_%g9628096291%_)
                                          ((lambda (_%L96294%_)
                                             (let* ((_%g9630796315%_
                                                     (lambda (_%g9630896311%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9630896311%_)))
                                                    (_%g9630696401%_
                                                     (lambda (_%g9630896319%_)
                                                       ((lambda (_%L96322%_)
                                                          (let* ((_%g9633596343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9633696339%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9633696339%_)))
                         (_%g9633496397%_
                          (lambda (_%g9633696347%_)
                            ((lambda (_%L96350%_)
                               (let* ((_%g9636396371%_
                                       (lambda (_%g9636496367%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9636496367%_)))
                                      (_%g9636296393%_
                                       (lambda (_%g9636496375%_)
                                         ((lambda (_%L96378%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L96294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L96267%_
                                                          (cons _%L96234%_
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
                                          (cons _%L96232%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L96234%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L96322%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L96267%_
                                                                (cons _%L96234%_
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
                                                (cons _%L96232%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L96234%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L96350%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L96267%_ (cons _%L96234%_ (cons '#t '()))))
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
                                                            (cons _%L96232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L96234%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L96378%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L96267%_
                                    (cons _%L96234%_ (cons '#f '()))))
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
                          (cons _%L96232%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L96234%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9636496375%_))))
                                 (_%g9636296393%_
                                  (gx#stx-identifier
                                   _%L96234%_
                                   '"&"
                                   _%L96350%_))))
                             _%g9633696347%_))))
                    (_%g9633496397%_
                     (gx#stx-identifier _%L96234%_ _%L96294%_ '"-set!"))))
                _%g9630896319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9630696401%_
                                                (gx#stx-identifier
                                                 _%L96234%_
                                                 '"&"
                                                 _%L96294%_))))
                                           _%g9628096291%_))))
                                  (_%g9627896405%_
                                   (gx#stx-identifier
                                    _%L96234%_
                                    '"class-type-"
                                    _%L96234%_))))
                              _%g9625396264%_))))
                     (_%g9625196409%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9617896226%_
                 _%hd9617596216%_)
                (_%g9616496185%_ _%g9616596189%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9616496185%_
                                                     _%g9616596189%_))))
                                            (_%g9616496185%_
                                             _%g9616596189%_))))
                                    (_%g9616496185%_ _%g9616596189%_))))
                            (_%g9616496185%_ _%g9616596189%_))))
                    (_%g9616496185%_ _%g9616596189%_)))))
        (_%g9616396413%_ _%stx96161%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx96417%_)
      (let* ((_%g9642196450%_
              (lambda (_%g9642296446%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9642296446%_)))
             (_%g9642096550%_
              (lambda (_%g9642296454%_)
                (if (gx#stx-pair? _%g9642296454%_)
                    (let ((_%e9642596457%_ (gx#syntax-e _%g9642296454%_)))
                      (let ((_%hd9642696461%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9642596457%_)))
                            (_%tl9642796464%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9642596457%_))))
                        (if (gx#stx-pair/null? _%tl9642796464%_)
                            (let ((_g102703_
                                   (gx#syntax-split-splice
                                    _%tl9642796464%_
                                    '0)))
                              (begin
                                (let ((_g102704_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102703_)
                                             (##values-length _g102703_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102704_ 2)))
                                      (error "Context expects 2 values"
                                             _g102704_)))
                                (let ((_%target9642896467%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102703_ 0)))
                                      (_%tl9643096470%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102703_ 1))))
                                  (if (gx#stx-null? _%tl9643096470%_)
                                      (letrec ((_%loop9643196473%_
                                                (lambda (_%hd9642996477%_
                                                         _%field9643596480%_
                                                         _%slot9643696482%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9642996477%_)
                                                      (let ((_%e9643296485%_
                                                             (gx#syntax-e
                                                              _%hd9642996477%_)))
                                                        (let ((_%lp-hd9643396489%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9643296485%_)))
                      (_%lp-tl9643496492%_
                       (let () (declare (not safe)) (##cdr _%e9643296485%_))))
                  (if (gx#stx-pair? _%lp-hd9643396489%_)
                      (let ((_%e9643996495%_
                             (gx#syntax-e _%lp-hd9643396489%_)))
                        (let ((_%hd9644096499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9643996495%_)))
                              (_%tl9644196502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9643996495%_))))
                          (if (gx#stx-pair? _%tl9644196502%_)
                              (let ((_%e9644296505%_
                                     (gx#syntax-e _%tl9644196502%_)))
                                (let ((_%hd9644396509%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9644296505%_)))
                                      (_%tl9644496512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9644296505%_))))
                                  (if (gx#stx-null? _%tl9644496512%_)
                                      (_%loop9643196473%_
                                       _%lp-tl9643496492%_
                                       (cons _%hd9644396509%_
                                             _%field9643596480%_)
                                       (cons _%hd9644096499%_
                                             _%slot9643696482%_))
                                      (_%g9642196450%_ _%g9642296454%_))))
                              (_%g9642196450%_ _%g9642296454%_))))
                      (_%g9642196450%_ _%g9642296454%_))))
              (let ((_%field9643796515%_ (reverse _%field9643596480%_))
                    (_%slot9643896518%_ (reverse _%slot9643696482%_)))
                ((lambda (_%L96521%_ _%L96523%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96521%_
                            _%L96523%_)
                           (let ((__tmp102705
                                  (lambda (_%g9653896542%_
                                           _%g9653996545%_
                                           _%g9654096547%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9653996545%_
                                                            (cons _%g9653896542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9654096547%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102705
                              '()
                              _%L96521%_
                              _%L96523%_)))))
                 _%field9643796515%_
                 _%slot9643896518%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9643196473%_
                                         _%target9642896467%_
                                         '()
                                         '()))
                                      (_%g9642196450%_ _%g9642296454%_)))))
                            (_%g9642196450%_ _%g9642296454%_))))
                    (_%g9642196450%_ _%g9642296454%_)))))
        (_%g9642096550%_ _%$stx96417%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx96555%_)
      (let* ((_%g9655996593%_
              (lambda (_%g9656096589%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9656096589%_)))
             (_%g9655896704%_
              (lambda (_%g9656096597%_)
                (if (gx#stx-pair? _%g9656096597%_)
                    (let ((_%e9656796600%_ (gx#syntax-e _%g9656096597%_)))
                      (let ((_%hd9656896604%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9656796600%_)))
                            (_%tl9656996607%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9656796600%_))))
                        (if (gx#stx-pair? _%tl9656996607%_)
                            (let ((_%e9657096610%_
                                   (gx#syntax-e _%tl9656996607%_)))
                              (let ((_%hd9657196614%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9657096610%_)))
                                    (_%tl9657296617%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9657096610%_))))
                                (if (gx#stx-pair? _%tl9657296617%_)
                                    (let ((_%e9657396620%_
                                           (gx#syntax-e _%tl9657296617%_)))
                                      (let ((_%hd9657496624%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9657396620%_)))
                                            (_%tl9657596627%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9657396620%_))))
                                        (if (gx#stx-pair? _%tl9657596627%_)
                                            (let ((_%e9657696630%_
                                                   (gx#syntax-e
                                                    _%tl9657596627%_)))
                                              (let ((_%hd9657796634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9657696630%_)))
                                                    (_%tl9657896637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9657696630%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9657896637%_)
                                                    (let ((_%e9657996640%_
                                                           (gx#syntax-e
                                                            _%tl9657896637%_)))
                                                      (let ((_%hd9658096644%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9657996640%_)))
                    (_%tl9658196647%_
                     (let () (declare (not safe)) (##cdr _%e9657996640%_))))
                (if (gx#stx-pair? _%tl9658196647%_)
                    (let ((_%e9658296650%_ (gx#syntax-e _%tl9658196647%_)))
                      (let ((_%hd9658396654%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9658296650%_)))
                            (_%tl9658496657%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9658296650%_))))
                        (if (gx#stx-pair? _%tl9658496657%_)
                            (let ((_%e9658596660%_
                                   (gx#syntax-e _%tl9658496657%_)))
                              (let ((_%hd9658696664%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9658596660%_)))
                                    (_%tl9658796667%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9658596660%_))))
                                (if (gx#stx-null? _%tl9658796667%_)
                                    ((lambda (_%L96670%_
                                              _%L96672%_
                                              _%L96673%_
                                              _%L96674%_
                                              _%L96675%_
                                              _%L96676%_)
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
                                         (cons _%L96676%_ '()))
                                   (cons _%L96675%_ (cons '#f '()))))
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
                               (cons _%L96676%_
                                     (cons 'slot: (cons _%L96675%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L96676%_ '()))
                                         (cons (cons _%L96674%_
                                                     (cons _%L96676%_
                                                           (cons _%L96675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L96676%_ '()))
                                               (cons (cons _%L96673%_
                                                           (cons _%L96676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96675%_
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
                                           (cons _%L96676%_ '()))
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
                                                     (cons (cons _%L96672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96676%_
                               (cons _%L96675%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L96670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L96676%_
                                     (cons _%L96675%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9658696664%_
                                     _%hd9658396654%_
                                     _%hd9658096644%_
                                     _%hd9657796634%_
                                     _%hd9657496624%_
                                     _%hd9657196614%_)
                                    (_%g9655996593%_ _%g9656096597%_))))
                            (_%g9655996593%_ _%g9656096597%_))))
                    (_%g9655996593%_ _%g9656096597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9655996593%_
                                                     _%g9656096597%_))))
                                            (_%g9655996593%_
                                             _%g9656096597%_))))
                                    (_%g9655996593%_ _%g9656096597%_))))
                            (_%g9655996593%_ _%g9656096597%_))))
                    (_%g9655996593%_ _%g9656096597%_)))))
        (_%g9655896704%_ _%$stx96555%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx96708%_)
      (let* ((_%g9671296738%_
              (lambda (_%g9671396734%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9671396734%_)))
             (_%g9671196821%_
              (lambda (_%g9671396742%_)
                (if (gx#stx-pair? _%g9671396742%_)
                    (let ((_%e9671896745%_ (gx#syntax-e _%g9671396742%_)))
                      (let ((_%hd9671996749%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9671896745%_)))
                            (_%tl9672096752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9671896745%_))))
                        (if (gx#stx-pair? _%tl9672096752%_)
                            (let ((_%e9672196755%_
                                   (gx#syntax-e _%tl9672096752%_)))
                              (let ((_%hd9672296759%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9672196755%_)))
                                    (_%tl9672396762%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9672196755%_))))
                                (if (gx#stx-pair? _%tl9672396762%_)
                                    (let ((_%e9672496765%_
                                           (gx#syntax-e _%tl9672396762%_)))
                                      (let ((_%hd9672596769%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9672496765%_)))
                                            (_%tl9672696772%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9672496765%_))))
                                        (if (gx#stx-pair? _%tl9672696772%_)
                                            (let ((_%e9672796775%_
                                                   (gx#syntax-e
                                                    _%tl9672696772%_)))
                                              (let ((_%hd9672896779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9672796775%_)))
                                                    (_%tl9672996782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9672796775%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9672996782%_)
                                                    (let ((_%e9673096785%_
                                                           (gx#syntax-e
                                                            _%tl9672996782%_)))
                                                      (let ((_%hd9673196789%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9673096785%_)))
                    (_%tl9673296792%_
                     (let () (declare (not safe)) (##cdr _%e9673096785%_))))
                (if (gx#stx-null? _%tl9673296792%_)
                    ((lambda (_%L96795%_ _%L96797%_ _%L96798%_ _%L96799%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L96799%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L96798%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L96797%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L96795%_
                                     (cons _%L96799%_ (cons _%L96798%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9673196789%_
                     _%hd9672896779%_
                     _%hd9672596769%_
                     _%hd9672296759%_)
                    (_%g9671296738%_ _%g9671396742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9671296738%_
                                                     _%g9671396742%_))))
                                            (_%g9671296738%_
                                             _%g9671396742%_))))
                                    (_%g9671296738%_ _%g9671396742%_))))
                            (_%g9671296738%_ _%g9671396742%_))))
                    (_%g9671296738%_ _%g9671396742%_)))))
        (_%g9671196821%_ _%$stx96708%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx96825%_)
      (let* ((_%g9682996858%_
              (lambda (_%g9683096854%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9683096854%_)))
             (_%g9682896958%_
              (lambda (_%g9683096862%_)
                (if (gx#stx-pair? _%g9683096862%_)
                    (let ((_%e9683396865%_ (gx#syntax-e _%g9683096862%_)))
                      (let ((_%hd9683496869%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9683396865%_)))
                            (_%tl9683596872%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9683396865%_))))
                        (if (gx#stx-pair/null? _%tl9683596872%_)
                            (let ((_g102706_
                                   (gx#syntax-split-splice
                                    _%tl9683596872%_
                                    '0)))
                              (begin
                                (let ((_g102707_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102706_)
                                             (##values-length _g102706_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102707_ 2)))
                                      (error "Context expects 2 values"
                                             _g102707_)))
                                (let ((_%target9683696875%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102706_ 0)))
                                      (_%tl9683896878%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102706_ 1))))
                                  (if (gx#stx-null? _%tl9683896878%_)
                                      (letrec ((_%loop9683996881%_
                                                (lambda (_%hd9683796885%_
                                                         _%name9684396888%_
                                                         _%t9684496890%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9683796885%_)
                                                      (let ((_%e9684096893%_
                                                             (gx#syntax-e
                                                              _%hd9683796885%_)))
                                                        (let ((_%lp-hd9684196897%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9684096893%_)))
                      (_%lp-tl9684296900%_
                       (let () (declare (not safe)) (##cdr _%e9684096893%_))))
                  (if (gx#stx-pair? _%lp-hd9684196897%_)
                      (let ((_%e9684796903%_
                             (gx#syntax-e _%lp-hd9684196897%_)))
                        (let ((_%hd9684896907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9684796903%_)))
                              (_%tl9684996910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9684796903%_))))
                          (if (gx#stx-pair? _%tl9684996910%_)
                              (let ((_%e9685096913%_
                                     (gx#syntax-e _%tl9684996910%_)))
                                (let ((_%hd9685196917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9685096913%_)))
                                      (_%tl9685296920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9685096913%_))))
                                  (if (gx#stx-null? _%tl9685296920%_)
                                      (_%loop9683996881%_
                                       _%lp-tl9684296900%_
                                       (cons _%hd9685196917%_
                                             _%name9684396888%_)
                                       (cons _%hd9684896907%_ _%t9684496890%_))
                                      (_%g9682996858%_ _%g9683096862%_))))
                              (_%g9682996858%_ _%g9683096862%_))))
                      (_%g9682996858%_ _%g9683096862%_))))
              (let ((_%name9684596923%_ (reverse _%name9684396888%_))
                    (_%t9684696926%_ (reverse _%t9684496890%_)))
                ((lambda (_%L96929%_ _%L96931%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96929%_
                            _%L96931%_)
                           (let ((__tmp102708
                                  (lambda (_%g9694696950%_
                                           _%g9694796953%_
                                           _%g9694896955%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9694796953%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9694696950%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9694896955%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102708
                              '()
                              _%L96929%_
                              _%L96931%_)))))
                 _%name9684596923%_
                 _%t9684696926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9683996881%_
                                         _%target9683696875%_
                                         '()
                                         '()))
                                      (_%g9682996858%_ _%g9683096862%_)))))
                            (_%g9682996858%_ _%g9683096862%_))))
                    (_%g9682996858%_ _%g9683096862%_)))))
        (_%g9682896958%_ _%$stx96825%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx96963%_)
      (let* ((_%g9696796998%_
              (lambda (_%g9696896994%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9696896994%_)))
             (_%g9696697117%_
              (lambda (_%g9696897002%_)
                (if (gx#stx-pair? _%g9696897002%_)
                    (let ((_%e9697297005%_ (gx#syntax-e _%g9696897002%_)))
                      (let ((_%hd9697397009%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9697297005%_)))
                            (_%tl9697497012%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9697297005%_))))
                        (if (gx#stx-pair? _%tl9697497012%_)
                            (let ((_%e9697597015%_
                                   (gx#syntax-e _%tl9697497012%_)))
                              (let ((_%hd9697697019%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9697597015%_)))
                                    (_%tl9697797022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9697597015%_))))
                                (if (gx#stx-pair? _%tl9697797022%_)
                                    (let ((_%e9697897025%_
                                           (gx#syntax-e _%tl9697797022%_)))
                                      (let ((_%hd9697997029%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9697897025%_)))
                                            (_%tl9698097032%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9697897025%_))))
                                        (if (gx#stx-pair? _%tl9698097032%_)
                                            (let ((_%e9698197035%_
                                                   (gx#syntax-e
                                                    _%tl9698097032%_)))
                                              (let ((_%hd9698297039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9698197035%_)))
                                                    (_%tl9698397042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9698197035%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9698297039%_)
                                                    (let ((_g102709_
                                                           (gx#syntax-split-splice
                                                            _%hd9698297039%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102710_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102709_)
                             (##values-length _g102709_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102710_ 2)))
                      (error "Context expects 2 values" _g102710_)))
                (let ((_%target9698497045%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102709_ 0)))
                      (_%tl9698697048%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102709_ 1))))
                  (if (gx#stx-null? _%tl9698697048%_)
                      (letrec ((_%loop9698797051%_
                                (lambda (_%hd9698597055%_ _%super9699197058%_)
                                  (if (gx#stx-pair? _%hd9698597055%_)
                                      (let ((_%e9698897061%_
                                             (gx#syntax-e _%hd9698597055%_)))
                                        (let ((_%lp-hd9698997065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9698897061%_)))
                                              (_%lp-tl9699097068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9698897061%_))))
                                          (_%loop9698797051%_
                                           _%lp-tl9699097068%_
                                           (cons _%lp-hd9698997065%_
                                                 _%super9699197058%_))))
                                      (let ((_%super9699297071%_
                                             (reverse _%super9699197058%_)))
                                        (if (gx#stx-null? _%tl9698397042%_)
                                            ((lambda (_%L97075%_
                                                      _%L97077%_
                                                      _%L97078%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97078%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97077%_
                                                 (cons (let ((__tmp102711
                                                              (lambda (_%g9710297105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9710397108%_)
                        (cons _%g9710297105%_ _%g9710397108%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102711 '() _%L97075%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L97077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp102712
                                  (lambda (_%g9710097111%_ _%g9710197114%_)
                                    (cons _%g9710097111%_ _%g9710197114%_))))
                             (declare (not safe))
                             (__foldr1 __tmp102712 '() _%L97075%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9699297071%_
                                             _%hd9697997029%_
                                             _%hd9697697019%_)
                                            (_%g9696796998%_
                                             _%g9696897002%_)))))))
                        (_%loop9698797051%_ _%target9698497045%_ '()))
                      (_%g9696796998%_ _%g9696897002%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9696796998%_
                                                     _%g9696897002%_))))
                                            (_%g9696796998%_
                                             _%g9696897002%_))))
                                    (_%g9696796998%_ _%g9696897002%_))))
                            (_%g9696796998%_ _%g9696897002%_))))
                    (_%g9696796998%_ _%g9696897002%_)))))
        (_%g9696697117%_ _%$stx96963%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx97122%_)
      (let* ((_%g9712697157%_
              (lambda (_%g9712797153%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9712797153%_)))
             (_%g9712597268%_
              (lambda (_%g9712797161%_)
                (if (gx#stx-pair? _%g9712797161%_)
                    (let ((_%e9713197164%_ (gx#syntax-e _%g9712797161%_)))
                      (let ((_%hd9713297168%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9713197164%_)))
                            (_%tl9713397171%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9713197164%_))))
                        (if (gx#stx-pair? _%tl9713397171%_)
                            (let ((_%e9713497174%_
                                   (gx#syntax-e _%tl9713397171%_)))
                              (let ((_%hd9713597178%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9713497174%_)))
                                    (_%tl9713697181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9713497174%_))))
                                (if (gx#stx-pair? _%tl9713697181%_)
                                    (let ((_%e9713797184%_
                                           (gx#syntax-e _%tl9713697181%_)))
                                      (let ((_%hd9713897188%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9713797184%_)))
                                            (_%tl9713997191%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9713797184%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9713897188%_)
                                            (let ((_g102713_
                                                   (gx#syntax-split-splice
                                                    _%hd9713897188%_
                                                    '0)))
                                              (begin
                                                (let ((_g102714_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g102713_)
                                                             (##values-length
                                                              _g102713_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g102714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g102714_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9714097194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102713_
                                                          0)))
                                                      (_%tl9714297197%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102713_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9714297197%_)
                                                      (letrec ((_%loop9714397200%_
                                                                (lambda (_%hd9714197204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9714797207%_)
                          (if (gx#stx-pair? _%hd9714197204%_)
                              (let ((_%e9714497210%_
                                     (gx#syntax-e _%hd9714197204%_)))
                                (let ((_%lp-hd9714597214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9714497210%_)))
                                      (_%lp-tl9714697217%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9714497210%_))))
                                  (_%loop9714397200%_
                                   _%lp-tl9714697217%_
                                   (cons _%lp-hd9714597214%_
                                         _%super9714797207%_))))
                              (let ((_%super9714897220%_
                                     (reverse _%super9714797207%_)))
                                (if (gx#stx-pair? _%tl9713997191%_)
                                    (let ((_%e9714997224%_
                                           (gx#syntax-e _%tl9713997191%_)))
                                      (let ((_%hd9715097228%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9714997224%_)))
                                            (_%tl9715197231%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9714997224%_))))
                                        (if (gx#stx-null? _%tl9715197231%_)
                                            ((lambda (_%L97234%_
                                                      _%L97236%_
                                                      _%L97237%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97237%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97237%_
                                                 (cons (let ((__tmp102715
                                                              (lambda (_%g9725997262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9726097265%_)
                        (cons _%g9725997262%_ _%g9726097265%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102715 '() _%L97236%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L97234%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9715097228%_
                                             _%super9714897220%_
                                             _%hd9713597178%_)
                                            (_%g9712697157%_
                                             _%g9712797161%_))))
                                    (_%g9712697157%_ _%g9712797161%_)))))))
                (_%loop9714397200%_ _%target9714097194%_ '()))
              (_%g9712697157%_ _%g9712797161%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9712697157%_
                                             _%g9712797161%_))))
                                    (_%g9712697157%_ _%g9712797161%_))))
                            (_%g9712697157%_ _%g9712797161%_))))
                    (_%g9712697157%_ _%g9712797161%_)))))
        (_%g9712597268%_ _%$stx97122%_)))))
