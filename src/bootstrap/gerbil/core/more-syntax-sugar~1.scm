(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g45963_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx45201%_)
        (let* ((_%g4520545216%_
                (lambda (_%g4520645212%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4520645212%_)))
               (_%g4520445246%_
                (lambda (_%g4520645220%_)
                  (if (gx#stx-pair? _%g4520645220%_)
                      (let ((_%e4520845223%_ (gx#syntax-e _%g4520645220%_)))
                        (let ((_%hd4520945227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4520845223%_)))
                              (_%tl4521045230%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4520845223%_))))
                          ((lambda (_%g4520745233%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g4520745233%_)
                                               '()))))
                           _%tl4521045230%_)))
                      (_%g4520545216%_ _%g4520645220%_)))))
          (_%g4520445246%_ _%$stx45201%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx45250%_)
        (let* ((_%g4525345286%_
                (lambda (_%g4525445282%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4525445282%_)))
               (_%g4525245688%_
                (lambda (_%g4525445290%_)
                  (if (gx#stx-pair? _%g4525445290%_)
                      (let ((_%e4525745293%_ (gx#syntax-e _%g4525445290%_)))
                        (let ((_%hd4525845297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4525745293%_)))
                              (_%tl4525945300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4525745293%_))))
                          (if (gx#stx-pair? _%tl4525945300%_)
                              (let ((_%e4526045303%_
                                     (gx#syntax-e _%tl4525945300%_)))
                                (let ((_%hd4526145307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4526045303%_)))
                                      (_%tl4526245310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4526045303%_))))
                                  (if (gx#stx-pair/null? _%hd4526145307%_)
                                      (let ((_g45957_
                                             (gx#syntax-split-splice
                                              _%hd4526145307%_
                                              '0)))
                                        (begin
                                          (let ((_g45958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45957_)
                                                       (##values-length
                                                        _g45957_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45958_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45958_)))
                                          (let ((_%target4526345313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45957_ 0)))
                                                (_%tl4526545316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45957_ 1))))
                                            (if (gx#stx-null? _%tl4526545316%_)
                                                (letrec ((_%loop4526645319%_
                                                          (lambda (_%hd4526445323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4527045326%_)
                    (if (gx#stx-pair? _%hd4526445323%_)
                        (let ((_%e4526745328%_ (gx#syntax-e _%hd4526445323%_)))
                          (let ((_%lp-hd4526845332%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4526745328%_)))
                                (_%lp-tl4526945335%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4526745328%_))))
                            (_%loop4526645319%_
                             _%lp-tl4526945335%_
                             (cons _%lp-hd4526845332%_ _%clause4527045326%_))))
                        (let ((_%clause4527145338%_
                               (reverse _%clause4527045326%_)))
                          (if (gx#stx-pair/null? _%tl4526245310%_)
                              (let ((_g45959_
                                     (gx#syntax-split-splice
                                      _%tl4526245310%_
                                      '0)))
                                (begin
                                  (let ((_g45960_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45959_)
                                               (##values-length _g45959_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45960_ 2)))
                                        (error "Context expects 2 values"
                                               _g45960_)))
                                  (let ((_%target4527245341%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45959_ 0)))
                                        (_%tl4527445344%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45959_ 1))))
                                    (if (gx#stx-null? _%tl4527445344%_)
                                        (letrec ((_%loop4527545347%_
                                                  (lambda (_%hd4527345351%_
                                                           _%body4527945354%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4527345351%_)
                                                        (let ((_%e4527645356%_
                                                               (gx#syntax-e
                                                                _%hd4527345351%_)))
                                                          (let ((_%lp-hd4527745360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4527645356%_)))
                        (_%lp-tl4527845363%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4527645356%_))))
                    (_%loop4527545347%_
                     _%lp-tl4527845363%_
                     (cons _%lp-hd4527745360%_ _%body4527945354%_))))
                (let ((_%body4528045366%_ (reverse _%body4527945354%_)))
                  ((lambda (_%g4525545369%_ _%g4525645371%_)
                     (let* ((_%g4539345410%_
                             (lambda (_%g4539445406%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4539445406%_)))
                            (_%g4539245477%_
                             (lambda (_%g4539445414%_)
                               (if (gx#stx-pair/null? _%g4539445414%_)
                                   (let ((_g45961_
                                          (gx#syntax-split-splice
                                           _%g4539445414%_
                                           '0)))
                                     (begin
                                       (let ((_g45962_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g45961_)
                                                    (##values-length _g45961_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g45962_ 2)))
                                             (error "Context expects 2 values"
                                                    _g45962_)))
                                       (let ((_%target4539645417%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45961_ 0)))
                                             (_%tl4539845420%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45961_ 1))))
                                         (if (gx#stx-null? _%tl4539845420%_)
                                             (letrec ((_%loop4539945423%_
                                                       (lambda (_%hd4539745427%_
                                                                _%clause4540345430%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4539745427%_)
                                                             (let ((_%e4540045432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4539745427%_)))
                       (let ((_%lp-hd4540145436%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4540045432%_)))
                             (_%lp-tl4540245439%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4540045432%_))))
                         (_%loop4539945423%_
                          _%lp-tl4540245439%_
                          (cons _%lp-hd4540145436%_ _%clause4540345430%_))))
                     (let ((_%clause4540445442%_
                            (reverse _%clause4540345430%_)))
                       ((lambda (_%g4539545445%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g4546045465%_
                                                      _%g4546145468%_)
                                               (cons _%g4546045465%_
                                                     _%g4546145468%_))
                                             '()
                                             _%g4539545445%_)
                                      (foldr (lambda (_%g4546245471%_
                                                      _%g4546345474%_)
                                               (cons _%g4546245471%_
                                                     _%g4546345474%_))
                                             '()
                                             _%g4525545369%_))))
                        _%clause4540445442%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4539945423%_
                                                _%target4539645417%_
                                                '()))
                                             (_%g4539345410%_
                                              _%g4539445414%_)))))
                                   (_%g4539345410%_ _%g4539445414%_)))))
                       (_%g4539245477%_
                        (map (lambda (_%clause45481%_)
                               (let* ((_%__stx4589445895%_ _%clause45481%_)
                                      (_%g4548545524%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4589445895%_))))
                                 (let ((_%__kont4589745898%_
                                        (lambda (_%g4548745657%_
                                                 _%g4548845659%_)
                                          (cons _%g4548845659%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g4548745657%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4589945900%_
                                        (lambda (_%g4550145579%_
                                                 _%g4550245581%_
                                                 _%g4550345582%_)
                                          (cons _%g4550345582%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g4550245581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g4560145604%_ _%g4560245607%_)
                                   (cons _%g4560145604%_ _%g4560245607%_))
                                 '()
                                 _%g4550145579%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4595545956%_
                                           (lambda (_%e4550445531%_
                                                    _%hd4550545535%_
                                                    _%tl4550645538%_
                                                    _%e4550745541%_
                                                    _%hd4550845545%_
                                                    _%tl4550945548%_
                                                    _%__splice4590145902%_
                                                    _%target4551045551%_
                                                    _%tl4551245554%_)
                                             (letrec ((_%loop4551345557%_
                                                       (lambda (_%hd4551145561%_
                                                                _%components4551745564%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4551145561%_)
                                                             (let ((_%e4551445566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4551145561%_)))
                       (let ((_%lp-tl4551645573%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4551445566%_)))
                             (_%lp-hd4551545570%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4551445566%_))))
                         (_%loop4551345557%_
                          _%lp-tl4551645573%_
                          (cons _%lp-hd4551545570%_
                                _%components4551745564%_))))
                     (let ((_%components4551845576%_
                            (reverse _%components4551745564%_)))
                       (let ((_%g4550145579%_ _%components4551845576%_)
                             (_%g4550245581%_ _%hd4550845545%_)
                             (_%g4550345582%_ _%hd4550545535%_))
                         (if (gx#identifier? _%g4550345582%_)
                             (_%__kont4589945900%_
                              _%g4550145579%_
                              _%g4550245581%_
                              _%g4550345582%_)
                             (let ()
                               (declare (not safe))
                               (_%g4548545524%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4551345557%_
                                                _%target4551045551%_
                                                '()))))
                                          (_%__match4593545936%_
                                           (lambda (_%e4548945617%_
                                                    _%hd4549045621%_
                                                    _%tl4549145624%_
                                                    _%e4549245627%_
                                                    _%hd4549345631%_
                                                    _%tl4549445634%_
                                                    _%e4549545637%_
                                                    _%hd4549645641%_
                                                    _%tl4549745644%_
                                                    _%e4549845647%_
                                                    _%hd4549945651%_
                                                    _%tl4550045654%_)
                                             (let ((_%g4548745657%_
                                                    _%hd4549945651%_)
                                                   (_%g4548845659%_
                                                    _%hd4549045621%_))
                                               (if (and (gx#identifier?
                                                         _%g4548845659%_)
                                                        (gx#identifier?
                                                         _%g4548745657%_))
                                                   (_%__kont4589745898%_
                                                    _%g4548745657%_
                                                    _%g4548845659%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4549445634%_)
                                                       (let ((_%__splice4590145902%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4549445634%_
                                                               '0)))
                                                         (let ((_%tl4551245554%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4590145902%_ '1)))
                       (_%target4551045551%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4590145902%_ '0))))
                   (if (gx#stx-null? _%tl4551245554%_)
                       (_%__match4595545956%_
                        _%e4548945617%_
                        _%hd4549045621%_
                        _%tl4549145624%_
                        _%e4549245627%_
                        _%hd4549345631%_
                        _%tl4549445634%_
                        _%__splice4590145902%_
                        _%target4551045551%_
                        _%tl4551245554%_)
                       (let () (declare (not safe)) (_%g4548545524%_)))))
               (let () (declare (not safe)) (_%g4548545524%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx4589445895%_)
                                         (let ((_%e4548945617%_
                                                (gx#syntax-e
                                                 _%__stx4589445895%_)))
                                           (let ((_%tl4549145624%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4548945617%_)))
                                                 (_%hd4549045621%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4548945617%_))))
                                             (if (gx#stx-pair?
                                                  _%tl4549145624%_)
                                                 (let ((_%e4549245627%_
                                                        (gx#syntax-e
                                                         _%tl4549145624%_)))
                                                   (let ((_%tl4549445634%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4549245627%_)))
                                                         (_%hd4549345631%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4549245627%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd4549345631%_)
                                                         (let ((_%e4549545637%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd4549345631%_)))
                   (let ((_%tl4549745644%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4549545637%_)))
                         (_%hd4549645641%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4549545637%_))))
                     (if (gx#identifier? _%hd4549645641%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g45963_|
                              _%hd4549645641%_)
                             (if (gx#stx-pair? _%tl4549745644%_)
                                 (let ((_%e4549845647%_
                                        (gx#syntax-e _%tl4549745644%_)))
                                   (let ((_%tl4550045654%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4549845647%_)))
                                         (_%hd4549945651%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4549845647%_))))
                                     (if (gx#stx-null? _%tl4550045654%_)
                                         (if (gx#stx-null? _%tl4549445634%_)
                                             (_%__match4593545936%_
                                              _%e4548945617%_
                                              _%hd4549045621%_
                                              _%tl4549145624%_
                                              _%e4549245627%_
                                              _%hd4549345631%_
                                              _%tl4549445634%_
                                              _%e4549545637%_
                                              _%hd4549645641%_
                                              _%tl4549745644%_
                                              _%e4549845647%_
                                              _%hd4549945651%_
                                              _%tl4550045654%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl4549445634%_)
                                                 (let ((_%__splice4590145902%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4549445634%_
                                                         '0)))
                                                   (let ((_%tl4551245554%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4590145902%_
                                                             '1)))
                                                         (_%target4551045551%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4590145902%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4551245554%_)
                                                         (_%__match4595545956%_
                                                          _%e4548945617%_
                                                          _%hd4549045621%_
                                                          _%tl4549145624%_
                                                          _%e4549245627%_
                                                          _%hd4549345631%_
                                                          _%tl4549445634%_
                                                          _%__splice4590145902%_
                                                          _%target4551045551%_
                                                          _%tl4551245554%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4548545524%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4548545524%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4549445634%_)
                                             (let ((_%__splice4590145902%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4549445634%_
                                                     '0)))
                                               (let ((_%tl4551245554%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4590145902%_
                                                         '1)))
                                                     (_%target4551045551%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4590145902%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4551245554%_)
                                                     (_%__match4595545956%_
                                                      _%e4548945617%_
                                                      _%hd4549045621%_
                                                      _%tl4549145624%_
                                                      _%e4549245627%_
                                                      _%hd4549345631%_
                                                      _%tl4549445634%_
                                                      _%__splice4590145902%_
                                                      _%target4551045551%_
                                                      _%tl4551245554%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4548545524%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4548545524%_))))))
                                 (if (gx#stx-pair/null? _%tl4549445634%_)
                                     (let ((_%__splice4590145902%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4549445634%_
                                             '0)))
                                       (let ((_%tl4551245554%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4590145902%_
                                                 '1)))
                                             (_%target4551045551%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4590145902%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4551245554%_)
                                             (_%__match4595545956%_
                                              _%e4548945617%_
                                              _%hd4549045621%_
                                              _%tl4549145624%_
                                              _%e4549245627%_
                                              _%hd4549345631%_
                                              _%tl4549445634%_
                                              _%__splice4590145902%_
                                              _%target4551045551%_
                                              _%tl4551245554%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4548545524%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4548545524%_))))
                             (if (gx#stx-pair/null? _%tl4549445634%_)
                                 (let ((_%__splice4590145902%_
                                        (gx#syntax-split-splice->vector
                                         _%tl4549445634%_
                                         '0)))
                                   (let ((_%tl4551245554%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4590145902%_
                                             '1)))
                                         (_%target4551045551%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4590145902%_
                                             '0))))
                                     (if (gx#stx-null? _%tl4551245554%_)
                                         (_%__match4595545956%_
                                          _%e4548945617%_
                                          _%hd4549045621%_
                                          _%tl4549145624%_
                                          _%e4549245627%_
                                          _%hd4549345631%_
                                          _%tl4549445634%_
                                          _%__splice4590145902%_
                                          _%target4551045551%_
                                          _%tl4551245554%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4548545524%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4548545524%_))))
                         (if (gx#stx-pair/null? _%tl4549445634%_)
                             (let ((_%__splice4590145902%_
                                    (gx#syntax-split-splice->vector
                                     _%tl4549445634%_
                                     '0)))
                               (let ((_%tl4551245554%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4590145902%_
                                         '1)))
                                     (_%target4551045551%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4590145902%_
                                         '0))))
                                 (if (gx#stx-null? _%tl4551245554%_)
                                     (_%__match4595545956%_
                                      _%e4548945617%_
                                      _%hd4549045621%_
                                      _%tl4549145624%_
                                      _%e4549245627%_
                                      _%hd4549345631%_
                                      _%tl4549445634%_
                                      _%__splice4590145902%_
                                      _%target4551045551%_
                                      _%tl4551245554%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g4548545524%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4548545524%_))))))
                 (if (gx#stx-pair/null? _%tl4549445634%_)
                     (let ((_%__splice4590145902%_
                            (gx#syntax-split-splice->vector
                             _%tl4549445634%_
                             '0)))
                       (let ((_%tl4551245554%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4590145902%_ '1)))
                             (_%target4551045551%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4590145902%_ '0))))
                         (if (gx#stx-null? _%tl4551245554%_)
                             (_%__match4595545956%_
                              _%e4548945617%_
                              _%hd4549045621%_
                              _%tl4549145624%_
                              _%e4549245627%_
                              _%hd4549345631%_
                              _%tl4549445634%_
                              _%__splice4590145902%_
                              _%target4551045551%_
                              _%tl4551245554%_)
                             (let () (declare (not safe)) (_%g4548545524%_)))))
                     (let () (declare (not safe)) (_%g4548545524%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4548545524%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g4548545524%_)))))))
                             (foldr (lambda (_%g4567945682%_ _%g4568045685%_)
                                      (cons _%g4567945682%_ _%g4568045685%_))
                                    '()
                                    _%g4525645371%_)))))
                   _%body4528045366%_
                   _%clause4527145338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4527545347%_
                                           _%target4527245341%_
                                           '()))
                                        (_%g4525345286%_ _%g4525445290%_)))))
                              (_%g4525345286%_ _%g4525445290%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4526645319%_
                                                   _%target4526345313%_
                                                   '()))
                                                (_%g4525345286%_
                                                 _%g4525445290%_)))))
                                      (_%g4525345286%_ _%g4525445290%_))))
                              (_%g4525345286%_ _%g4525445290%_))))
                      (_%g4525345286%_ _%g4525445290%_)))))
          (_%g4525245688%_ _%stx45250%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx45696%_)
        (let* ((_%g4570045737%_
                (lambda (_%g4570145733%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4570145733%_)))
               (_%g4569945874%_
                (lambda (_%g4570145741%_)
                  (if (gx#stx-pair? _%g4570145741%_)
                      (let ((_%e4570545744%_ (gx#syntax-e _%g4570145741%_)))
                        (let ((_%hd4570645748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4570545744%_)))
                              (_%tl4570745751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4570545744%_))))
                          (if (gx#stx-pair? _%tl4570745751%_)
                              (let ((_%e4570845754%_
                                     (gx#syntax-e _%tl4570745751%_)))
                                (let ((_%hd4570945758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4570845754%_)))
                                      (_%tl4571045761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4570845754%_))))
                                  (if (gx#stx-pair? _%hd4570945758%_)
                                      (let ((_%e4571145764%_
                                             (gx#syntax-e _%hd4570945758%_)))
                                        (let ((_%hd4571245768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4571145764%_)))
                                              (_%tl4571345771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4571145764%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4571345771%_)
                                              (let ((_g45964_
                                                     (gx#syntax-split-splice
                                                      _%tl4571345771%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45965_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45964_)
                                                               (##values-length
                                                                _g45964_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45965_ 2)))
                (error "Context expects 2 values" _g45965_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4571445774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45964_
                                                            0)))
                                                        (_%tl4571645777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45964_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4571645777%_)
                                                        (letrec ((_%loop4571745780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4571545784%_ _%components4572145787%_)
                            (if (gx#stx-pair? _%hd4571545784%_)
                                (let ((_%e4571845789%_
                                       (gx#syntax-e _%hd4571545784%_)))
                                  (let ((_%lp-hd4571945793%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4571845789%_)))
                                        (_%lp-tl4572045796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4571845789%_))))
                                    (_%loop4571745780%_
                                     _%lp-tl4572045796%_
                                     (cons _%lp-hd4571945793%_
                                           _%components4572145787%_))))
                                (let ((_%components4572245799%_
                                       (reverse _%components4572145787%_)))
                                  (if (gx#stx-pair/null? _%tl4571045761%_)
                                      (let ((_g45966_
                                             (gx#syntax-split-splice
                                              _%tl4571045761%_
                                              '0)))
                                        (begin
                                          (let ((_g45967_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45966_)
                                                       (##values-length
                                                        _g45966_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45967_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45967_)))
                                          (let ((_%target4572345802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45966_ 0)))
                                                (_%tl4572545805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45966_ 1))))
                                            (if (gx#stx-null? _%tl4572545805%_)
                                                (letrec ((_%loop4572645808%_
                                                          (lambda (_%hd4572445812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4573045815%_)
                    (if (gx#stx-pair? _%hd4572445812%_)
                        (let ((_%e4572745817%_ (gx#syntax-e _%hd4572445812%_)))
                          (let ((_%lp-hd4572845821%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4572745817%_)))
                                (_%lp-tl4572945824%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4572745817%_))))
                            (_%loop4572645808%_
                             _%lp-tl4572945824%_
                             (cons _%lp-hd4572845821%_ _%body4573045815%_))))
                        (let ((_%body4573145827%_
                               (reverse _%body4573045815%_)))
                          ((lambda (_%g4570245830%_
                                    _%g4570345832%_
                                    _%g4570445833%_)
                             (if (gx#identifier? _%g4570445833%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g4570445833%_
                                                         (foldr (lambda (_%g4585745862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4585845865%_)
                          (cons _%g4585745862%_ _%g4585845865%_))
                        '()
                        _%g4570345832%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g4585945868%_
                                                             _%g4586045871%_)
                                                      (cons _%g4585945868%_
                                                            _%g4586045871%_))
                                                    '()
                                                    _%g4570245830%_)))
                                 (_%g4570045737%_ _%g4570145741%_)))
                           _%body4573145827%_
                           _%components4572245799%_
                           _%hd4571245768%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4572645808%_
                                                   _%target4572345802%_
                                                   '()))
                                                (_%g4570045737%_
                                                 _%g4570145741%_)))))
                                      (_%g4570045737%_ _%g4570145741%_)))))))
                  (_%loop4571745780%_ _%target4571445774%_ '()))
                (_%g4570045737%_ _%g4570145741%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4570045737%_
                                               _%g4570145741%_))))
                                      (_%g4570045737%_ _%g4570145741%_))))
                              (_%g4570045737%_ _%g4570145741%_))))
                      (_%g4570045737%_ _%g4570145741%_)))))
          (_%g4569945874%_ _%$stx45696%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx45880%_)
        (let ((_%g4588345890%_
               (lambda (_%g4588445886%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4588445886%_))))
          (_%g4588345890%_ _%$stx45880%_))))))
