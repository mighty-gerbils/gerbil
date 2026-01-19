(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g99803_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g99813_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx92575%_)
        (let* ((_%g9257992597%_
                (lambda (_%g9258092593%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9258092593%_)))
               (_%g9257892653%_
                (lambda (_%g9258092601%_)
                  (if (gx#stx-pair? _%g9258092601%_)
                      (let ((_%e9258392604%_ (gx#syntax-e _%g9258092601%_)))
                        (let ((_%hd9258492608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9258392604%_)))
                              (_%tl9258592611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9258392604%_))))
                          (if (gx#stx-pair? _%tl9258592611%_)
                              (let ((_%e9258692614%_
                                     (gx#syntax-e _%tl9258592611%_)))
                                (let ((_%hd9258792618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9258692614%_)))
                                      (_%tl9258892621%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9258692614%_))))
                                  (if (gx#stx-pair? _%tl9258892621%_)
                                      (let ((_%e9258992624%_
                                             (gx#syntax-e _%tl9258892621%_)))
                                        (let ((_%hd9259092628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9258992624%_)))
                                              (_%tl9259192631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9258992624%_))))
                                          (if (gx#stx-null? _%tl9259192631%_)
                                              ((lambda (_%L92634%_ _%L92636%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L92636%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L92634%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9259092628%_
                                               _%hd9258792618%_)
                                              (_%g9257992597%_
                                               _%g9258092601%_))))
                                      (_%g9257992597%_ _%g9258092601%_))))
                              (_%g9257992597%_ _%g9258092601%_))))
                      (_%g9257992597%_ _%g9258092601%_)))))
          (_%g9257892653%_ _%$stx92575%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx92657%_)
        (let* ((_%g9266192671%_
                (lambda (_%g9266292667%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9266292667%_)))
               (_%g9266092692%_
                (lambda (_%g9266292675%_)
                  (if (gx#stx-pair? _%g9266292675%_)
                      (let ((_%e9266392678%_ (gx#syntax-e _%g9266292675%_)))
                        (let ((_%hd9266492682%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9266392678%_)))
                              (_%tl9266592685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9266392678%_))))
                          (if (gx#stx-null? _%tl9266592685%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 (cons '#f '())))))
                              (_%g9266192671%_ _%g9266292675%_))))
                      (_%g9266192671%_ _%g9266292675%_)))))
          (_%g9266092692%_ _%$stx92657%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx92696%_)
        (let* ((_%__stx9928099281%_ _%$stx92696%_)
               (_%g9270192726%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9928099281%_))))
          (let ((_%__kont9928399284%_
                 (lambda (_%L92804%_ _%L92806%_)
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
                                                               (cons _%L92806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '0 (cons '1 (cons '0 '())))))
                 (cons '0 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-set!)
                                                         (cons _%L92806%_
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
                                                               (cons _%L92804%_
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
                                                     (cons _%L92806%_
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
                (_%__kont9928599286%_
                 (lambda (_%L92753%_)
                   (cons (gx#datum->syntax '#f '__lock-inline!)
                         (cons _%L92753%_ (cons '10 '()))))))
            (if (gx#stx-pair? _%__stx9928099281%_)
                (let ((_%e9270592774%_ (gx#syntax-e _%__stx9928099281%_)))
                  (let ((_%tl9270792781%_
                         (let () (declare (not safe)) (##cdr _%e9270592774%_)))
                        (_%hd9270692778%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9270592774%_))))
                    (if (gx#stx-pair? _%tl9270792781%_)
                        (let ((_%e9270892784%_ (gx#syntax-e _%tl9270792781%_)))
                          (let ((_%tl9271092791%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9270892784%_)))
                                (_%hd9270992788%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9270892784%_))))
                            (if (gx#stx-pair? _%tl9271092791%_)
                                (let ((_%e9271192794%_
                                       (gx#syntax-e _%tl9271092791%_)))
                                  (let ((_%tl9271392801%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9271192794%_)))
                                        (_%hd9271292798%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9271192794%_))))
                                    (if (gx#stx-null? _%tl9271392801%_)
                                        (_%__kont9928399284%_
                                         _%hd9271292798%_
                                         _%hd9270992788%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9270192726%_)))))
                                (if (gx#stx-null? _%tl9271092791%_)
                                    (_%__kont9928599286%_ _%hd9270992788%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9270192726%_))))))
                        (let () (declare (not safe)) (_%g9270192726%_)))))
                (let () (declare (not safe)) (_%g9270192726%_)))))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx92825%_)
        (let* ((_%g9282992843%_
                (lambda (_%g9283092839%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9283092839%_)))
               (_%g9282892884%_
                (lambda (_%g9283092847%_)
                  (if (gx#stx-pair? _%g9283092847%_)
                      (let ((_%e9283292850%_ (gx#syntax-e _%g9283092847%_)))
                        (let ((_%hd9283392854%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9283292850%_)))
                              (_%tl9283492857%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9283292850%_))))
                          (if (gx#stx-pair? _%tl9283492857%_)
                              (let ((_%e9283592860%_
                                     (gx#syntax-e _%tl9283492857%_)))
                                (let ((_%hd9283692864%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9283592860%_)))
                                      (_%tl9283792867%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9283592860%_))))
                                  (if (gx#stx-null? _%tl9283792867%_)
                                      ((lambda (_%L92870%_)
                                         (cons (gx#datum->syntax '#f 'begin)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##vector-set!)
                                                           (cons _%L92870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##vector-cas!)
                         (cons _%L92870%_ (cons '0 (cons '0 (cons '1 '())))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd9283692864%_)
                                      (_%g9282992843%_ _%g9283092847%_))))
                              (_%g9282992843%_ _%g9283092847%_))))
                      (_%g9282992843%_ _%g9283092847%_)))))
          (_%g9282892884%_ _%$stx92825%_))))
    (define |[:0:]#__do-inline-lock!|
      (lambda (_%$stx92888%_)
        (let* ((_%g9289292910%_
                (lambda (_%g9289392906%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9289392906%_)))
               (_%g9289192965%_
                (lambda (_%g9289392914%_)
                  (if (gx#stx-pair? _%g9289392914%_)
                      (let ((_%e9289692917%_ (gx#syntax-e _%g9289392914%_)))
                        (let ((_%hd9289792921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9289692917%_)))
                              (_%tl9289892924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9289692917%_))))
                          (if (gx#stx-pair? _%tl9289892924%_)
                              (let ((_%e9289992927%_
                                     (gx#syntax-e _%tl9289892924%_)))
                                (let ((_%hd9290092931%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9289992927%_)))
                                      (_%tl9290192934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9289992927%_))))
                                  (if (gx#stx-pair? _%tl9290192934%_)
                                      (let ((_%e9290292937%_
                                             (gx#syntax-e _%tl9290192934%_)))
                                        (let ((_%hd9290392941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9290292937%_)))
                                              (_%tl9290492944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9290292937%_))))
                                          (if (gx#stx-null? _%tl9290492944%_)
                                              ((lambda (_%L92947%_ _%L92949%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '__lock-inline!)
                           (cons _%L92949%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'begin0)
                                 (cons _%L92947%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '__unlock-inline!)
                                                   (cons _%L92949%_ '()))
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9290392941%_
                                               _%hd9290092931%_)
                                              (_%g9289292910%_
                                               _%g9289392914%_))))
                                      (_%g9289292910%_ _%g9289392914%_))))
                              (_%g9289292910%_ _%g9289392914%_))))
                      (_%g9289292910%_ _%g9289392914%_)))))
          (_%g9289192965%_ _%$stx92888%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx92969%_)
        (let* ((_%g9297392991%_
                (lambda (_%g9297492987%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9297492987%_)))
               (_%g9297293046%_
                (lambda (_%g9297492995%_)
                  (if (gx#stx-pair? _%g9297492995%_)
                      (let ((_%e9297792998%_ (gx#syntax-e _%g9297492995%_)))
                        (let ((_%hd9297893002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9297792998%_)))
                              (_%tl9297993005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9297792998%_))))
                          (if (gx#stx-pair? _%tl9297993005%_)
                              (let ((_%e9298093008%_
                                     (gx#syntax-e _%tl9297993005%_)))
                                (let ((_%hd9298193012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9298093008%_)))
                                      (_%tl9298293015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9298093008%_))))
                                  (if (gx#stx-pair? _%tl9298293015%_)
                                      (let ((_%e9298393018%_
                                             (gx#syntax-e _%tl9298293015%_)))
                                        (let ((_%hd9298493022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9298393018%_)))
                                              (_%tl9298593025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9298393018%_))))
                                          (if (gx#stx-null? _%tl9298593025%_)
                                              ((lambda (_%L93028%_ _%L93030%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L93030%_
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
                 (cons (cons _%L93028%_
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
                                               _%hd9298493022%_
                                               _%hd9298193012%_)
                                              (_%g9297392991%_
                                               _%g9297492995%_))))
                                      (_%g9297392991%_ _%g9297492995%_))))
                              (_%g9297392991%_ _%g9297492995%_))))
                      (_%g9297392991%_ _%g9297492995%_)))))
          (_%g9297293046%_ _%$stx92969%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx93050%_)
        (let* ((_%g9305493072%_
                (lambda (_%g9305593068%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9305593068%_)))
               (_%g9305393127%_
                (lambda (_%g9305593076%_)
                  (if (gx#stx-pair? _%g9305593076%_)
                      (let ((_%e9305893079%_ (gx#syntax-e _%g9305593076%_)))
                        (let ((_%hd9305993083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9305893079%_)))
                              (_%tl9306093086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9305893079%_))))
                          (if (gx#stx-pair? _%tl9306093086%_)
                              (let ((_%e9306193089%_
                                     (gx#syntax-e _%tl9306093086%_)))
                                (let ((_%hd9306293093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9306193089%_)))
                                      (_%tl9306393096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9306193089%_))))
                                  (if (gx#stx-pair? _%tl9306393096%_)
                                      (let ((_%e9306493099%_
                                             (gx#syntax-e _%tl9306393096%_)))
                                        (let ((_%hd9306593103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9306493099%_)))
                                              (_%tl9306693106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9306493099%_))))
                                          (if (gx#stx-null? _%tl9306693106%_)
                                              ((lambda (_%L93109%_ _%L93111%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L93111%_
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
                                               (cons (cons _%L93109%_
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
                                               _%hd9306593103%_
                                               _%hd9306293093%_)
                                              (_%g9305493072%_
                                               _%g9305593076%_))))
                                      (_%g9305493072%_ _%g9305593076%_))))
                              (_%g9305493072%_ _%g9305593076%_))))
                      (_%g9305493072%_ _%g9305593076%_)))))
          (_%g9305393127%_ _%$stx93050%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx93131%_)
        (let* ((_%g9313593153%_
                (lambda (_%g9313693149%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9313693149%_)))
               (_%g9313493208%_
                (lambda (_%g9313693157%_)
                  (if (gx#stx-pair? _%g9313693157%_)
                      (let ((_%e9313993160%_ (gx#syntax-e _%g9313693157%_)))
                        (let ((_%hd9314093164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9313993160%_)))
                              (_%tl9314193167%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9313993160%_))))
                          (if (gx#stx-pair? _%tl9314193167%_)
                              (let ((_%e9314293170%_
                                     (gx#syntax-e _%tl9314193167%_)))
                                (let ((_%hd9314393174%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9314293170%_)))
                                      (_%tl9314493177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9314293170%_))))
                                  (if (gx#stx-pair? _%tl9314493177%_)
                                      (let ((_%e9314593180%_
                                             (gx#syntax-e _%tl9314493177%_)))
                                        (let ((_%hd9314693184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9314593180%_)))
                                              (_%tl9314793187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9314593180%_))))
                                          (if (gx#stx-null? _%tl9314793187%_)
                                              ((lambda (_%L93190%_ _%L93192%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L93192%_
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
                                               (cons (cons _%L93190%_
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
                                               _%hd9314693184%_
                                               _%hd9314393174%_)
                                              (_%g9313593153%_
                                               _%g9313693157%_))))
                                      (_%g9313593153%_ _%g9313693157%_))))
                              (_%g9313593153%_ _%g9313693157%_))))
                      (_%g9313593153%_ _%g9313693157%_)))))
          (_%g9313493208%_ _%$stx93131%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx93212%_)
        (let* ((_%g9321693227%_
                (lambda (_%g9321793223%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9321793223%_)))
               (_%g9321593256%_
                (lambda (_%g9321793231%_)
                  (if (gx#stx-pair? _%g9321793231%_)
                      (let ((_%e9321993234%_ (gx#syntax-e _%g9321793231%_)))
                        (let ((_%hd9322093238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9321993234%_)))
                              (_%tl9322193241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9321993234%_))))
                          ((lambda (_%L93244%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L93244%_)))
                           _%tl9322193241%_)))
                      (_%g9321693227%_ _%g9321793231%_)))))
          (_%g9321593256%_ _%$stx93212%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx93260%_)
        (let* ((_%__stx9935599356%_ _%$stx93260%_)
               (_%g9327193485%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9935599356%_))))
          (let ((_%__kont9935899359%_
                 (lambda (_%L94338%_
                          _%L94340%_
                          _%L94341%_
                          _%L94342%_
                          _%L94343%_)
                   (cons _%L94343%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9437394376%_
                                                     _%g9437494379%_)
                                              (cons _%g9437394376%_
                                                    _%g9437494379%_))
                                            '()
                                            _%L94341%_)
                                           (cons _%L94342%_
                                                 (cons _%L94340%_
                                                       (cons _%L94338%_
                                                             '())))))))))
                (_%__kont9936299363%_
                 (lambda (_%L94191%_ _%L94193%_ _%L94194%_ _%L94195%_)
                   (cons _%L94195%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9421894221%_
                                                     _%g9421994224%_)
                                              (cons _%g9421894221%_
                                                    _%g9421994224%_))
                                            '()
                                            _%L94193%_)
                                           (cons _%L94194%_
                                                 (cons _%L94191%_
                                                       (cons _%L94191%_
                                                             '())))))))))
                (_%__kont9936699367%_
                 (lambda (_%L94094%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L94094%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9936899369%_
                 (lambda (_%L94017%_
                          _%L94019%_
                          _%L94020%_
                          _%L94021%_
                          _%L94022%_
                          _%L94023%_)
                   (cons _%L94023%_
                         (cons '2
                               (cons (cons (cons _%L94021%_
                                                 (cons _%L94020%_ '()))
                                           _%L94022%_)
                                     (cons _%L94019%_ _%L94017%_))))))
                (_%__kont9937099371%_
                 (lambda (_%L93898%_
                          _%L93900%_
                          _%L93901%_
                          _%L93902%_
                          _%L93903%_)
                   (cons _%L93903%_
                         (cons '2
                               (cons (cons (cons _%L93901%_
                                                 (cons _%L93901%_ '()))
                                           _%L93902%_)
                                     (cons _%L93900%_ _%L93898%_))))))
                (_%__kont9937299373%_
                 (lambda (_%L93815%_ _%L93817%_ _%L93818%_)
                   (cons _%L93818%_
                         (cons '3 (cons '() (cons _%L93817%_ _%L93815%_))))))
                (_%__kont9937499375%_
                 (lambda (_%L93736%_
                          _%L93738%_
                          _%L93739%_
                          _%L93740%_
                          _%L93741%_)
                   (cons _%L93741%_
                         (cons '3
                               (cons (cons _%L93739%_ _%L93740%_)
                                     (cons _%L93738%_ _%L93736%_))))))
                (_%__kont9937699377%_
                 (lambda (_%L93620%_
                          _%L93622%_
                          _%L93623%_
                          _%L93624%_
                          _%L93625%_
                          _%L93626%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L93623%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L93620%_ '())))
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
                                              (lambda (_%g9365893663%_
                                                       _%g9365993666%_)
                                                (cons _%g9365893663%_
                                                      _%g9365993666%_))
                                              '()
                                              _%L93625%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g9366093669%_
                                                       _%g9366193672%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g9366093669%_ '())))
              _%g9366193672%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L93624%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L93622%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9970699707%_
                    (lambda (_%e9344193492%_
                             _%hd9344293496%_
                             _%tl9344393499%_
                             _%e9344493502%_
                             _%hd9344593506%_
                             _%tl9344693509%_
                             _%e9344793512%_
                             _%e9344893516%_
                             _%hd9344993520%_
                             _%tl9345093523%_
                             _%__splice9937899379%_
                             _%target9345193526%_
                             _%tl9345393529%_)
                      (letrec ((_%loop9345493532%_
                                (lambda (_%hd9345293536%_
                                         _%exprs9345893539%_
                                         _%names9345993541%_)
                                  (if (gx#stx-pair? _%hd9345293536%_)
                                      (let ((_%e9345593544%_
                                             (gx#syntax-e _%hd9345293536%_)))
                                        (let ((_%lp-tl9345793551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9345593544%_)))
                                              (_%lp-hd9345693548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9345593544%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd9345693548%_)
                                              (let ((_%e9346293554%_
                                                     (gx#syntax-e
                                                      _%lp-hd9345693548%_)))
                                                (let ((_%tl9346493561%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e9346293554%_)))
                                                      (_%hd9346393558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e9346293554%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl9346493561%_)
                                                      (let ((_%e9346593564%_
                                                             (gx#syntax-e
                                                              _%tl9346493561%_)))
                                                        (let ((_%tl9346793571%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e9346593564%_)))
                      (_%hd9346693568%_
                       (let () (declare (not safe)) (##car _%e9346593564%_))))
                  (if (gx#stx-null? _%tl9346793571%_)
                      (_%loop9345493532%_
                       _%lp-tl9345793551%_
                       (cons _%hd9346693568%_ _%exprs9345893539%_)
                       (cons _%hd9346393558%_ _%names9345993541%_))
                      (let () (declare (not safe)) (_%g9327193485%_)))))
              (let () (declare (not safe)) (_%g9327193485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g9327193485%_)))))
                                      (let ((_%names9346193577%_
                                             (reverse _%names9345993541%_))
                                            (_%exprs9346093574%_
                                             (reverse _%exprs9345893539%_)))
                                        (if (gx#stx-pair? _%tl9345093523%_)
                                            (let ((_%e9346893580%_
                                                   (gx#syntax-e
                                                    _%tl9345093523%_)))
                                              (let ((_%tl9347093587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9346893580%_)))
                                                    (_%hd9346993584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9346893580%_))))
                                                (if (gx#stx-null?
                                                     _%hd9346993584%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9347093587%_)
                                                        (let ((_%e9347193590%_
                                                               (gx#syntax-e
                                                                _%tl9347093587%_)))
                                                          (let ((_%tl9347393597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9347193590%_)))
                        (_%hd9347293594%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9347193590%_))))
                    (if (gx#stx-pair? _%tl9347393597%_)
                        (let ((_%e9347493600%_ (gx#syntax-e _%tl9347393597%_)))
                          (let ((_%tl9347693607%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9347493600%_)))
                                (_%hd9347593604%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9347493600%_))))
                            (if (gx#stx-pair? _%tl9347693607%_)
                                (let ((_%e9347793610%_
                                       (gx#syntax-e _%tl9347693607%_)))
                                  (let ((_%tl9347993617%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9347793610%_)))
                                        (_%hd9347893614%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9347793610%_))))
                                    (if (gx#stx-null? _%tl9347993617%_)
                                        (_%__kont9937699377%_
                                         _%hd9347893614%_
                                         _%hd9347593604%_
                                         _%hd9347293594%_
                                         _%exprs9346093574%_
                                         _%names9346193577%_
                                         _%hd9344293496%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9327193485%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9327193485%_)))))
                        (let () (declare (not safe)) (_%g9327193485%_)))))
                (let () (declare (not safe)) (_%g9327193485%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9327193485%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9327193485%_))))))))
                        (_%loop9345493532%_ _%target9345193526%_ '() '()))))
                   (_%__match9948499485%_
                    (lambda (_%e9331394117%_
                             _%hd9331494121%_
                             _%tl9331594124%_
                             _%e9331694127%_
                             _%hd9331794131%_
                             _%tl9331894134%_
                             _%e9331994137%_
                             _%e9332094141%_
                             _%hd9332194145%_
                             _%tl9332294148%_
                             _%__splice9936499365%_
                             _%target9332394151%_
                             _%tl9332594154%_
                             _%e9333294157%_
                             _%hd9333394161%_
                             _%tl9333494164%_)
                      (letrec ((_%loop9332694167%_
                                (lambda (_%hd9332494171%_ _%exprs9333094174%_)
                                  (if (gx#stx-pair? _%hd9332494171%_)
                                      (let ((_%e9332794177%_
                                             (gx#syntax-e _%hd9332494171%_)))
                                        (let ((_%lp-tl9332994184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9332794177%_)))
                                              (_%lp-hd9332894181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9332794177%_))))
                                          (_%loop9332694167%_
                                           _%lp-tl9332994184%_
                                           (cons _%lp-hd9332894181%_
                                                 _%exprs9333094174%_))))
                                      (let ((_%exprs9333194187%_
                                             (reverse _%exprs9333094174%_)))
                                        (_%__kont9936299363%_
                                         _%hd9333394161%_
                                         _%exprs9333194187%_
                                         _%hd9332194145%_
                                         _%hd9331494121%_))))))
                        (_%loop9332694167%_ _%target9332394151%_ '()))))
                   (_%__match9944499445%_
                    (lambda (_%e9327894234%_
                             _%hd9327994238%_
                             _%tl9328094241%_
                             _%e9328194244%_
                             _%hd9328294248%_
                             _%tl9328394251%_
                             _%e9328494254%_
                             _%e9328594258%_
                             _%hd9328694262%_
                             _%tl9328794265%_
                             _%__splice9936099361%_
                             _%target9328894268%_
                             _%tl9329094271%_
                             _%e9329794274%_
                             _%hd9329894278%_
                             _%tl9329994281%_
                             _%e9330094284%_
                             _%hd9330194288%_
                             _%tl9330294291%_
                             _%e9330394294%_
                             _%hd9330494298%_
                             _%tl9330594301%_
                             _%e9330694304%_
                             _%hd9330794308%_
                             _%tl9330894311%_)
                      (letrec ((_%loop9329194314%_
                                (lambda (_%hd9328994318%_ _%exprs9329594321%_)
                                  (if (gx#stx-pair? _%hd9328994318%_)
                                      (let ((_%e9329294324%_
                                             (gx#syntax-e _%hd9328994318%_)))
                                        (let ((_%lp-tl9329494331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9329294324%_)))
                                              (_%lp-hd9329394328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9329294324%_))))
                                          (_%loop9329194314%_
                                           _%lp-tl9329494331%_
                                           (cons _%lp-hd9329394328%_
                                                 _%exprs9329594321%_))))
                                      (let ((_%exprs9329694334%_
                                             (reverse _%exprs9329594321%_)))
                                        (_%__kont9935899359%_
                                         _%hd9330794308%_
                                         _%hd9330494298%_
                                         _%exprs9329694334%_
                                         _%hd9328694262%_
                                         _%hd9327994238%_))))))
                        (_%loop9329194314%_ _%target9328894268%_ '())))))
              (if (gx#stx-pair? _%__stx9935599356%_)
                  (let ((_%e9327894234%_ (gx#syntax-e _%__stx9935599356%_)))
                    (let ((_%tl9328094241%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e9327894234%_)))
                          (_%hd9327994238%_
                           (let ()
                             (declare (not safe))
                             (##car _%e9327894234%_))))
                      (if (gx#stx-pair? _%tl9328094241%_)
                          (let ((_%e9328194244%_
                                 (gx#syntax-e _%tl9328094241%_)))
                            (let ((_%tl9328394251%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9328194244%_)))
                                  (_%hd9328294248%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9328194244%_))))
                              (if (gx#stx-datum? _%hd9328294248%_)
                                  (let ((_%e9328494254%_
                                         (gx#stx-e _%hd9328294248%_)))
                                    (if (equal? _%e9328494254%_ '1)
                                        (if (gx#stx-pair? _%tl9328394251%_)
                                            (let ((_%e9328594258%_
                                                   (gx#syntax-e
                                                    _%tl9328394251%_)))
                                              (let ((_%tl9328794265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9328594258%_)))
                                                    (_%hd9328694262%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9328594258%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl9328794265%_)
                                                    (if (let ((__tmp99802
                                                               (gx#stx-length
                                                                _%tl9328794265%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp99802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9936099361%_
                       (gx#syntax-split-splice->vector _%tl9328794265%_ '2)))
                  (let ((_%tl9329094271%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9936099361%_ '1)))
                        (_%target9328894268%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9936099361%_ '0))))
                    (if (gx#stx-pair? _%tl9329094271%_)
                        (let ((_%e9329794274%_ (gx#syntax-e _%tl9329094271%_)))
                          (let ((_%tl9329994281%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9329794274%_)))
                                (_%hd9329894278%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9329794274%_))))
                            (if (gx#stx-pair? _%hd9329894278%_)
                                (let ((_%e9330094284%_
                                       (gx#syntax-e _%hd9329894278%_)))
                                  (let ((_%tl9330294291%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9330094284%_)))
                                        (_%hd9330194288%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9330094284%_))))
                                    (if (gx#identifier? _%hd9330194288%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g99803_|
                                             _%hd9330194288%_)
                                            (if (gx#stx-pair? _%tl9330294291%_)
                                                (let ((_%e9330394294%_
                                                       (gx#syntax-e
                                                        _%tl9330294291%_)))
                                                  (let ((_%tl9330594301%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9330394294%_)))
                                                        (_%hd9330494298%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9330394294%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9330594301%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9329994281%_)
                                                            (let ((_%e9330694304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9329994281%_)))
                      (let ((_%tl9330894311%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9330694304%_)))
                            (_%hd9330794308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9330694304%_))))
                        (if (gx#stx-null? _%tl9330894311%_)
                            (_%__match9944499445%_
                             _%e9327894234%_
                             _%hd9327994238%_
                             _%tl9328094241%_
                             _%e9328194244%_
                             _%hd9328294248%_
                             _%tl9328394251%_
                             _%e9328494254%_
                             _%e9328594258%_
                             _%hd9328694262%_
                             _%tl9328794265%_
                             _%__splice9936099361%_
                             _%target9328894268%_
                             _%tl9329094271%_
                             _%e9329794274%_
                             _%hd9329894278%_
                             _%tl9329994281%_
                             _%e9330094284%_
                             _%hd9330194288%_
                             _%tl9330294291%_
                             _%e9330394294%_
                             _%hd9330494298%_
                             _%tl9330594301%_
                             _%e9330694304%_
                             _%hd9330794308%_
                             _%tl9330894311%_)
                            (if (let ((__tmp99804
                                       (gx#stx-length _%tl9328794265%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp99804 '1))
                                (let ((_%__splice9936499365%_
                                       (gx#syntax-split-splice->vector
                                        _%tl9328794265%_
                                        '1)))
                                  (let ((_%tl9332594154%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9936499365%_
                                            '1)))
                                        (_%target9332394151%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9936499365%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl9332594154%_)
                                        (let ((_%e9333294157%_
                                               (gx#syntax-e _%tl9332594154%_)))
                                          (let ((_%tl9333494164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e9333294157%_)))
                                                (_%hd9333394161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e9333294157%_))))
                                            (if (gx#stx-null? _%tl9333494164%_)
                                                (_%__match9948499485%_
                                                 _%e9327894234%_
                                                 _%hd9327994238%_
                                                 _%tl9328094241%_
                                                 _%e9328194244%_
                                                 _%hd9328294248%_
                                                 _%tl9328394251%_
                                                 _%e9328494254%_
                                                 _%e9328594258%_
                                                 _%hd9328694262%_
                                                 _%tl9328794265%_
                                                 _%__splice9936499365%_
                                                 _%target9332394151%_
                                                 _%tl9332594154%_
                                                 _%e9333294157%_
                                                 _%hd9333394161%_
                                                 _%tl9333494164%_)
                                                (if (gx#stx-null?
                                                     _%tl9328794265%_)
                                                    (_%__kont9936699367%_
                                                     _%hd9328694262%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9327193485%_))))))
                                        (if (gx#stx-null? _%tl9328794265%_)
                                            (_%__kont9936699367%_
                                             _%hd9328694262%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9327193485%_))))))
                                (if (gx#stx-null? _%tl9328794265%_)
                                    (_%__kont9936699367%_ _%hd9328694262%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9327193485%_)))))))
                    (if (let ((__tmp99805 (gx#stx-length _%tl9328794265%_)))
                          (declare (not safe))
                          (##fx>= __tmp99805 '1))
                        (let ((_%__splice9936499365%_
                               (gx#syntax-split-splice->vector
                                _%tl9328794265%_
                                '1)))
                          (let ((_%tl9332594154%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9936499365%_ '1)))
                                (_%target9332394151%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9936499365%_ '0))))
                            (if (gx#stx-pair? _%tl9332594154%_)
                                (let ((_%e9333294157%_
                                       (gx#syntax-e _%tl9332594154%_)))
                                  (let ((_%tl9333494164%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9333294157%_)))
                                        (_%hd9333394161%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9333294157%_))))
                                    (if (gx#stx-null? _%tl9333494164%_)
                                        (_%__match9948499485%_
                                         _%e9327894234%_
                                         _%hd9327994238%_
                                         _%tl9328094241%_
                                         _%e9328194244%_
                                         _%hd9328294248%_
                                         _%tl9328394251%_
                                         _%e9328494254%_
                                         _%e9328594258%_
                                         _%hd9328694262%_
                                         _%tl9328794265%_
                                         _%__splice9936499365%_
                                         _%target9332394151%_
                                         _%tl9332594154%_
                                         _%e9333294157%_
                                         _%hd9333394161%_
                                         _%tl9333494164%_)
                                        (if (gx#stx-null? _%tl9328794265%_)
                                            (_%__kont9936699367%_
                                             _%hd9328694262%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9327193485%_))))))
                                (if (gx#stx-null? _%tl9328794265%_)
                                    (_%__kont9936699367%_ _%hd9328694262%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9327193485%_))))))
                        (if (gx#stx-null? _%tl9328794265%_)
                            (_%__kont9936699367%_ _%hd9328694262%_)
                            (let () (declare (not safe)) (_%g9327193485%_)))))
                (if (let ((__tmp99806 (gx#stx-length _%tl9328794265%_)))
                      (declare (not safe))
                      (##fx>= __tmp99806 '1))
                    (let ((_%__splice9936499365%_
                           (gx#syntax-split-splice->vector
                            _%tl9328794265%_
                            '1)))
                      (let ((_%tl9332594154%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9936499365%_ '1)))
                            (_%target9332394151%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9936499365%_ '0))))
                        (if (gx#stx-pair? _%tl9332594154%_)
                            (let ((_%e9333294157%_
                                   (gx#syntax-e _%tl9332594154%_)))
                              (let ((_%tl9333494164%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9333294157%_)))
                                    (_%hd9333394161%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9333294157%_))))
                                (if (gx#stx-null? _%tl9333494164%_)
                                    (_%__match9948499485%_
                                     _%e9327894234%_
                                     _%hd9327994238%_
                                     _%tl9328094241%_
                                     _%e9328194244%_
                                     _%hd9328294248%_
                                     _%tl9328394251%_
                                     _%e9328494254%_
                                     _%e9328594258%_
                                     _%hd9328694262%_
                                     _%tl9328794265%_
                                     _%__splice9936499365%_
                                     _%target9332394151%_
                                     _%tl9332594154%_
                                     _%e9333294157%_
                                     _%hd9333394161%_
                                     _%tl9333494164%_)
                                    (if (gx#stx-null? _%tl9328794265%_)
                                        (_%__kont9936699367%_ _%hd9328694262%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9327193485%_))))))
                            (if (gx#stx-null? _%tl9328794265%_)
                                (_%__kont9936699367%_ _%hd9328694262%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9327193485%_))))))
                    (if (gx#stx-null? _%tl9328794265%_)
                        (_%__kont9936699367%_ _%hd9328694262%_)
                        (let () (declare (not safe)) (_%g9327193485%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp99807
                                                           (gx#stx-length
                                                            _%tl9328794265%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp99807 '1))
                                                    (let ((_%__splice9936499365%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl9328794265%_
                                                            '1)))
                                                      (let ((_%tl9332594154%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9936499365%_ '1)))
                    (_%target9332394151%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9936499365%_ '0))))
                (if (gx#stx-pair? _%tl9332594154%_)
                    (let ((_%e9333294157%_ (gx#syntax-e _%tl9332594154%_)))
                      (let ((_%tl9333494164%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9333294157%_)))
                            (_%hd9333394161%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9333294157%_))))
                        (if (gx#stx-null? _%tl9333494164%_)
                            (_%__match9948499485%_
                             _%e9327894234%_
                             _%hd9327994238%_
                             _%tl9328094241%_
                             _%e9328194244%_
                             _%hd9328294248%_
                             _%tl9328394251%_
                             _%e9328494254%_
                             _%e9328594258%_
                             _%hd9328694262%_
                             _%tl9328794265%_
                             _%__splice9936499365%_
                             _%target9332394151%_
                             _%tl9332594154%_
                             _%e9333294157%_
                             _%hd9333394161%_
                             _%tl9333494164%_)
                            (if (gx#stx-null? _%tl9328794265%_)
                                (_%__kont9936699367%_ _%hd9328694262%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9327193485%_))))))
                    (if (gx#stx-null? _%tl9328794265%_)
                        (_%__kont9936699367%_ _%hd9328694262%_)
                        (let () (declare (not safe)) (_%g9327193485%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9328794265%_)
                                                        (_%__kont9936699367%_
                                                         _%hd9328694262%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9327193485%_)))))
                                            (if (let ((__tmp99808
                                                       (gx#stx-length
                                                        _%tl9328794265%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp99808 '1))
                                                (let ((_%__splice9936499365%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl9328794265%_
                                                        '1)))
                                                  (let ((_%tl9332594154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9936499365%_
                                                            '1)))
                                                        (_%target9332394151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9936499365%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl9332594154%_)
                                                        (let ((_%e9333294157%_
                                                               (gx#syntax-e
                                                                _%tl9332594154%_)))
                                                          (let ((_%tl9333494164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9333294157%_)))
                        (_%hd9333394161%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9333294157%_))))
                    (if (gx#stx-null? _%tl9333494164%_)
                        (_%__match9948499485%_
                         _%e9327894234%_
                         _%hd9327994238%_
                         _%tl9328094241%_
                         _%e9328194244%_
                         _%hd9328294248%_
                         _%tl9328394251%_
                         _%e9328494254%_
                         _%e9328594258%_
                         _%hd9328694262%_
                         _%tl9328794265%_
                         _%__splice9936499365%_
                         _%target9332394151%_
                         _%tl9332594154%_
                         _%e9333294157%_
                         _%hd9333394161%_
                         _%tl9333494164%_)
                        (if (gx#stx-null? _%tl9328794265%_)
                            (_%__kont9936699367%_ _%hd9328694262%_)
                            (let () (declare (not safe)) (_%g9327193485%_))))))
                (if (gx#stx-null? _%tl9328794265%_)
                    (_%__kont9936699367%_ _%hd9328694262%_)
                    (let () (declare (not safe)) (_%g9327193485%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl9328794265%_)
                                                    (_%__kont9936699367%_
                                                     _%hd9328694262%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9327193485%_)))))
                                        (if (let ((__tmp99809
                                                   (gx#stx-length
                                                    _%tl9328794265%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp99809 '1))
                                            (let ((_%__splice9936499365%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl9328794265%_
                                                    '1)))
                                              (let ((_%tl9332594154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9936499365%_
                                                        '1)))
                                                    (_%target9332394151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9936499365%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl9332594154%_)
                                                    (let ((_%e9333294157%_
                                                           (gx#syntax-e
                                                            _%tl9332594154%_)))
                                                      (let ((_%tl9333494164%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9333294157%_)))
                    (_%hd9333394161%_
                     (let () (declare (not safe)) (##car _%e9333294157%_))))
                (if (gx#stx-null? _%tl9333494164%_)
                    (_%__match9948499485%_
                     _%e9327894234%_
                     _%hd9327994238%_
                     _%tl9328094241%_
                     _%e9328194244%_
                     _%hd9328294248%_
                     _%tl9328394251%_
                     _%e9328494254%_
                     _%e9328594258%_
                     _%hd9328694262%_
                     _%tl9328794265%_
                     _%__splice9936499365%_
                     _%target9332394151%_
                     _%tl9332594154%_
                     _%e9333294157%_
                     _%hd9333394161%_
                     _%tl9333494164%_)
                    (if (gx#stx-null? _%tl9328794265%_)
                        (_%__kont9936699367%_ _%hd9328694262%_)
                        (let () (declare (not safe)) (_%g9327193485%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9328794265%_)
                                                        (_%__kont9936699367%_
                                                         _%hd9328694262%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9327193485%_))))))
                                            (if (gx#stx-null? _%tl9328794265%_)
                                                (_%__kont9936699367%_
                                                 _%hd9328694262%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9327193485%_)))))))
                                (if (let ((__tmp99810
                                           (gx#stx-length _%tl9328794265%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp99810 '1))
                                    (let ((_%__splice9936499365%_
                                           (gx#syntax-split-splice->vector
                                            _%tl9328794265%_
                                            '1)))
                                      (let ((_%tl9332594154%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9936499365%_
                                                '1)))
                                            (_%target9332394151%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9936499365%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl9332594154%_)
                                            (let ((_%e9333294157%_
                                                   (gx#syntax-e
                                                    _%tl9332594154%_)))
                                              (let ((_%tl9333494164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9333294157%_)))
                                                    (_%hd9333394161%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9333294157%_))))
                                                (if (gx#stx-null?
                                                     _%tl9333494164%_)
                                                    (_%__match9948499485%_
                                                     _%e9327894234%_
                                                     _%hd9327994238%_
                                                     _%tl9328094241%_
                                                     _%e9328194244%_
                                                     _%hd9328294248%_
                                                     _%tl9328394251%_
                                                     _%e9328494254%_
                                                     _%e9328594258%_
                                                     _%hd9328694262%_
                                                     _%tl9328794265%_
                                                     _%__splice9936499365%_
                                                     _%target9332394151%_
                                                     _%tl9332594154%_
                                                     _%e9333294157%_
                                                     _%hd9333394161%_
                                                     _%tl9333494164%_)
                                                    (if (gx#stx-null?
                                                         _%tl9328794265%_)
                                                        (_%__kont9936699367%_
                                                         _%hd9328694262%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9327193485%_))))))
                                            (if (gx#stx-null? _%tl9328794265%_)
                                                (_%__kont9936699367%_
                                                 _%hd9328694262%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9327193485%_))))))
                                    (if (gx#stx-null? _%tl9328794265%_)
                                        (_%__kont9936699367%_ _%hd9328694262%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9327193485%_)))))))
                        (if (let ((__tmp99811
                                   (gx#stx-length _%tl9328794265%_)))
                              (declare (not safe))
                              (##fx>= __tmp99811 '1))
                            (let ((_%__splice9936499365%_
                                   (gx#syntax-split-splice->vector
                                    _%tl9328794265%_
                                    '1)))
                              (let ((_%tl9332594154%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9936499365%_
                                        '1)))
                                    (_%target9332394151%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9936499365%_
                                        '0))))
                                (if (gx#stx-pair? _%tl9332594154%_)
                                    (let ((_%e9333294157%_
                                           (gx#syntax-e _%tl9332594154%_)))
                                      (let ((_%tl9333494164%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9333294157%_)))
                                            (_%hd9333394161%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9333294157%_))))
                                        (if (gx#stx-null? _%tl9333494164%_)
                                            (_%__match9948499485%_
                                             _%e9327894234%_
                                             _%hd9327994238%_
                                             _%tl9328094241%_
                                             _%e9328194244%_
                                             _%hd9328294248%_
                                             _%tl9328394251%_
                                             _%e9328494254%_
                                             _%e9328594258%_
                                             _%hd9328694262%_
                                             _%tl9328794265%_
                                             _%__splice9936499365%_
                                             _%target9332394151%_
                                             _%tl9332594154%_
                                             _%e9333294157%_
                                             _%hd9333394161%_
                                             _%tl9333494164%_)
                                            (if (gx#stx-null? _%tl9328794265%_)
                                                (_%__kont9936699367%_
                                                 _%hd9328694262%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9327193485%_))))))
                                    (if (gx#stx-null? _%tl9328794265%_)
                                        (_%__kont9936699367%_ _%hd9328694262%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9327193485%_))))))
                            (if (gx#stx-null? _%tl9328794265%_)
                                (_%__kont9936699367%_ _%hd9328694262%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9327193485%_)))))))
                (if (let ((__tmp99812 (gx#stx-length _%tl9328794265%_)))
                      (declare (not safe))
                      (##fx>= __tmp99812 '1))
                    (let ((_%__splice9936499365%_
                           (gx#syntax-split-splice->vector
                            _%tl9328794265%_
                            '1)))
                      (let ((_%tl9332594154%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9936499365%_ '1)))
                            (_%target9332394151%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9936499365%_ '0))))
                        (if (gx#stx-pair? _%tl9332594154%_)
                            (let ((_%e9333294157%_
                                   (gx#syntax-e _%tl9332594154%_)))
                              (let ((_%tl9333494164%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9333294157%_)))
                                    (_%hd9333394161%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9333294157%_))))
                                (if (gx#stx-null? _%tl9333494164%_)
                                    (_%__match9948499485%_
                                     _%e9327894234%_
                                     _%hd9327994238%_
                                     _%tl9328094241%_
                                     _%e9328194244%_
                                     _%hd9328294248%_
                                     _%tl9328394251%_
                                     _%e9328494254%_
                                     _%e9328594258%_
                                     _%hd9328694262%_
                                     _%tl9328794265%_
                                     _%__splice9936499365%_
                                     _%target9332394151%_
                                     _%tl9332594154%_
                                     _%e9333294157%_
                                     _%hd9333394161%_
                                     _%tl9333494164%_)
                                    (if (gx#stx-null? _%tl9328794265%_)
                                        (_%__kont9936699367%_ _%hd9328694262%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9327193485%_))))))
                            (if (gx#stx-null? _%tl9328794265%_)
                                (_%__kont9936699367%_ _%hd9328694262%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9327193485%_))))))
                    (if (gx#stx-null? _%tl9328794265%_)
                        (_%__kont9936699367%_ _%hd9328694262%_)
                        (let () (declare (not safe)) (_%g9327193485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9328794265%_)
                                                        (_%__kont9936699367%_
                                                         _%hd9328694262%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9327193485%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9327193485%_)))
                                        (if (equal? _%e9328494254%_ '2)
                                            (if (gx#stx-pair? _%tl9328394251%_)
                                                (let ((_%e9335993957%_
                                                       (gx#syntax-e
                                                        _%tl9328394251%_)))
                                                  (let ((_%tl9336193964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9335993957%_)))
                                                        (_%hd9336093961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9335993957%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl9336193964%_)
                                                        (let ((_%e9336293967%_
                                                               (gx#syntax-e
                                                                _%tl9336193964%_)))
                                                          (let ((_%tl9336493974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9336293967%_)))
                        (_%hd9336393971%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9336293967%_))))
                    (if (gx#stx-pair? _%hd9336393971%_)
                        (let ((_%e9336593977%_ (gx#syntax-e _%hd9336393971%_)))
                          (let ((_%tl9336793984%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9336593977%_)))
                                (_%hd9336693981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9336593977%_))))
                            (if (gx#stx-pair? _%hd9336693981%_)
                                (let ((_%e9336893987%_
                                       (gx#syntax-e _%hd9336693981%_)))
                                  (let ((_%tl9337093994%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9336893987%_)))
                                        (_%hd9336993991%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9336893987%_))))
                                    (if (gx#identifier? _%hd9336993991%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g99813_|
                                             _%hd9336993991%_)
                                            (if (gx#stx-pair? _%tl9337093994%_)
                                                (let ((_%e9337193997%_
                                                       (gx#syntax-e
                                                        _%tl9337093994%_)))
                                                  (let ((_%tl9337394004%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9337193997%_)))
                                                        (_%hd9337294001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9337193997%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9337394004%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9336793984%_)
                                                            (let ((_%e9337494007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9336793984%_)))
                      (let ((_%tl9337694014%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9337494007%_)))
                            (_%hd9337594011%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9337494007%_))))
                        (_%__kont9936899369%_
                         _%tl9336493974%_
                         _%tl9337694014%_
                         _%hd9337594011%_
                         _%hd9337294001%_
                         _%hd9336093961%_
                         _%hd9327994238%_)))
                    (_%__kont9937099371%_
                     _%tl9336493974%_
                     _%tl9336793984%_
                     _%hd9336693981%_
                     _%hd9336093961%_
                     _%hd9327994238%_))
                (_%__kont9937099371%_
                 _%tl9336493974%_
                 _%tl9336793984%_
                 _%hd9336693981%_
                 _%hd9336093961%_
                 _%hd9327994238%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9937099371%_
                                                 _%tl9336493974%_
                                                 _%tl9336793984%_
                                                 _%hd9336693981%_
                                                 _%hd9336093961%_
                                                 _%hd9327994238%_))
                                            (_%__kont9937099371%_
                                             _%tl9336493974%_
                                             _%tl9336793984%_
                                             _%hd9336693981%_
                                             _%hd9336093961%_
                                             _%hd9327994238%_))
                                        (_%__kont9937099371%_
                                         _%tl9336493974%_
                                         _%tl9336793984%_
                                         _%hd9336693981%_
                                         _%hd9336093961%_
                                         _%hd9327994238%_))))
                                (_%__kont9937099371%_
                                 _%tl9336493974%_
                                 _%tl9336793984%_
                                 _%hd9336693981%_
                                 _%hd9336093961%_
                                 _%hd9327994238%_))))
                        (if (gx#stx-null? _%hd9336393971%_)
                            (_%__kont9937299373%_
                             _%tl9336493974%_
                             _%hd9336093961%_
                             _%hd9327994238%_)
                            (let () (declare (not safe)) (_%g9327193485%_))))))
                (let () (declare (not safe)) (_%g9327193485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9327193485%_)))
                                            (if (equal? _%e9328494254%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl9328394251%_)
                                                    (let ((_%e9342693706%_
                                                           (gx#syntax-e
                                                            _%tl9328394251%_)))
                                                      (let ((_%tl9342893713%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9342693706%_)))
                    (_%hd9342793710%_
                     (let () (declare (not safe)) (##car _%e9342693706%_))))
                (if (gx#stx-pair? _%tl9342893713%_)
                    (let ((_%e9342993716%_ (gx#syntax-e _%tl9342893713%_)))
                      (let ((_%tl9343193723%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9342993716%_)))
                            (_%hd9343093720%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9342993716%_))))
                        (if (gx#stx-pair? _%hd9343093720%_)
                            (let ((_%e9343293726%_
                                   (gx#syntax-e _%hd9343093720%_)))
                              (let ((_%tl9343493733%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9343293726%_)))
                                    (_%hd9343393730%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9343293726%_))))
                                (_%__kont9937499375%_
                                 _%tl9343193723%_
                                 _%tl9343493733%_
                                 _%hd9343393730%_
                                 _%hd9342793710%_
                                 _%hd9327994238%_)))
                            (if (gx#stx-pair/null? _%hd9342793710%_)
                                (let ((_%__splice9937899379%_
                                       (gx#syntax-split-splice->vector
                                        _%hd9342793710%_
                                        '0)))
                                  (let ((_%tl9345393529%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9937899379%_
                                            '1)))
                                        (_%target9345193526%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9937899379%_
                                            '0))))
                                    (if (gx#stx-null? _%tl9345393529%_)
                                        (_%__match9970699707%_
                                         _%e9327894234%_
                                         _%hd9327994238%_
                                         _%tl9328094241%_
                                         _%e9328194244%_
                                         _%hd9328294248%_
                                         _%tl9328394251%_
                                         _%e9328494254%_
                                         _%e9342693706%_
                                         _%hd9342793710%_
                                         _%tl9342893713%_
                                         _%__splice9937899379%_
                                         _%target9345193526%_
                                         _%tl9345393529%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9327193485%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9327193485%_))))))
                    (if (gx#stx-pair/null? _%hd9342793710%_)
                        (let ((_%__splice9937899379%_
                               (gx#syntax-split-splice->vector
                                _%hd9342793710%_
                                '0)))
                          (let ((_%tl9345393529%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9937899379%_ '1)))
                                (_%target9345193526%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9937899379%_ '0))))
                            (if (gx#stx-null? _%tl9345393529%_)
                                (_%__match9970699707%_
                                 _%e9327894234%_
                                 _%hd9327994238%_
                                 _%tl9328094241%_
                                 _%e9328194244%_
                                 _%hd9328294248%_
                                 _%tl9328394251%_
                                 _%e9328494254%_
                                 _%e9342693706%_
                                 _%hd9342793710%_
                                 _%tl9342893713%_
                                 _%__splice9937899379%_
                                 _%target9345193526%_
                                 _%tl9345393529%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9327193485%_)))))
                        (let () (declare (not safe)) (_%g9327193485%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9327193485%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9327193485%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g9327193485%_)))))
                          (let () (declare (not safe)) (_%g9327193485%_)))))
                  (let () (declare (not safe)) (_%g9327193485%_))))))))))
