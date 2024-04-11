(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g89556_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g89566_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx82627%_)
        (let* ((_%g8263182649%_
                (lambda (_%g8263282645%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8263282645%_)))
               (_%g8263082705%_
                (lambda (_%g8263282653%_)
                  (if (gx#stx-pair? _%g8263282653%_)
                      (let ((_%e8263582656%_ (gx#syntax-e _%g8263282653%_)))
                        (let ((_%hd8263682660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8263582656%_)))
                              (_%tl8263782663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8263582656%_))))
                          (if (gx#stx-pair? _%tl8263782663%_)
                              (let ((_%e8263882666%_
                                     (gx#syntax-e _%tl8263782663%_)))
                                (let ((_%hd8263982670%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8263882666%_)))
                                      (_%tl8264082673%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8263882666%_))))
                                  (if (gx#stx-pair? _%tl8264082673%_)
                                      (let ((_%e8264182676%_
                                             (gx#syntax-e _%tl8264082673%_)))
                                        (let ((_%hd8264282680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8264182676%_)))
                                              (_%tl8264382683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8264182676%_))))
                                          (if (gx#stx-null? _%tl8264382683%_)
                                              ((lambda (_%L82686%_ _%L82688%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L82688%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L82686%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8264282680%_
                                               _%hd8263982670%_)
                                              (_%g8263182649%_
                                               _%g8263282653%_))))
                                      (_%g8263182649%_ _%g8263282653%_))))
                              (_%g8263182649%_ _%g8263282653%_))))
                      (_%g8263182649%_ _%g8263282653%_)))))
          (_%g8263082705%_ _%$stx82627%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx82709%_)
        (let* ((_%g8271382727%_
                (lambda (_%g8271482723%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8271482723%_)))
               (_%g8271282768%_
                (lambda (_%g8271482731%_)
                  (if (gx#stx-pair? _%g8271482731%_)
                      (let ((_%e8271682734%_ (gx#syntax-e _%g8271482731%_)))
                        (let ((_%hd8271782738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8271682734%_)))
                              (_%tl8271882741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8271682734%_))))
                          (if (gx#stx-pair? _%tl8271882741%_)
                              (let ((_%e8271982744%_
                                     (gx#syntax-e _%tl8271882741%_)))
                                (let ((_%hd8272082748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8271982744%_)))
                                      (_%tl8272182751%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8271982744%_))))
                                  (if (gx#stx-null? _%tl8272182751%_)
                                      ((lambda (_%L82754%_)
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'declare)
                         (cons (cons (gx#datum->syntax '#f 'not)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'interrupts-enabled)
                                           '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (gx#datum->syntax '#f 'again)
                                     (cons '()
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'unless)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##fx=)
                           (cons (cons (gx#datum->syntax '#f '##vector-cas!)
                                       (cons _%L82754%_
                                             (cons '0
                                                   (cons '1 (cons '0 '())))))
                                 (cons '0 '())))
                     (cons (cons (gx#datum->syntax '#f '##thread-yield!) '())
                           (cons (cons (gx#datum->syntax '#f 'again) '())
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8272082748%_)
                                      (_%g8271382727%_ _%g8271482731%_))))
                              (_%g8271382727%_ _%g8271482731%_))))
                      (_%g8271382727%_ _%g8271482731%_)))))
          (_%g8271282768%_ _%$stx82709%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx82772%_)
        (let* ((_%g8277682790%_
                (lambda (_%g8277782786%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8277782786%_)))
               (_%g8277582831%_
                (lambda (_%g8277782794%_)
                  (if (gx#stx-pair? _%g8277782794%_)
                      (let ((_%e8277982797%_ (gx#syntax-e _%g8277782794%_)))
                        (let ((_%hd8278082801%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8277982797%_)))
                              (_%tl8278182804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8277982797%_))))
                          (if (gx#stx-pair? _%tl8278182804%_)
                              (let ((_%e8278282807%_
                                     (gx#syntax-e _%tl8278182804%_)))
                                (let ((_%hd8278382811%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8278282807%_)))
                                      (_%tl8278482814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8278282807%_))))
                                  (if (gx#stx-null? _%tl8278482814%_)
                                      ((lambda (_%L82817%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L82817%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8278382811%_)
                                      (_%g8277682790%_ _%g8277782794%_))))
                              (_%g8277682790%_ _%g8277782794%_))))
                      (_%g8277682790%_ _%g8277782794%_)))))
          (_%g8277582831%_ _%$stx82772%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx82835%_)
        (let* ((_%g8283982849%_
                (lambda (_%g8284082845%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8284082845%_)))
               (_%g8283882870%_
                (lambda (_%g8284082853%_)
                  (if (gx#stx-pair? _%g8284082853%_)
                      (let ((_%e8284182856%_ (gx#syntax-e _%g8284082853%_)))
                        (let ((_%hd8284282860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8284182856%_)))
                              (_%tl8284382863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8284182856%_))))
                          (if (gx#stx-null? _%tl8284382863%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8283982849%_ _%g8284082853%_))))
                      (_%g8283982849%_ _%g8284082853%_)))))
          (_%g8283882870%_ _%$stx82835%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx82874%_)
        (let* ((_%g8287882896%_
                (lambda (_%g8287982892%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8287982892%_)))
               (_%g8287782951%_
                (lambda (_%g8287982900%_)
                  (if (gx#stx-pair? _%g8287982900%_)
                      (let ((_%e8288282903%_ (gx#syntax-e _%g8287982900%_)))
                        (let ((_%hd8288382907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8288282903%_)))
                              (_%tl8288482910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8288282903%_))))
                          (if (gx#stx-pair? _%tl8288482910%_)
                              (let ((_%e8288582913%_
                                     (gx#syntax-e _%tl8288482910%_)))
                                (let ((_%hd8288682917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8288582913%_)))
                                      (_%tl8288782920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8288582913%_))))
                                  (if (gx#stx-pair? _%tl8288782920%_)
                                      (let ((_%e8288882923%_
                                             (gx#syntax-e _%tl8288782920%_)))
                                        (let ((_%hd8288982927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8288882923%_)))
                                              (_%tl8289082930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8288882923%_))))
                                          (if (gx#stx-null? _%tl8289082930%_)
                                              ((lambda (_%L82933%_ _%L82935%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L82935%_
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
                 (cons (cons _%L82933%_
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
                                               _%hd8288982927%_
                                               _%hd8288682917%_)
                                              (_%g8287882896%_
                                               _%g8287982900%_))))
                                      (_%g8287882896%_ _%g8287982900%_))))
                              (_%g8287882896%_ _%g8287982900%_))))
                      (_%g8287882896%_ _%g8287982900%_)))))
          (_%g8287782951%_ _%$stx82874%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx82955%_)
        (let* ((_%g8295982977%_
                (lambda (_%g8296082973%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8296082973%_)))
               (_%g8295883032%_
                (lambda (_%g8296082981%_)
                  (if (gx#stx-pair? _%g8296082981%_)
                      (let ((_%e8296382984%_ (gx#syntax-e _%g8296082981%_)))
                        (let ((_%hd8296482988%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8296382984%_)))
                              (_%tl8296582991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8296382984%_))))
                          (if (gx#stx-pair? _%tl8296582991%_)
                              (let ((_%e8296682994%_
                                     (gx#syntax-e _%tl8296582991%_)))
                                (let ((_%hd8296782998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8296682994%_)))
                                      (_%tl8296883001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8296682994%_))))
                                  (if (gx#stx-pair? _%tl8296883001%_)
                                      (let ((_%e8296983004%_
                                             (gx#syntax-e _%tl8296883001%_)))
                                        (let ((_%hd8297083008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8296983004%_)))
                                              (_%tl8297183011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8296983004%_))))
                                          (if (gx#stx-null? _%tl8297183011%_)
                                              ((lambda (_%L83014%_ _%L83016%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83016%_
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
                                               (cons (cons _%L83014%_
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
                                               _%hd8297083008%_
                                               _%hd8296782998%_)
                                              (_%g8295982977%_
                                               _%g8296082981%_))))
                                      (_%g8295982977%_ _%g8296082981%_))))
                              (_%g8295982977%_ _%g8296082981%_))))
                      (_%g8295982977%_ _%g8296082981%_)))))
          (_%g8295883032%_ _%$stx82955%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx83036%_)
        (let* ((_%g8304083058%_
                (lambda (_%g8304183054%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8304183054%_)))
               (_%g8303983113%_
                (lambda (_%g8304183062%_)
                  (if (gx#stx-pair? _%g8304183062%_)
                      (let ((_%e8304483065%_ (gx#syntax-e _%g8304183062%_)))
                        (let ((_%hd8304583069%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8304483065%_)))
                              (_%tl8304683072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8304483065%_))))
                          (if (gx#stx-pair? _%tl8304683072%_)
                              (let ((_%e8304783075%_
                                     (gx#syntax-e _%tl8304683072%_)))
                                (let ((_%hd8304883079%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8304783075%_)))
                                      (_%tl8304983082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8304783075%_))))
                                  (if (gx#stx-pair? _%tl8304983082%_)
                                      (let ((_%e8305083085%_
                                             (gx#syntax-e _%tl8304983082%_)))
                                        (let ((_%hd8305183089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8305083085%_)))
                                              (_%tl8305283092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8305083085%_))))
                                          (if (gx#stx-null? _%tl8305283092%_)
                                              ((lambda (_%L83095%_ _%L83097%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83097%_
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
                                               (cons (cons _%L83095%_
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
                                               _%hd8305183089%_
                                               _%hd8304883079%_)
                                              (_%g8304083058%_
                                               _%g8304183062%_))))
                                      (_%g8304083058%_ _%g8304183062%_))))
                              (_%g8304083058%_ _%g8304183062%_))))
                      (_%g8304083058%_ _%g8304183062%_)))))
          (_%g8303983113%_ _%$stx83036%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx83117%_)
        (let* ((_%g8312183132%_
                (lambda (_%g8312283128%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8312283128%_)))
               (_%g8312083161%_
                (lambda (_%g8312283136%_)
                  (if (gx#stx-pair? _%g8312283136%_)
                      (let ((_%e8312483139%_ (gx#syntax-e _%g8312283136%_)))
                        (let ((_%hd8312583143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8312483139%_)))
                              (_%tl8312683146%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8312483139%_))))
                          ((lambda (_%L83149%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L83149%_)))
                           _%tl8312683146%_)))
                      (_%g8312183132%_ _%g8312283136%_)))))
          (_%g8312083161%_ _%$stx83117%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx83165%_)
        (let* ((_%__stx8911789118%_ _%$stx83165%_)
               (_%g8317683390%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8911789118%_))))
          (let ((_%__kont8912089121%_
                 (lambda (_%L84243%_
                          _%L84245%_
                          _%L84246%_
                          _%L84247%_
                          _%L84248%_)
                   (cons _%L84248%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8427884281%_
                                                     _%g8427984284%_)
                                              (cons _%g8427884281%_
                                                    _%g8427984284%_))
                                            '()
                                            _%L84246%_)
                                           (cons _%L84247%_
                                                 (cons _%L84245%_
                                                       (cons _%L84243%_
                                                             '())))))))))
                (_%__kont8912489125%_
                 (lambda (_%L84096%_ _%L84098%_ _%L84099%_ _%L84100%_)
                   (cons _%L84100%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8412384126%_
                                                     _%g8412484129%_)
                                              (cons _%g8412384126%_
                                                    _%g8412484129%_))
                                            '()
                                            _%L84098%_)
                                           (cons _%L84099%_
                                                 (cons _%L84096%_
                                                       (cons _%L84096%_
                                                             '())))))))))
                (_%__kont8912889129%_
                 (lambda (_%L83999%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L83999%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8913089131%_
                 (lambda (_%L83922%_
                          _%L83924%_
                          _%L83925%_
                          _%L83926%_
                          _%L83927%_
                          _%L83928%_)
                   (cons _%L83928%_
                         (cons '2
                               (cons (cons (cons _%L83926%_
                                                 (cons _%L83925%_ '()))
                                           _%L83927%_)
                                     (cons _%L83924%_ _%L83922%_))))))
                (_%__kont8913289133%_
                 (lambda (_%L83803%_
                          _%L83805%_
                          _%L83806%_
                          _%L83807%_
                          _%L83808%_)
                   (cons _%L83808%_
                         (cons '2
                               (cons (cons (cons _%L83806%_
                                                 (cons _%L83806%_ '()))
                                           _%L83807%_)
                                     (cons _%L83805%_ _%L83803%_))))))
                (_%__kont8913489135%_
                 (lambda (_%L83720%_ _%L83722%_ _%L83723%_)
                   (cons _%L83723%_
                         (cons '3 (cons '() (cons _%L83722%_ _%L83720%_))))))
                (_%__kont8913689137%_
                 (lambda (_%L83641%_
                          _%L83643%_
                          _%L83644%_
                          _%L83645%_
                          _%L83646%_)
                   (cons _%L83646%_
                         (cons '3
                               (cons (cons _%L83644%_ _%L83645%_)
                                     (cons _%L83643%_ _%L83641%_))))))
                (_%__kont8913889139%_
                 (lambda (_%L83525%_
                          _%L83527%_
                          _%L83528%_
                          _%L83529%_
                          _%L83530%_
                          _%L83531%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L83528%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L83525%_ '())))
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
                                              (lambda (_%g8356583568%_
                                                       _%g8356683571%_)
                                                (cons _%g8356583568%_
                                                      _%g8356683571%_))
                                              '()
                                              _%L83530%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8356383574%_
                                                       _%g8356483577%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8356383574%_ '())))
              _%g8356483577%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L83529%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L83527%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8946889469%_
                    (lambda (_%e8334683397%_
                             _%hd8334783401%_
                             _%tl8334883404%_
                             _%e8334983407%_
                             _%hd8335083411%_
                             _%tl8335183414%_
                             _%e8335283417%_
                             _%e8335383421%_
                             _%hd8335483425%_
                             _%tl8335583428%_
                             _%__splice8914089141%_
                             _%target8335683431%_
                             _%tl8335883434%_)
                      (letrec ((_%loop8335983437%_
                                (lambda (_%hd8335783441%_
                                         _%exprs8336383444%_
                                         _%names8336483446%_)
                                  (if (gx#stx-pair? _%hd8335783441%_)
                                      (let ((_%e8336083449%_
                                             (gx#syntax-e _%hd8335783441%_)))
                                        (let ((_%lp-tl8336283456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8336083449%_)))
                                              (_%lp-hd8336183453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8336083449%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8336183453%_)
                                              (let ((_%e8337983459%_
                                                     (gx#syntax-e
                                                      _%lp-hd8336183453%_)))
                                                (let ((_%tl8338183466%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8337983459%_)))
                                                      (_%hd8338083463%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8337983459%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8338183466%_)
                                                      (let ((_%e8338283469%_
                                                             (gx#syntax-e
                                                              _%tl8338183466%_)))
                                                        (let ((_%tl8338483476%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8338283469%_)))
                      (_%hd8338383473%_
                       (let () (declare (not safe)) (##car _%e8338283469%_))))
                  (if (gx#stx-null? _%tl8338483476%_)
                      (_%loop8335983437%_
                       _%lp-tl8336283456%_
                       (cons _%hd8338383473%_ _%exprs8336383444%_)
                       (cons _%hd8338083463%_ _%names8336483446%_))
                      (let () (declare (not safe)) (_%g8317683390%_)))))
              (let () (declare (not safe)) (_%g8317683390%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8317683390%_)))))
                                      (let ((_%names8336683482%_
                                             (reverse _%names8336483446%_))
                                            (_%exprs8336583479%_
                                             (reverse _%exprs8336383444%_)))
                                        (if (gx#stx-pair? _%tl8335583428%_)
                                            (let ((_%e8336783485%_
                                                   (gx#syntax-e
                                                    _%tl8335583428%_)))
                                              (let ((_%tl8336983492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8336783485%_)))
                                                    (_%hd8336883489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8336783485%_))))
                                                (if (gx#stx-null?
                                                     _%hd8336883489%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8336983492%_)
                                                        (let ((_%e8337083495%_
                                                               (gx#syntax-e
                                                                _%tl8336983492%_)))
                                                          (let ((_%tl8337283502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8337083495%_)))
                        (_%hd8337183499%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8337083495%_))))
                    (if (gx#stx-pair? _%tl8337283502%_)
                        (let ((_%e8337383505%_ (gx#syntax-e _%tl8337283502%_)))
                          (let ((_%tl8337583512%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8337383505%_)))
                                (_%hd8337483509%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8337383505%_))))
                            (if (gx#stx-pair? _%tl8337583512%_)
                                (let ((_%e8337683515%_
                                       (gx#syntax-e _%tl8337583512%_)))
                                  (let ((_%tl8337883522%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8337683515%_)))
                                        (_%hd8337783519%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8337683515%_))))
                                    (if (gx#stx-null? _%tl8337883522%_)
                                        (_%__kont8913889139%_
                                         _%hd8337783519%_
                                         _%hd8337483509%_
                                         _%hd8337183499%_
                                         _%exprs8336583479%_
                                         _%names8336683482%_
                                         _%hd8334783401%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8317683390%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8317683390%_)))))
                        (let () (declare (not safe)) (_%g8317683390%_)))))
                (let () (declare (not safe)) (_%g8317683390%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8317683390%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8317683390%_))))))))
                        (_%loop8335983437%_ _%target8335683431%_ '() '()))))
                   (_%__match8924689247%_
                    (lambda (_%e8321884022%_
                             _%hd8321984026%_
                             _%tl8322084029%_
                             _%e8322184032%_
                             _%hd8322284036%_
                             _%tl8322384039%_
                             _%e8322484042%_
                             _%e8322584046%_
                             _%hd8322684050%_
                             _%tl8322784053%_
                             _%__splice8912689127%_
                             _%target8322884056%_
                             _%tl8323084059%_
                             _%e8323784062%_
                             _%hd8323884066%_
                             _%tl8323984069%_)
                      (letrec ((_%loop8323184072%_
                                (lambda (_%hd8322984076%_ _%exprs8323584079%_)
                                  (if (gx#stx-pair? _%hd8322984076%_)
                                      (let ((_%e8323284082%_
                                             (gx#syntax-e _%hd8322984076%_)))
                                        (let ((_%lp-tl8323484089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8323284082%_)))
                                              (_%lp-hd8323384086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8323284082%_))))
                                          (_%loop8323184072%_
                                           _%lp-tl8323484089%_
                                           (cons _%lp-hd8323384086%_
                                                 _%exprs8323584079%_))))
                                      (let ((_%exprs8323684092%_
                                             (reverse _%exprs8323584079%_)))
                                        (_%__kont8912489125%_
                                         _%hd8323884066%_
                                         _%exprs8323684092%_
                                         _%hd8322684050%_
                                         _%hd8321984026%_))))))
                        (_%loop8323184072%_ _%target8322884056%_ '()))))
                   (_%__match8920689207%_
                    (lambda (_%e8318384139%_
                             _%hd8318484143%_
                             _%tl8318584146%_
                             _%e8318684149%_
                             _%hd8318784153%_
                             _%tl8318884156%_
                             _%e8318984159%_
                             _%e8319084163%_
                             _%hd8319184167%_
                             _%tl8319284170%_
                             _%__splice8912289123%_
                             _%target8319384173%_
                             _%tl8319584176%_
                             _%e8320284179%_
                             _%hd8320384183%_
                             _%tl8320484186%_
                             _%e8320584189%_
                             _%hd8320684193%_
                             _%tl8320784196%_
                             _%e8320884199%_
                             _%hd8320984203%_
                             _%tl8321084206%_
                             _%e8321184209%_
                             _%hd8321284213%_
                             _%tl8321384216%_)
                      (letrec ((_%loop8319684219%_
                                (lambda (_%hd8319484223%_ _%exprs8320084226%_)
                                  (if (gx#stx-pair? _%hd8319484223%_)
                                      (let ((_%e8319784229%_
                                             (gx#syntax-e _%hd8319484223%_)))
                                        (let ((_%lp-tl8319984236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8319784229%_)))
                                              (_%lp-hd8319884233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8319784229%_))))
                                          (_%loop8319684219%_
                                           _%lp-tl8319984236%_
                                           (cons _%lp-hd8319884233%_
                                                 _%exprs8320084226%_))))
                                      (let ((_%exprs8320184239%_
                                             (reverse _%exprs8320084226%_)))
                                        (_%__kont8912089121%_
                                         _%hd8321284213%_
                                         _%hd8320984203%_
                                         _%exprs8320184239%_
                                         _%hd8319184167%_
                                         _%hd8318484143%_))))))
                        (_%loop8319684219%_ _%target8319384173%_ '())))))
              (if (gx#stx-pair? _%__stx8911789118%_)
                  (let ((_%e8318384139%_ (gx#syntax-e _%__stx8911789118%_)))
                    (let ((_%tl8318584146%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8318384139%_)))
                          (_%hd8318484143%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8318384139%_))))
                      (if (gx#stx-pair? _%tl8318584146%_)
                          (let ((_%e8318684149%_
                                 (gx#syntax-e _%tl8318584146%_)))
                            (let ((_%tl8318884156%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8318684149%_)))
                                  (_%hd8318784153%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8318684149%_))))
                              (if (gx#stx-datum? _%hd8318784153%_)
                                  (let ((_%e8318984159%_
                                         (gx#stx-e _%hd8318784153%_)))
                                    (if (equal? _%e8318984159%_ '1)
                                        (if (gx#stx-pair? _%tl8318884156%_)
                                            (let ((_%e8319084163%_
                                                   (gx#syntax-e
                                                    _%tl8318884156%_)))
                                              (let ((_%tl8319284170%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8319084163%_)))
                                                    (_%hd8319184167%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8319084163%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8319284170%_)
                                                    (if (let ((__tmp89555
                                                               (gx#stx-length
                                                                _%tl8319284170%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp89555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8912289123%_
                       (gx#syntax-split-splice _%tl8319284170%_ '2)))
                  (let ((_%tl8319584176%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8912289123%_ '1)))
                        (_%target8319384173%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8912289123%_ '0))))
                    (if (gx#stx-pair? _%tl8319584176%_)
                        (let ((_%e8320284179%_ (gx#syntax-e _%tl8319584176%_)))
                          (let ((_%tl8320484186%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8320284179%_)))
                                (_%hd8320384183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8320284179%_))))
                            (if (gx#stx-pair? _%hd8320384183%_)
                                (let ((_%e8320584189%_
                                       (gx#syntax-e _%hd8320384183%_)))
                                  (let ((_%tl8320784196%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8320584189%_)))
                                        (_%hd8320684193%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8320584189%_))))
                                    (if (gx#identifier? _%hd8320684193%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g89556_|
                                             _%hd8320684193%_)
                                            (if (gx#stx-pair? _%tl8320784196%_)
                                                (let ((_%e8320884199%_
                                                       (gx#syntax-e
                                                        _%tl8320784196%_)))
                                                  (let ((_%tl8321084206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8320884199%_)))
                                                        (_%hd8320984203%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8320884199%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8321084206%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8320484186%_)
                                                            (let ((_%e8321184209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8320484186%_)))
                      (let ((_%tl8321384216%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8321184209%_)))
                            (_%hd8321284213%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8321184209%_))))
                        (if (gx#stx-null? _%tl8321384216%_)
                            (_%__match8920689207%_
                             _%e8318384139%_
                             _%hd8318484143%_
                             _%tl8318584146%_
                             _%e8318684149%_
                             _%hd8318784153%_
                             _%tl8318884156%_
                             _%e8318984159%_
                             _%e8319084163%_
                             _%hd8319184167%_
                             _%tl8319284170%_
                             _%__splice8912289123%_
                             _%target8319384173%_
                             _%tl8319584176%_
                             _%e8320284179%_
                             _%hd8320384183%_
                             _%tl8320484186%_
                             _%e8320584189%_
                             _%hd8320684193%_
                             _%tl8320784196%_
                             _%e8320884199%_
                             _%hd8320984203%_
                             _%tl8321084206%_
                             _%e8321184209%_
                             _%hd8321284213%_
                             _%tl8321384216%_)
                            (if (let ((__tmp89557
                                       (gx#stx-length _%tl8319284170%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp89557 '1))
                                (let ((_%__splice8912689127%_
                                       (gx#syntax-split-splice
                                        _%tl8319284170%_
                                        '1)))
                                  (let ((_%tl8323084059%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8912689127%_
                                            '1)))
                                        (_%target8322884056%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8912689127%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8323084059%_)
                                        (let ((_%e8323784062%_
                                               (gx#syntax-e _%tl8323084059%_)))
                                          (let ((_%tl8323984069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8323784062%_)))
                                                (_%hd8323884066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8323784062%_))))
                                            (if (gx#stx-null? _%tl8323984069%_)
                                                (_%__match8924689247%_
                                                 _%e8318384139%_
                                                 _%hd8318484143%_
                                                 _%tl8318584146%_
                                                 _%e8318684149%_
                                                 _%hd8318784153%_
                                                 _%tl8318884156%_
                                                 _%e8318984159%_
                                                 _%e8319084163%_
                                                 _%hd8319184167%_
                                                 _%tl8319284170%_
                                                 _%__splice8912689127%_
                                                 _%target8322884056%_
                                                 _%tl8323084059%_
                                                 _%e8323784062%_
                                                 _%hd8323884066%_
                                                 _%tl8323984069%_)
                                                (if (gx#stx-null?
                                                     _%tl8319284170%_)
                                                    (_%__kont8912889129%_
                                                     _%hd8319184167%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8317683390%_))))))
                                        (if (gx#stx-null? _%tl8319284170%_)
                                            (_%__kont8912889129%_
                                             _%hd8319184167%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8317683390%_))))))
                                (if (gx#stx-null? _%tl8319284170%_)
                                    (_%__kont8912889129%_ _%hd8319184167%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8317683390%_)))))))
                    (if (let ((__tmp89558 (gx#stx-length _%tl8319284170%_)))
                          (declare (not safe))
                          (##fx>= __tmp89558 '1))
                        (let ((_%__splice8912689127%_
                               (gx#syntax-split-splice _%tl8319284170%_ '1)))
                          (let ((_%tl8323084059%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8912689127%_ '1)))
                                (_%target8322884056%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8912689127%_ '0))))
                            (if (gx#stx-pair? _%tl8323084059%_)
                                (let ((_%e8323784062%_
                                       (gx#syntax-e _%tl8323084059%_)))
                                  (let ((_%tl8323984069%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8323784062%_)))
                                        (_%hd8323884066%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8323784062%_))))
                                    (if (gx#stx-null? _%tl8323984069%_)
                                        (_%__match8924689247%_
                                         _%e8318384139%_
                                         _%hd8318484143%_
                                         _%tl8318584146%_
                                         _%e8318684149%_
                                         _%hd8318784153%_
                                         _%tl8318884156%_
                                         _%e8318984159%_
                                         _%e8319084163%_
                                         _%hd8319184167%_
                                         _%tl8319284170%_
                                         _%__splice8912689127%_
                                         _%target8322884056%_
                                         _%tl8323084059%_
                                         _%e8323784062%_
                                         _%hd8323884066%_
                                         _%tl8323984069%_)
                                        (if (gx#stx-null? _%tl8319284170%_)
                                            (_%__kont8912889129%_
                                             _%hd8319184167%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8317683390%_))))))
                                (if (gx#stx-null? _%tl8319284170%_)
                                    (_%__kont8912889129%_ _%hd8319184167%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8317683390%_))))))
                        (if (gx#stx-null? _%tl8319284170%_)
                            (_%__kont8912889129%_ _%hd8319184167%_)
                            (let () (declare (not safe)) (_%g8317683390%_)))))
                (if (let ((__tmp89559 (gx#stx-length _%tl8319284170%_)))
                      (declare (not safe))
                      (##fx>= __tmp89559 '1))
                    (let ((_%__splice8912689127%_
                           (gx#syntax-split-splice _%tl8319284170%_ '1)))
                      (let ((_%tl8323084059%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8912689127%_ '1)))
                            (_%target8322884056%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8912689127%_ '0))))
                        (if (gx#stx-pair? _%tl8323084059%_)
                            (let ((_%e8323784062%_
                                   (gx#syntax-e _%tl8323084059%_)))
                              (let ((_%tl8323984069%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8323784062%_)))
                                    (_%hd8323884066%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8323784062%_))))
                                (if (gx#stx-null? _%tl8323984069%_)
                                    (_%__match8924689247%_
                                     _%e8318384139%_
                                     _%hd8318484143%_
                                     _%tl8318584146%_
                                     _%e8318684149%_
                                     _%hd8318784153%_
                                     _%tl8318884156%_
                                     _%e8318984159%_
                                     _%e8319084163%_
                                     _%hd8319184167%_
                                     _%tl8319284170%_
                                     _%__splice8912689127%_
                                     _%target8322884056%_
                                     _%tl8323084059%_
                                     _%e8323784062%_
                                     _%hd8323884066%_
                                     _%tl8323984069%_)
                                    (if (gx#stx-null? _%tl8319284170%_)
                                        (_%__kont8912889129%_ _%hd8319184167%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8317683390%_))))))
                            (if (gx#stx-null? _%tl8319284170%_)
                                (_%__kont8912889129%_ _%hd8319184167%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8317683390%_))))))
                    (if (gx#stx-null? _%tl8319284170%_)
                        (_%__kont8912889129%_ _%hd8319184167%_)
                        (let () (declare (not safe)) (_%g8317683390%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp89560
                                                           (gx#stx-length
                                                            _%tl8319284170%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp89560 '1))
                                                    (let ((_%__splice8912689127%_
                                                           (gx#syntax-split-splice
                                                            _%tl8319284170%_
                                                            '1)))
                                                      (let ((_%tl8323084059%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8912689127%_ '1)))
                    (_%target8322884056%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8912689127%_ '0))))
                (if (gx#stx-pair? _%tl8323084059%_)
                    (let ((_%e8323784062%_ (gx#syntax-e _%tl8323084059%_)))
                      (let ((_%tl8323984069%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8323784062%_)))
                            (_%hd8323884066%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8323784062%_))))
                        (if (gx#stx-null? _%tl8323984069%_)
                            (_%__match8924689247%_
                             _%e8318384139%_
                             _%hd8318484143%_
                             _%tl8318584146%_
                             _%e8318684149%_
                             _%hd8318784153%_
                             _%tl8318884156%_
                             _%e8318984159%_
                             _%e8319084163%_
                             _%hd8319184167%_
                             _%tl8319284170%_
                             _%__splice8912689127%_
                             _%target8322884056%_
                             _%tl8323084059%_
                             _%e8323784062%_
                             _%hd8323884066%_
                             _%tl8323984069%_)
                            (if (gx#stx-null? _%tl8319284170%_)
                                (_%__kont8912889129%_ _%hd8319184167%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8317683390%_))))))
                    (if (gx#stx-null? _%tl8319284170%_)
                        (_%__kont8912889129%_ _%hd8319184167%_)
                        (let () (declare (not safe)) (_%g8317683390%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8319284170%_)
                                                        (_%__kont8912889129%_
                                                         _%hd8319184167%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8317683390%_)))))
                                            (if (let ((__tmp89561
                                                       (gx#stx-length
                                                        _%tl8319284170%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp89561 '1))
                                                (let ((_%__splice8912689127%_
                                                       (gx#syntax-split-splice
                                                        _%tl8319284170%_
                                                        '1)))
                                                  (let ((_%tl8323084059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8912689127%_
                                                            '1)))
                                                        (_%target8322884056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8912689127%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8323084059%_)
                                                        (let ((_%e8323784062%_
                                                               (gx#syntax-e
                                                                _%tl8323084059%_)))
                                                          (let ((_%tl8323984069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8323784062%_)))
                        (_%hd8323884066%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8323784062%_))))
                    (if (gx#stx-null? _%tl8323984069%_)
                        (_%__match8924689247%_
                         _%e8318384139%_
                         _%hd8318484143%_
                         _%tl8318584146%_
                         _%e8318684149%_
                         _%hd8318784153%_
                         _%tl8318884156%_
                         _%e8318984159%_
                         _%e8319084163%_
                         _%hd8319184167%_
                         _%tl8319284170%_
                         _%__splice8912689127%_
                         _%target8322884056%_
                         _%tl8323084059%_
                         _%e8323784062%_
                         _%hd8323884066%_
                         _%tl8323984069%_)
                        (if (gx#stx-null? _%tl8319284170%_)
                            (_%__kont8912889129%_ _%hd8319184167%_)
                            (let () (declare (not safe)) (_%g8317683390%_))))))
                (if (gx#stx-null? _%tl8319284170%_)
                    (_%__kont8912889129%_ _%hd8319184167%_)
                    (let () (declare (not safe)) (_%g8317683390%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8319284170%_)
                                                    (_%__kont8912889129%_
                                                     _%hd8319184167%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8317683390%_)))))
                                        (if (let ((__tmp89562
                                                   (gx#stx-length
                                                    _%tl8319284170%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp89562 '1))
                                            (let ((_%__splice8912689127%_
                                                   (gx#syntax-split-splice
                                                    _%tl8319284170%_
                                                    '1)))
                                              (let ((_%tl8323084059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8912689127%_
                                                        '1)))
                                                    (_%target8322884056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8912689127%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8323084059%_)
                                                    (let ((_%e8323784062%_
                                                           (gx#syntax-e
                                                            _%tl8323084059%_)))
                                                      (let ((_%tl8323984069%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8323784062%_)))
                    (_%hd8323884066%_
                     (let () (declare (not safe)) (##car _%e8323784062%_))))
                (if (gx#stx-null? _%tl8323984069%_)
                    (_%__match8924689247%_
                     _%e8318384139%_
                     _%hd8318484143%_
                     _%tl8318584146%_
                     _%e8318684149%_
                     _%hd8318784153%_
                     _%tl8318884156%_
                     _%e8318984159%_
                     _%e8319084163%_
                     _%hd8319184167%_
                     _%tl8319284170%_
                     _%__splice8912689127%_
                     _%target8322884056%_
                     _%tl8323084059%_
                     _%e8323784062%_
                     _%hd8323884066%_
                     _%tl8323984069%_)
                    (if (gx#stx-null? _%tl8319284170%_)
                        (_%__kont8912889129%_ _%hd8319184167%_)
                        (let () (declare (not safe)) (_%g8317683390%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8319284170%_)
                                                        (_%__kont8912889129%_
                                                         _%hd8319184167%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8317683390%_))))))
                                            (if (gx#stx-null? _%tl8319284170%_)
                                                (_%__kont8912889129%_
                                                 _%hd8319184167%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8317683390%_)))))))
                                (if (let ((__tmp89563
                                           (gx#stx-length _%tl8319284170%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp89563 '1))
                                    (let ((_%__splice8912689127%_
                                           (gx#syntax-split-splice
                                            _%tl8319284170%_
                                            '1)))
                                      (let ((_%tl8323084059%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8912689127%_
                                                '1)))
                                            (_%target8322884056%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8912689127%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8323084059%_)
                                            (let ((_%e8323784062%_
                                                   (gx#syntax-e
                                                    _%tl8323084059%_)))
                                              (let ((_%tl8323984069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8323784062%_)))
                                                    (_%hd8323884066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8323784062%_))))
                                                (if (gx#stx-null?
                                                     _%tl8323984069%_)
                                                    (_%__match8924689247%_
                                                     _%e8318384139%_
                                                     _%hd8318484143%_
                                                     _%tl8318584146%_
                                                     _%e8318684149%_
                                                     _%hd8318784153%_
                                                     _%tl8318884156%_
                                                     _%e8318984159%_
                                                     _%e8319084163%_
                                                     _%hd8319184167%_
                                                     _%tl8319284170%_
                                                     _%__splice8912689127%_
                                                     _%target8322884056%_
                                                     _%tl8323084059%_
                                                     _%e8323784062%_
                                                     _%hd8323884066%_
                                                     _%tl8323984069%_)
                                                    (if (gx#stx-null?
                                                         _%tl8319284170%_)
                                                        (_%__kont8912889129%_
                                                         _%hd8319184167%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8317683390%_))))))
                                            (if (gx#stx-null? _%tl8319284170%_)
                                                (_%__kont8912889129%_
                                                 _%hd8319184167%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8317683390%_))))))
                                    (if (gx#stx-null? _%tl8319284170%_)
                                        (_%__kont8912889129%_ _%hd8319184167%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8317683390%_)))))))
                        (if (let ((__tmp89564
                                   (gx#stx-length _%tl8319284170%_)))
                              (declare (not safe))
                              (##fx>= __tmp89564 '1))
                            (let ((_%__splice8912689127%_
                                   (gx#syntax-split-splice
                                    _%tl8319284170%_
                                    '1)))
                              (let ((_%tl8323084059%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8912689127%_
                                        '1)))
                                    (_%target8322884056%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8912689127%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8323084059%_)
                                    (let ((_%e8323784062%_
                                           (gx#syntax-e _%tl8323084059%_)))
                                      (let ((_%tl8323984069%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8323784062%_)))
                                            (_%hd8323884066%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8323784062%_))))
                                        (if (gx#stx-null? _%tl8323984069%_)
                                            (_%__match8924689247%_
                                             _%e8318384139%_
                                             _%hd8318484143%_
                                             _%tl8318584146%_
                                             _%e8318684149%_
                                             _%hd8318784153%_
                                             _%tl8318884156%_
                                             _%e8318984159%_
                                             _%e8319084163%_
                                             _%hd8319184167%_
                                             _%tl8319284170%_
                                             _%__splice8912689127%_
                                             _%target8322884056%_
                                             _%tl8323084059%_
                                             _%e8323784062%_
                                             _%hd8323884066%_
                                             _%tl8323984069%_)
                                            (if (gx#stx-null? _%tl8319284170%_)
                                                (_%__kont8912889129%_
                                                 _%hd8319184167%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8317683390%_))))))
                                    (if (gx#stx-null? _%tl8319284170%_)
                                        (_%__kont8912889129%_ _%hd8319184167%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8317683390%_))))))
                            (if (gx#stx-null? _%tl8319284170%_)
                                (_%__kont8912889129%_ _%hd8319184167%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8317683390%_)))))))
                (if (let ((__tmp89565 (gx#stx-length _%tl8319284170%_)))
                      (declare (not safe))
                      (##fx>= __tmp89565 '1))
                    (let ((_%__splice8912689127%_
                           (gx#syntax-split-splice _%tl8319284170%_ '1)))
                      (let ((_%tl8323084059%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8912689127%_ '1)))
                            (_%target8322884056%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8912689127%_ '0))))
                        (if (gx#stx-pair? _%tl8323084059%_)
                            (let ((_%e8323784062%_
                                   (gx#syntax-e _%tl8323084059%_)))
                              (let ((_%tl8323984069%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8323784062%_)))
                                    (_%hd8323884066%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8323784062%_))))
                                (if (gx#stx-null? _%tl8323984069%_)
                                    (_%__match8924689247%_
                                     _%e8318384139%_
                                     _%hd8318484143%_
                                     _%tl8318584146%_
                                     _%e8318684149%_
                                     _%hd8318784153%_
                                     _%tl8318884156%_
                                     _%e8318984159%_
                                     _%e8319084163%_
                                     _%hd8319184167%_
                                     _%tl8319284170%_
                                     _%__splice8912689127%_
                                     _%target8322884056%_
                                     _%tl8323084059%_
                                     _%e8323784062%_
                                     _%hd8323884066%_
                                     _%tl8323984069%_)
                                    (if (gx#stx-null? _%tl8319284170%_)
                                        (_%__kont8912889129%_ _%hd8319184167%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8317683390%_))))))
                            (if (gx#stx-null? _%tl8319284170%_)
                                (_%__kont8912889129%_ _%hd8319184167%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8317683390%_))))))
                    (if (gx#stx-null? _%tl8319284170%_)
                        (_%__kont8912889129%_ _%hd8319184167%_)
                        (let () (declare (not safe)) (_%g8317683390%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8319284170%_)
                                                        (_%__kont8912889129%_
                                                         _%hd8319184167%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8317683390%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8317683390%_)))
                                        (if (equal? _%e8318984159%_ '2)
                                            (if (gx#stx-pair? _%tl8318884156%_)
                                                (let ((_%e8326483862%_
                                                       (gx#syntax-e
                                                        _%tl8318884156%_)))
                                                  (let ((_%tl8326683869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8326483862%_)))
                                                        (_%hd8326583866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8326483862%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8326683869%_)
                                                        (let ((_%e8326783872%_
                                                               (gx#syntax-e
                                                                _%tl8326683869%_)))
                                                          (let ((_%tl8326983879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8326783872%_)))
                        (_%hd8326883876%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8326783872%_))))
                    (if (gx#stx-pair? _%hd8326883876%_)
                        (let ((_%e8327083882%_ (gx#syntax-e _%hd8326883876%_)))
                          (let ((_%tl8327283889%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8327083882%_)))
                                (_%hd8327183886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8327083882%_))))
                            (if (gx#stx-pair? _%hd8327183886%_)
                                (let ((_%e8327383892%_
                                       (gx#syntax-e _%hd8327183886%_)))
                                  (let ((_%tl8327583899%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8327383892%_)))
                                        (_%hd8327483896%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8327383892%_))))
                                    (if (gx#identifier? _%hd8327483896%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g89566_|
                                             _%hd8327483896%_)
                                            (if (gx#stx-pair? _%tl8327583899%_)
                                                (let ((_%e8327683902%_
                                                       (gx#syntax-e
                                                        _%tl8327583899%_)))
                                                  (let ((_%tl8327883909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8327683902%_)))
                                                        (_%hd8327783906%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8327683902%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8327883909%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8327283889%_)
                                                            (let ((_%e8327983912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8327283889%_)))
                      (let ((_%tl8328183919%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8327983912%_)))
                            (_%hd8328083916%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8327983912%_))))
                        (_%__kont8913089131%_
                         _%tl8326983879%_
                         _%tl8328183919%_
                         _%hd8328083916%_
                         _%hd8327783906%_
                         _%hd8326583866%_
                         _%hd8318484143%_)))
                    (_%__kont8913289133%_
                     _%tl8326983879%_
                     _%tl8327283889%_
                     _%hd8327183886%_
                     _%hd8326583866%_
                     _%hd8318484143%_))
                (_%__kont8913289133%_
                 _%tl8326983879%_
                 _%tl8327283889%_
                 _%hd8327183886%_
                 _%hd8326583866%_
                 _%hd8318484143%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8913289133%_
                                                 _%tl8326983879%_
                                                 _%tl8327283889%_
                                                 _%hd8327183886%_
                                                 _%hd8326583866%_
                                                 _%hd8318484143%_))
                                            (_%__kont8913289133%_
                                             _%tl8326983879%_
                                             _%tl8327283889%_
                                             _%hd8327183886%_
                                             _%hd8326583866%_
                                             _%hd8318484143%_))
                                        (_%__kont8913289133%_
                                         _%tl8326983879%_
                                         _%tl8327283889%_
                                         _%hd8327183886%_
                                         _%hd8326583866%_
                                         _%hd8318484143%_))))
                                (_%__kont8913289133%_
                                 _%tl8326983879%_
                                 _%tl8327283889%_
                                 _%hd8327183886%_
                                 _%hd8326583866%_
                                 _%hd8318484143%_))))
                        (if (gx#stx-null? _%hd8326883876%_)
                            (_%__kont8913489135%_
                             _%tl8326983879%_
                             _%hd8326583866%_
                             _%hd8318484143%_)
                            (let () (declare (not safe)) (_%g8317683390%_))))))
                (let () (declare (not safe)) (_%g8317683390%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8317683390%_)))
                                            (if (equal? _%e8318984159%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8318884156%_)
                                                    (let ((_%e8333183611%_
                                                           (gx#syntax-e
                                                            _%tl8318884156%_)))
                                                      (let ((_%tl8333383618%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8333183611%_)))
                    (_%hd8333283615%_
                     (let () (declare (not safe)) (##car _%e8333183611%_))))
                (if (gx#stx-pair? _%tl8333383618%_)
                    (let ((_%e8333483621%_ (gx#syntax-e _%tl8333383618%_)))
                      (let ((_%tl8333683628%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8333483621%_)))
                            (_%hd8333583625%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8333483621%_))))
                        (if (gx#stx-pair? _%hd8333583625%_)
                            (let ((_%e8333783631%_
                                   (gx#syntax-e _%hd8333583625%_)))
                              (let ((_%tl8333983638%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8333783631%_)))
                                    (_%hd8333883635%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8333783631%_))))
                                (_%__kont8913689137%_
                                 _%tl8333683628%_
                                 _%tl8333983638%_
                                 _%hd8333883635%_
                                 _%hd8333283615%_
                                 _%hd8318484143%_)))
                            (if (gx#stx-pair/null? _%hd8333283615%_)
                                (let ((_%__splice8914089141%_
                                       (gx#syntax-split-splice
                                        _%hd8333283615%_
                                        '0)))
                                  (let ((_%tl8335883434%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8914089141%_
                                            '1)))
                                        (_%target8335683431%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8914089141%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8335883434%_)
                                        (_%__match8946889469%_
                                         _%e8318384139%_
                                         _%hd8318484143%_
                                         _%tl8318584146%_
                                         _%e8318684149%_
                                         _%hd8318784153%_
                                         _%tl8318884156%_
                                         _%e8318984159%_
                                         _%e8333183611%_
                                         _%hd8333283615%_
                                         _%tl8333383618%_
                                         _%__splice8914089141%_
                                         _%target8335683431%_
                                         _%tl8335883434%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8317683390%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8317683390%_))))))
                    (if (gx#stx-pair/null? _%hd8333283615%_)
                        (let ((_%__splice8914089141%_
                               (gx#syntax-split-splice _%hd8333283615%_ '0)))
                          (let ((_%tl8335883434%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8914089141%_ '1)))
                                (_%target8335683431%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8914089141%_ '0))))
                            (if (gx#stx-null? _%tl8335883434%_)
                                (_%__match8946889469%_
                                 _%e8318384139%_
                                 _%hd8318484143%_
                                 _%tl8318584146%_
                                 _%e8318684149%_
                                 _%hd8318784153%_
                                 _%tl8318884156%_
                                 _%e8318984159%_
                                 _%e8333183611%_
                                 _%hd8333283615%_
                                 _%tl8333383618%_
                                 _%__splice8914089141%_
                                 _%target8335683431%_
                                 _%tl8335883434%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8317683390%_)))))
                        (let () (declare (not safe)) (_%g8317683390%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8317683390%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8317683390%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8317683390%_)))))
                          (let () (declare (not safe)) (_%g8317683390%_)))))
                  (let () (declare (not safe)) (_%g8317683390%_))))))))))
