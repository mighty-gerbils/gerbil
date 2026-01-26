(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g45873_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx44897%_)
        (let* ((_%g4490144912%_
                (lambda (_%g4490244908%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4490244908%_)))
               (_%g4490044942%_
                (lambda (_%g4490244916%_)
                  (if (gx#stx-pair? _%g4490244916%_)
                      (let ((_%e4490444919%_ (gx#syntax-e _%g4490244916%_)))
                        (let ((_%hd4490544923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4490444919%_)))
                              (_%tl4490644926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4490444919%_))))
                          ((lambda (_%g4490344929%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g4490344929%_)
                                               '()))))
                           _%tl4490644926%_)))
                      (_%g4490144912%_ _%g4490244916%_)))))
          (_%g4490044942%_ _%$stx44897%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx44946%_)
        (let* ((_%g4494944982%_
                (lambda (_%g4495044978%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4495044978%_)))
               (_%g4494845384%_
                (lambda (_%g4495044986%_)
                  (if (gx#stx-pair? _%g4495044986%_)
                      (let ((_%e4495344989%_ (gx#syntax-e _%g4495044986%_)))
                        (let ((_%hd4495444993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4495344989%_)))
                              (_%tl4495544996%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4495344989%_))))
                          (if (gx#stx-pair? _%tl4495544996%_)
                              (let ((_%e4495644999%_
                                     (gx#syntax-e _%tl4495544996%_)))
                                (let ((_%hd4495745003%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4495644999%_)))
                                      (_%tl4495845006%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4495644999%_))))
                                  (if (gx#stx-pair/null? _%hd4495745003%_)
                                      (let ((_g45867_
                                             (gx#syntax-split-splice
                                              _%hd4495745003%_
                                              '0)))
                                        (begin
                                          (let ((_g45868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45867_)
                                                       (##values-length
                                                        _g45867_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45868_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45868_)))
                                          (let ((_%target4495945009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45867_ 0)))
                                                (_%tl4496145012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45867_ 1))))
                                            (if (gx#stx-null? _%tl4496145012%_)
                                                (letrec ((_%loop4496245015%_
                                                          (lambda (_%hd4496045019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4496645022%_)
                    (if (gx#stx-pair? _%hd4496045019%_)
                        (let ((_%e4496345024%_ (gx#syntax-e _%hd4496045019%_)))
                          (let ((_%lp-hd4496445028%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4496345024%_)))
                                (_%lp-tl4496545031%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4496345024%_))))
                            (_%loop4496245015%_
                             _%lp-tl4496545031%_
                             (cons _%lp-hd4496445028%_ _%clause4496645022%_))))
                        (let ((_%clause4496745034%_
                               (reverse _%clause4496645022%_)))
                          (if (gx#stx-pair/null? _%tl4495845006%_)
                              (let ((_g45869_
                                     (gx#syntax-split-splice
                                      _%tl4495845006%_
                                      '0)))
                                (begin
                                  (let ((_g45870_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45869_)
                                               (##values-length _g45869_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45870_ 2)))
                                        (error "Context expects 2 values"
                                               _g45870_)))
                                  (let ((_%target4496845037%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45869_ 0)))
                                        (_%tl4497045040%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45869_ 1))))
                                    (if (gx#stx-null? _%tl4497045040%_)
                                        (letrec ((_%loop4497145043%_
                                                  (lambda (_%hd4496945047%_
                                                           _%body4497545050%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4496945047%_)
                                                        (let ((_%e4497245052%_
                                                               (gx#syntax-e
                                                                _%hd4496945047%_)))
                                                          (let ((_%lp-hd4497345056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4497245052%_)))
                        (_%lp-tl4497445059%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4497245052%_))))
                    (_%loop4497145043%_
                     _%lp-tl4497445059%_
                     (cons _%lp-hd4497345056%_ _%body4497545050%_))))
                (let ((_%body4497645062%_ (reverse _%body4497545050%_)))
                  ((lambda (_%g4495145065%_ _%g4495245067%_)
                     (let* ((_%g4508945106%_
                             (lambda (_%g4509045102%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4509045102%_)))
                            (_%g4508845173%_
                             (lambda (_%g4509045110%_)
                               (if (gx#stx-pair/null? _%g4509045110%_)
                                   (let ((_g45871_
                                          (gx#syntax-split-splice
                                           _%g4509045110%_
                                           '0)))
                                     (begin
                                       (let ((_g45872_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g45871_)
                                                    (##values-length _g45871_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g45872_ 2)))
                                             (error "Context expects 2 values"
                                                    _g45872_)))
                                       (let ((_%target4509245113%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45871_ 0)))
                                             (_%tl4509445116%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45871_ 1))))
                                         (if (gx#stx-null? _%tl4509445116%_)
                                             (letrec ((_%loop4509545119%_
                                                       (lambda (_%hd4509345123%_
                                                                _%clause4509945126%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4509345123%_)
                                                             (let ((_%e4509645128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4509345123%_)))
                       (let ((_%lp-hd4509745132%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4509645128%_)))
                             (_%lp-tl4509845135%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4509645128%_))))
                         (_%loop4509545119%_
                          _%lp-tl4509845135%_
                          (cons _%lp-hd4509745132%_ _%clause4509945126%_))))
                     (let ((_%clause4510045138%_
                            (reverse _%clause4509945126%_)))
                       ((lambda (_%g4509145141%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g4515645161%_
                                                      _%g4515745164%_)
                                               (cons _%g4515645161%_
                                                     _%g4515745164%_))
                                             '()
                                             _%g4509145141%_)
                                      (foldr (lambda (_%g4515845167%_
                                                      _%g4515945170%_)
                                               (cons _%g4515845167%_
                                                     _%g4515945170%_))
                                             '()
                                             _%g4495145065%_))))
                        _%clause4510045138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4509545119%_
                                                _%target4509245113%_
                                                '()))
                                             (_%g4508945106%_
                                              _%g4509045110%_)))))
                                   (_%g4508945106%_ _%g4509045110%_)))))
                       (_%g4508845173%_
                        (map (lambda (_%clause45177%_)
                               (let* ((_%__stx4580445805%_ _%clause45177%_)
                                      (_%g4518145220%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4580445805%_))))
                                 (let ((_%__kont4580745808%_
                                        (lambda (_%g4518345353%_
                                                 _%g4518445355%_)
                                          (cons _%g4518445355%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g4518345353%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4580945810%_
                                        (lambda (_%g4519745275%_
                                                 _%g4519845277%_
                                                 _%g4519945278%_)
                                          (cons _%g4519945278%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g4519845277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g4529745300%_ _%g4529845303%_)
                                   (cons _%g4529745300%_ _%g4529845303%_))
                                 '()
                                 _%g4519745275%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4586545866%_
                                           (lambda (_%e4520045227%_
                                                    _%hd4520145231%_
                                                    _%tl4520245234%_
                                                    _%e4520345237%_
                                                    _%hd4520445241%_
                                                    _%tl4520545244%_
                                                    _%__splice4581145812%_
                                                    _%target4520645247%_
                                                    _%tl4520845250%_)
                                             (letrec ((_%loop4520945253%_
                                                       (lambda (_%hd4520745257%_
                                                                _%components4521345260%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4520745257%_)
                                                             (let ((_%e4521045262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4520745257%_)))
                       (let ((_%lp-tl4521245269%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4521045262%_)))
                             (_%lp-hd4521145266%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4521045262%_))))
                         (_%loop4520945253%_
                          _%lp-tl4521245269%_
                          (cons _%lp-hd4521145266%_
                                _%components4521345260%_))))
                     (let ((_%components4521445272%_
                            (reverse _%components4521345260%_)))
                       (let ((_%g4519745275%_ _%components4521445272%_)
                             (_%g4519845277%_ _%hd4520445241%_)
                             (_%g4519945278%_ _%hd4520145231%_))
                         (if (gx#identifier? _%g4519945278%_)
                             (_%__kont4580945810%_
                              _%g4519745275%_
                              _%g4519845277%_
                              _%g4519945278%_)
                             (let ()
                               (declare (not safe))
                               (_%g4518145220%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4520945253%_
                                                _%target4520645247%_
                                                '()))))
                                          (_%__match4584545846%_
                                           (lambda (_%e4518545313%_
                                                    _%hd4518645317%_
                                                    _%tl4518745320%_
                                                    _%e4518845323%_
                                                    _%hd4518945327%_
                                                    _%tl4519045330%_
                                                    _%e4519145333%_
                                                    _%hd4519245337%_
                                                    _%tl4519345340%_
                                                    _%e4519445343%_
                                                    _%hd4519545347%_
                                                    _%tl4519645350%_)
                                             (let ((_%g4518345353%_
                                                    _%hd4519545347%_)
                                                   (_%g4518445355%_
                                                    _%hd4518645317%_))
                                               (if (and (gx#identifier?
                                                         _%g4518445355%_)
                                                        (gx#identifier?
                                                         _%g4518345353%_))
                                                   (_%__kont4580745808%_
                                                    _%g4518345353%_
                                                    _%g4518445355%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4519045330%_)
                                                       (let ((_%__splice4581145812%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4519045330%_
                                                               '0)))
                                                         (let ((_%tl4520845250%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4581145812%_ '1)))
                       (_%target4520645247%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4581145812%_ '0))))
                   (if (gx#stx-null? _%tl4520845250%_)
                       (_%__match4586545866%_
                        _%e4518545313%_
                        _%hd4518645317%_
                        _%tl4518745320%_
                        _%e4518845323%_
                        _%hd4518945327%_
                        _%tl4519045330%_
                        _%__splice4581145812%_
                        _%target4520645247%_
                        _%tl4520845250%_)
                       (let () (declare (not safe)) (_%g4518145220%_)))))
               (let () (declare (not safe)) (_%g4518145220%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx4580445805%_)
                                         (let ((_%e4518545313%_
                                                (gx#syntax-e
                                                 _%__stx4580445805%_)))
                                           (let ((_%tl4518745320%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4518545313%_)))
                                                 (_%hd4518645317%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4518545313%_))))
                                             (if (gx#stx-pair?
                                                  _%tl4518745320%_)
                                                 (let ((_%e4518845323%_
                                                        (gx#syntax-e
                                                         _%tl4518745320%_)))
                                                   (let ((_%tl4519045330%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4518845323%_)))
                                                         (_%hd4518945327%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4518845323%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd4518945327%_)
                                                         (let ((_%e4519145333%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd4518945327%_)))
                   (let ((_%tl4519345340%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4519145333%_)))
                         (_%hd4519245337%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4519145333%_))))
                     (if (gx#identifier? _%hd4519245337%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g45873_|
                              _%hd4519245337%_)
                             (if (gx#stx-pair? _%tl4519345340%_)
                                 (let ((_%e4519445343%_
                                        (gx#syntax-e _%tl4519345340%_)))
                                   (let ((_%tl4519645350%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4519445343%_)))
                                         (_%hd4519545347%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4519445343%_))))
                                     (if (gx#stx-null? _%tl4519645350%_)
                                         (if (gx#stx-null? _%tl4519045330%_)
                                             (_%__match4584545846%_
                                              _%e4518545313%_
                                              _%hd4518645317%_
                                              _%tl4518745320%_
                                              _%e4518845323%_
                                              _%hd4518945327%_
                                              _%tl4519045330%_
                                              _%e4519145333%_
                                              _%hd4519245337%_
                                              _%tl4519345340%_
                                              _%e4519445343%_
                                              _%hd4519545347%_
                                              _%tl4519645350%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl4519045330%_)
                                                 (let ((_%__splice4581145812%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4519045330%_
                                                         '0)))
                                                   (let ((_%tl4520845250%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4581145812%_
                                                             '1)))
                                                         (_%target4520645247%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4581145812%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4520845250%_)
                                                         (_%__match4586545866%_
                                                          _%e4518545313%_
                                                          _%hd4518645317%_
                                                          _%tl4518745320%_
                                                          _%e4518845323%_
                                                          _%hd4518945327%_
                                                          _%tl4519045330%_
                                                          _%__splice4581145812%_
                                                          _%target4520645247%_
                                                          _%tl4520845250%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4518145220%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4518145220%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4519045330%_)
                                             (let ((_%__splice4581145812%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4519045330%_
                                                     '0)))
                                               (let ((_%tl4520845250%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4581145812%_
                                                         '1)))
                                                     (_%target4520645247%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4581145812%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4520845250%_)
                                                     (_%__match4586545866%_
                                                      _%e4518545313%_
                                                      _%hd4518645317%_
                                                      _%tl4518745320%_
                                                      _%e4518845323%_
                                                      _%hd4518945327%_
                                                      _%tl4519045330%_
                                                      _%__splice4581145812%_
                                                      _%target4520645247%_
                                                      _%tl4520845250%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4518145220%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4518145220%_))))))
                                 (if (gx#stx-pair/null? _%tl4519045330%_)
                                     (let ((_%__splice4581145812%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4519045330%_
                                             '0)))
                                       (let ((_%tl4520845250%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4581145812%_
                                                 '1)))
                                             (_%target4520645247%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4581145812%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4520845250%_)
                                             (_%__match4586545866%_
                                              _%e4518545313%_
                                              _%hd4518645317%_
                                              _%tl4518745320%_
                                              _%e4518845323%_
                                              _%hd4518945327%_
                                              _%tl4519045330%_
                                              _%__splice4581145812%_
                                              _%target4520645247%_
                                              _%tl4520845250%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4518145220%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4518145220%_))))
                             (if (gx#stx-pair/null? _%tl4519045330%_)
                                 (let ((_%__splice4581145812%_
                                        (gx#syntax-split-splice->vector
                                         _%tl4519045330%_
                                         '0)))
                                   (let ((_%tl4520845250%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4581145812%_
                                             '1)))
                                         (_%target4520645247%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4581145812%_
                                             '0))))
                                     (if (gx#stx-null? _%tl4520845250%_)
                                         (_%__match4586545866%_
                                          _%e4518545313%_
                                          _%hd4518645317%_
                                          _%tl4518745320%_
                                          _%e4518845323%_
                                          _%hd4518945327%_
                                          _%tl4519045330%_
                                          _%__splice4581145812%_
                                          _%target4520645247%_
                                          _%tl4520845250%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4518145220%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4518145220%_))))
                         (if (gx#stx-pair/null? _%tl4519045330%_)
                             (let ((_%__splice4581145812%_
                                    (gx#syntax-split-splice->vector
                                     _%tl4519045330%_
                                     '0)))
                               (let ((_%tl4520845250%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4581145812%_
                                         '1)))
                                     (_%target4520645247%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4581145812%_
                                         '0))))
                                 (if (gx#stx-null? _%tl4520845250%_)
                                     (_%__match4586545866%_
                                      _%e4518545313%_
                                      _%hd4518645317%_
                                      _%tl4518745320%_
                                      _%e4518845323%_
                                      _%hd4518945327%_
                                      _%tl4519045330%_
                                      _%__splice4581145812%_
                                      _%target4520645247%_
                                      _%tl4520845250%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g4518145220%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4518145220%_))))))
                 (if (gx#stx-pair/null? _%tl4519045330%_)
                     (let ((_%__splice4581145812%_
                            (gx#syntax-split-splice->vector
                             _%tl4519045330%_
                             '0)))
                       (let ((_%tl4520845250%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4581145812%_ '1)))
                             (_%target4520645247%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4581145812%_ '0))))
                         (if (gx#stx-null? _%tl4520845250%_)
                             (_%__match4586545866%_
                              _%e4518545313%_
                              _%hd4518645317%_
                              _%tl4518745320%_
                              _%e4518845323%_
                              _%hd4518945327%_
                              _%tl4519045330%_
                              _%__splice4581145812%_
                              _%target4520645247%_
                              _%tl4520845250%_)
                             (let () (declare (not safe)) (_%g4518145220%_)))))
                     (let () (declare (not safe)) (_%g4518145220%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4518145220%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g4518145220%_)))))))
                             (foldr (lambda (_%g4537545378%_ _%g4537645381%_)
                                      (cons _%g4537545378%_ _%g4537645381%_))
                                    '()
                                    _%g4495245067%_)))))
                   _%body4497645062%_
                   _%clause4496745034%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4497145043%_
                                           _%target4496845037%_
                                           '()))
                                        (_%g4494944982%_ _%g4495044986%_)))))
                              (_%g4494944982%_ _%g4495044986%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4496245015%_
                                                   _%target4495945009%_
                                                   '()))
                                                (_%g4494944982%_
                                                 _%g4495044986%_)))))
                                      (_%g4494944982%_ _%g4495044986%_))))
                              (_%g4494944982%_ _%g4495044986%_))))
                      (_%g4494944982%_ _%g4495044986%_)))))
          (_%g4494845384%_ _%stx44946%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx45392%_)
        (let* ((_%g4539645433%_
                (lambda (_%g4539745429%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4539745429%_)))
               (_%g4539545570%_
                (lambda (_%g4539745437%_)
                  (if (gx#stx-pair? _%g4539745437%_)
                      (let ((_%e4540145440%_ (gx#syntax-e _%g4539745437%_)))
                        (let ((_%hd4540245444%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4540145440%_)))
                              (_%tl4540345447%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4540145440%_))))
                          (if (gx#stx-pair? _%tl4540345447%_)
                              (let ((_%e4540445450%_
                                     (gx#syntax-e _%tl4540345447%_)))
                                (let ((_%hd4540545454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4540445450%_)))
                                      (_%tl4540645457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4540445450%_))))
                                  (if (gx#stx-pair? _%hd4540545454%_)
                                      (let ((_%e4540745460%_
                                             (gx#syntax-e _%hd4540545454%_)))
                                        (let ((_%hd4540845464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4540745460%_)))
                                              (_%tl4540945467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4540745460%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4540945467%_)
                                              (let ((_g45874_
                                                     (gx#syntax-split-splice
                                                      _%tl4540945467%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45874_)
                                                               (##values-length
                                                                _g45874_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45875_ 2)))
                (error "Context expects 2 values" _g45875_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4541045470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45874_
                                                            0)))
                                                        (_%tl4541245473%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45874_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4541245473%_)
                                                        (letrec ((_%loop4541345476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4541145480%_ _%components4541745483%_)
                            (if (gx#stx-pair? _%hd4541145480%_)
                                (let ((_%e4541445485%_
                                       (gx#syntax-e _%hd4541145480%_)))
                                  (let ((_%lp-hd4541545489%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4541445485%_)))
                                        (_%lp-tl4541645492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4541445485%_))))
                                    (_%loop4541345476%_
                                     _%lp-tl4541645492%_
                                     (cons _%lp-hd4541545489%_
                                           _%components4541745483%_))))
                                (let ((_%components4541845495%_
                                       (reverse _%components4541745483%_)))
                                  (if (gx#stx-pair/null? _%tl4540645457%_)
                                      (let ((_g45876_
                                             (gx#syntax-split-splice
                                              _%tl4540645457%_
                                              '0)))
                                        (begin
                                          (let ((_g45877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45876_)
                                                       (##values-length
                                                        _g45876_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45877_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45877_)))
                                          (let ((_%target4541945498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45876_ 0)))
                                                (_%tl4542145501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45876_ 1))))
                                            (if (gx#stx-null? _%tl4542145501%_)
                                                (letrec ((_%loop4542245504%_
                                                          (lambda (_%hd4542045508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4542645511%_)
                    (if (gx#stx-pair? _%hd4542045508%_)
                        (let ((_%e4542345513%_ (gx#syntax-e _%hd4542045508%_)))
                          (let ((_%lp-hd4542445517%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4542345513%_)))
                                (_%lp-tl4542545520%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4542345513%_))))
                            (_%loop4542245504%_
                             _%lp-tl4542545520%_
                             (cons _%lp-hd4542445517%_ _%body4542645511%_))))
                        (let ((_%body4542745523%_
                               (reverse _%body4542645511%_)))
                          ((lambda (_%g4539845526%_
                                    _%g4539945528%_
                                    _%g4540045529%_)
                             (if (gx#identifier? _%g4540045529%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g4540045529%_
                                                         (foldr (lambda (_%g4555345558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4555445561%_)
                          (cons _%g4555345558%_ _%g4555445561%_))
                        '()
                        _%g4539945528%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g4555545564%_
                                                             _%g4555645567%_)
                                                      (cons _%g4555545564%_
                                                            _%g4555645567%_))
                                                    '()
                                                    _%g4539845526%_)))
                                 (_%g4539645433%_ _%g4539745437%_)))
                           _%body4542745523%_
                           _%components4541845495%_
                           _%hd4540845464%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4542245504%_
                                                   _%target4541945498%_
                                                   '()))
                                                (_%g4539645433%_
                                                 _%g4539745437%_)))))
                                      (_%g4539645433%_ _%g4539745437%_)))))))
                  (_%loop4541345476%_ _%target4541045470%_ '()))
                (_%g4539645433%_ _%g4539745437%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4539645433%_
                                               _%g4539745437%_))))
                                      (_%g4539645433%_ _%g4539745437%_))))
                              (_%g4539645433%_ _%g4539745437%_))))
                      (_%g4539645433%_ _%g4539745437%_)))))
          (_%g4539545570%_ _%$stx45392%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#defsyntax-case|
      (lambda (_%stx45576%_)
        (let* ((_%g4557945616%_
                (lambda (_%g4558045612%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4558045612%_)))
               (_%g4557845784%_
                (lambda (_%g4558045620%_)
                  (if (gx#stx-pair? _%g4558045620%_)
                      (let ((_%e4558445623%_ (gx#syntax-e _%g4558045620%_)))
                        (let ((_%hd4558545627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4558445623%_)))
                              (_%tl4558645630%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4558445623%_))))
                          (if (gx#stx-pair? _%tl4558645630%_)
                              (let ((_%e4558745633%_
                                     (gx#syntax-e _%tl4558645630%_)))
                                (let ((_%hd4558845637%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4558745633%_)))
                                      (_%tl4558945640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4558745633%_))))
                                  (if (gx#stx-pair? _%tl4558945640%_)
                                      (let ((_%e4559045643%_
                                             (gx#syntax-e _%tl4558945640%_)))
                                        (let ((_%hd4559145647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4559045643%_)))
                                              (_%tl4559245650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4559045643%_))))
                                          (if (gx#stx-pair/null?
                                               _%hd4559145647%_)
                                              (let ((_g45878_
                                                     (gx#syntax-split-splice
                                                      _%hd4559145647%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45879_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45878_)
                                                               (##values-length
                                                                _g45878_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45879_ 2)))
                (error "Context expects 2 values" _g45879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4559345653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45878_
                                                            0)))
                                                        (_%tl4559545656%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45878_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4559545656%_)
                                                        (letrec ((_%loop4559645659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4559445663%_ _%lit4560045666%_)
                            (if (gx#stx-pair? _%hd4559445663%_)
                                (let ((_%e4559745668%_
                                       (gx#syntax-e _%hd4559445663%_)))
                                  (let ((_%lp-hd4559845672%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4559745668%_)))
                                        (_%lp-tl4559945675%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4559745668%_))))
                                    (_%loop4559645659%_
                                     _%lp-tl4559945675%_
                                     (cons _%lp-hd4559845672%_
                                           _%lit4560045666%_))))
                                (let ((_%lit4560145678%_
                                       (reverse _%lit4560045666%_)))
                                  (if (gx#stx-pair/null? _%tl4559245650%_)
                                      (let ((_g45880_
                                             (gx#syntax-split-splice
                                              _%tl4559245650%_
                                              '0)))
                                        (begin
                                          (let ((_g45881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45880_)
                                                       (##values-length
                                                        _g45880_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45881_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45881_)))
                                          (let ((_%target4560245681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45880_ 0)))
                                                (_%tl4560445684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45880_ 1))))
                                            (if (gx#stx-null? _%tl4560445684%_)
                                                (letrec ((_%loop4560545687%_
                                                          (lambda (_%hd4560345691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4560945694%_)
                    (if (gx#stx-pair? _%hd4560345691%_)
                        (let ((_%e4560645696%_ (gx#syntax-e _%hd4560345691%_)))
                          (let ((_%lp-hd4560745700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4560645696%_)))
                                (_%lp-tl4560845703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4560645696%_))))
                            (_%loop4560545687%_
                             _%lp-tl4560845703%_
                             (cons _%lp-hd4560745700%_ _%clause4560945694%_))))
                        (let ((_%clause4561045706%_
                               (reverse _%clause4560945694%_)))
                          ((lambda (_%g4558145709%_
                                    _%g4558245711%_
                                    _%g4558345712%_)
                             (let* ((_%g4573745745%_
                                     (lambda (_%g4573845741%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4573845741%_)))
                                    (_%g4573645780%_
                                     (lambda (_%g4573845749%_)
                                       ((lambda (_%g4573945752%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%g4558345712%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _%g4573945752%_ '())
                                (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                            (cons _%g4573945752%_
                                                  (cons (foldr (lambda (_%g4576345768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g4576445771%_)
                         (cons _%g4576345768%_ _%g4576445771%_))
                       '()
                       _%g4558245711%_)
                (foldr (lambda (_%g4576545774%_ _%g4576645777%_)
                         (cons _%g4576545774%_ _%g4576645777%_))
                       '()
                       _%g4558145709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g4573845749%_))))
                               (_%g4573645780%_
                                (gx#syntax-local-introduce 'stx))))
                           _%clause4561045706%_
                           _%lit4560145678%_
                           _%hd4558845637%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4560545687%_
                                                   _%target4560245681%_
                                                   '()))
                                                (_%g4557945616%_
                                                 _%g4558045620%_)))))
                                      (_%g4557945616%_ _%g4558045620%_)))))))
                  (_%loop4559645659%_ _%target4559345653%_ '()))
                (_%g4557945616%_ _%g4558045620%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4557945616%_
                                               _%g4558045620%_))))
                                      (_%g4557945616%_ _%g4558045620%_))))
                              (_%g4557945616%_ _%g4558045620%_))))
                      (_%g4557945616%_ _%g4558045620%_)))))
          (_%g4557845784%_ _%stx45576%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx45790%_)
        (let ((_%g4579345800%_
               (lambda (_%g4579445796%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4579445796%_))))
          (_%g4579345800%_ _%$stx45790%_))))))
