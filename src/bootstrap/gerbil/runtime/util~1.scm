(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g88396_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g88406_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx81456%_)
        (let* ((_%g8146081478%_
                (lambda (_%g8146181474%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8146181474%_)))
               (_%g8145981534%_
                (lambda (_%g8146181482%_)
                  (if (gx#stx-pair? _%g8146181482%_)
                      (let ((_%e8146481485%_ (gx#syntax-e _%g8146181482%_)))
                        (let ((_%hd8146581489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8146481485%_)))
                              (_%tl8146681492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8146481485%_))))
                          (if (gx#stx-pair? _%tl8146681492%_)
                              (let ((_%e8146781495%_
                                     (gx#syntax-e _%tl8146681492%_)))
                                (let ((_%hd8146881499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8146781495%_)))
                                      (_%tl8146981502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8146781495%_))))
                                  (if (gx#stx-pair? _%tl8146981502%_)
                                      (let ((_%e8147081505%_
                                             (gx#syntax-e _%tl8146981502%_)))
                                        (let ((_%hd8147181509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8147081505%_)))
                                              (_%tl8147281512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8147081505%_))))
                                          (if (gx#stx-null? _%tl8147281512%_)
                                              ((lambda (_%L81515%_ _%L81517%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L81517%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L81515%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8147181509%_
                                               _%hd8146881499%_)
                                              (_%g8146081478%_
                                               _%g8146181482%_))))
                                      (_%g8146081478%_ _%g8146181482%_))))
                              (_%g8146081478%_ _%g8146181482%_))))
                      (_%g8146081478%_ _%g8146181482%_)))))
          (_%g8145981534%_ _%$stx81456%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx81538%_)
        (let* ((_%g8154281556%_
                (lambda (_%g8154381552%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8154381552%_)))
               (_%g8154181597%_
                (lambda (_%g8154381560%_)
                  (if (gx#stx-pair? _%g8154381560%_)
                      (let ((_%e8154581563%_ (gx#syntax-e _%g8154381560%_)))
                        (let ((_%hd8154681567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8154581563%_)))
                              (_%tl8154781570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8154581563%_))))
                          (if (gx#stx-pair? _%tl8154781570%_)
                              (let ((_%e8154881573%_
                                     (gx#syntax-e _%tl8154781570%_)))
                                (let ((_%hd8154981577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8154881573%_)))
                                      (_%tl8155081580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8154881573%_))))
                                  (if (gx#stx-null? _%tl8155081580%_)
                                      ((lambda (_%L81583%_)
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
                                       (cons _%L81583%_
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
                                       _%hd8154981577%_)
                                      (_%g8154281556%_ _%g8154381560%_))))
                              (_%g8154281556%_ _%g8154381560%_))))
                      (_%g8154281556%_ _%g8154381560%_)))))
          (_%g8154181597%_ _%$stx81538%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx81601%_)
        (let* ((_%g8160581619%_
                (lambda (_%g8160681615%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8160681615%_)))
               (_%g8160481660%_
                (lambda (_%g8160681623%_)
                  (if (gx#stx-pair? _%g8160681623%_)
                      (let ((_%e8160881626%_ (gx#syntax-e _%g8160681623%_)))
                        (let ((_%hd8160981630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8160881626%_)))
                              (_%tl8161081633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8160881626%_))))
                          (if (gx#stx-pair? _%tl8161081633%_)
                              (let ((_%e8161181636%_
                                     (gx#syntax-e _%tl8161081633%_)))
                                (let ((_%hd8161281640%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8161181636%_)))
                                      (_%tl8161381643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8161181636%_))))
                                  (if (gx#stx-null? _%tl8161381643%_)
                                      ((lambda (_%L81646%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L81646%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8161281640%_)
                                      (_%g8160581619%_ _%g8160681623%_))))
                              (_%g8160581619%_ _%g8160681623%_))))
                      (_%g8160581619%_ _%g8160681623%_)))))
          (_%g8160481660%_ _%$stx81601%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx81664%_)
        (let* ((_%g8166881678%_
                (lambda (_%g8166981674%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8166981674%_)))
               (_%g8166781699%_
                (lambda (_%g8166981682%_)
                  (if (gx#stx-pair? _%g8166981682%_)
                      (let ((_%e8167081685%_ (gx#syntax-e _%g8166981682%_)))
                        (let ((_%hd8167181689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8167081685%_)))
                              (_%tl8167281692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8167081685%_))))
                          (if (gx#stx-null? _%tl8167281692%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8166881678%_ _%g8166981682%_))))
                      (_%g8166881678%_ _%g8166981682%_)))))
          (_%g8166781699%_ _%$stx81664%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx81703%_)
        (let* ((_%g8170781725%_
                (lambda (_%g8170881721%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8170881721%_)))
               (_%g8170681780%_
                (lambda (_%g8170881729%_)
                  (if (gx#stx-pair? _%g8170881729%_)
                      (let ((_%e8171181732%_ (gx#syntax-e _%g8170881729%_)))
                        (let ((_%hd8171281736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8171181732%_)))
                              (_%tl8171381739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8171181732%_))))
                          (if (gx#stx-pair? _%tl8171381739%_)
                              (let ((_%e8171481742%_
                                     (gx#syntax-e _%tl8171381739%_)))
                                (let ((_%hd8171581746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8171481742%_)))
                                      (_%tl8171681749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8171481742%_))))
                                  (if (gx#stx-pair? _%tl8171681749%_)
                                      (let ((_%e8171781752%_
                                             (gx#syntax-e _%tl8171681749%_)))
                                        (let ((_%hd8171881756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8171781752%_)))
                                              (_%tl8171981759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8171781752%_))))
                                          (if (gx#stx-null? _%tl8171981759%_)
                                              ((lambda (_%L81762%_ _%L81764%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81764%_
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
                 (cons (cons _%L81762%_
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
                                               _%hd8171881756%_
                                               _%hd8171581746%_)
                                              (_%g8170781725%_
                                               _%g8170881729%_))))
                                      (_%g8170781725%_ _%g8170881729%_))))
                              (_%g8170781725%_ _%g8170881729%_))))
                      (_%g8170781725%_ _%g8170881729%_)))))
          (_%g8170681780%_ _%$stx81703%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx81784%_)
        (let* ((_%g8178881806%_
                (lambda (_%g8178981802%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8178981802%_)))
               (_%g8178781861%_
                (lambda (_%g8178981810%_)
                  (if (gx#stx-pair? _%g8178981810%_)
                      (let ((_%e8179281813%_ (gx#syntax-e _%g8178981810%_)))
                        (let ((_%hd8179381817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8179281813%_)))
                              (_%tl8179481820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8179281813%_))))
                          (if (gx#stx-pair? _%tl8179481820%_)
                              (let ((_%e8179581823%_
                                     (gx#syntax-e _%tl8179481820%_)))
                                (let ((_%hd8179681827%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8179581823%_)))
                                      (_%tl8179781830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8179581823%_))))
                                  (if (gx#stx-pair? _%tl8179781830%_)
                                      (let ((_%e8179881833%_
                                             (gx#syntax-e _%tl8179781830%_)))
                                        (let ((_%hd8179981837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8179881833%_)))
                                              (_%tl8180081840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8179881833%_))))
                                          (if (gx#stx-null? _%tl8180081840%_)
                                              ((lambda (_%L81843%_ _%L81845%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81845%_
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
                                               (cons (cons _%L81843%_
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
                                               _%hd8179981837%_
                                               _%hd8179681827%_)
                                              (_%g8178881806%_
                                               _%g8178981810%_))))
                                      (_%g8178881806%_ _%g8178981810%_))))
                              (_%g8178881806%_ _%g8178981810%_))))
                      (_%g8178881806%_ _%g8178981810%_)))))
          (_%g8178781861%_ _%$stx81784%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx81865%_)
        (let* ((_%g8186981887%_
                (lambda (_%g8187081883%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8187081883%_)))
               (_%g8186881942%_
                (lambda (_%g8187081891%_)
                  (if (gx#stx-pair? _%g8187081891%_)
                      (let ((_%e8187381894%_ (gx#syntax-e _%g8187081891%_)))
                        (let ((_%hd8187481898%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8187381894%_)))
                              (_%tl8187581901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8187381894%_))))
                          (if (gx#stx-pair? _%tl8187581901%_)
                              (let ((_%e8187681904%_
                                     (gx#syntax-e _%tl8187581901%_)))
                                (let ((_%hd8187781908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8187681904%_)))
                                      (_%tl8187881911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8187681904%_))))
                                  (if (gx#stx-pair? _%tl8187881911%_)
                                      (let ((_%e8187981914%_
                                             (gx#syntax-e _%tl8187881911%_)))
                                        (let ((_%hd8188081918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8187981914%_)))
                                              (_%tl8188181921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8187981914%_))))
                                          (if (gx#stx-null? _%tl8188181921%_)
                                              ((lambda (_%L81924%_ _%L81926%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L81926%_
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
                                               (cons (cons _%L81924%_
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
                                               _%hd8188081918%_
                                               _%hd8187781908%_)
                                              (_%g8186981887%_
                                               _%g8187081891%_))))
                                      (_%g8186981887%_ _%g8187081891%_))))
                              (_%g8186981887%_ _%g8187081891%_))))
                      (_%g8186981887%_ _%g8187081891%_)))))
          (_%g8186881942%_ _%$stx81865%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx81946%_)
        (let* ((_%g8195081961%_
                (lambda (_%g8195181957%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8195181957%_)))
               (_%g8194981990%_
                (lambda (_%g8195181965%_)
                  (if (gx#stx-pair? _%g8195181965%_)
                      (let ((_%e8195381968%_ (gx#syntax-e _%g8195181965%_)))
                        (let ((_%hd8195481972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8195381968%_)))
                              (_%tl8195581975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8195381968%_))))
                          ((lambda (_%L81978%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L81978%_)))
                           _%tl8195581975%_)))
                      (_%g8195081961%_ _%g8195181965%_)))))
          (_%g8194981990%_ _%$stx81946%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx81994%_)
        (let* ((_%__stx8795787958%_ _%$stx81994%_)
               (_%g8200582219%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8795787958%_))))
          (let ((_%__kont8796087961%_
                 (lambda (_%L83072%_
                          _%L83074%_
                          _%L83075%_
                          _%L83076%_
                          _%L83077%_)
                   (cons _%L83077%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8310783110%_
                                                     _%g8310883113%_)
                                              (cons _%g8310783110%_
                                                    _%g8310883113%_))
                                            '()
                                            _%L83075%_)
                                           (cons _%L83076%_
                                                 (cons _%L83074%_
                                                       (cons _%L83072%_
                                                             '())))))))))
                (_%__kont8796487965%_
                 (lambda (_%L82925%_ _%L82927%_ _%L82928%_ _%L82929%_)
                   (cons _%L82929%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8295282955%_
                                                     _%g8295382958%_)
                                              (cons _%g8295282955%_
                                                    _%g8295382958%_))
                                            '()
                                            _%L82927%_)
                                           (cons _%L82928%_
                                                 (cons _%L82925%_
                                                       (cons _%L82925%_
                                                             '())))))))))
                (_%__kont8796887969%_
                 (lambda (_%L82828%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L82828%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8797087971%_
                 (lambda (_%L82751%_
                          _%L82753%_
                          _%L82754%_
                          _%L82755%_
                          _%L82756%_
                          _%L82757%_)
                   (cons _%L82757%_
                         (cons '2
                               (cons (cons (cons _%L82755%_
                                                 (cons _%L82754%_ '()))
                                           _%L82756%_)
                                     (cons _%L82753%_ _%L82751%_))))))
                (_%__kont8797287973%_
                 (lambda (_%L82632%_
                          _%L82634%_
                          _%L82635%_
                          _%L82636%_
                          _%L82637%_)
                   (cons _%L82637%_
                         (cons '2
                               (cons (cons (cons _%L82635%_
                                                 (cons _%L82635%_ '()))
                                           _%L82636%_)
                                     (cons _%L82634%_ _%L82632%_))))))
                (_%__kont8797487975%_
                 (lambda (_%L82549%_ _%L82551%_ _%L82552%_)
                   (cons _%L82552%_
                         (cons '3 (cons '() (cons _%L82551%_ _%L82549%_))))))
                (_%__kont8797687977%_
                 (lambda (_%L82470%_
                          _%L82472%_
                          _%L82473%_
                          _%L82474%_
                          _%L82475%_)
                   (cons _%L82475%_
                         (cons '3
                               (cons (cons _%L82473%_ _%L82474%_)
                                     (cons _%L82472%_ _%L82470%_))))))
                (_%__kont8797887979%_
                 (lambda (_%L82354%_
                          _%L82356%_
                          _%L82357%_
                          _%L82358%_
                          _%L82359%_
                          _%L82360%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L82357%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L82354%_ '())))
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
                                              (lambda (_%g8239482397%_
                                                       _%g8239582400%_)
                                                (cons _%g8239482397%_
                                                      _%g8239582400%_))
                                              '()
                                              _%L82359%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8239282403%_
                                                       _%g8239382406%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8239282403%_ '())))
              _%g8239382406%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L82358%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L82356%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8830888309%_
                    (lambda (_%e8217582226%_
                             _%hd8217682230%_
                             _%tl8217782233%_
                             _%e8217882236%_
                             _%hd8217982240%_
                             _%tl8218082243%_
                             _%e8218182246%_
                             _%e8218282250%_
                             _%hd8218382254%_
                             _%tl8218482257%_
                             _%__splice8798087981%_
                             _%target8218582260%_
                             _%tl8218782263%_)
                      (letrec ((_%loop8218882266%_
                                (lambda (_%hd8218682270%_
                                         _%exprs8219282273%_
                                         _%names8219382275%_)
                                  (if (gx#stx-pair? _%hd8218682270%_)
                                      (let ((_%e8218982278%_
                                             (gx#syntax-e _%hd8218682270%_)))
                                        (let ((_%lp-tl8219182285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8218982278%_)))
                                              (_%lp-hd8219082282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8218982278%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8219082282%_)
                                              (let ((_%e8220882288%_
                                                     (gx#syntax-e
                                                      _%lp-hd8219082282%_)))
                                                (let ((_%tl8221082295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8220882288%_)))
                                                      (_%hd8220982292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8220882288%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8221082295%_)
                                                      (let ((_%e8221182298%_
                                                             (gx#syntax-e
                                                              _%tl8221082295%_)))
                                                        (let ((_%tl8221382305%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8221182298%_)))
                      (_%hd8221282302%_
                       (let () (declare (not safe)) (##car _%e8221182298%_))))
                  (if (gx#stx-null? _%tl8221382305%_)
                      (_%loop8218882266%_
                       _%lp-tl8219182285%_
                       (cons _%hd8221282302%_ _%exprs8219282273%_)
                       (cons _%hd8220982292%_ _%names8219382275%_))
                      (let () (declare (not safe)) (_%g8200582219%_)))))
              (let () (declare (not safe)) (_%g8200582219%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8200582219%_)))))
                                      (let ((_%names8219582311%_
                                             (reverse _%names8219382275%_))
                                            (_%exprs8219482308%_
                                             (reverse _%exprs8219282273%_)))
                                        (if (gx#stx-pair? _%tl8218482257%_)
                                            (let ((_%e8219682314%_
                                                   (gx#syntax-e
                                                    _%tl8218482257%_)))
                                              (let ((_%tl8219882321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8219682314%_)))
                                                    (_%hd8219782318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8219682314%_))))
                                                (if (gx#stx-null?
                                                     _%hd8219782318%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8219882321%_)
                                                        (let ((_%e8219982324%_
                                                               (gx#syntax-e
                                                                _%tl8219882321%_)))
                                                          (let ((_%tl8220182331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8219982324%_)))
                        (_%hd8220082328%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8219982324%_))))
                    (if (gx#stx-pair? _%tl8220182331%_)
                        (let ((_%e8220282334%_ (gx#syntax-e _%tl8220182331%_)))
                          (let ((_%tl8220482341%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8220282334%_)))
                                (_%hd8220382338%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8220282334%_))))
                            (if (gx#stx-pair? _%tl8220482341%_)
                                (let ((_%e8220582344%_
                                       (gx#syntax-e _%tl8220482341%_)))
                                  (let ((_%tl8220782351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8220582344%_)))
                                        (_%hd8220682348%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8220582344%_))))
                                    (if (gx#stx-null? _%tl8220782351%_)
                                        (_%__kont8797887979%_
                                         _%hd8220682348%_
                                         _%hd8220382338%_
                                         _%hd8220082328%_
                                         _%exprs8219482308%_
                                         _%names8219582311%_
                                         _%hd8217682230%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8200582219%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8200582219%_)))))
                        (let () (declare (not safe)) (_%g8200582219%_)))))
                (let () (declare (not safe)) (_%g8200582219%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8200582219%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8200582219%_))))))))
                        (_%loop8218882266%_ _%target8218582260%_ '() '()))))
                   (_%__match8808688087%_
                    (lambda (_%e8204782851%_
                             _%hd8204882855%_
                             _%tl8204982858%_
                             _%e8205082861%_
                             _%hd8205182865%_
                             _%tl8205282868%_
                             _%e8205382871%_
                             _%e8205482875%_
                             _%hd8205582879%_
                             _%tl8205682882%_
                             _%__splice8796687967%_
                             _%target8205782885%_
                             _%tl8205982888%_
                             _%e8206682891%_
                             _%hd8206782895%_
                             _%tl8206882898%_)
                      (letrec ((_%loop8206082901%_
                                (lambda (_%hd8205882905%_ _%exprs8206482908%_)
                                  (if (gx#stx-pair? _%hd8205882905%_)
                                      (let ((_%e8206182911%_
                                             (gx#syntax-e _%hd8205882905%_)))
                                        (let ((_%lp-tl8206382918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8206182911%_)))
                                              (_%lp-hd8206282915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8206182911%_))))
                                          (_%loop8206082901%_
                                           _%lp-tl8206382918%_
                                           (cons _%lp-hd8206282915%_
                                                 _%exprs8206482908%_))))
                                      (let ((_%exprs8206582921%_
                                             (reverse _%exprs8206482908%_)))
                                        (_%__kont8796487965%_
                                         _%hd8206782895%_
                                         _%exprs8206582921%_
                                         _%hd8205582879%_
                                         _%hd8204882855%_))))))
                        (_%loop8206082901%_ _%target8205782885%_ '()))))
                   (_%__match8804688047%_
                    (lambda (_%e8201282968%_
                             _%hd8201382972%_
                             _%tl8201482975%_
                             _%e8201582978%_
                             _%hd8201682982%_
                             _%tl8201782985%_
                             _%e8201882988%_
                             _%e8201982992%_
                             _%hd8202082996%_
                             _%tl8202182999%_
                             _%__splice8796287963%_
                             _%target8202283002%_
                             _%tl8202483005%_
                             _%e8203183008%_
                             _%hd8203283012%_
                             _%tl8203383015%_
                             _%e8203483018%_
                             _%hd8203583022%_
                             _%tl8203683025%_
                             _%e8203783028%_
                             _%hd8203883032%_
                             _%tl8203983035%_
                             _%e8204083038%_
                             _%hd8204183042%_
                             _%tl8204283045%_)
                      (letrec ((_%loop8202583048%_
                                (lambda (_%hd8202383052%_ _%exprs8202983055%_)
                                  (if (gx#stx-pair? _%hd8202383052%_)
                                      (let ((_%e8202683058%_
                                             (gx#syntax-e _%hd8202383052%_)))
                                        (let ((_%lp-tl8202883065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8202683058%_)))
                                              (_%lp-hd8202783062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8202683058%_))))
                                          (_%loop8202583048%_
                                           _%lp-tl8202883065%_
                                           (cons _%lp-hd8202783062%_
                                                 _%exprs8202983055%_))))
                                      (let ((_%exprs8203083068%_
                                             (reverse _%exprs8202983055%_)))
                                        (_%__kont8796087961%_
                                         _%hd8204183042%_
                                         _%hd8203883032%_
                                         _%exprs8203083068%_
                                         _%hd8202082996%_
                                         _%hd8201382972%_))))))
                        (_%loop8202583048%_ _%target8202283002%_ '())))))
              (if (gx#stx-pair? _%__stx8795787958%_)
                  (let ((_%e8201282968%_ (gx#syntax-e _%__stx8795787958%_)))
                    (let ((_%tl8201482975%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8201282968%_)))
                          (_%hd8201382972%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8201282968%_))))
                      (if (gx#stx-pair? _%tl8201482975%_)
                          (let ((_%e8201582978%_
                                 (gx#syntax-e _%tl8201482975%_)))
                            (let ((_%tl8201782985%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8201582978%_)))
                                  (_%hd8201682982%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8201582978%_))))
                              (if (gx#stx-datum? _%hd8201682982%_)
                                  (let ((_%e8201882988%_
                                         (gx#stx-e _%hd8201682982%_)))
                                    (if (equal? _%e8201882988%_ '1)
                                        (if (gx#stx-pair? _%tl8201782985%_)
                                            (let ((_%e8201982992%_
                                                   (gx#syntax-e
                                                    _%tl8201782985%_)))
                                              (let ((_%tl8202182999%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8201982992%_)))
                                                    (_%hd8202082996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8201982992%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8202182999%_)
                                                    (if (let ((__tmp88395
                                                               (gx#stx-length
                                                                _%tl8202182999%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp88395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8796287963%_
                       (gx#syntax-split-splice _%tl8202182999%_ '2)))
                  (let ((_%tl8202483005%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8796287963%_ '1)))
                        (_%target8202283002%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8796287963%_ '0))))
                    (if (gx#stx-pair? _%tl8202483005%_)
                        (let ((_%e8203183008%_ (gx#syntax-e _%tl8202483005%_)))
                          (let ((_%tl8203383015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8203183008%_)))
                                (_%hd8203283012%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8203183008%_))))
                            (if (gx#stx-pair? _%hd8203283012%_)
                                (let ((_%e8203483018%_
                                       (gx#syntax-e _%hd8203283012%_)))
                                  (let ((_%tl8203683025%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8203483018%_)))
                                        (_%hd8203583022%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8203483018%_))))
                                    (if (gx#identifier? _%hd8203583022%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88396_|
                                             _%hd8203583022%_)
                                            (if (gx#stx-pair? _%tl8203683025%_)
                                                (let ((_%e8203783028%_
                                                       (gx#syntax-e
                                                        _%tl8203683025%_)))
                                                  (let ((_%tl8203983035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8203783028%_)))
                                                        (_%hd8203883032%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8203783028%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8203983035%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8203383015%_)
                                                            (let ((_%e8204083038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8203383015%_)))
                      (let ((_%tl8204283045%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8204083038%_)))
                            (_%hd8204183042%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8204083038%_))))
                        (if (gx#stx-null? _%tl8204283045%_)
                            (_%__match8804688047%_
                             _%e8201282968%_
                             _%hd8201382972%_
                             _%tl8201482975%_
                             _%e8201582978%_
                             _%hd8201682982%_
                             _%tl8201782985%_
                             _%e8201882988%_
                             _%e8201982992%_
                             _%hd8202082996%_
                             _%tl8202182999%_
                             _%__splice8796287963%_
                             _%target8202283002%_
                             _%tl8202483005%_
                             _%e8203183008%_
                             _%hd8203283012%_
                             _%tl8203383015%_
                             _%e8203483018%_
                             _%hd8203583022%_
                             _%tl8203683025%_
                             _%e8203783028%_
                             _%hd8203883032%_
                             _%tl8203983035%_
                             _%e8204083038%_
                             _%hd8204183042%_
                             _%tl8204283045%_)
                            (if (let ((__tmp88397
                                       (gx#stx-length _%tl8202182999%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp88397 '1))
                                (let ((_%__splice8796687967%_
                                       (gx#syntax-split-splice
                                        _%tl8202182999%_
                                        '1)))
                                  (let ((_%tl8205982888%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8796687967%_
                                            '1)))
                                        (_%target8205782885%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8796687967%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8205982888%_)
                                        (let ((_%e8206682891%_
                                               (gx#syntax-e _%tl8205982888%_)))
                                          (let ((_%tl8206882898%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8206682891%_)))
                                                (_%hd8206782895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8206682891%_))))
                                            (if (gx#stx-null? _%tl8206882898%_)
                                                (_%__match8808688087%_
                                                 _%e8201282968%_
                                                 _%hd8201382972%_
                                                 _%tl8201482975%_
                                                 _%e8201582978%_
                                                 _%hd8201682982%_
                                                 _%tl8201782985%_
                                                 _%e8201882988%_
                                                 _%e8201982992%_
                                                 _%hd8202082996%_
                                                 _%tl8202182999%_
                                                 _%__splice8796687967%_
                                                 _%target8205782885%_
                                                 _%tl8205982888%_
                                                 _%e8206682891%_
                                                 _%hd8206782895%_
                                                 _%tl8206882898%_)
                                                (if (gx#stx-null?
                                                     _%tl8202182999%_)
                                                    (_%__kont8796887969%_
                                                     _%hd8202082996%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8200582219%_))))))
                                        (if (gx#stx-null? _%tl8202182999%_)
                                            (_%__kont8796887969%_
                                             _%hd8202082996%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8200582219%_))))))
                                (if (gx#stx-null? _%tl8202182999%_)
                                    (_%__kont8796887969%_ _%hd8202082996%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8200582219%_)))))))
                    (if (let ((__tmp88398 (gx#stx-length _%tl8202182999%_)))
                          (declare (not safe))
                          (##fx>= __tmp88398 '1))
                        (let ((_%__splice8796687967%_
                               (gx#syntax-split-splice _%tl8202182999%_ '1)))
                          (let ((_%tl8205982888%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8796687967%_ '1)))
                                (_%target8205782885%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8796687967%_ '0))))
                            (if (gx#stx-pair? _%tl8205982888%_)
                                (let ((_%e8206682891%_
                                       (gx#syntax-e _%tl8205982888%_)))
                                  (let ((_%tl8206882898%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8206682891%_)))
                                        (_%hd8206782895%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8206682891%_))))
                                    (if (gx#stx-null? _%tl8206882898%_)
                                        (_%__match8808688087%_
                                         _%e8201282968%_
                                         _%hd8201382972%_
                                         _%tl8201482975%_
                                         _%e8201582978%_
                                         _%hd8201682982%_
                                         _%tl8201782985%_
                                         _%e8201882988%_
                                         _%e8201982992%_
                                         _%hd8202082996%_
                                         _%tl8202182999%_
                                         _%__splice8796687967%_
                                         _%target8205782885%_
                                         _%tl8205982888%_
                                         _%e8206682891%_
                                         _%hd8206782895%_
                                         _%tl8206882898%_)
                                        (if (gx#stx-null? _%tl8202182999%_)
                                            (_%__kont8796887969%_
                                             _%hd8202082996%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8200582219%_))))))
                                (if (gx#stx-null? _%tl8202182999%_)
                                    (_%__kont8796887969%_ _%hd8202082996%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8200582219%_))))))
                        (if (gx#stx-null? _%tl8202182999%_)
                            (_%__kont8796887969%_ _%hd8202082996%_)
                            (let () (declare (not safe)) (_%g8200582219%_)))))
                (if (let ((__tmp88399 (gx#stx-length _%tl8202182999%_)))
                      (declare (not safe))
                      (##fx>= __tmp88399 '1))
                    (let ((_%__splice8796687967%_
                           (gx#syntax-split-splice _%tl8202182999%_ '1)))
                      (let ((_%tl8205982888%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8796687967%_ '1)))
                            (_%target8205782885%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8796687967%_ '0))))
                        (if (gx#stx-pair? _%tl8205982888%_)
                            (let ((_%e8206682891%_
                                   (gx#syntax-e _%tl8205982888%_)))
                              (let ((_%tl8206882898%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8206682891%_)))
                                    (_%hd8206782895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8206682891%_))))
                                (if (gx#stx-null? _%tl8206882898%_)
                                    (_%__match8808688087%_
                                     _%e8201282968%_
                                     _%hd8201382972%_
                                     _%tl8201482975%_
                                     _%e8201582978%_
                                     _%hd8201682982%_
                                     _%tl8201782985%_
                                     _%e8201882988%_
                                     _%e8201982992%_
                                     _%hd8202082996%_
                                     _%tl8202182999%_
                                     _%__splice8796687967%_
                                     _%target8205782885%_
                                     _%tl8205982888%_
                                     _%e8206682891%_
                                     _%hd8206782895%_
                                     _%tl8206882898%_)
                                    (if (gx#stx-null? _%tl8202182999%_)
                                        (_%__kont8796887969%_ _%hd8202082996%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8200582219%_))))))
                            (if (gx#stx-null? _%tl8202182999%_)
                                (_%__kont8796887969%_ _%hd8202082996%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8200582219%_))))))
                    (if (gx#stx-null? _%tl8202182999%_)
                        (_%__kont8796887969%_ _%hd8202082996%_)
                        (let () (declare (not safe)) (_%g8200582219%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp88400
                                                           (gx#stx-length
                                                            _%tl8202182999%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp88400 '1))
                                                    (let ((_%__splice8796687967%_
                                                           (gx#syntax-split-splice
                                                            _%tl8202182999%_
                                                            '1)))
                                                      (let ((_%tl8205982888%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8796687967%_ '1)))
                    (_%target8205782885%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8796687967%_ '0))))
                (if (gx#stx-pair? _%tl8205982888%_)
                    (let ((_%e8206682891%_ (gx#syntax-e _%tl8205982888%_)))
                      (let ((_%tl8206882898%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8206682891%_)))
                            (_%hd8206782895%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8206682891%_))))
                        (if (gx#stx-null? _%tl8206882898%_)
                            (_%__match8808688087%_
                             _%e8201282968%_
                             _%hd8201382972%_
                             _%tl8201482975%_
                             _%e8201582978%_
                             _%hd8201682982%_
                             _%tl8201782985%_
                             _%e8201882988%_
                             _%e8201982992%_
                             _%hd8202082996%_
                             _%tl8202182999%_
                             _%__splice8796687967%_
                             _%target8205782885%_
                             _%tl8205982888%_
                             _%e8206682891%_
                             _%hd8206782895%_
                             _%tl8206882898%_)
                            (if (gx#stx-null? _%tl8202182999%_)
                                (_%__kont8796887969%_ _%hd8202082996%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8200582219%_))))))
                    (if (gx#stx-null? _%tl8202182999%_)
                        (_%__kont8796887969%_ _%hd8202082996%_)
                        (let () (declare (not safe)) (_%g8200582219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8202182999%_)
                                                        (_%__kont8796887969%_
                                                         _%hd8202082996%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8200582219%_)))))
                                            (if (let ((__tmp88401
                                                       (gx#stx-length
                                                        _%tl8202182999%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp88401 '1))
                                                (let ((_%__splice8796687967%_
                                                       (gx#syntax-split-splice
                                                        _%tl8202182999%_
                                                        '1)))
                                                  (let ((_%tl8205982888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8796687967%_
                                                            '1)))
                                                        (_%target8205782885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8796687967%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8205982888%_)
                                                        (let ((_%e8206682891%_
                                                               (gx#syntax-e
                                                                _%tl8205982888%_)))
                                                          (let ((_%tl8206882898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8206682891%_)))
                        (_%hd8206782895%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8206682891%_))))
                    (if (gx#stx-null? _%tl8206882898%_)
                        (_%__match8808688087%_
                         _%e8201282968%_
                         _%hd8201382972%_
                         _%tl8201482975%_
                         _%e8201582978%_
                         _%hd8201682982%_
                         _%tl8201782985%_
                         _%e8201882988%_
                         _%e8201982992%_
                         _%hd8202082996%_
                         _%tl8202182999%_
                         _%__splice8796687967%_
                         _%target8205782885%_
                         _%tl8205982888%_
                         _%e8206682891%_
                         _%hd8206782895%_
                         _%tl8206882898%_)
                        (if (gx#stx-null? _%tl8202182999%_)
                            (_%__kont8796887969%_ _%hd8202082996%_)
                            (let () (declare (not safe)) (_%g8200582219%_))))))
                (if (gx#stx-null? _%tl8202182999%_)
                    (_%__kont8796887969%_ _%hd8202082996%_)
                    (let () (declare (not safe)) (_%g8200582219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8202182999%_)
                                                    (_%__kont8796887969%_
                                                     _%hd8202082996%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8200582219%_)))))
                                        (if (let ((__tmp88402
                                                   (gx#stx-length
                                                    _%tl8202182999%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp88402 '1))
                                            (let ((_%__splice8796687967%_
                                                   (gx#syntax-split-splice
                                                    _%tl8202182999%_
                                                    '1)))
                                              (let ((_%tl8205982888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8796687967%_
                                                        '1)))
                                                    (_%target8205782885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8796687967%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8205982888%_)
                                                    (let ((_%e8206682891%_
                                                           (gx#syntax-e
                                                            _%tl8205982888%_)))
                                                      (let ((_%tl8206882898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8206682891%_)))
                    (_%hd8206782895%_
                     (let () (declare (not safe)) (##car _%e8206682891%_))))
                (if (gx#stx-null? _%tl8206882898%_)
                    (_%__match8808688087%_
                     _%e8201282968%_
                     _%hd8201382972%_
                     _%tl8201482975%_
                     _%e8201582978%_
                     _%hd8201682982%_
                     _%tl8201782985%_
                     _%e8201882988%_
                     _%e8201982992%_
                     _%hd8202082996%_
                     _%tl8202182999%_
                     _%__splice8796687967%_
                     _%target8205782885%_
                     _%tl8205982888%_
                     _%e8206682891%_
                     _%hd8206782895%_
                     _%tl8206882898%_)
                    (if (gx#stx-null? _%tl8202182999%_)
                        (_%__kont8796887969%_ _%hd8202082996%_)
                        (let () (declare (not safe)) (_%g8200582219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8202182999%_)
                                                        (_%__kont8796887969%_
                                                         _%hd8202082996%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8200582219%_))))))
                                            (if (gx#stx-null? _%tl8202182999%_)
                                                (_%__kont8796887969%_
                                                 _%hd8202082996%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8200582219%_)))))))
                                (if (let ((__tmp88403
                                           (gx#stx-length _%tl8202182999%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp88403 '1))
                                    (let ((_%__splice8796687967%_
                                           (gx#syntax-split-splice
                                            _%tl8202182999%_
                                            '1)))
                                      (let ((_%tl8205982888%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8796687967%_
                                                '1)))
                                            (_%target8205782885%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8796687967%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8205982888%_)
                                            (let ((_%e8206682891%_
                                                   (gx#syntax-e
                                                    _%tl8205982888%_)))
                                              (let ((_%tl8206882898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8206682891%_)))
                                                    (_%hd8206782895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8206682891%_))))
                                                (if (gx#stx-null?
                                                     _%tl8206882898%_)
                                                    (_%__match8808688087%_
                                                     _%e8201282968%_
                                                     _%hd8201382972%_
                                                     _%tl8201482975%_
                                                     _%e8201582978%_
                                                     _%hd8201682982%_
                                                     _%tl8201782985%_
                                                     _%e8201882988%_
                                                     _%e8201982992%_
                                                     _%hd8202082996%_
                                                     _%tl8202182999%_
                                                     _%__splice8796687967%_
                                                     _%target8205782885%_
                                                     _%tl8205982888%_
                                                     _%e8206682891%_
                                                     _%hd8206782895%_
                                                     _%tl8206882898%_)
                                                    (if (gx#stx-null?
                                                         _%tl8202182999%_)
                                                        (_%__kont8796887969%_
                                                         _%hd8202082996%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8200582219%_))))))
                                            (if (gx#stx-null? _%tl8202182999%_)
                                                (_%__kont8796887969%_
                                                 _%hd8202082996%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8200582219%_))))))
                                    (if (gx#stx-null? _%tl8202182999%_)
                                        (_%__kont8796887969%_ _%hd8202082996%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8200582219%_)))))))
                        (if (let ((__tmp88404
                                   (gx#stx-length _%tl8202182999%_)))
                              (declare (not safe))
                              (##fx>= __tmp88404 '1))
                            (let ((_%__splice8796687967%_
                                   (gx#syntax-split-splice
                                    _%tl8202182999%_
                                    '1)))
                              (let ((_%tl8205982888%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8796687967%_
                                        '1)))
                                    (_%target8205782885%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8796687967%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8205982888%_)
                                    (let ((_%e8206682891%_
                                           (gx#syntax-e _%tl8205982888%_)))
                                      (let ((_%tl8206882898%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8206682891%_)))
                                            (_%hd8206782895%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8206682891%_))))
                                        (if (gx#stx-null? _%tl8206882898%_)
                                            (_%__match8808688087%_
                                             _%e8201282968%_
                                             _%hd8201382972%_
                                             _%tl8201482975%_
                                             _%e8201582978%_
                                             _%hd8201682982%_
                                             _%tl8201782985%_
                                             _%e8201882988%_
                                             _%e8201982992%_
                                             _%hd8202082996%_
                                             _%tl8202182999%_
                                             _%__splice8796687967%_
                                             _%target8205782885%_
                                             _%tl8205982888%_
                                             _%e8206682891%_
                                             _%hd8206782895%_
                                             _%tl8206882898%_)
                                            (if (gx#stx-null? _%tl8202182999%_)
                                                (_%__kont8796887969%_
                                                 _%hd8202082996%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8200582219%_))))))
                                    (if (gx#stx-null? _%tl8202182999%_)
                                        (_%__kont8796887969%_ _%hd8202082996%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8200582219%_))))))
                            (if (gx#stx-null? _%tl8202182999%_)
                                (_%__kont8796887969%_ _%hd8202082996%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8200582219%_)))))))
                (if (let ((__tmp88405 (gx#stx-length _%tl8202182999%_)))
                      (declare (not safe))
                      (##fx>= __tmp88405 '1))
                    (let ((_%__splice8796687967%_
                           (gx#syntax-split-splice _%tl8202182999%_ '1)))
                      (let ((_%tl8205982888%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8796687967%_ '1)))
                            (_%target8205782885%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8796687967%_ '0))))
                        (if (gx#stx-pair? _%tl8205982888%_)
                            (let ((_%e8206682891%_
                                   (gx#syntax-e _%tl8205982888%_)))
                              (let ((_%tl8206882898%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8206682891%_)))
                                    (_%hd8206782895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8206682891%_))))
                                (if (gx#stx-null? _%tl8206882898%_)
                                    (_%__match8808688087%_
                                     _%e8201282968%_
                                     _%hd8201382972%_
                                     _%tl8201482975%_
                                     _%e8201582978%_
                                     _%hd8201682982%_
                                     _%tl8201782985%_
                                     _%e8201882988%_
                                     _%e8201982992%_
                                     _%hd8202082996%_
                                     _%tl8202182999%_
                                     _%__splice8796687967%_
                                     _%target8205782885%_
                                     _%tl8205982888%_
                                     _%e8206682891%_
                                     _%hd8206782895%_
                                     _%tl8206882898%_)
                                    (if (gx#stx-null? _%tl8202182999%_)
                                        (_%__kont8796887969%_ _%hd8202082996%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8200582219%_))))))
                            (if (gx#stx-null? _%tl8202182999%_)
                                (_%__kont8796887969%_ _%hd8202082996%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8200582219%_))))))
                    (if (gx#stx-null? _%tl8202182999%_)
                        (_%__kont8796887969%_ _%hd8202082996%_)
                        (let () (declare (not safe)) (_%g8200582219%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8202182999%_)
                                                        (_%__kont8796887969%_
                                                         _%hd8202082996%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8200582219%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8200582219%_)))
                                        (if (equal? _%e8201882988%_ '2)
                                            (if (gx#stx-pair? _%tl8201782985%_)
                                                (let ((_%e8209382691%_
                                                       (gx#syntax-e
                                                        _%tl8201782985%_)))
                                                  (let ((_%tl8209582698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8209382691%_)))
                                                        (_%hd8209482695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8209382691%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8209582698%_)
                                                        (let ((_%e8209682701%_
                                                               (gx#syntax-e
                                                                _%tl8209582698%_)))
                                                          (let ((_%tl8209882708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8209682701%_)))
                        (_%hd8209782705%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8209682701%_))))
                    (if (gx#stx-pair? _%hd8209782705%_)
                        (let ((_%e8209982711%_ (gx#syntax-e _%hd8209782705%_)))
                          (let ((_%tl8210182718%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8209982711%_)))
                                (_%hd8210082715%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8209982711%_))))
                            (if (gx#stx-pair? _%hd8210082715%_)
                                (let ((_%e8210282721%_
                                       (gx#syntax-e _%hd8210082715%_)))
                                  (let ((_%tl8210482728%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8210282721%_)))
                                        (_%hd8210382725%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8210282721%_))))
                                    (if (gx#identifier? _%hd8210382725%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g88406_|
                                             _%hd8210382725%_)
                                            (if (gx#stx-pair? _%tl8210482728%_)
                                                (let ((_%e8210582731%_
                                                       (gx#syntax-e
                                                        _%tl8210482728%_)))
                                                  (let ((_%tl8210782738%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8210582731%_)))
                                                        (_%hd8210682735%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8210582731%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8210782738%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8210182718%_)
                                                            (let ((_%e8210882741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8210182718%_)))
                      (let ((_%tl8211082748%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8210882741%_)))
                            (_%hd8210982745%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8210882741%_))))
                        (_%__kont8797087971%_
                         _%tl8209882708%_
                         _%tl8211082748%_
                         _%hd8210982745%_
                         _%hd8210682735%_
                         _%hd8209482695%_
                         _%hd8201382972%_)))
                    (_%__kont8797287973%_
                     _%tl8209882708%_
                     _%tl8210182718%_
                     _%hd8210082715%_
                     _%hd8209482695%_
                     _%hd8201382972%_))
                (_%__kont8797287973%_
                 _%tl8209882708%_
                 _%tl8210182718%_
                 _%hd8210082715%_
                 _%hd8209482695%_
                 _%hd8201382972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8797287973%_
                                                 _%tl8209882708%_
                                                 _%tl8210182718%_
                                                 _%hd8210082715%_
                                                 _%hd8209482695%_
                                                 _%hd8201382972%_))
                                            (_%__kont8797287973%_
                                             _%tl8209882708%_
                                             _%tl8210182718%_
                                             _%hd8210082715%_
                                             _%hd8209482695%_
                                             _%hd8201382972%_))
                                        (_%__kont8797287973%_
                                         _%tl8209882708%_
                                         _%tl8210182718%_
                                         _%hd8210082715%_
                                         _%hd8209482695%_
                                         _%hd8201382972%_))))
                                (_%__kont8797287973%_
                                 _%tl8209882708%_
                                 _%tl8210182718%_
                                 _%hd8210082715%_
                                 _%hd8209482695%_
                                 _%hd8201382972%_))))
                        (if (gx#stx-null? _%hd8209782705%_)
                            (_%__kont8797487975%_
                             _%tl8209882708%_
                             _%hd8209482695%_
                             _%hd8201382972%_)
                            (let () (declare (not safe)) (_%g8200582219%_))))))
                (let () (declare (not safe)) (_%g8200582219%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8200582219%_)))
                                            (if (equal? _%e8201882988%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8201782985%_)
                                                    (let ((_%e8216082440%_
                                                           (gx#syntax-e
                                                            _%tl8201782985%_)))
                                                      (let ((_%tl8216282447%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8216082440%_)))
                    (_%hd8216182444%_
                     (let () (declare (not safe)) (##car _%e8216082440%_))))
                (if (gx#stx-pair? _%tl8216282447%_)
                    (let ((_%e8216382450%_ (gx#syntax-e _%tl8216282447%_)))
                      (let ((_%tl8216582457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8216382450%_)))
                            (_%hd8216482454%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8216382450%_))))
                        (if (gx#stx-pair? _%hd8216482454%_)
                            (let ((_%e8216682460%_
                                   (gx#syntax-e _%hd8216482454%_)))
                              (let ((_%tl8216882467%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8216682460%_)))
                                    (_%hd8216782464%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8216682460%_))))
                                (_%__kont8797687977%_
                                 _%tl8216582457%_
                                 _%tl8216882467%_
                                 _%hd8216782464%_
                                 _%hd8216182444%_
                                 _%hd8201382972%_)))
                            (if (gx#stx-pair/null? _%hd8216182444%_)
                                (let ((_%__splice8798087981%_
                                       (gx#syntax-split-splice
                                        _%hd8216182444%_
                                        '0)))
                                  (let ((_%tl8218782263%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8798087981%_
                                            '1)))
                                        (_%target8218582260%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8798087981%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8218782263%_)
                                        (_%__match8830888309%_
                                         _%e8201282968%_
                                         _%hd8201382972%_
                                         _%tl8201482975%_
                                         _%e8201582978%_
                                         _%hd8201682982%_
                                         _%tl8201782985%_
                                         _%e8201882988%_
                                         _%e8216082440%_
                                         _%hd8216182444%_
                                         _%tl8216282447%_
                                         _%__splice8798087981%_
                                         _%target8218582260%_
                                         _%tl8218782263%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8200582219%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8200582219%_))))))
                    (if (gx#stx-pair/null? _%hd8216182444%_)
                        (let ((_%__splice8798087981%_
                               (gx#syntax-split-splice _%hd8216182444%_ '0)))
                          (let ((_%tl8218782263%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8798087981%_ '1)))
                                (_%target8218582260%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8798087981%_ '0))))
                            (if (gx#stx-null? _%tl8218782263%_)
                                (_%__match8830888309%_
                                 _%e8201282968%_
                                 _%hd8201382972%_
                                 _%tl8201482975%_
                                 _%e8201582978%_
                                 _%hd8201682982%_
                                 _%tl8201782985%_
                                 _%e8201882988%_
                                 _%e8216082440%_
                                 _%hd8216182444%_
                                 _%tl8216282447%_
                                 _%__splice8798087981%_
                                 _%target8218582260%_
                                 _%tl8218782263%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8200582219%_)))))
                        (let () (declare (not safe)) (_%g8200582219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8200582219%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8200582219%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8200582219%_)))))
                          (let () (declare (not safe)) (_%g8200582219%_)))))
                  (let () (declare (not safe)) (_%g8200582219%_))))))))))
