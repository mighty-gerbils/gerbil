(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g89782_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g89792_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx82825%_)
        (let* ((_%g8282982847%_
                (lambda (_%g8283082843%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8283082843%_)))
               (_%g8282882903%_
                (lambda (_%g8283082851%_)
                  (if (gx#stx-pair? _%g8283082851%_)
                      (let ((_%e8283382854%_ (gx#syntax-e _%g8283082851%_)))
                        (let ((_%hd8283482858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8283382854%_)))
                              (_%tl8283582861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8283382854%_))))
                          (if (gx#stx-pair? _%tl8283582861%_)
                              (let ((_%e8283682864%_
                                     (gx#syntax-e _%tl8283582861%_)))
                                (let ((_%hd8283782868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8283682864%_)))
                                      (_%tl8283882871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8283682864%_))))
                                  (if (gx#stx-pair? _%tl8283882871%_)
                                      (let ((_%e8283982874%_
                                             (gx#syntax-e _%tl8283882871%_)))
                                        (let ((_%hd8284082878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8283982874%_)))
                                              (_%tl8284182881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8283982874%_))))
                                          (if (gx#stx-null? _%tl8284182881%_)
                                              ((lambda (_%L82884%_ _%L82886%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L82886%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L82884%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8284082878%_
                                               _%hd8283782868%_)
                                              (_%g8282982847%_
                                               _%g8283082851%_))))
                                      (_%g8282982847%_ _%g8283082851%_))))
                              (_%g8282982847%_ _%g8283082851%_))))
                      (_%g8282982847%_ _%g8283082851%_)))))
          (_%g8282882903%_ _%$stx82825%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx82907%_)
        (let* ((_%g8291182925%_
                (lambda (_%g8291282921%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8291282921%_)))
               (_%g8291082966%_
                (lambda (_%g8291282929%_)
                  (if (gx#stx-pair? _%g8291282929%_)
                      (let ((_%e8291482932%_ (gx#syntax-e _%g8291282929%_)))
                        (let ((_%hd8291582936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8291482932%_)))
                              (_%tl8291682939%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8291482932%_))))
                          (if (gx#stx-pair? _%tl8291682939%_)
                              (let ((_%e8291782942%_
                                     (gx#syntax-e _%tl8291682939%_)))
                                (let ((_%hd8291882946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8291782942%_)))
                                      (_%tl8291982949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8291782942%_))))
                                  (if (gx#stx-null? _%tl8291982949%_)
                                      ((lambda (_%L82952%_)
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
                                       (cons _%L82952%_
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
                                       _%hd8291882946%_)
                                      (_%g8291182925%_ _%g8291282929%_))))
                              (_%g8291182925%_ _%g8291282929%_))))
                      (_%g8291182925%_ _%g8291282929%_)))))
          (_%g8291082966%_ _%$stx82907%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx82970%_)
        (let* ((_%g8297482988%_
                (lambda (_%g8297582984%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8297582984%_)))
               (_%g8297383029%_
                (lambda (_%g8297582992%_)
                  (if (gx#stx-pair? _%g8297582992%_)
                      (let ((_%e8297782995%_ (gx#syntax-e _%g8297582992%_)))
                        (let ((_%hd8297882999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8297782995%_)))
                              (_%tl8297983002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8297782995%_))))
                          (if (gx#stx-pair? _%tl8297983002%_)
                              (let ((_%e8298083005%_
                                     (gx#syntax-e _%tl8297983002%_)))
                                (let ((_%hd8298183009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8298083005%_)))
                                      (_%tl8298283012%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8298083005%_))))
                                  (if (gx#stx-null? _%tl8298283012%_)
                                      ((lambda (_%L83015%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L83015%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8298183009%_)
                                      (_%g8297482988%_ _%g8297582992%_))))
                              (_%g8297482988%_ _%g8297582992%_))))
                      (_%g8297482988%_ _%g8297582992%_)))))
          (_%g8297383029%_ _%$stx82970%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx83033%_)
        (let* ((_%g8303783047%_
                (lambda (_%g8303883043%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8303883043%_)))
               (_%g8303683068%_
                (lambda (_%g8303883051%_)
                  (if (gx#stx-pair? _%g8303883051%_)
                      (let ((_%e8303983054%_ (gx#syntax-e _%g8303883051%_)))
                        (let ((_%hd8304083058%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8303983054%_)))
                              (_%tl8304183061%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8303983054%_))))
                          (if (gx#stx-null? _%tl8304183061%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8303783047%_ _%g8303883051%_))))
                      (_%g8303783047%_ _%g8303883051%_)))))
          (_%g8303683068%_ _%$stx83033%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx83072%_)
        (let* ((_%g8307683094%_
                (lambda (_%g8307783090%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8307783090%_)))
               (_%g8307583149%_
                (lambda (_%g8307783098%_)
                  (if (gx#stx-pair? _%g8307783098%_)
                      (let ((_%e8308083101%_ (gx#syntax-e _%g8307783098%_)))
                        (let ((_%hd8308183105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8308083101%_)))
                              (_%tl8308283108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8308083101%_))))
                          (if (gx#stx-pair? _%tl8308283108%_)
                              (let ((_%e8308383111%_
                                     (gx#syntax-e _%tl8308283108%_)))
                                (let ((_%hd8308483115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8308383111%_)))
                                      (_%tl8308583118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8308383111%_))))
                                  (if (gx#stx-pair? _%tl8308583118%_)
                                      (let ((_%e8308683121%_
                                             (gx#syntax-e _%tl8308583118%_)))
                                        (let ((_%hd8308783125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8308683121%_)))
                                              (_%tl8308883128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8308683121%_))))
                                          (if (gx#stx-null? _%tl8308883128%_)
                                              ((lambda (_%L83131%_ _%L83133%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83133%_
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
                 (cons (cons _%L83131%_
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
                                               _%hd8308783125%_
                                               _%hd8308483115%_)
                                              (_%g8307683094%_
                                               _%g8307783098%_))))
                                      (_%g8307683094%_ _%g8307783098%_))))
                              (_%g8307683094%_ _%g8307783098%_))))
                      (_%g8307683094%_ _%g8307783098%_)))))
          (_%g8307583149%_ _%$stx83072%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx83153%_)
        (let* ((_%g8315783175%_
                (lambda (_%g8315883171%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8315883171%_)))
               (_%g8315683230%_
                (lambda (_%g8315883179%_)
                  (if (gx#stx-pair? _%g8315883179%_)
                      (let ((_%e8316183182%_ (gx#syntax-e _%g8315883179%_)))
                        (let ((_%hd8316283186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8316183182%_)))
                              (_%tl8316383189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8316183182%_))))
                          (if (gx#stx-pair? _%tl8316383189%_)
                              (let ((_%e8316483192%_
                                     (gx#syntax-e _%tl8316383189%_)))
                                (let ((_%hd8316583196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8316483192%_)))
                                      (_%tl8316683199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8316483192%_))))
                                  (if (gx#stx-pair? _%tl8316683199%_)
                                      (let ((_%e8316783202%_
                                             (gx#syntax-e _%tl8316683199%_)))
                                        (let ((_%hd8316883206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8316783202%_)))
                                              (_%tl8316983209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8316783202%_))))
                                          (if (gx#stx-null? _%tl8316983209%_)
                                              ((lambda (_%L83212%_ _%L83214%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83214%_
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
                                               (cons (cons _%L83212%_
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
                                               _%hd8316883206%_
                                               _%hd8316583196%_)
                                              (_%g8315783175%_
                                               _%g8315883179%_))))
                                      (_%g8315783175%_ _%g8315883179%_))))
                              (_%g8315783175%_ _%g8315883179%_))))
                      (_%g8315783175%_ _%g8315883179%_)))))
          (_%g8315683230%_ _%$stx83153%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx83234%_)
        (let* ((_%g8323883256%_
                (lambda (_%g8323983252%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8323983252%_)))
               (_%g8323783311%_
                (lambda (_%g8323983260%_)
                  (if (gx#stx-pair? _%g8323983260%_)
                      (let ((_%e8324283263%_ (gx#syntax-e _%g8323983260%_)))
                        (let ((_%hd8324383267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8324283263%_)))
                              (_%tl8324483270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8324283263%_))))
                          (if (gx#stx-pair? _%tl8324483270%_)
                              (let ((_%e8324583273%_
                                     (gx#syntax-e _%tl8324483270%_)))
                                (let ((_%hd8324683277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8324583273%_)))
                                      (_%tl8324783280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8324583273%_))))
                                  (if (gx#stx-pair? _%tl8324783280%_)
                                      (let ((_%e8324883283%_
                                             (gx#syntax-e _%tl8324783280%_)))
                                        (let ((_%hd8324983287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8324883283%_)))
                                              (_%tl8325083290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8324883283%_))))
                                          (if (gx#stx-null? _%tl8325083290%_)
                                              ((lambda (_%L83293%_ _%L83295%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83295%_
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
                                               (cons (cons _%L83293%_
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
                                               _%hd8324983287%_
                                               _%hd8324683277%_)
                                              (_%g8323883256%_
                                               _%g8323983260%_))))
                                      (_%g8323883256%_ _%g8323983260%_))))
                              (_%g8323883256%_ _%g8323983260%_))))
                      (_%g8323883256%_ _%g8323983260%_)))))
          (_%g8323783311%_ _%$stx83234%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx83315%_)
        (let* ((_%g8331983330%_
                (lambda (_%g8332083326%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8332083326%_)))
               (_%g8331883359%_
                (lambda (_%g8332083334%_)
                  (if (gx#stx-pair? _%g8332083334%_)
                      (let ((_%e8332283337%_ (gx#syntax-e _%g8332083334%_)))
                        (let ((_%hd8332383341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8332283337%_)))
                              (_%tl8332483344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8332283337%_))))
                          ((lambda (_%L83347%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L83347%_)))
                           _%tl8332483344%_)))
                      (_%g8331983330%_ _%g8332083334%_)))))
          (_%g8331883359%_ _%$stx83315%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx83363%_)
        (let* ((_%__stx8934289343%_ _%$stx83363%_)
               (_%g8337483588%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8934289343%_))))
          (let ((_%__kont8934589346%_
                 (lambda (_%L84441%_
                          _%L84443%_
                          _%L84444%_
                          _%L84445%_
                          _%L84446%_)
                   (cons _%L84446%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8447684479%_
                                                     _%g8447784482%_)
                                              (cons _%g8447684479%_
                                                    _%g8447784482%_))
                                            '()
                                            _%L84444%_)
                                           (cons _%L84445%_
                                                 (cons _%L84443%_
                                                       (cons _%L84441%_
                                                             '())))))))))
                (_%__kont8934989350%_
                 (lambda (_%L84294%_ _%L84296%_ _%L84297%_ _%L84298%_)
                   (cons _%L84298%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8432184324%_
                                                     _%g8432284327%_)
                                              (cons _%g8432184324%_
                                                    _%g8432284327%_))
                                            '()
                                            _%L84296%_)
                                           (cons _%L84297%_
                                                 (cons _%L84294%_
                                                       (cons _%L84294%_
                                                             '())))))))))
                (_%__kont8935389354%_
                 (lambda (_%L84197%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L84197%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8935589356%_
                 (lambda (_%L84120%_
                          _%L84122%_
                          _%L84123%_
                          _%L84124%_
                          _%L84125%_
                          _%L84126%_)
                   (cons _%L84126%_
                         (cons '2
                               (cons (cons (cons _%L84124%_
                                                 (cons _%L84123%_ '()))
                                           _%L84125%_)
                                     (cons _%L84122%_ _%L84120%_))))))
                (_%__kont8935789358%_
                 (lambda (_%L84001%_
                          _%L84003%_
                          _%L84004%_
                          _%L84005%_
                          _%L84006%_)
                   (cons _%L84006%_
                         (cons '2
                               (cons (cons (cons _%L84004%_
                                                 (cons _%L84004%_ '()))
                                           _%L84005%_)
                                     (cons _%L84003%_ _%L84001%_))))))
                (_%__kont8935989360%_
                 (lambda (_%L83918%_ _%L83920%_ _%L83921%_)
                   (cons _%L83921%_
                         (cons '3 (cons '() (cons _%L83920%_ _%L83918%_))))))
                (_%__kont8936189362%_
                 (lambda (_%L83839%_
                          _%L83841%_
                          _%L83842%_
                          _%L83843%_
                          _%L83844%_)
                   (cons _%L83844%_
                         (cons '3
                               (cons (cons _%L83842%_ _%L83843%_)
                                     (cons _%L83841%_ _%L83839%_))))))
                (_%__kont8936389364%_
                 (lambda (_%L83723%_
                          _%L83725%_
                          _%L83726%_
                          _%L83727%_
                          _%L83728%_
                          _%L83729%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L83726%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L83723%_ '())))
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
                                              (lambda (_%g8376383766%_
                                                       _%g8376483769%_)
                                                (cons _%g8376383766%_
                                                      _%g8376483769%_))
                                              '()
                                              _%L83728%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8376183772%_
                                                       _%g8376283775%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8376183772%_ '())))
              _%g8376283775%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L83727%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L83725%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8969389694%_
                    (lambda (_%e8354483595%_
                             _%hd8354583599%_
                             _%tl8354683602%_
                             _%e8354783605%_
                             _%hd8354883609%_
                             _%tl8354983612%_
                             _%e8355083615%_
                             _%e8355183619%_
                             _%hd8355283623%_
                             _%tl8355383626%_
                             _%__splice8936589366%_
                             _%target8355483629%_
                             _%tl8355683632%_)
                      (letrec ((_%loop8355783635%_
                                (lambda (_%hd8355583639%_
                                         _%exprs8356183642%_
                                         _%names8356283644%_)
                                  (if (gx#stx-pair? _%hd8355583639%_)
                                      (let ((_%e8355883647%_
                                             (gx#syntax-e _%hd8355583639%_)))
                                        (let ((_%lp-tl8356083654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8355883647%_)))
                                              (_%lp-hd8355983651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8355883647%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8355983651%_)
                                              (let ((_%e8357783657%_
                                                     (gx#syntax-e
                                                      _%lp-hd8355983651%_)))
                                                (let ((_%tl8357983664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8357783657%_)))
                                                      (_%hd8357883661%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8357783657%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8357983664%_)
                                                      (let ((_%e8358083667%_
                                                             (gx#syntax-e
                                                              _%tl8357983664%_)))
                                                        (let ((_%tl8358283674%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8358083667%_)))
                      (_%hd8358183671%_
                       (let () (declare (not safe)) (##car _%e8358083667%_))))
                  (if (gx#stx-null? _%tl8358283674%_)
                      (_%loop8355783635%_
                       _%lp-tl8356083654%_
                       (cons _%hd8358183671%_ _%exprs8356183642%_)
                       (cons _%hd8357883661%_ _%names8356283644%_))
                      (let () (declare (not safe)) (_%g8337483588%_)))))
              (let () (declare (not safe)) (_%g8337483588%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8337483588%_)))))
                                      (let ((_%names8356483680%_
                                             (reverse _%names8356283644%_))
                                            (_%exprs8356383677%_
                                             (reverse _%exprs8356183642%_)))
                                        (if (gx#stx-pair? _%tl8355383626%_)
                                            (let ((_%e8356583683%_
                                                   (gx#syntax-e
                                                    _%tl8355383626%_)))
                                              (let ((_%tl8356783690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8356583683%_)))
                                                    (_%hd8356683687%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8356583683%_))))
                                                (if (gx#stx-null?
                                                     _%hd8356683687%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8356783690%_)
                                                        (let ((_%e8356883693%_
                                                               (gx#syntax-e
                                                                _%tl8356783690%_)))
                                                          (let ((_%tl8357083700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8356883693%_)))
                        (_%hd8356983697%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8356883693%_))))
                    (if (gx#stx-pair? _%tl8357083700%_)
                        (let ((_%e8357183703%_ (gx#syntax-e _%tl8357083700%_)))
                          (let ((_%tl8357383710%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8357183703%_)))
                                (_%hd8357283707%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8357183703%_))))
                            (if (gx#stx-pair? _%tl8357383710%_)
                                (let ((_%e8357483713%_
                                       (gx#syntax-e _%tl8357383710%_)))
                                  (let ((_%tl8357683720%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8357483713%_)))
                                        (_%hd8357583717%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8357483713%_))))
                                    (if (gx#stx-null? _%tl8357683720%_)
                                        (_%__kont8936389364%_
                                         _%hd8357583717%_
                                         _%hd8357283707%_
                                         _%hd8356983697%_
                                         _%exprs8356383677%_
                                         _%names8356483680%_
                                         _%hd8354583599%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8337483588%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8337483588%_)))))
                        (let () (declare (not safe)) (_%g8337483588%_)))))
                (let () (declare (not safe)) (_%g8337483588%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8337483588%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8337483588%_))))))))
                        (_%loop8355783635%_ _%target8355483629%_ '() '()))))
                   (_%__match8947189472%_
                    (lambda (_%e8341684220%_
                             _%hd8341784224%_
                             _%tl8341884227%_
                             _%e8341984230%_
                             _%hd8342084234%_
                             _%tl8342184237%_
                             _%e8342284240%_
                             _%e8342384244%_
                             _%hd8342484248%_
                             _%tl8342584251%_
                             _%__splice8935189352%_
                             _%target8342684254%_
                             _%tl8342884257%_
                             _%e8343584260%_
                             _%hd8343684264%_
                             _%tl8343784267%_)
                      (letrec ((_%loop8342984270%_
                                (lambda (_%hd8342784274%_ _%exprs8343384277%_)
                                  (if (gx#stx-pair? _%hd8342784274%_)
                                      (let ((_%e8343084280%_
                                             (gx#syntax-e _%hd8342784274%_)))
                                        (let ((_%lp-tl8343284287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8343084280%_)))
                                              (_%lp-hd8343184284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8343084280%_))))
                                          (_%loop8342984270%_
                                           _%lp-tl8343284287%_
                                           (cons _%lp-hd8343184284%_
                                                 _%exprs8343384277%_))))
                                      (let ((_%exprs8343484290%_
                                             (reverse _%exprs8343384277%_)))
                                        (_%__kont8934989350%_
                                         _%hd8343684264%_
                                         _%exprs8343484290%_
                                         _%hd8342484248%_
                                         _%hd8341784224%_))))))
                        (_%loop8342984270%_ _%target8342684254%_ '()))))
                   (_%__match8943189432%_
                    (lambda (_%e8338184337%_
                             _%hd8338284341%_
                             _%tl8338384344%_
                             _%e8338484347%_
                             _%hd8338584351%_
                             _%tl8338684354%_
                             _%e8338784357%_
                             _%e8338884361%_
                             _%hd8338984365%_
                             _%tl8339084368%_
                             _%__splice8934789348%_
                             _%target8339184371%_
                             _%tl8339384374%_
                             _%e8340084377%_
                             _%hd8340184381%_
                             _%tl8340284384%_
                             _%e8340384387%_
                             _%hd8340484391%_
                             _%tl8340584394%_
                             _%e8340684397%_
                             _%hd8340784401%_
                             _%tl8340884404%_
                             _%e8340984407%_
                             _%hd8341084411%_
                             _%tl8341184414%_)
                      (letrec ((_%loop8339484417%_
                                (lambda (_%hd8339284421%_ _%exprs8339884424%_)
                                  (if (gx#stx-pair? _%hd8339284421%_)
                                      (let ((_%e8339584427%_
                                             (gx#syntax-e _%hd8339284421%_)))
                                        (let ((_%lp-tl8339784434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8339584427%_)))
                                              (_%lp-hd8339684431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8339584427%_))))
                                          (_%loop8339484417%_
                                           _%lp-tl8339784434%_
                                           (cons _%lp-hd8339684431%_
                                                 _%exprs8339884424%_))))
                                      (let ((_%exprs8339984437%_
                                             (reverse _%exprs8339884424%_)))
                                        (_%__kont8934589346%_
                                         _%hd8341084411%_
                                         _%hd8340784401%_
                                         _%exprs8339984437%_
                                         _%hd8338984365%_
                                         _%hd8338284341%_))))))
                        (_%loop8339484417%_ _%target8339184371%_ '())))))
              (if (gx#stx-pair? _%__stx8934289343%_)
                  (let ((_%e8338184337%_ (gx#syntax-e _%__stx8934289343%_)))
                    (let ((_%tl8338384344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8338184337%_)))
                          (_%hd8338284341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8338184337%_))))
                      (if (gx#stx-pair? _%tl8338384344%_)
                          (let ((_%e8338484347%_
                                 (gx#syntax-e _%tl8338384344%_)))
                            (let ((_%tl8338684354%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8338484347%_)))
                                  (_%hd8338584351%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8338484347%_))))
                              (if (gx#stx-datum? _%hd8338584351%_)
                                  (let ((_%e8338784357%_
                                         (gx#stx-e _%hd8338584351%_)))
                                    (if (equal? _%e8338784357%_ '1)
                                        (if (gx#stx-pair? _%tl8338684354%_)
                                            (let ((_%e8338884361%_
                                                   (gx#syntax-e
                                                    _%tl8338684354%_)))
                                              (let ((_%tl8339084368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8338884361%_)))
                                                    (_%hd8338984365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8338884361%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8339084368%_)
                                                    (if (let ((__tmp89781
                                                               (gx#stx-length
                                                                _%tl8339084368%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp89781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8934789348%_
                       (gx#syntax-split-splice _%tl8339084368%_ '2)))
                  (let ((_%tl8339384374%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8934789348%_ '1)))
                        (_%target8339184371%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8934789348%_ '0))))
                    (if (gx#stx-pair? _%tl8339384374%_)
                        (let ((_%e8340084377%_ (gx#syntax-e _%tl8339384374%_)))
                          (let ((_%tl8340284384%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8340084377%_)))
                                (_%hd8340184381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8340084377%_))))
                            (if (gx#stx-pair? _%hd8340184381%_)
                                (let ((_%e8340384387%_
                                       (gx#syntax-e _%hd8340184381%_)))
                                  (let ((_%tl8340584394%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8340384387%_)))
                                        (_%hd8340484391%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8340384387%_))))
                                    (if (gx#identifier? _%hd8340484391%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g89782_|
                                             _%hd8340484391%_)
                                            (if (gx#stx-pair? _%tl8340584394%_)
                                                (let ((_%e8340684397%_
                                                       (gx#syntax-e
                                                        _%tl8340584394%_)))
                                                  (let ((_%tl8340884404%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8340684397%_)))
                                                        (_%hd8340784401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8340684397%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8340884404%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8340284384%_)
                                                            (let ((_%e8340984407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8340284384%_)))
                      (let ((_%tl8341184414%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8340984407%_)))
                            (_%hd8341084411%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8340984407%_))))
                        (if (gx#stx-null? _%tl8341184414%_)
                            (_%__match8943189432%_
                             _%e8338184337%_
                             _%hd8338284341%_
                             _%tl8338384344%_
                             _%e8338484347%_
                             _%hd8338584351%_
                             _%tl8338684354%_
                             _%e8338784357%_
                             _%e8338884361%_
                             _%hd8338984365%_
                             _%tl8339084368%_
                             _%__splice8934789348%_
                             _%target8339184371%_
                             _%tl8339384374%_
                             _%e8340084377%_
                             _%hd8340184381%_
                             _%tl8340284384%_
                             _%e8340384387%_
                             _%hd8340484391%_
                             _%tl8340584394%_
                             _%e8340684397%_
                             _%hd8340784401%_
                             _%tl8340884404%_
                             _%e8340984407%_
                             _%hd8341084411%_
                             _%tl8341184414%_)
                            (if (let ((__tmp89783
                                       (gx#stx-length _%tl8339084368%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp89783 '1))
                                (let ((_%__splice8935189352%_
                                       (gx#syntax-split-splice
                                        _%tl8339084368%_
                                        '1)))
                                  (let ((_%tl8342884257%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8935189352%_
                                            '1)))
                                        (_%target8342684254%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8935189352%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8342884257%_)
                                        (let ((_%e8343584260%_
                                               (gx#syntax-e _%tl8342884257%_)))
                                          (let ((_%tl8343784267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8343584260%_)))
                                                (_%hd8343684264%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8343584260%_))))
                                            (if (gx#stx-null? _%tl8343784267%_)
                                                (_%__match8947189472%_
                                                 _%e8338184337%_
                                                 _%hd8338284341%_
                                                 _%tl8338384344%_
                                                 _%e8338484347%_
                                                 _%hd8338584351%_
                                                 _%tl8338684354%_
                                                 _%e8338784357%_
                                                 _%e8338884361%_
                                                 _%hd8338984365%_
                                                 _%tl8339084368%_
                                                 _%__splice8935189352%_
                                                 _%target8342684254%_
                                                 _%tl8342884257%_
                                                 _%e8343584260%_
                                                 _%hd8343684264%_
                                                 _%tl8343784267%_)
                                                (if (gx#stx-null?
                                                     _%tl8339084368%_)
                                                    (_%__kont8935389354%_
                                                     _%hd8338984365%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8337483588%_))))))
                                        (if (gx#stx-null? _%tl8339084368%_)
                                            (_%__kont8935389354%_
                                             _%hd8338984365%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8337483588%_))))))
                                (if (gx#stx-null? _%tl8339084368%_)
                                    (_%__kont8935389354%_ _%hd8338984365%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8337483588%_)))))))
                    (if (let ((__tmp89784 (gx#stx-length _%tl8339084368%_)))
                          (declare (not safe))
                          (##fx>= __tmp89784 '1))
                        (let ((_%__splice8935189352%_
                               (gx#syntax-split-splice _%tl8339084368%_ '1)))
                          (let ((_%tl8342884257%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8935189352%_ '1)))
                                (_%target8342684254%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8935189352%_ '0))))
                            (if (gx#stx-pair? _%tl8342884257%_)
                                (let ((_%e8343584260%_
                                       (gx#syntax-e _%tl8342884257%_)))
                                  (let ((_%tl8343784267%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8343584260%_)))
                                        (_%hd8343684264%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8343584260%_))))
                                    (if (gx#stx-null? _%tl8343784267%_)
                                        (_%__match8947189472%_
                                         _%e8338184337%_
                                         _%hd8338284341%_
                                         _%tl8338384344%_
                                         _%e8338484347%_
                                         _%hd8338584351%_
                                         _%tl8338684354%_
                                         _%e8338784357%_
                                         _%e8338884361%_
                                         _%hd8338984365%_
                                         _%tl8339084368%_
                                         _%__splice8935189352%_
                                         _%target8342684254%_
                                         _%tl8342884257%_
                                         _%e8343584260%_
                                         _%hd8343684264%_
                                         _%tl8343784267%_)
                                        (if (gx#stx-null? _%tl8339084368%_)
                                            (_%__kont8935389354%_
                                             _%hd8338984365%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8337483588%_))))))
                                (if (gx#stx-null? _%tl8339084368%_)
                                    (_%__kont8935389354%_ _%hd8338984365%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8337483588%_))))))
                        (if (gx#stx-null? _%tl8339084368%_)
                            (_%__kont8935389354%_ _%hd8338984365%_)
                            (let () (declare (not safe)) (_%g8337483588%_)))))
                (if (let ((__tmp89785 (gx#stx-length _%tl8339084368%_)))
                      (declare (not safe))
                      (##fx>= __tmp89785 '1))
                    (let ((_%__splice8935189352%_
                           (gx#syntax-split-splice _%tl8339084368%_ '1)))
                      (let ((_%tl8342884257%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935189352%_ '1)))
                            (_%target8342684254%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935189352%_ '0))))
                        (if (gx#stx-pair? _%tl8342884257%_)
                            (let ((_%e8343584260%_
                                   (gx#syntax-e _%tl8342884257%_)))
                              (let ((_%tl8343784267%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8343584260%_)))
                                    (_%hd8343684264%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8343584260%_))))
                                (if (gx#stx-null? _%tl8343784267%_)
                                    (_%__match8947189472%_
                                     _%e8338184337%_
                                     _%hd8338284341%_
                                     _%tl8338384344%_
                                     _%e8338484347%_
                                     _%hd8338584351%_
                                     _%tl8338684354%_
                                     _%e8338784357%_
                                     _%e8338884361%_
                                     _%hd8338984365%_
                                     _%tl8339084368%_
                                     _%__splice8935189352%_
                                     _%target8342684254%_
                                     _%tl8342884257%_
                                     _%e8343584260%_
                                     _%hd8343684264%_
                                     _%tl8343784267%_)
                                    (if (gx#stx-null? _%tl8339084368%_)
                                        (_%__kont8935389354%_ _%hd8338984365%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8337483588%_))))))
                            (if (gx#stx-null? _%tl8339084368%_)
                                (_%__kont8935389354%_ _%hd8338984365%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8337483588%_))))))
                    (if (gx#stx-null? _%tl8339084368%_)
                        (_%__kont8935389354%_ _%hd8338984365%_)
                        (let () (declare (not safe)) (_%g8337483588%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp89786
                                                           (gx#stx-length
                                                            _%tl8339084368%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp89786 '1))
                                                    (let ((_%__splice8935189352%_
                                                           (gx#syntax-split-splice
                                                            _%tl8339084368%_
                                                            '1)))
                                                      (let ((_%tl8342884257%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8935189352%_ '1)))
                    (_%target8342684254%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8935189352%_ '0))))
                (if (gx#stx-pair? _%tl8342884257%_)
                    (let ((_%e8343584260%_ (gx#syntax-e _%tl8342884257%_)))
                      (let ((_%tl8343784267%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8343584260%_)))
                            (_%hd8343684264%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8343584260%_))))
                        (if (gx#stx-null? _%tl8343784267%_)
                            (_%__match8947189472%_
                             _%e8338184337%_
                             _%hd8338284341%_
                             _%tl8338384344%_
                             _%e8338484347%_
                             _%hd8338584351%_
                             _%tl8338684354%_
                             _%e8338784357%_
                             _%e8338884361%_
                             _%hd8338984365%_
                             _%tl8339084368%_
                             _%__splice8935189352%_
                             _%target8342684254%_
                             _%tl8342884257%_
                             _%e8343584260%_
                             _%hd8343684264%_
                             _%tl8343784267%_)
                            (if (gx#stx-null? _%tl8339084368%_)
                                (_%__kont8935389354%_ _%hd8338984365%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8337483588%_))))))
                    (if (gx#stx-null? _%tl8339084368%_)
                        (_%__kont8935389354%_ _%hd8338984365%_)
                        (let () (declare (not safe)) (_%g8337483588%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8339084368%_)
                                                        (_%__kont8935389354%_
                                                         _%hd8338984365%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8337483588%_)))))
                                            (if (let ((__tmp89787
                                                       (gx#stx-length
                                                        _%tl8339084368%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp89787 '1))
                                                (let ((_%__splice8935189352%_
                                                       (gx#syntax-split-splice
                                                        _%tl8339084368%_
                                                        '1)))
                                                  (let ((_%tl8342884257%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8935189352%_
                                                            '1)))
                                                        (_%target8342684254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8935189352%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8342884257%_)
                                                        (let ((_%e8343584260%_
                                                               (gx#syntax-e
                                                                _%tl8342884257%_)))
                                                          (let ((_%tl8343784267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8343584260%_)))
                        (_%hd8343684264%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8343584260%_))))
                    (if (gx#stx-null? _%tl8343784267%_)
                        (_%__match8947189472%_
                         _%e8338184337%_
                         _%hd8338284341%_
                         _%tl8338384344%_
                         _%e8338484347%_
                         _%hd8338584351%_
                         _%tl8338684354%_
                         _%e8338784357%_
                         _%e8338884361%_
                         _%hd8338984365%_
                         _%tl8339084368%_
                         _%__splice8935189352%_
                         _%target8342684254%_
                         _%tl8342884257%_
                         _%e8343584260%_
                         _%hd8343684264%_
                         _%tl8343784267%_)
                        (if (gx#stx-null? _%tl8339084368%_)
                            (_%__kont8935389354%_ _%hd8338984365%_)
                            (let () (declare (not safe)) (_%g8337483588%_))))))
                (if (gx#stx-null? _%tl8339084368%_)
                    (_%__kont8935389354%_ _%hd8338984365%_)
                    (let () (declare (not safe)) (_%g8337483588%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8339084368%_)
                                                    (_%__kont8935389354%_
                                                     _%hd8338984365%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8337483588%_)))))
                                        (if (let ((__tmp89788
                                                   (gx#stx-length
                                                    _%tl8339084368%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp89788 '1))
                                            (let ((_%__splice8935189352%_
                                                   (gx#syntax-split-splice
                                                    _%tl8339084368%_
                                                    '1)))
                                              (let ((_%tl8342884257%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8935189352%_
                                                        '1)))
                                                    (_%target8342684254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8935189352%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8342884257%_)
                                                    (let ((_%e8343584260%_
                                                           (gx#syntax-e
                                                            _%tl8342884257%_)))
                                                      (let ((_%tl8343784267%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8343584260%_)))
                    (_%hd8343684264%_
                     (let () (declare (not safe)) (##car _%e8343584260%_))))
                (if (gx#stx-null? _%tl8343784267%_)
                    (_%__match8947189472%_
                     _%e8338184337%_
                     _%hd8338284341%_
                     _%tl8338384344%_
                     _%e8338484347%_
                     _%hd8338584351%_
                     _%tl8338684354%_
                     _%e8338784357%_
                     _%e8338884361%_
                     _%hd8338984365%_
                     _%tl8339084368%_
                     _%__splice8935189352%_
                     _%target8342684254%_
                     _%tl8342884257%_
                     _%e8343584260%_
                     _%hd8343684264%_
                     _%tl8343784267%_)
                    (if (gx#stx-null? _%tl8339084368%_)
                        (_%__kont8935389354%_ _%hd8338984365%_)
                        (let () (declare (not safe)) (_%g8337483588%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8339084368%_)
                                                        (_%__kont8935389354%_
                                                         _%hd8338984365%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8337483588%_))))))
                                            (if (gx#stx-null? _%tl8339084368%_)
                                                (_%__kont8935389354%_
                                                 _%hd8338984365%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8337483588%_)))))))
                                (if (let ((__tmp89789
                                           (gx#stx-length _%tl8339084368%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp89789 '1))
                                    (let ((_%__splice8935189352%_
                                           (gx#syntax-split-splice
                                            _%tl8339084368%_
                                            '1)))
                                      (let ((_%tl8342884257%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8935189352%_
                                                '1)))
                                            (_%target8342684254%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8935189352%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8342884257%_)
                                            (let ((_%e8343584260%_
                                                   (gx#syntax-e
                                                    _%tl8342884257%_)))
                                              (let ((_%tl8343784267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8343584260%_)))
                                                    (_%hd8343684264%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8343584260%_))))
                                                (if (gx#stx-null?
                                                     _%tl8343784267%_)
                                                    (_%__match8947189472%_
                                                     _%e8338184337%_
                                                     _%hd8338284341%_
                                                     _%tl8338384344%_
                                                     _%e8338484347%_
                                                     _%hd8338584351%_
                                                     _%tl8338684354%_
                                                     _%e8338784357%_
                                                     _%e8338884361%_
                                                     _%hd8338984365%_
                                                     _%tl8339084368%_
                                                     _%__splice8935189352%_
                                                     _%target8342684254%_
                                                     _%tl8342884257%_
                                                     _%e8343584260%_
                                                     _%hd8343684264%_
                                                     _%tl8343784267%_)
                                                    (if (gx#stx-null?
                                                         _%tl8339084368%_)
                                                        (_%__kont8935389354%_
                                                         _%hd8338984365%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8337483588%_))))))
                                            (if (gx#stx-null? _%tl8339084368%_)
                                                (_%__kont8935389354%_
                                                 _%hd8338984365%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8337483588%_))))))
                                    (if (gx#stx-null? _%tl8339084368%_)
                                        (_%__kont8935389354%_ _%hd8338984365%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8337483588%_)))))))
                        (if (let ((__tmp89790
                                   (gx#stx-length _%tl8339084368%_)))
                              (declare (not safe))
                              (##fx>= __tmp89790 '1))
                            (let ((_%__splice8935189352%_
                                   (gx#syntax-split-splice
                                    _%tl8339084368%_
                                    '1)))
                              (let ((_%tl8342884257%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8935189352%_
                                        '1)))
                                    (_%target8342684254%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8935189352%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8342884257%_)
                                    (let ((_%e8343584260%_
                                           (gx#syntax-e _%tl8342884257%_)))
                                      (let ((_%tl8343784267%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8343584260%_)))
                                            (_%hd8343684264%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8343584260%_))))
                                        (if (gx#stx-null? _%tl8343784267%_)
                                            (_%__match8947189472%_
                                             _%e8338184337%_
                                             _%hd8338284341%_
                                             _%tl8338384344%_
                                             _%e8338484347%_
                                             _%hd8338584351%_
                                             _%tl8338684354%_
                                             _%e8338784357%_
                                             _%e8338884361%_
                                             _%hd8338984365%_
                                             _%tl8339084368%_
                                             _%__splice8935189352%_
                                             _%target8342684254%_
                                             _%tl8342884257%_
                                             _%e8343584260%_
                                             _%hd8343684264%_
                                             _%tl8343784267%_)
                                            (if (gx#stx-null? _%tl8339084368%_)
                                                (_%__kont8935389354%_
                                                 _%hd8338984365%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8337483588%_))))))
                                    (if (gx#stx-null? _%tl8339084368%_)
                                        (_%__kont8935389354%_ _%hd8338984365%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8337483588%_))))))
                            (if (gx#stx-null? _%tl8339084368%_)
                                (_%__kont8935389354%_ _%hd8338984365%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8337483588%_)))))))
                (if (let ((__tmp89791 (gx#stx-length _%tl8339084368%_)))
                      (declare (not safe))
                      (##fx>= __tmp89791 '1))
                    (let ((_%__splice8935189352%_
                           (gx#syntax-split-splice _%tl8339084368%_ '1)))
                      (let ((_%tl8342884257%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935189352%_ '1)))
                            (_%target8342684254%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8935189352%_ '0))))
                        (if (gx#stx-pair? _%tl8342884257%_)
                            (let ((_%e8343584260%_
                                   (gx#syntax-e _%tl8342884257%_)))
                              (let ((_%tl8343784267%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8343584260%_)))
                                    (_%hd8343684264%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8343584260%_))))
                                (if (gx#stx-null? _%tl8343784267%_)
                                    (_%__match8947189472%_
                                     _%e8338184337%_
                                     _%hd8338284341%_
                                     _%tl8338384344%_
                                     _%e8338484347%_
                                     _%hd8338584351%_
                                     _%tl8338684354%_
                                     _%e8338784357%_
                                     _%e8338884361%_
                                     _%hd8338984365%_
                                     _%tl8339084368%_
                                     _%__splice8935189352%_
                                     _%target8342684254%_
                                     _%tl8342884257%_
                                     _%e8343584260%_
                                     _%hd8343684264%_
                                     _%tl8343784267%_)
                                    (if (gx#stx-null? _%tl8339084368%_)
                                        (_%__kont8935389354%_ _%hd8338984365%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8337483588%_))))))
                            (if (gx#stx-null? _%tl8339084368%_)
                                (_%__kont8935389354%_ _%hd8338984365%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8337483588%_))))))
                    (if (gx#stx-null? _%tl8339084368%_)
                        (_%__kont8935389354%_ _%hd8338984365%_)
                        (let () (declare (not safe)) (_%g8337483588%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8339084368%_)
                                                        (_%__kont8935389354%_
                                                         _%hd8338984365%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8337483588%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8337483588%_)))
                                        (if (equal? _%e8338784357%_ '2)
                                            (if (gx#stx-pair? _%tl8338684354%_)
                                                (let ((_%e8346284060%_
                                                       (gx#syntax-e
                                                        _%tl8338684354%_)))
                                                  (let ((_%tl8346484067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8346284060%_)))
                                                        (_%hd8346384064%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8346284060%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8346484067%_)
                                                        (let ((_%e8346584070%_
                                                               (gx#syntax-e
                                                                _%tl8346484067%_)))
                                                          (let ((_%tl8346784077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8346584070%_)))
                        (_%hd8346684074%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8346584070%_))))
                    (if (gx#stx-pair? _%hd8346684074%_)
                        (let ((_%e8346884080%_ (gx#syntax-e _%hd8346684074%_)))
                          (let ((_%tl8347084087%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8346884080%_)))
                                (_%hd8346984084%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8346884080%_))))
                            (if (gx#stx-pair? _%hd8346984084%_)
                                (let ((_%e8347184090%_
                                       (gx#syntax-e _%hd8346984084%_)))
                                  (let ((_%tl8347384097%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8347184090%_)))
                                        (_%hd8347284094%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8347184090%_))))
                                    (if (gx#identifier? _%hd8347284094%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g89792_|
                                             _%hd8347284094%_)
                                            (if (gx#stx-pair? _%tl8347384097%_)
                                                (let ((_%e8347484100%_
                                                       (gx#syntax-e
                                                        _%tl8347384097%_)))
                                                  (let ((_%tl8347684107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8347484100%_)))
                                                        (_%hd8347584104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8347484100%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8347684107%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8347084087%_)
                                                            (let ((_%e8347784110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8347084087%_)))
                      (let ((_%tl8347984117%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8347784110%_)))
                            (_%hd8347884114%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8347784110%_))))
                        (_%__kont8935589356%_
                         _%tl8346784077%_
                         _%tl8347984117%_
                         _%hd8347884114%_
                         _%hd8347584104%_
                         _%hd8346384064%_
                         _%hd8338284341%_)))
                    (_%__kont8935789358%_
                     _%tl8346784077%_
                     _%tl8347084087%_
                     _%hd8346984084%_
                     _%hd8346384064%_
                     _%hd8338284341%_))
                (_%__kont8935789358%_
                 _%tl8346784077%_
                 _%tl8347084087%_
                 _%hd8346984084%_
                 _%hd8346384064%_
                 _%hd8338284341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8935789358%_
                                                 _%tl8346784077%_
                                                 _%tl8347084087%_
                                                 _%hd8346984084%_
                                                 _%hd8346384064%_
                                                 _%hd8338284341%_))
                                            (_%__kont8935789358%_
                                             _%tl8346784077%_
                                             _%tl8347084087%_
                                             _%hd8346984084%_
                                             _%hd8346384064%_
                                             _%hd8338284341%_))
                                        (_%__kont8935789358%_
                                         _%tl8346784077%_
                                         _%tl8347084087%_
                                         _%hd8346984084%_
                                         _%hd8346384064%_
                                         _%hd8338284341%_))))
                                (_%__kont8935789358%_
                                 _%tl8346784077%_
                                 _%tl8347084087%_
                                 _%hd8346984084%_
                                 _%hd8346384064%_
                                 _%hd8338284341%_))))
                        (if (gx#stx-null? _%hd8346684074%_)
                            (_%__kont8935989360%_
                             _%tl8346784077%_
                             _%hd8346384064%_
                             _%hd8338284341%_)
                            (let () (declare (not safe)) (_%g8337483588%_))))))
                (let () (declare (not safe)) (_%g8337483588%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8337483588%_)))
                                            (if (equal? _%e8338784357%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8338684354%_)
                                                    (let ((_%e8352983809%_
                                                           (gx#syntax-e
                                                            _%tl8338684354%_)))
                                                      (let ((_%tl8353183816%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8352983809%_)))
                    (_%hd8353083813%_
                     (let () (declare (not safe)) (##car _%e8352983809%_))))
                (if (gx#stx-pair? _%tl8353183816%_)
                    (let ((_%e8353283819%_ (gx#syntax-e _%tl8353183816%_)))
                      (let ((_%tl8353483826%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8353283819%_)))
                            (_%hd8353383823%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8353283819%_))))
                        (if (gx#stx-pair? _%hd8353383823%_)
                            (let ((_%e8353583829%_
                                   (gx#syntax-e _%hd8353383823%_)))
                              (let ((_%tl8353783836%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8353583829%_)))
                                    (_%hd8353683833%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8353583829%_))))
                                (_%__kont8936189362%_
                                 _%tl8353483826%_
                                 _%tl8353783836%_
                                 _%hd8353683833%_
                                 _%hd8353083813%_
                                 _%hd8338284341%_)))
                            (if (gx#stx-pair/null? _%hd8353083813%_)
                                (let ((_%__splice8936589366%_
                                       (gx#syntax-split-splice
                                        _%hd8353083813%_
                                        '0)))
                                  (let ((_%tl8355683632%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8936589366%_
                                            '1)))
                                        (_%target8355483629%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8936589366%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8355683632%_)
                                        (_%__match8969389694%_
                                         _%e8338184337%_
                                         _%hd8338284341%_
                                         _%tl8338384344%_
                                         _%e8338484347%_
                                         _%hd8338584351%_
                                         _%tl8338684354%_
                                         _%e8338784357%_
                                         _%e8352983809%_
                                         _%hd8353083813%_
                                         _%tl8353183816%_
                                         _%__splice8936589366%_
                                         _%target8355483629%_
                                         _%tl8355683632%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8337483588%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8337483588%_))))))
                    (if (gx#stx-pair/null? _%hd8353083813%_)
                        (let ((_%__splice8936589366%_
                               (gx#syntax-split-splice _%hd8353083813%_ '0)))
                          (let ((_%tl8355683632%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8936589366%_ '1)))
                                (_%target8355483629%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8936589366%_ '0))))
                            (if (gx#stx-null? _%tl8355683632%_)
                                (_%__match8969389694%_
                                 _%e8338184337%_
                                 _%hd8338284341%_
                                 _%tl8338384344%_
                                 _%e8338484347%_
                                 _%hd8338584351%_
                                 _%tl8338684354%_
                                 _%e8338784357%_
                                 _%e8352983809%_
                                 _%hd8353083813%_
                                 _%tl8353183816%_
                                 _%__splice8936589366%_
                                 _%target8355483629%_
                                 _%tl8355683632%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8337483588%_)))))
                        (let () (declare (not safe)) (_%g8337483588%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8337483588%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8337483588%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8337483588%_)))))
                          (let () (declare (not safe)) (_%g8337483588%_)))))
                  (let () (declare (not safe)) (_%g8337483588%_))))))))))
