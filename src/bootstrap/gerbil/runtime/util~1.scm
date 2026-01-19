(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g99830_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g99840_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx92602%_)
        (let* ((_%g9260692624%_
                (lambda (_%g9260792620%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9260792620%_)))
               (_%g9260592680%_
                (lambda (_%g9260792628%_)
                  (if (gx#stx-pair? _%g9260792628%_)
                      (let ((_%e9261092631%_ (gx#syntax-e _%g9260792628%_)))
                        (let ((_%hd9261192635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9261092631%_)))
                              (_%tl9261292638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9261092631%_))))
                          (if (gx#stx-pair? _%tl9261292638%_)
                              (let ((_%e9261392641%_
                                     (gx#syntax-e _%tl9261292638%_)))
                                (let ((_%hd9261492645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9261392641%_)))
                                      (_%tl9261592648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9261392641%_))))
                                  (if (gx#stx-pair? _%tl9261592648%_)
                                      (let ((_%e9261692651%_
                                             (gx#syntax-e _%tl9261592648%_)))
                                        (let ((_%hd9261792655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9261692651%_)))
                                              (_%tl9261892658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9261692651%_))))
                                          (if (gx#stx-null? _%tl9261892658%_)
                                              ((lambda (_%L92661%_ _%L92663%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L92663%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L92661%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9261792655%_
                                               _%hd9261492645%_)
                                              (_%g9260692624%_
                                               _%g9260792628%_))))
                                      (_%g9260692624%_ _%g9260792628%_))))
                              (_%g9260692624%_ _%g9260792628%_))))
                      (_%g9260692624%_ _%g9260792628%_)))))
          (_%g9260592680%_ _%$stx92602%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx92684%_)
        (let* ((_%g9268892698%_
                (lambda (_%g9268992694%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9268992694%_)))
               (_%g9268792719%_
                (lambda (_%g9268992702%_)
                  (if (gx#stx-pair? _%g9268992702%_)
                      (let ((_%e9269092705%_ (gx#syntax-e _%g9268992702%_)))
                        (let ((_%hd9269192709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9269092705%_)))
                              (_%tl9269292712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9269092705%_))))
                          (if (gx#stx-null? _%tl9269292712%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 (cons '#f '())))))
                              (_%g9268892698%_ _%g9268992702%_))))
                      (_%g9268892698%_ _%g9268992702%_)))))
          (_%g9268792719%_ _%$stx92684%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx92723%_)
        (let* ((_%__stx9930799308%_ _%$stx92723%_)
               (_%g9272892753%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9930799308%_))))
          (let ((_%__kont9931099311%_
                 (lambda (_%L92831%_ _%L92833%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (cons (cons (gx#datum->syntax '#f 'declare)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'not)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'interrupts-enabled)
                                                             '()))
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'again)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'spin)
                                 (cons '0 '()))
                           '())
                     (cons (cons (gx#datum->syntax '#f 'cond)
                                 (cons (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fx=)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-cas!)
                                                               (cons _%L92833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '0 (cons '1 (cons '0 '())))))
                 (cons '0 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-set!)
                                                         (cons _%L92833%_
                                                               (cons '1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'current-thread)
                                         '())
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##fx<)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'spin)
                                                               (cons _%L92831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##thread-yield!)
                                                               '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'again)
                             (cons (cons (gx#datum->syntax '#f '##fx+)
                                         (cons (gx#datum->syntax '#f 'spin)
                                               (cons '1 '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'else)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'let)
                             (cons (cons (gx#datum->syntax '#f 'owner)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%L92833%_
                                                           (cons '1 '())))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'eq?)
                         (cons (gx#datum->syntax '#f 'owner)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'macro-current-thread)
                                           '())
                                     '())))
                   (cons (cons (gx#datum->syntax
                                '#f
                                '##thread-deadlock-action!)
                               '())
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'not)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'macro-thread-end-condvar)
                                           (cons (gx#datum->syntax '#f 'owner)
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax
                                      '#f
                                      '##thread-deadlock-action!)
                                     '())
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'else)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##thread-yield!)
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'again)
                                                 (cons '0 '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont9931299313%_
                 (lambda (_%L92780%_)
                   (cons (gx#datum->syntax '#f '__lock-inline!)
                         (cons _%L92780%_ (cons '10 '()))))))
            (if (gx#stx-pair? _%__stx9930799308%_)
                (let ((_%e9273292801%_ (gx#syntax-e _%__stx9930799308%_)))
                  (let ((_%tl9273492808%_
                         (let () (declare (not safe)) (##cdr _%e9273292801%_)))
                        (_%hd9273392805%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9273292801%_))))
                    (if (gx#stx-pair? _%tl9273492808%_)
                        (let ((_%e9273592811%_ (gx#syntax-e _%tl9273492808%_)))
                          (let ((_%tl9273792818%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9273592811%_)))
                                (_%hd9273692815%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9273592811%_))))
                            (if (gx#stx-pair? _%tl9273792818%_)
                                (let ((_%e9273892821%_
                                       (gx#syntax-e _%tl9273792818%_)))
                                  (let ((_%tl9274092828%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9273892821%_)))
                                        (_%hd9273992825%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9273892821%_))))
                                    (if (gx#stx-null? _%tl9274092828%_)
                                        (_%__kont9931099311%_
                                         _%hd9273992825%_
                                         _%hd9273692815%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9272892753%_)))))
                                (if (gx#stx-null? _%tl9273792818%_)
                                    (_%__kont9931299313%_ _%hd9273692815%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9272892753%_))))))
                        (let () (declare (not safe)) (_%g9272892753%_)))))
                (let () (declare (not safe)) (_%g9272892753%_)))))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx92852%_)
        (let* ((_%g9285692870%_
                (lambda (_%g9285792866%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9285792866%_)))
               (_%g9285592911%_
                (lambda (_%g9285792874%_)
                  (if (gx#stx-pair? _%g9285792874%_)
                      (let ((_%e9285992877%_ (gx#syntax-e _%g9285792874%_)))
                        (let ((_%hd9286092881%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9285992877%_)))
                              (_%tl9286192884%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9285992877%_))))
                          (if (gx#stx-pair? _%tl9286192884%_)
                              (let ((_%e9286292887%_
                                     (gx#syntax-e _%tl9286192884%_)))
                                (let ((_%hd9286392891%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9286292887%_)))
                                      (_%tl9286492894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9286292887%_))))
                                  (if (gx#stx-null? _%tl9286492894%_)
                                      ((lambda (_%L92897%_)
                                         (cons (gx#datum->syntax '#f 'begin)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##vector-set!)
                                                           (cons _%L92897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##vector-cas!)
                         (cons _%L92897%_ (cons '0 (cons '0 (cons '1 '())))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd9286392891%_)
                                      (_%g9285692870%_ _%g9285792874%_))))
                              (_%g9285692870%_ _%g9285792874%_))))
                      (_%g9285692870%_ _%g9285792874%_)))))
          (_%g9285592911%_ _%$stx92852%_))))
    (define |[:0:]#__do-inline-lock!|
      (lambda (_%$stx92915%_)
        (let* ((_%g9291992937%_
                (lambda (_%g9292092933%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9292092933%_)))
               (_%g9291892992%_
                (lambda (_%g9292092941%_)
                  (if (gx#stx-pair? _%g9292092941%_)
                      (let ((_%e9292392944%_ (gx#syntax-e _%g9292092941%_)))
                        (let ((_%hd9292492948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9292392944%_)))
                              (_%tl9292592951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9292392944%_))))
                          (if (gx#stx-pair? _%tl9292592951%_)
                              (let ((_%e9292692954%_
                                     (gx#syntax-e _%tl9292592951%_)))
                                (let ((_%hd9292792958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9292692954%_)))
                                      (_%tl9292892961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9292692954%_))))
                                  (if (gx#stx-pair? _%tl9292892961%_)
                                      (let ((_%e9292992964%_
                                             (gx#syntax-e _%tl9292892961%_)))
                                        (let ((_%hd9293092968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9292992964%_)))
                                              (_%tl9293192971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9292992964%_))))
                                          (if (gx#stx-null? _%tl9293192971%_)
                                              ((lambda (_%L92974%_ _%L92976%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '__lock-inline!)
                           (cons _%L92976%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'begin0)
                                 (cons _%L92974%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '__unlock-inline!)
                                                   (cons _%L92976%_ '()))
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9293092968%_
                                               _%hd9292792958%_)
                                              (_%g9291992937%_
                                               _%g9292092941%_))))
                                      (_%g9291992937%_ _%g9292092941%_))))
                              (_%g9291992937%_ _%g9292092941%_))))
                      (_%g9291992937%_ _%g9292092941%_)))))
          (_%g9291892992%_ _%$stx92915%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx92996%_)
        (let* ((_%g9300093018%_
                (lambda (_%g9300193014%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9300193014%_)))
               (_%g9299993073%_
                (lambda (_%g9300193022%_)
                  (if (gx#stx-pair? _%g9300193022%_)
                      (let ((_%e9300493025%_ (gx#syntax-e _%g9300193022%_)))
                        (let ((_%hd9300593029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9300493025%_)))
                              (_%tl9300693032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9300493025%_))))
                          (if (gx#stx-pair? _%tl9300693032%_)
                              (let ((_%e9300793035%_
                                     (gx#syntax-e _%tl9300693032%_)))
                                (let ((_%hd9300893039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9300793035%_)))
                                      (_%tl9300993042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9300793035%_))))
                                  (if (gx#stx-pair? _%tl9300993042%_)
                                      (let ((_%e9301093045%_
                                             (gx#syntax-e _%tl9300993042%_)))
                                        (let ((_%hd9301193049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9301093045%_)))
                                              (_%tl9301293052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9301093045%_))))
                                          (if (gx#stx-null? _%tl9301293052%_)
                                              ((lambda (_%L93055%_ _%L93057%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L93057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'key)
                                 (cons (gx#datum->syntax '#f 'lst)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'default)
                                                   (cons '#f '()))
                                             '()))))
                     (cons (cons (gx#datum->syntax '#f 'cond)
                                 (cons (cons (cons (gx#datum->syntax '#f 'and)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'pair?)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lst)
                             '()))
                 (cons (cons _%L93055%_
                             (cons (gx#datum->syntax '#f 'key)
                                   (cons (gx#datum->syntax '#f 'lst) '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (gx#datum->syntax '#f '=>)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'cdr)
                                                         '())))
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'procedure?)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'default)
                                                               '()))
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':-)
                             (cons (gx#datum->syntax '#f 'default)
                                   (cons (gx#datum->syntax '#f ':procedure)
                                         '())))
                       (cons (gx#datum->syntax '#f 'key) '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'else)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'default)
                                                               '()))
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9301193049%_
                                               _%hd9300893039%_)
                                              (_%g9300093018%_
                                               _%g9300193022%_))))
                                      (_%g9300093018%_ _%g9300193022%_))))
                              (_%g9300093018%_ _%g9300193022%_))))
                      (_%g9300093018%_ _%g9300193022%_)))))
          (_%g9299993073%_ _%$stx92996%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx93077%_)
        (let* ((_%g9308193099%_
                (lambda (_%g9308293095%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9308293095%_)))
               (_%g9308093154%_
                (lambda (_%g9308293103%_)
                  (if (gx#stx-pair? _%g9308293103%_)
                      (let ((_%e9308593106%_ (gx#syntax-e _%g9308293103%_)))
                        (let ((_%hd9308693110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9308593106%_)))
                              (_%tl9308793113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9308593106%_))))
                          (if (gx#stx-pair? _%tl9308793113%_)
                              (let ((_%e9308893116%_
                                     (gx#syntax-e _%tl9308793113%_)))
                                (let ((_%hd9308993120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9308893116%_)))
                                      (_%tl9309093123%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9308893116%_))))
                                  (if (gx#stx-pair? _%tl9309093123%_)
                                      (let ((_%e9309193126%_
                                             (gx#syntax-e _%tl9309093123%_)))
                                        (let ((_%hd9309293130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9309193126%_)))
                                              (_%tl9309393133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9309193126%_))))
                                          (if (gx#stx-null? _%tl9309393133%_)
                                              ((lambda (_%L93136%_ _%L93138%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L93138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'key)
                                 (cons (gx#datum->syntax '#f 'lst)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'default)
                                                   (cons '#f '()))
                                             '()))))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (gx#datum->syntax '#f 'lp)
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'rest)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'lst)
                                                               '()))
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'match)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'rest)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '@list)
                                         (cons (gx#datum->syntax '#f 'k)
                                               (cons (gx#datum->syntax '#f 'v)
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))))
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons _%L93136%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'k)
                         (cons (gx#datum->syntax '#f 'key) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'v)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'lp)
                               (cons (gx#datum->syntax '#f 'rest) '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'procedure?)
                         (cons (gx#datum->syntax '#f 'default) '()))
                   (cons (cons (cons (gx#datum->syntax '#f ':-)
                                     (cons (gx#datum->syntax '#f 'default)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  ':procedure)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'key) '()))
                         (cons (gx#datum->syntax '#f 'default) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9309293130%_
                                               _%hd9308993120%_)
                                              (_%g9308193099%_
                                               _%g9308293103%_))))
                                      (_%g9308193099%_ _%g9308293103%_))))
                              (_%g9308193099%_ _%g9308293103%_))))
                      (_%g9308193099%_ _%g9308293103%_)))))
          (_%g9308093154%_ _%$stx93077%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx93158%_)
        (let* ((_%g9316293180%_
                (lambda (_%g9316393176%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9316393176%_)))
               (_%g9316193235%_
                (lambda (_%g9316393184%_)
                  (if (gx#stx-pair? _%g9316393184%_)
                      (let ((_%e9316693187%_ (gx#syntax-e _%g9316393184%_)))
                        (let ((_%hd9316793191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9316693187%_)))
                              (_%tl9316893194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9316693187%_))))
                          (if (gx#stx-pair? _%tl9316893194%_)
                              (let ((_%e9316993197%_
                                     (gx#syntax-e _%tl9316893194%_)))
                                (let ((_%hd9317093201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9316993197%_)))
                                      (_%tl9317193204%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9316993197%_))))
                                  (if (gx#stx-pair? _%tl9317193204%_)
                                      (let ((_%e9317293207%_
                                             (gx#syntax-e _%tl9317193204%_)))
                                        (let ((_%hd9317393211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9317293207%_)))
                                              (_%tl9317493214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9317293207%_))))
                                          (if (gx#stx-null? _%tl9317493214%_)
                                              ((lambda (_%L93217%_ _%L93219%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L93219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'el)
                                 (cons (gx#datum->syntax '#f 'lst) '())))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (gx#datum->syntax '#f 'lp)
                                       (cons (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'rest)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'lst)
                                                               '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'r)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@list)
                                   '())
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'match)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'rest)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '@list)
                                         (cons (gx#datum->syntax '#f 'hd)
                                               (gx#datum->syntax '#f 'rest)))
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons _%L93217%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'el)
                         (cons (gx#datum->syntax '#f 'hd) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'foldl1)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (gx#datum->syntax '#f 'rest)
                                     (cons (gx#datum->syntax '#f 'r) '()))))
                   (cons (cons (gx#datum->syntax '#f 'lp)
                               (cons (gx#datum->syntax '#f 'rest)
                                     (cons (cons (gx#datum->syntax '#f 'cons)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'hd)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'r)
                                                             '())))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (gx#datum->syntax '#f 'lst)
                                               '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9317393211%_
                                               _%hd9317093201%_)
                                              (_%g9316293180%_
                                               _%g9316393184%_))))
                                      (_%g9316293180%_ _%g9316393184%_))))
                              (_%g9316293180%_ _%g9316393184%_))))
                      (_%g9316293180%_ _%g9316393184%_)))))
          (_%g9316193235%_ _%$stx93158%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx93239%_)
        (let* ((_%g9324393254%_
                (lambda (_%g9324493250%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9324493250%_)))
               (_%g9324293283%_
                (lambda (_%g9324493258%_)
                  (if (gx#stx-pair? _%g9324493258%_)
                      (let ((_%e9324693261%_ (gx#syntax-e _%g9324493258%_)))
                        (let ((_%hd9324793265%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9324693261%_)))
                              (_%tl9324893268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9324693261%_))))
                          ((lambda (_%L93271%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L93271%_)))
                           _%tl9324893268%_)))
                      (_%g9324393254%_ _%g9324493258%_)))))
          (_%g9324293283%_ _%$stx93239%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx93287%_)
        (let* ((_%__stx9938299383%_ _%$stx93287%_)
               (_%g9329893512%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9938299383%_))))
          (let ((_%__kont9938599386%_
                 (lambda (_%L94365%_
                          _%L94367%_
                          _%L94368%_
                          _%L94369%_
                          _%L94370%_)
                   (cons _%L94370%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9440094403%_
                                                     _%g9440194406%_)
                                              (cons _%g9440094403%_
                                                    _%g9440194406%_))
                                            '()
                                            _%L94368%_)
                                           (cons _%L94369%_
                                                 (cons _%L94367%_
                                                       (cons _%L94365%_
                                                             '())))))))))
                (_%__kont9938999390%_
                 (lambda (_%L94218%_ _%L94220%_ _%L94221%_ _%L94222%_)
                   (cons _%L94222%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9424594248%_
                                                     _%g9424694251%_)
                                              (cons _%g9424594248%_
                                                    _%g9424694251%_))
                                            '()
                                            _%L94220%_)
                                           (cons _%L94221%_
                                                 (cons _%L94218%_
                                                       (cons _%L94218%_
                                                             '())))))))))
                (_%__kont9939399394%_
                 (lambda (_%L94121%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L94121%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9939599396%_
                 (lambda (_%L94044%_
                          _%L94046%_
                          _%L94047%_
                          _%L94048%_
                          _%L94049%_
                          _%L94050%_)
                   (cons _%L94050%_
                         (cons '2
                               (cons (cons (cons _%L94048%_
                                                 (cons _%L94047%_ '()))
                                           _%L94049%_)
                                     (cons _%L94046%_ _%L94044%_))))))
                (_%__kont9939799398%_
                 (lambda (_%L93925%_
                          _%L93927%_
                          _%L93928%_
                          _%L93929%_
                          _%L93930%_)
                   (cons _%L93930%_
                         (cons '2
                               (cons (cons (cons _%L93928%_
                                                 (cons _%L93928%_ '()))
                                           _%L93929%_)
                                     (cons _%L93927%_ _%L93925%_))))))
                (_%__kont9939999400%_
                 (lambda (_%L93842%_ _%L93844%_ _%L93845%_)
                   (cons _%L93845%_
                         (cons '3 (cons '() (cons _%L93844%_ _%L93842%_))))))
                (_%__kont9940199402%_
                 (lambda (_%L93763%_
                          _%L93765%_
                          _%L93766%_
                          _%L93767%_
                          _%L93768%_)
                   (cons _%L93768%_
                         (cons '3
                               (cons (cons _%L93766%_ _%L93767%_)
                                     (cons _%L93765%_ _%L93763%_))))))
                (_%__kont9940399404%_
                 (lambda (_%L93647%_
                          _%L93649%_
                          _%L93650%_
                          _%L93651%_
                          _%L93652%_
                          _%L93653%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L93650%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L93647%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f 'tagval)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'DBG-helper)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tagval)
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons (__foldr1
                                              (lambda (_%g9368593690%_
                                                       _%g9368693693%_)
                                                (cons _%g9368593690%_
                                                      _%g9368693693%_))
                                              '()
                                              _%L93652%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g9368793696%_
                                                       _%g9368893699%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g9368793696%_ '())))
              _%g9368893699%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L93651%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L93649%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9973399734%_
                    (lambda (_%e9346893519%_
                             _%hd9346993523%_
                             _%tl9347093526%_
                             _%e9347193529%_
                             _%hd9347293533%_
                             _%tl9347393536%_
                             _%e9347493539%_
                             _%e9347593543%_
                             _%hd9347693547%_
                             _%tl9347793550%_
                             _%__splice9940599406%_
                             _%target9347893553%_
                             _%tl9348093556%_)
                      (letrec ((_%loop9348193559%_
                                (lambda (_%hd9347993563%_
                                         _%exprs9348593566%_
                                         _%names9348693568%_)
                                  (if (gx#stx-pair? _%hd9347993563%_)
                                      (let ((_%e9348293571%_
                                             (gx#syntax-e _%hd9347993563%_)))
                                        (let ((_%lp-tl9348493578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9348293571%_)))
                                              (_%lp-hd9348393575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9348293571%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd9348393575%_)
                                              (let ((_%e9348993581%_
                                                     (gx#syntax-e
                                                      _%lp-hd9348393575%_)))
                                                (let ((_%tl9349193588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e9348993581%_)))
                                                      (_%hd9349093585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e9348993581%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl9349193588%_)
                                                      (let ((_%e9349293591%_
                                                             (gx#syntax-e
                                                              _%tl9349193588%_)))
                                                        (let ((_%tl9349493598%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e9349293591%_)))
                      (_%hd9349393595%_
                       (let () (declare (not safe)) (##car _%e9349293591%_))))
                  (if (gx#stx-null? _%tl9349493598%_)
                      (_%loop9348193559%_
                       _%lp-tl9348493578%_
                       (cons _%hd9349393595%_ _%exprs9348593566%_)
                       (cons _%hd9349093585%_ _%names9348693568%_))
                      (let () (declare (not safe)) (_%g9329893512%_)))))
              (let () (declare (not safe)) (_%g9329893512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g9329893512%_)))))
                                      (let ((_%names9348893604%_
                                             (reverse _%names9348693568%_))
                                            (_%exprs9348793601%_
                                             (reverse _%exprs9348593566%_)))
                                        (if (gx#stx-pair? _%tl9347793550%_)
                                            (let ((_%e9349593607%_
                                                   (gx#syntax-e
                                                    _%tl9347793550%_)))
                                              (let ((_%tl9349793614%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9349593607%_)))
                                                    (_%hd9349693611%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9349593607%_))))
                                                (if (gx#stx-null?
                                                     _%hd9349693611%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9349793614%_)
                                                        (let ((_%e9349893617%_
                                                               (gx#syntax-e
                                                                _%tl9349793614%_)))
                                                          (let ((_%tl9350093624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9349893617%_)))
                        (_%hd9349993621%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9349893617%_))))
                    (if (gx#stx-pair? _%tl9350093624%_)
                        (let ((_%e9350193627%_ (gx#syntax-e _%tl9350093624%_)))
                          (let ((_%tl9350393634%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9350193627%_)))
                                (_%hd9350293631%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9350193627%_))))
                            (if (gx#stx-pair? _%tl9350393634%_)
                                (let ((_%e9350493637%_
                                       (gx#syntax-e _%tl9350393634%_)))
                                  (let ((_%tl9350693644%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9350493637%_)))
                                        (_%hd9350593641%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9350493637%_))))
                                    (if (gx#stx-null? _%tl9350693644%_)
                                        (_%__kont9940399404%_
                                         _%hd9350593641%_
                                         _%hd9350293631%_
                                         _%hd9349993621%_
                                         _%exprs9348793601%_
                                         _%names9348893604%_
                                         _%hd9346993523%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9329893512%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9329893512%_)))))
                        (let () (declare (not safe)) (_%g9329893512%_)))))
                (let () (declare (not safe)) (_%g9329893512%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9329893512%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9329893512%_))))))))
                        (_%loop9348193559%_ _%target9347893553%_ '() '()))))
                   (_%__match9951199512%_
                    (lambda (_%e9334094144%_
                             _%hd9334194148%_
                             _%tl9334294151%_
                             _%e9334394154%_
                             _%hd9334494158%_
                             _%tl9334594161%_
                             _%e9334694164%_
                             _%e9334794168%_
                             _%hd9334894172%_
                             _%tl9334994175%_
                             _%__splice9939199392%_
                             _%target9335094178%_
                             _%tl9335294181%_
                             _%e9335994184%_
                             _%hd9336094188%_
                             _%tl9336194191%_)
                      (letrec ((_%loop9335394194%_
                                (lambda (_%hd9335194198%_ _%exprs9335794201%_)
                                  (if (gx#stx-pair? _%hd9335194198%_)
                                      (let ((_%e9335494204%_
                                             (gx#syntax-e _%hd9335194198%_)))
                                        (let ((_%lp-tl9335694211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9335494204%_)))
                                              (_%lp-hd9335594208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9335494204%_))))
                                          (_%loop9335394194%_
                                           _%lp-tl9335694211%_
                                           (cons _%lp-hd9335594208%_
                                                 _%exprs9335794201%_))))
                                      (let ((_%exprs9335894214%_
                                             (reverse _%exprs9335794201%_)))
                                        (_%__kont9938999390%_
                                         _%hd9336094188%_
                                         _%exprs9335894214%_
                                         _%hd9334894172%_
                                         _%hd9334194148%_))))))
                        (_%loop9335394194%_ _%target9335094178%_ '()))))
                   (_%__match9947199472%_
                    (lambda (_%e9330594261%_
                             _%hd9330694265%_
                             _%tl9330794268%_
                             _%e9330894271%_
                             _%hd9330994275%_
                             _%tl9331094278%_
                             _%e9331194281%_
                             _%e9331294285%_
                             _%hd9331394289%_
                             _%tl9331494292%_
                             _%__splice9938799388%_
                             _%target9331594295%_
                             _%tl9331794298%_
                             _%e9332494301%_
                             _%hd9332594305%_
                             _%tl9332694308%_
                             _%e9332794311%_
                             _%hd9332894315%_
                             _%tl9332994318%_
                             _%e9333094321%_
                             _%hd9333194325%_
                             _%tl9333294328%_
                             _%e9333394331%_
                             _%hd9333494335%_
                             _%tl9333594338%_)
                      (letrec ((_%loop9331894341%_
                                (lambda (_%hd9331694345%_ _%exprs9332294348%_)
                                  (if (gx#stx-pair? _%hd9331694345%_)
                                      (let ((_%e9331994351%_
                                             (gx#syntax-e _%hd9331694345%_)))
                                        (let ((_%lp-tl9332194358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9331994351%_)))
                                              (_%lp-hd9332094355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9331994351%_))))
                                          (_%loop9331894341%_
                                           _%lp-tl9332194358%_
                                           (cons _%lp-hd9332094355%_
                                                 _%exprs9332294348%_))))
                                      (let ((_%exprs9332394361%_
                                             (reverse _%exprs9332294348%_)))
                                        (_%__kont9938599386%_
                                         _%hd9333494335%_
                                         _%hd9333194325%_
                                         _%exprs9332394361%_
                                         _%hd9331394289%_
                                         _%hd9330694265%_))))))
                        (_%loop9331894341%_ _%target9331594295%_ '())))))
              (if (gx#stx-pair? _%__stx9938299383%_)
                  (let ((_%e9330594261%_ (gx#syntax-e _%__stx9938299383%_)))
                    (let ((_%tl9330794268%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e9330594261%_)))
                          (_%hd9330694265%_
                           (let ()
                             (declare (not safe))
                             (##car _%e9330594261%_))))
                      (if (gx#stx-pair? _%tl9330794268%_)
                          (let ((_%e9330894271%_
                                 (gx#syntax-e _%tl9330794268%_)))
                            (let ((_%tl9331094278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9330894271%_)))
                                  (_%hd9330994275%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9330894271%_))))
                              (if (gx#stx-datum? _%hd9330994275%_)
                                  (let ((_%e9331194281%_
                                         (gx#stx-e _%hd9330994275%_)))
                                    (if (equal? _%e9331194281%_ '1)
                                        (if (gx#stx-pair? _%tl9331094278%_)
                                            (let ((_%e9331294285%_
                                                   (gx#syntax-e
                                                    _%tl9331094278%_)))
                                              (let ((_%tl9331494292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9331294285%_)))
                                                    (_%hd9331394289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9331294285%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl9331494292%_)
                                                    (if (let ((__tmp99829
                                                               (gx#stx-length
                                                                _%tl9331494292%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp99829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9938799388%_
                       (gx#syntax-split-splice->vector _%tl9331494292%_ '2)))
                  (let ((_%tl9331794298%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9938799388%_ '1)))
                        (_%target9331594295%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9938799388%_ '0))))
                    (if (gx#stx-pair? _%tl9331794298%_)
                        (let ((_%e9332494301%_ (gx#syntax-e _%tl9331794298%_)))
                          (let ((_%tl9332694308%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9332494301%_)))
                                (_%hd9332594305%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9332494301%_))))
                            (if (gx#stx-pair? _%hd9332594305%_)
                                (let ((_%e9332794311%_
                                       (gx#syntax-e _%hd9332594305%_)))
                                  (let ((_%tl9332994318%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9332794311%_)))
                                        (_%hd9332894315%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9332794311%_))))
                                    (if (gx#identifier? _%hd9332894315%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g99830_|
                                             _%hd9332894315%_)
                                            (if (gx#stx-pair? _%tl9332994318%_)
                                                (let ((_%e9333094321%_
                                                       (gx#syntax-e
                                                        _%tl9332994318%_)))
                                                  (let ((_%tl9333294328%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9333094321%_)))
                                                        (_%hd9333194325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9333094321%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9333294328%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9332694308%_)
                                                            (let ((_%e9333394331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9332694308%_)))
                      (let ((_%tl9333594338%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9333394331%_)))
                            (_%hd9333494335%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9333394331%_))))
                        (if (gx#stx-null? _%tl9333594338%_)
                            (_%__match9947199472%_
                             _%e9330594261%_
                             _%hd9330694265%_
                             _%tl9330794268%_
                             _%e9330894271%_
                             _%hd9330994275%_
                             _%tl9331094278%_
                             _%e9331194281%_
                             _%e9331294285%_
                             _%hd9331394289%_
                             _%tl9331494292%_
                             _%__splice9938799388%_
                             _%target9331594295%_
                             _%tl9331794298%_
                             _%e9332494301%_
                             _%hd9332594305%_
                             _%tl9332694308%_
                             _%e9332794311%_
                             _%hd9332894315%_
                             _%tl9332994318%_
                             _%e9333094321%_
                             _%hd9333194325%_
                             _%tl9333294328%_
                             _%e9333394331%_
                             _%hd9333494335%_
                             _%tl9333594338%_)
                            (if (let ((__tmp99831
                                       (gx#stx-length _%tl9331494292%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp99831 '1))
                                (let ((_%__splice9939199392%_
                                       (gx#syntax-split-splice->vector
                                        _%tl9331494292%_
                                        '1)))
                                  (let ((_%tl9335294181%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9939199392%_
                                            '1)))
                                        (_%target9335094178%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9939199392%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl9335294181%_)
                                        (let ((_%e9335994184%_
                                               (gx#syntax-e _%tl9335294181%_)))
                                          (let ((_%tl9336194191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e9335994184%_)))
                                                (_%hd9336094188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e9335994184%_))))
                                            (if (gx#stx-null? _%tl9336194191%_)
                                                (_%__match9951199512%_
                                                 _%e9330594261%_
                                                 _%hd9330694265%_
                                                 _%tl9330794268%_
                                                 _%e9330894271%_
                                                 _%hd9330994275%_
                                                 _%tl9331094278%_
                                                 _%e9331194281%_
                                                 _%e9331294285%_
                                                 _%hd9331394289%_
                                                 _%tl9331494292%_
                                                 _%__splice9939199392%_
                                                 _%target9335094178%_
                                                 _%tl9335294181%_
                                                 _%e9335994184%_
                                                 _%hd9336094188%_
                                                 _%tl9336194191%_)
                                                (if (gx#stx-null?
                                                     _%tl9331494292%_)
                                                    (_%__kont9939399394%_
                                                     _%hd9331394289%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9329893512%_))))))
                                        (if (gx#stx-null? _%tl9331494292%_)
                                            (_%__kont9939399394%_
                                             _%hd9331394289%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9329893512%_))))))
                                (if (gx#stx-null? _%tl9331494292%_)
                                    (_%__kont9939399394%_ _%hd9331394289%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9329893512%_)))))))
                    (if (let ((__tmp99832 (gx#stx-length _%tl9331494292%_)))
                          (declare (not safe))
                          (##fx>= __tmp99832 '1))
                        (let ((_%__splice9939199392%_
                               (gx#syntax-split-splice->vector
                                _%tl9331494292%_
                                '1)))
                          (let ((_%tl9335294181%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9939199392%_ '1)))
                                (_%target9335094178%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9939199392%_ '0))))
                            (if (gx#stx-pair? _%tl9335294181%_)
                                (let ((_%e9335994184%_
                                       (gx#syntax-e _%tl9335294181%_)))
                                  (let ((_%tl9336194191%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9335994184%_)))
                                        (_%hd9336094188%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9335994184%_))))
                                    (if (gx#stx-null? _%tl9336194191%_)
                                        (_%__match9951199512%_
                                         _%e9330594261%_
                                         _%hd9330694265%_
                                         _%tl9330794268%_
                                         _%e9330894271%_
                                         _%hd9330994275%_
                                         _%tl9331094278%_
                                         _%e9331194281%_
                                         _%e9331294285%_
                                         _%hd9331394289%_
                                         _%tl9331494292%_
                                         _%__splice9939199392%_
                                         _%target9335094178%_
                                         _%tl9335294181%_
                                         _%e9335994184%_
                                         _%hd9336094188%_
                                         _%tl9336194191%_)
                                        (if (gx#stx-null? _%tl9331494292%_)
                                            (_%__kont9939399394%_
                                             _%hd9331394289%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9329893512%_))))))
                                (if (gx#stx-null? _%tl9331494292%_)
                                    (_%__kont9939399394%_ _%hd9331394289%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9329893512%_))))))
                        (if (gx#stx-null? _%tl9331494292%_)
                            (_%__kont9939399394%_ _%hd9331394289%_)
                            (let () (declare (not safe)) (_%g9329893512%_)))))
                (if (let ((__tmp99833 (gx#stx-length _%tl9331494292%_)))
                      (declare (not safe))
                      (##fx>= __tmp99833 '1))
                    (let ((_%__splice9939199392%_
                           (gx#syntax-split-splice->vector
                            _%tl9331494292%_
                            '1)))
                      (let ((_%tl9335294181%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9939199392%_ '1)))
                            (_%target9335094178%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9939199392%_ '0))))
                        (if (gx#stx-pair? _%tl9335294181%_)
                            (let ((_%e9335994184%_
                                   (gx#syntax-e _%tl9335294181%_)))
                              (let ((_%tl9336194191%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9335994184%_)))
                                    (_%hd9336094188%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9335994184%_))))
                                (if (gx#stx-null? _%tl9336194191%_)
                                    (_%__match9951199512%_
                                     _%e9330594261%_
                                     _%hd9330694265%_
                                     _%tl9330794268%_
                                     _%e9330894271%_
                                     _%hd9330994275%_
                                     _%tl9331094278%_
                                     _%e9331194281%_
                                     _%e9331294285%_
                                     _%hd9331394289%_
                                     _%tl9331494292%_
                                     _%__splice9939199392%_
                                     _%target9335094178%_
                                     _%tl9335294181%_
                                     _%e9335994184%_
                                     _%hd9336094188%_
                                     _%tl9336194191%_)
                                    (if (gx#stx-null? _%tl9331494292%_)
                                        (_%__kont9939399394%_ _%hd9331394289%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9329893512%_))))))
                            (if (gx#stx-null? _%tl9331494292%_)
                                (_%__kont9939399394%_ _%hd9331394289%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9329893512%_))))))
                    (if (gx#stx-null? _%tl9331494292%_)
                        (_%__kont9939399394%_ _%hd9331394289%_)
                        (let () (declare (not safe)) (_%g9329893512%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp99834
                                                           (gx#stx-length
                                                            _%tl9331494292%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp99834 '1))
                                                    (let ((_%__splice9939199392%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl9331494292%_
                                                            '1)))
                                                      (let ((_%tl9335294181%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9939199392%_ '1)))
                    (_%target9335094178%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9939199392%_ '0))))
                (if (gx#stx-pair? _%tl9335294181%_)
                    (let ((_%e9335994184%_ (gx#syntax-e _%tl9335294181%_)))
                      (let ((_%tl9336194191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9335994184%_)))
                            (_%hd9336094188%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9335994184%_))))
                        (if (gx#stx-null? _%tl9336194191%_)
                            (_%__match9951199512%_
                             _%e9330594261%_
                             _%hd9330694265%_
                             _%tl9330794268%_
                             _%e9330894271%_
                             _%hd9330994275%_
                             _%tl9331094278%_
                             _%e9331194281%_
                             _%e9331294285%_
                             _%hd9331394289%_
                             _%tl9331494292%_
                             _%__splice9939199392%_
                             _%target9335094178%_
                             _%tl9335294181%_
                             _%e9335994184%_
                             _%hd9336094188%_
                             _%tl9336194191%_)
                            (if (gx#stx-null? _%tl9331494292%_)
                                (_%__kont9939399394%_ _%hd9331394289%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9329893512%_))))))
                    (if (gx#stx-null? _%tl9331494292%_)
                        (_%__kont9939399394%_ _%hd9331394289%_)
                        (let () (declare (not safe)) (_%g9329893512%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9331494292%_)
                                                        (_%__kont9939399394%_
                                                         _%hd9331394289%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9329893512%_)))))
                                            (if (let ((__tmp99835
                                                       (gx#stx-length
                                                        _%tl9331494292%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp99835 '1))
                                                (let ((_%__splice9939199392%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl9331494292%_
                                                        '1)))
                                                  (let ((_%tl9335294181%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9939199392%_
                                                            '1)))
                                                        (_%target9335094178%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9939199392%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl9335294181%_)
                                                        (let ((_%e9335994184%_
                                                               (gx#syntax-e
                                                                _%tl9335294181%_)))
                                                          (let ((_%tl9336194191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9335994184%_)))
                        (_%hd9336094188%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9335994184%_))))
                    (if (gx#stx-null? _%tl9336194191%_)
                        (_%__match9951199512%_
                         _%e9330594261%_
                         _%hd9330694265%_
                         _%tl9330794268%_
                         _%e9330894271%_
                         _%hd9330994275%_
                         _%tl9331094278%_
                         _%e9331194281%_
                         _%e9331294285%_
                         _%hd9331394289%_
                         _%tl9331494292%_
                         _%__splice9939199392%_
                         _%target9335094178%_
                         _%tl9335294181%_
                         _%e9335994184%_
                         _%hd9336094188%_
                         _%tl9336194191%_)
                        (if (gx#stx-null? _%tl9331494292%_)
                            (_%__kont9939399394%_ _%hd9331394289%_)
                            (let () (declare (not safe)) (_%g9329893512%_))))))
                (if (gx#stx-null? _%tl9331494292%_)
                    (_%__kont9939399394%_ _%hd9331394289%_)
                    (let () (declare (not safe)) (_%g9329893512%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl9331494292%_)
                                                    (_%__kont9939399394%_
                                                     _%hd9331394289%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9329893512%_)))))
                                        (if (let ((__tmp99836
                                                   (gx#stx-length
                                                    _%tl9331494292%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp99836 '1))
                                            (let ((_%__splice9939199392%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl9331494292%_
                                                    '1)))
                                              (let ((_%tl9335294181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9939199392%_
                                                        '1)))
                                                    (_%target9335094178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9939199392%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl9335294181%_)
                                                    (let ((_%e9335994184%_
                                                           (gx#syntax-e
                                                            _%tl9335294181%_)))
                                                      (let ((_%tl9336194191%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9335994184%_)))
                    (_%hd9336094188%_
                     (let () (declare (not safe)) (##car _%e9335994184%_))))
                (if (gx#stx-null? _%tl9336194191%_)
                    (_%__match9951199512%_
                     _%e9330594261%_
                     _%hd9330694265%_
                     _%tl9330794268%_
                     _%e9330894271%_
                     _%hd9330994275%_
                     _%tl9331094278%_
                     _%e9331194281%_
                     _%e9331294285%_
                     _%hd9331394289%_
                     _%tl9331494292%_
                     _%__splice9939199392%_
                     _%target9335094178%_
                     _%tl9335294181%_
                     _%e9335994184%_
                     _%hd9336094188%_
                     _%tl9336194191%_)
                    (if (gx#stx-null? _%tl9331494292%_)
                        (_%__kont9939399394%_ _%hd9331394289%_)
                        (let () (declare (not safe)) (_%g9329893512%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9331494292%_)
                                                        (_%__kont9939399394%_
                                                         _%hd9331394289%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9329893512%_))))))
                                            (if (gx#stx-null? _%tl9331494292%_)
                                                (_%__kont9939399394%_
                                                 _%hd9331394289%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9329893512%_)))))))
                                (if (let ((__tmp99837
                                           (gx#stx-length _%tl9331494292%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp99837 '1))
                                    (let ((_%__splice9939199392%_
                                           (gx#syntax-split-splice->vector
                                            _%tl9331494292%_
                                            '1)))
                                      (let ((_%tl9335294181%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9939199392%_
                                                '1)))
                                            (_%target9335094178%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9939199392%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl9335294181%_)
                                            (let ((_%e9335994184%_
                                                   (gx#syntax-e
                                                    _%tl9335294181%_)))
                                              (let ((_%tl9336194191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9335994184%_)))
                                                    (_%hd9336094188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9335994184%_))))
                                                (if (gx#stx-null?
                                                     _%tl9336194191%_)
                                                    (_%__match9951199512%_
                                                     _%e9330594261%_
                                                     _%hd9330694265%_
                                                     _%tl9330794268%_
                                                     _%e9330894271%_
                                                     _%hd9330994275%_
                                                     _%tl9331094278%_
                                                     _%e9331194281%_
                                                     _%e9331294285%_
                                                     _%hd9331394289%_
                                                     _%tl9331494292%_
                                                     _%__splice9939199392%_
                                                     _%target9335094178%_
                                                     _%tl9335294181%_
                                                     _%e9335994184%_
                                                     _%hd9336094188%_
                                                     _%tl9336194191%_)
                                                    (if (gx#stx-null?
                                                         _%tl9331494292%_)
                                                        (_%__kont9939399394%_
                                                         _%hd9331394289%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9329893512%_))))))
                                            (if (gx#stx-null? _%tl9331494292%_)
                                                (_%__kont9939399394%_
                                                 _%hd9331394289%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9329893512%_))))))
                                    (if (gx#stx-null? _%tl9331494292%_)
                                        (_%__kont9939399394%_ _%hd9331394289%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9329893512%_)))))))
                        (if (let ((__tmp99838
                                   (gx#stx-length _%tl9331494292%_)))
                              (declare (not safe))
                              (##fx>= __tmp99838 '1))
                            (let ((_%__splice9939199392%_
                                   (gx#syntax-split-splice->vector
                                    _%tl9331494292%_
                                    '1)))
                              (let ((_%tl9335294181%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9939199392%_
                                        '1)))
                                    (_%target9335094178%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9939199392%_
                                        '0))))
                                (if (gx#stx-pair? _%tl9335294181%_)
                                    (let ((_%e9335994184%_
                                           (gx#syntax-e _%tl9335294181%_)))
                                      (let ((_%tl9336194191%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9335994184%_)))
                                            (_%hd9336094188%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9335994184%_))))
                                        (if (gx#stx-null? _%tl9336194191%_)
                                            (_%__match9951199512%_
                                             _%e9330594261%_
                                             _%hd9330694265%_
                                             _%tl9330794268%_
                                             _%e9330894271%_
                                             _%hd9330994275%_
                                             _%tl9331094278%_
                                             _%e9331194281%_
                                             _%e9331294285%_
                                             _%hd9331394289%_
                                             _%tl9331494292%_
                                             _%__splice9939199392%_
                                             _%target9335094178%_
                                             _%tl9335294181%_
                                             _%e9335994184%_
                                             _%hd9336094188%_
                                             _%tl9336194191%_)
                                            (if (gx#stx-null? _%tl9331494292%_)
                                                (_%__kont9939399394%_
                                                 _%hd9331394289%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9329893512%_))))))
                                    (if (gx#stx-null? _%tl9331494292%_)
                                        (_%__kont9939399394%_ _%hd9331394289%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9329893512%_))))))
                            (if (gx#stx-null? _%tl9331494292%_)
                                (_%__kont9939399394%_ _%hd9331394289%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9329893512%_)))))))
                (if (let ((__tmp99839 (gx#stx-length _%tl9331494292%_)))
                      (declare (not safe))
                      (##fx>= __tmp99839 '1))
                    (let ((_%__splice9939199392%_
                           (gx#syntax-split-splice->vector
                            _%tl9331494292%_
                            '1)))
                      (let ((_%tl9335294181%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9939199392%_ '1)))
                            (_%target9335094178%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9939199392%_ '0))))
                        (if (gx#stx-pair? _%tl9335294181%_)
                            (let ((_%e9335994184%_
                                   (gx#syntax-e _%tl9335294181%_)))
                              (let ((_%tl9336194191%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9335994184%_)))
                                    (_%hd9336094188%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9335994184%_))))
                                (if (gx#stx-null? _%tl9336194191%_)
                                    (_%__match9951199512%_
                                     _%e9330594261%_
                                     _%hd9330694265%_
                                     _%tl9330794268%_
                                     _%e9330894271%_
                                     _%hd9330994275%_
                                     _%tl9331094278%_
                                     _%e9331194281%_
                                     _%e9331294285%_
                                     _%hd9331394289%_
                                     _%tl9331494292%_
                                     _%__splice9939199392%_
                                     _%target9335094178%_
                                     _%tl9335294181%_
                                     _%e9335994184%_
                                     _%hd9336094188%_
                                     _%tl9336194191%_)
                                    (if (gx#stx-null? _%tl9331494292%_)
                                        (_%__kont9939399394%_ _%hd9331394289%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9329893512%_))))))
                            (if (gx#stx-null? _%tl9331494292%_)
                                (_%__kont9939399394%_ _%hd9331394289%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9329893512%_))))))
                    (if (gx#stx-null? _%tl9331494292%_)
                        (_%__kont9939399394%_ _%hd9331394289%_)
                        (let () (declare (not safe)) (_%g9329893512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9331494292%_)
                                                        (_%__kont9939399394%_
                                                         _%hd9331394289%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9329893512%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9329893512%_)))
                                        (if (equal? _%e9331194281%_ '2)
                                            (if (gx#stx-pair? _%tl9331094278%_)
                                                (let ((_%e9338693984%_
                                                       (gx#syntax-e
                                                        _%tl9331094278%_)))
                                                  (let ((_%tl9338893991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9338693984%_)))
                                                        (_%hd9338793988%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9338693984%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl9338893991%_)
                                                        (let ((_%e9338993994%_
                                                               (gx#syntax-e
                                                                _%tl9338893991%_)))
                                                          (let ((_%tl9339194001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9338993994%_)))
                        (_%hd9339093998%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9338993994%_))))
                    (if (gx#stx-pair? _%hd9339093998%_)
                        (let ((_%e9339294004%_ (gx#syntax-e _%hd9339093998%_)))
                          (let ((_%tl9339494011%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9339294004%_)))
                                (_%hd9339394008%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9339294004%_))))
                            (if (gx#stx-pair? _%hd9339394008%_)
                                (let ((_%e9339594014%_
                                       (gx#syntax-e _%hd9339394008%_)))
                                  (let ((_%tl9339794021%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9339594014%_)))
                                        (_%hd9339694018%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9339594014%_))))
                                    (if (gx#identifier? _%hd9339694018%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g99840_|
                                             _%hd9339694018%_)
                                            (if (gx#stx-pair? _%tl9339794021%_)
                                                (let ((_%e9339894024%_
                                                       (gx#syntax-e
                                                        _%tl9339794021%_)))
                                                  (let ((_%tl9340094031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9339894024%_)))
                                                        (_%hd9339994028%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9339894024%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9340094031%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9339494011%_)
                                                            (let ((_%e9340194034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9339494011%_)))
                      (let ((_%tl9340394041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9340194034%_)))
                            (_%hd9340294038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9340194034%_))))
                        (_%__kont9939599396%_
                         _%tl9339194001%_
                         _%tl9340394041%_
                         _%hd9340294038%_
                         _%hd9339994028%_
                         _%hd9338793988%_
                         _%hd9330694265%_)))
                    (_%__kont9939799398%_
                     _%tl9339194001%_
                     _%tl9339494011%_
                     _%hd9339394008%_
                     _%hd9338793988%_
                     _%hd9330694265%_))
                (_%__kont9939799398%_
                 _%tl9339194001%_
                 _%tl9339494011%_
                 _%hd9339394008%_
                 _%hd9338793988%_
                 _%hd9330694265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9939799398%_
                                                 _%tl9339194001%_
                                                 _%tl9339494011%_
                                                 _%hd9339394008%_
                                                 _%hd9338793988%_
                                                 _%hd9330694265%_))
                                            (_%__kont9939799398%_
                                             _%tl9339194001%_
                                             _%tl9339494011%_
                                             _%hd9339394008%_
                                             _%hd9338793988%_
                                             _%hd9330694265%_))
                                        (_%__kont9939799398%_
                                         _%tl9339194001%_
                                         _%tl9339494011%_
                                         _%hd9339394008%_
                                         _%hd9338793988%_
                                         _%hd9330694265%_))))
                                (_%__kont9939799398%_
                                 _%tl9339194001%_
                                 _%tl9339494011%_
                                 _%hd9339394008%_
                                 _%hd9338793988%_
                                 _%hd9330694265%_))))
                        (if (gx#stx-null? _%hd9339093998%_)
                            (_%__kont9939999400%_
                             _%tl9339194001%_
                             _%hd9338793988%_
                             _%hd9330694265%_)
                            (let () (declare (not safe)) (_%g9329893512%_))))))
                (let () (declare (not safe)) (_%g9329893512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9329893512%_)))
                                            (if (equal? _%e9331194281%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl9331094278%_)
                                                    (let ((_%e9345393733%_
                                                           (gx#syntax-e
                                                            _%tl9331094278%_)))
                                                      (let ((_%tl9345593740%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9345393733%_)))
                    (_%hd9345493737%_
                     (let () (declare (not safe)) (##car _%e9345393733%_))))
                (if (gx#stx-pair? _%tl9345593740%_)
                    (let ((_%e9345693743%_ (gx#syntax-e _%tl9345593740%_)))
                      (let ((_%tl9345893750%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9345693743%_)))
                            (_%hd9345793747%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9345693743%_))))
                        (if (gx#stx-pair? _%hd9345793747%_)
                            (let ((_%e9345993753%_
                                   (gx#syntax-e _%hd9345793747%_)))
                              (let ((_%tl9346193760%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9345993753%_)))
                                    (_%hd9346093757%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9345993753%_))))
                                (_%__kont9940199402%_
                                 _%tl9345893750%_
                                 _%tl9346193760%_
                                 _%hd9346093757%_
                                 _%hd9345493737%_
                                 _%hd9330694265%_)))
                            (if (gx#stx-pair/null? _%hd9345493737%_)
                                (let ((_%__splice9940599406%_
                                       (gx#syntax-split-splice->vector
                                        _%hd9345493737%_
                                        '0)))
                                  (let ((_%tl9348093556%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9940599406%_
                                            '1)))
                                        (_%target9347893553%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9940599406%_
                                            '0))))
                                    (if (gx#stx-null? _%tl9348093556%_)
                                        (_%__match9973399734%_
                                         _%e9330594261%_
                                         _%hd9330694265%_
                                         _%tl9330794268%_
                                         _%e9330894271%_
                                         _%hd9330994275%_
                                         _%tl9331094278%_
                                         _%e9331194281%_
                                         _%e9345393733%_
                                         _%hd9345493737%_
                                         _%tl9345593740%_
                                         _%__splice9940599406%_
                                         _%target9347893553%_
                                         _%tl9348093556%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9329893512%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9329893512%_))))))
                    (if (gx#stx-pair/null? _%hd9345493737%_)
                        (let ((_%__splice9940599406%_
                               (gx#syntax-split-splice->vector
                                _%hd9345493737%_
                                '0)))
                          (let ((_%tl9348093556%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9940599406%_ '1)))
                                (_%target9347893553%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9940599406%_ '0))))
                            (if (gx#stx-null? _%tl9348093556%_)
                                (_%__match9973399734%_
                                 _%e9330594261%_
                                 _%hd9330694265%_
                                 _%tl9330794268%_
                                 _%e9330894271%_
                                 _%hd9330994275%_
                                 _%tl9331094278%_
                                 _%e9331194281%_
                                 _%e9345393733%_
                                 _%hd9345493737%_
                                 _%tl9345593740%_
                                 _%__splice9940599406%_
                                 _%target9347893553%_
                                 _%tl9348093556%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9329893512%_)))))
                        (let () (declare (not safe)) (_%g9329893512%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9329893512%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9329893512%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g9329893512%_)))))
                          (let () (declare (not safe)) (_%g9329893512%_)))))
                  (let () (declare (not safe)) (_%g9329893512%_))))))))))
