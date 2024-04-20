(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g90066_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g90076_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx83132%_)
        (let* ((_%g8313683154%_
                (lambda (_%g8313783150%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8313783150%_)))
               (_%g8313583210%_
                (lambda (_%g8313783158%_)
                  (if (gx#stx-pair? _%g8313783158%_)
                      (let ((_%e8314083161%_ (gx#syntax-e _%g8313783158%_)))
                        (let ((_%hd8314183165%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8314083161%_)))
                              (_%tl8314283168%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8314083161%_))))
                          (if (gx#stx-pair? _%tl8314283168%_)
                              (let ((_%e8314383171%_
                                     (gx#syntax-e _%tl8314283168%_)))
                                (let ((_%hd8314483175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8314383171%_)))
                                      (_%tl8314583178%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8314383171%_))))
                                  (if (gx#stx-pair? _%tl8314583178%_)
                                      (let ((_%e8314683181%_
                                             (gx#syntax-e _%tl8314583178%_)))
                                        (let ((_%hd8314783185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8314683181%_)))
                                              (_%tl8314883188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8314683181%_))))
                                          (if (gx#stx-null? _%tl8314883188%_)
                                              ((lambda (_%L83191%_ _%L83193%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L83193%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L83191%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd8314783185%_
                                               _%hd8314483175%_)
                                              (_%g8313683154%_
                                               _%g8313783158%_))))
                                      (_%g8313683154%_ _%g8313783158%_))))
                              (_%g8313683154%_ _%g8313783158%_))))
                      (_%g8313683154%_ _%g8313783158%_)))))
          (_%g8313583210%_ _%$stx83132%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx83214%_)
        (let* ((_%g8321883232%_
                (lambda (_%g8321983228%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8321983228%_)))
               (_%g8321783273%_
                (lambda (_%g8321983236%_)
                  (if (gx#stx-pair? _%g8321983236%_)
                      (let ((_%e8322183239%_ (gx#syntax-e _%g8321983236%_)))
                        (let ((_%hd8322283243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8322183239%_)))
                              (_%tl8322383246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8322183239%_))))
                          (if (gx#stx-pair? _%tl8322383246%_)
                              (let ((_%e8322483249%_
                                     (gx#syntax-e _%tl8322383246%_)))
                                (let ((_%hd8322583253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8322483249%_)))
                                      (_%tl8322683256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8322483249%_))))
                                  (if (gx#stx-null? _%tl8322683256%_)
                                      ((lambda (_%L83259%_)
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
                                       (cons _%L83259%_
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
                                       _%hd8322583253%_)
                                      (_%g8321883232%_ _%g8321983236%_))))
                              (_%g8321883232%_ _%g8321983236%_))))
                      (_%g8321883232%_ _%g8321983236%_)))))
          (_%g8321783273%_ _%$stx83214%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx83277%_)
        (let* ((_%g8328183295%_
                (lambda (_%g8328283291%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8328283291%_)))
               (_%g8328083336%_
                (lambda (_%g8328283299%_)
                  (if (gx#stx-pair? _%g8328283299%_)
                      (let ((_%e8328483302%_ (gx#syntax-e _%g8328283299%_)))
                        (let ((_%hd8328583306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8328483302%_)))
                              (_%tl8328683309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8328483302%_))))
                          (if (gx#stx-pair? _%tl8328683309%_)
                              (let ((_%e8328783312%_
                                     (gx#syntax-e _%tl8328683309%_)))
                                (let ((_%hd8328883316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8328783312%_)))
                                      (_%tl8328983319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8328783312%_))))
                                  (if (gx#stx-null? _%tl8328983319%_)
                                      ((lambda (_%L83322%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L83322%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd8328883316%_)
                                      (_%g8328183295%_ _%g8328283299%_))))
                              (_%g8328183295%_ _%g8328283299%_))))
                      (_%g8328183295%_ _%g8328283299%_)))))
          (_%g8328083336%_ _%$stx83277%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx83340%_)
        (let* ((_%g8334483354%_
                (lambda (_%g8334583350%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8334583350%_)))
               (_%g8334383375%_
                (lambda (_%g8334583358%_)
                  (if (gx#stx-pair? _%g8334583358%_)
                      (let ((_%e8334683361%_ (gx#syntax-e _%g8334583358%_)))
                        (let ((_%hd8334783365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8334683361%_)))
                              (_%tl8334883368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8334683361%_))))
                          (if (gx#stx-null? _%tl8334883368%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g8334483354%_ _%g8334583358%_))))
                      (_%g8334483354%_ _%g8334583358%_)))))
          (_%g8334383375%_ _%$stx83340%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx83379%_)
        (let* ((_%g8338383401%_
                (lambda (_%g8338483397%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8338483397%_)))
               (_%g8338283456%_
                (lambda (_%g8338483405%_)
                  (if (gx#stx-pair? _%g8338483405%_)
                      (let ((_%e8338783408%_ (gx#syntax-e _%g8338483405%_)))
                        (let ((_%hd8338883412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8338783408%_)))
                              (_%tl8338983415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8338783408%_))))
                          (if (gx#stx-pair? _%tl8338983415%_)
                              (let ((_%e8339083418%_
                                     (gx#syntax-e _%tl8338983415%_)))
                                (let ((_%hd8339183422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8339083418%_)))
                                      (_%tl8339283425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8339083418%_))))
                                  (if (gx#stx-pair? _%tl8339283425%_)
                                      (let ((_%e8339383428%_
                                             (gx#syntax-e _%tl8339283425%_)))
                                        (let ((_%hd8339483432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8339383428%_)))
                                              (_%tl8339583435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8339383428%_))))
                                          (if (gx#stx-null? _%tl8339583435%_)
                                              ((lambda (_%L83438%_ _%L83440%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83440%_
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
                 (cons (cons _%L83438%_
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
                                               _%hd8339483432%_
                                               _%hd8339183422%_)
                                              (_%g8338383401%_
                                               _%g8338483405%_))))
                                      (_%g8338383401%_ _%g8338483405%_))))
                              (_%g8338383401%_ _%g8338483405%_))))
                      (_%g8338383401%_ _%g8338483405%_)))))
          (_%g8338283456%_ _%$stx83379%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx83460%_)
        (let* ((_%g8346483482%_
                (lambda (_%g8346583478%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8346583478%_)))
               (_%g8346383537%_
                (lambda (_%g8346583486%_)
                  (if (gx#stx-pair? _%g8346583486%_)
                      (let ((_%e8346883489%_ (gx#syntax-e _%g8346583486%_)))
                        (let ((_%hd8346983493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8346883489%_)))
                              (_%tl8347083496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8346883489%_))))
                          (if (gx#stx-pair? _%tl8347083496%_)
                              (let ((_%e8347183499%_
                                     (gx#syntax-e _%tl8347083496%_)))
                                (let ((_%hd8347283503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8347183499%_)))
                                      (_%tl8347383506%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8347183499%_))))
                                  (if (gx#stx-pair? _%tl8347383506%_)
                                      (let ((_%e8347483509%_
                                             (gx#syntax-e _%tl8347383506%_)))
                                        (let ((_%hd8347583513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8347483509%_)))
                                              (_%tl8347683516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8347483509%_))))
                                          (if (gx#stx-null? _%tl8347683516%_)
                                              ((lambda (_%L83519%_ _%L83521%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83521%_
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
                                               (cons (cons _%L83519%_
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
                                               _%hd8347583513%_
                                               _%hd8347283503%_)
                                              (_%g8346483482%_
                                               _%g8346583486%_))))
                                      (_%g8346483482%_ _%g8346583486%_))))
                              (_%g8346483482%_ _%g8346583486%_))))
                      (_%g8346483482%_ _%g8346583486%_)))))
          (_%g8346383537%_ _%$stx83460%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx83541%_)
        (let* ((_%g8354583563%_
                (lambda (_%g8354683559%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8354683559%_)))
               (_%g8354483618%_
                (lambda (_%g8354683567%_)
                  (if (gx#stx-pair? _%g8354683567%_)
                      (let ((_%e8354983570%_ (gx#syntax-e _%g8354683567%_)))
                        (let ((_%hd8355083574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8354983570%_)))
                              (_%tl8355183577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8354983570%_))))
                          (if (gx#stx-pair? _%tl8355183577%_)
                              (let ((_%e8355283580%_
                                     (gx#syntax-e _%tl8355183577%_)))
                                (let ((_%hd8355383584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e8355283580%_)))
                                      (_%tl8355483587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e8355283580%_))))
                                  (if (gx#stx-pair? _%tl8355483587%_)
                                      (let ((_%e8355583590%_
                                             (gx#syntax-e _%tl8355483587%_)))
                                        (let ((_%hd8355683594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8355583590%_)))
                                              (_%tl8355783597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8355583590%_))))
                                          (if (gx#stx-null? _%tl8355783597%_)
                                              ((lambda (_%L83600%_ _%L83602%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L83602%_
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
                                               (cons (cons _%L83600%_
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
                                               _%hd8355683594%_
                                               _%hd8355383584%_)
                                              (_%g8354583563%_
                                               _%g8354683567%_))))
                                      (_%g8354583563%_ _%g8354683567%_))))
                              (_%g8354583563%_ _%g8354683567%_))))
                      (_%g8354583563%_ _%g8354683567%_)))))
          (_%g8354483618%_ _%$stx83541%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx83622%_)
        (let* ((_%g8362683637%_
                (lambda (_%g8362783633%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g8362783633%_)))
               (_%g8362583666%_
                (lambda (_%g8362783641%_)
                  (if (gx#stx-pair? _%g8362783641%_)
                      (let ((_%e8362983644%_ (gx#syntax-e _%g8362783641%_)))
                        (let ((_%hd8363083648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e8362983644%_)))
                              (_%tl8363183651%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e8362983644%_))))
                          ((lambda (_%L83654%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L83654%_)))
                           _%tl8363183651%_)))
                      (_%g8362683637%_ _%g8362783641%_)))))
          (_%g8362583666%_ _%$stx83622%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx83670%_)
        (let* ((_%__stx8962289623%_ _%$stx83670%_)
               (_%g8368183895%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8962289623%_))))
          (let ((_%__kont8962589626%_
                 (lambda (_%L84748%_
                          _%L84750%_
                          _%L84751%_
                          _%L84752%_
                          _%L84753%_)
                   (cons _%L84753%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8478384786%_
                                                     _%g8478484789%_)
                                              (cons _%g8478384786%_
                                                    _%g8478484789%_))
                                            '()
                                            _%L84751%_)
                                           (cons _%L84752%_
                                                 (cons _%L84750%_
                                                       (cons _%L84748%_
                                                             '())))))))))
                (_%__kont8962989630%_
                 (lambda (_%L84601%_ _%L84603%_ _%L84604%_ _%L84605%_)
                   (cons _%L84605%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g8462884631%_
                                                     _%g8462984634%_)
                                              (cons _%g8462884631%_
                                                    _%g8462984634%_))
                                            '()
                                            _%L84603%_)
                                           (cons _%L84604%_
                                                 (cons _%L84601%_
                                                       (cons _%L84601%_
                                                             '())))))))))
                (_%__kont8963389634%_
                 (lambda (_%L84504%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L84504%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont8963589636%_
                 (lambda (_%L84427%_
                          _%L84429%_
                          _%L84430%_
                          _%L84431%_
                          _%L84432%_
                          _%L84433%_)
                   (cons _%L84433%_
                         (cons '2
                               (cons (cons (cons _%L84431%_
                                                 (cons _%L84430%_ '()))
                                           _%L84432%_)
                                     (cons _%L84429%_ _%L84427%_))))))
                (_%__kont8963789638%_
                 (lambda (_%L84308%_
                          _%L84310%_
                          _%L84311%_
                          _%L84312%_
                          _%L84313%_)
                   (cons _%L84313%_
                         (cons '2
                               (cons (cons (cons _%L84311%_
                                                 (cons _%L84311%_ '()))
                                           _%L84312%_)
                                     (cons _%L84310%_ _%L84308%_))))))
                (_%__kont8963989640%_
                 (lambda (_%L84225%_ _%L84227%_ _%L84228%_)
                   (cons _%L84228%_
                         (cons '3 (cons '() (cons _%L84227%_ _%L84225%_))))))
                (_%__kont8964189642%_
                 (lambda (_%L84146%_
                          _%L84148%_
                          _%L84149%_
                          _%L84150%_
                          _%L84151%_)
                   (cons _%L84151%_
                         (cons '3
                               (cons (cons _%L84149%_ _%L84150%_)
                                     (cons _%L84148%_ _%L84146%_))))))
                (_%__kont8964389644%_
                 (lambda (_%L84030%_
                          _%L84032%_
                          _%L84033%_
                          _%L84034%_
                          _%L84035%_
                          _%L84036%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L84033%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L84030%_ '())))
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
                                              (lambda (_%g8407084073%_
                                                       _%g8407184076%_)
                                                (cons _%g8407084073%_
                                                      _%g8407184076%_))
                                              '()
                                              _%L84035%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g8406884079%_
                                                       _%g8406984082%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g8406884079%_ '())))
              _%g8406984082%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L84034%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L84032%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8997389974%_
                    (lambda (_%e8385183902%_
                             _%hd8385283906%_
                             _%tl8385383909%_
                             _%e8385483912%_
                             _%hd8385583916%_
                             _%tl8385683919%_
                             _%e8385783922%_
                             _%e8385883926%_
                             _%hd8385983930%_
                             _%tl8386083933%_
                             _%__splice8964589646%_
                             _%target8386183936%_
                             _%tl8386383939%_)
                      (letrec ((_%loop8386483942%_
                                (lambda (_%hd8386283946%_
                                         _%exprs8386883949%_
                                         _%names8386983951%_)
                                  (if (gx#stx-pair? _%hd8386283946%_)
                                      (let ((_%e8386583954%_
                                             (gx#syntax-e _%hd8386283946%_)))
                                        (let ((_%lp-tl8386783961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8386583954%_)))
                                              (_%lp-hd8386683958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8386583954%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd8386683958%_)
                                              (let ((_%e8388483964%_
                                                     (gx#syntax-e
                                                      _%lp-hd8386683958%_)))
                                                (let ((_%tl8388683971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8388483964%_)))
                                                      (_%hd8388583968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8388483964%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8388683971%_)
                                                      (let ((_%e8388783974%_
                                                             (gx#syntax-e
                                                              _%tl8388683971%_)))
                                                        (let ((_%tl8388983981%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8388783974%_)))
                      (_%hd8388883978%_
                       (let () (declare (not safe)) (##car _%e8388783974%_))))
                  (if (gx#stx-null? _%tl8388983981%_)
                      (_%loop8386483942%_
                       _%lp-tl8386783961%_
                       (cons _%hd8388883978%_ _%exprs8386883949%_)
                       (cons _%hd8388583968%_ _%names8386983951%_))
                      (let () (declare (not safe)) (_%g8368183895%_)))))
              (let () (declare (not safe)) (_%g8368183895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g8368183895%_)))))
                                      (let ((_%names8387183987%_
                                             (reverse _%names8386983951%_))
                                            (_%exprs8387083984%_
                                             (reverse _%exprs8386883949%_)))
                                        (if (gx#stx-pair? _%tl8386083933%_)
                                            (let ((_%e8387283990%_
                                                   (gx#syntax-e
                                                    _%tl8386083933%_)))
                                              (let ((_%tl8387483997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8387283990%_)))
                                                    (_%hd8387383994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8387283990%_))))
                                                (if (gx#stx-null?
                                                     _%hd8387383994%_)
                                                    (if (gx#stx-pair?
                                                         _%tl8387483997%_)
                                                        (let ((_%e8387584000%_
                                                               (gx#syntax-e
                                                                _%tl8387483997%_)))
                                                          (let ((_%tl8387784007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8387584000%_)))
                        (_%hd8387684004%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8387584000%_))))
                    (if (gx#stx-pair? _%tl8387784007%_)
                        (let ((_%e8387884010%_ (gx#syntax-e _%tl8387784007%_)))
                          (let ((_%tl8388084017%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8387884010%_)))
                                (_%hd8387984014%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8387884010%_))))
                            (if (gx#stx-pair? _%tl8388084017%_)
                                (let ((_%e8388184020%_
                                       (gx#syntax-e _%tl8388084017%_)))
                                  (let ((_%tl8388384027%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8388184020%_)))
                                        (_%hd8388284024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8388184020%_))))
                                    (if (gx#stx-null? _%tl8388384027%_)
                                        (_%__kont8964389644%_
                                         _%hd8388284024%_
                                         _%hd8387984014%_
                                         _%hd8387684004%_
                                         _%exprs8387083984%_
                                         _%names8387183987%_
                                         _%hd8385283906%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8368183895%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8368183895%_)))))
                        (let () (declare (not safe)) (_%g8368183895%_)))))
                (let () (declare (not safe)) (_%g8368183895%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8368183895%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8368183895%_))))))))
                        (_%loop8386483942%_ _%target8386183936%_ '() '()))))
                   (_%__match8975189752%_
                    (lambda (_%e8372384527%_
                             _%hd8372484531%_
                             _%tl8372584534%_
                             _%e8372684537%_
                             _%hd8372784541%_
                             _%tl8372884544%_
                             _%e8372984547%_
                             _%e8373084551%_
                             _%hd8373184555%_
                             _%tl8373284558%_
                             _%__splice8963189632%_
                             _%target8373384561%_
                             _%tl8373584564%_
                             _%e8374284567%_
                             _%hd8374384571%_
                             _%tl8374484574%_)
                      (letrec ((_%loop8373684577%_
                                (lambda (_%hd8373484581%_ _%exprs8374084584%_)
                                  (if (gx#stx-pair? _%hd8373484581%_)
                                      (let ((_%e8373784587%_
                                             (gx#syntax-e _%hd8373484581%_)))
                                        (let ((_%lp-tl8373984594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8373784587%_)))
                                              (_%lp-hd8373884591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8373784587%_))))
                                          (_%loop8373684577%_
                                           _%lp-tl8373984594%_
                                           (cons _%lp-hd8373884591%_
                                                 _%exprs8374084584%_))))
                                      (let ((_%exprs8374184597%_
                                             (reverse _%exprs8374084584%_)))
                                        (_%__kont8962989630%_
                                         _%hd8374384571%_
                                         _%exprs8374184597%_
                                         _%hd8373184555%_
                                         _%hd8372484531%_))))))
                        (_%loop8373684577%_ _%target8373384561%_ '()))))
                   (_%__match8971189712%_
                    (lambda (_%e8368884644%_
                             _%hd8368984648%_
                             _%tl8369084651%_
                             _%e8369184654%_
                             _%hd8369284658%_
                             _%tl8369384661%_
                             _%e8369484664%_
                             _%e8369584668%_
                             _%hd8369684672%_
                             _%tl8369784675%_
                             _%__splice8962789628%_
                             _%target8369884678%_
                             _%tl8370084681%_
                             _%e8370784684%_
                             _%hd8370884688%_
                             _%tl8370984691%_
                             _%e8371084694%_
                             _%hd8371184698%_
                             _%tl8371284701%_
                             _%e8371384704%_
                             _%hd8371484708%_
                             _%tl8371584711%_
                             _%e8371684714%_
                             _%hd8371784718%_
                             _%tl8371884721%_)
                      (letrec ((_%loop8370184724%_
                                (lambda (_%hd8369984728%_ _%exprs8370584731%_)
                                  (if (gx#stx-pair? _%hd8369984728%_)
                                      (let ((_%e8370284734%_
                                             (gx#syntax-e _%hd8369984728%_)))
                                        (let ((_%lp-tl8370484741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8370284734%_)))
                                              (_%lp-hd8370384738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8370284734%_))))
                                          (_%loop8370184724%_
                                           _%lp-tl8370484741%_
                                           (cons _%lp-hd8370384738%_
                                                 _%exprs8370584731%_))))
                                      (let ((_%exprs8370684744%_
                                             (reverse _%exprs8370584731%_)))
                                        (_%__kont8962589626%_
                                         _%hd8371784718%_
                                         _%hd8371484708%_
                                         _%exprs8370684744%_
                                         _%hd8369684672%_
                                         _%hd8368984648%_))))))
                        (_%loop8370184724%_ _%target8369884678%_ '())))))
              (if (gx#stx-pair? _%__stx8962289623%_)
                  (let ((_%e8368884644%_ (gx#syntax-e _%__stx8962289623%_)))
                    (let ((_%tl8369084651%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e8368884644%_)))
                          (_%hd8368984648%_
                           (let ()
                             (declare (not safe))
                             (##car _%e8368884644%_))))
                      (if (gx#stx-pair? _%tl8369084651%_)
                          (let ((_%e8369184654%_
                                 (gx#syntax-e _%tl8369084651%_)))
                            (let ((_%tl8369384661%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8369184654%_)))
                                  (_%hd8369284658%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8369184654%_))))
                              (if (gx#stx-datum? _%hd8369284658%_)
                                  (let ((_%e8369484664%_
                                         (gx#stx-e _%hd8369284658%_)))
                                    (if (equal? _%e8369484664%_ '1)
                                        (if (gx#stx-pair? _%tl8369384661%_)
                                            (let ((_%e8369584668%_
                                                   (gx#syntax-e
                                                    _%tl8369384661%_)))
                                              (let ((_%tl8369784675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8369584668%_)))
                                                    (_%hd8369684672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8369584668%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl8369784675%_)
                                                    (if (let ((__tmp90065
                                                               (gx#stx-length
                                                                _%tl8369784675%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp90065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice8962789628%_
                       (gx#syntax-split-splice _%tl8369784675%_ '2)))
                  (let ((_%tl8370084681%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8962789628%_ '1)))
                        (_%target8369884678%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8962789628%_ '0))))
                    (if (gx#stx-pair? _%tl8370084681%_)
                        (let ((_%e8370784684%_ (gx#syntax-e _%tl8370084681%_)))
                          (let ((_%tl8370984691%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8370784684%_)))
                                (_%hd8370884688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8370784684%_))))
                            (if (gx#stx-pair? _%hd8370884688%_)
                                (let ((_%e8371084694%_
                                       (gx#syntax-e _%hd8370884688%_)))
                                  (let ((_%tl8371284701%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8371084694%_)))
                                        (_%hd8371184698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8371084694%_))))
                                    (if (gx#identifier? _%hd8371184698%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g90066_|
                                             _%hd8371184698%_)
                                            (if (gx#stx-pair? _%tl8371284701%_)
                                                (let ((_%e8371384704%_
                                                       (gx#syntax-e
                                                        _%tl8371284701%_)))
                                                  (let ((_%tl8371584711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8371384704%_)))
                                                        (_%hd8371484708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8371384704%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8371584711%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8370984691%_)
                                                            (let ((_%e8371684714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8370984691%_)))
                      (let ((_%tl8371884721%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8371684714%_)))
                            (_%hd8371784718%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8371684714%_))))
                        (if (gx#stx-null? _%tl8371884721%_)
                            (_%__match8971189712%_
                             _%e8368884644%_
                             _%hd8368984648%_
                             _%tl8369084651%_
                             _%e8369184654%_
                             _%hd8369284658%_
                             _%tl8369384661%_
                             _%e8369484664%_
                             _%e8369584668%_
                             _%hd8369684672%_
                             _%tl8369784675%_
                             _%__splice8962789628%_
                             _%target8369884678%_
                             _%tl8370084681%_
                             _%e8370784684%_
                             _%hd8370884688%_
                             _%tl8370984691%_
                             _%e8371084694%_
                             _%hd8371184698%_
                             _%tl8371284701%_
                             _%e8371384704%_
                             _%hd8371484708%_
                             _%tl8371584711%_
                             _%e8371684714%_
                             _%hd8371784718%_
                             _%tl8371884721%_)
                            (if (let ((__tmp90067
                                       (gx#stx-length _%tl8369784675%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp90067 '1))
                                (let ((_%__splice8963189632%_
                                       (gx#syntax-split-splice
                                        _%tl8369784675%_
                                        '1)))
                                  (let ((_%tl8373584564%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8963189632%_
                                            '1)))
                                        (_%target8373384561%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8963189632%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl8373584564%_)
                                        (let ((_%e8374284567%_
                                               (gx#syntax-e _%tl8373584564%_)))
                                          (let ((_%tl8374484574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e8374284567%_)))
                                                (_%hd8374384571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e8374284567%_))))
                                            (if (gx#stx-null? _%tl8374484574%_)
                                                (_%__match8975189752%_
                                                 _%e8368884644%_
                                                 _%hd8368984648%_
                                                 _%tl8369084651%_
                                                 _%e8369184654%_
                                                 _%hd8369284658%_
                                                 _%tl8369384661%_
                                                 _%e8369484664%_
                                                 _%e8369584668%_
                                                 _%hd8369684672%_
                                                 _%tl8369784675%_
                                                 _%__splice8963189632%_
                                                 _%target8373384561%_
                                                 _%tl8373584564%_
                                                 _%e8374284567%_
                                                 _%hd8374384571%_
                                                 _%tl8374484574%_)
                                                (if (gx#stx-null?
                                                     _%tl8369784675%_)
                                                    (_%__kont8963389634%_
                                                     _%hd8369684672%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8368183895%_))))))
                                        (if (gx#stx-null? _%tl8369784675%_)
                                            (_%__kont8963389634%_
                                             _%hd8369684672%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8368183895%_))))))
                                (if (gx#stx-null? _%tl8369784675%_)
                                    (_%__kont8963389634%_ _%hd8369684672%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8368183895%_)))))))
                    (if (let ((__tmp90068 (gx#stx-length _%tl8369784675%_)))
                          (declare (not safe))
                          (##fx>= __tmp90068 '1))
                        (let ((_%__splice8963189632%_
                               (gx#syntax-split-splice _%tl8369784675%_ '1)))
                          (let ((_%tl8373584564%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8963189632%_ '1)))
                                (_%target8373384561%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8963189632%_ '0))))
                            (if (gx#stx-pair? _%tl8373584564%_)
                                (let ((_%e8374284567%_
                                       (gx#syntax-e _%tl8373584564%_)))
                                  (let ((_%tl8374484574%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8374284567%_)))
                                        (_%hd8374384571%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8374284567%_))))
                                    (if (gx#stx-null? _%tl8374484574%_)
                                        (_%__match8975189752%_
                                         _%e8368884644%_
                                         _%hd8368984648%_
                                         _%tl8369084651%_
                                         _%e8369184654%_
                                         _%hd8369284658%_
                                         _%tl8369384661%_
                                         _%e8369484664%_
                                         _%e8369584668%_
                                         _%hd8369684672%_
                                         _%tl8369784675%_
                                         _%__splice8963189632%_
                                         _%target8373384561%_
                                         _%tl8373584564%_
                                         _%e8374284567%_
                                         _%hd8374384571%_
                                         _%tl8374484574%_)
                                        (if (gx#stx-null? _%tl8369784675%_)
                                            (_%__kont8963389634%_
                                             _%hd8369684672%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g8368183895%_))))))
                                (if (gx#stx-null? _%tl8369784675%_)
                                    (_%__kont8963389634%_ _%hd8369684672%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g8368183895%_))))))
                        (if (gx#stx-null? _%tl8369784675%_)
                            (_%__kont8963389634%_ _%hd8369684672%_)
                            (let () (declare (not safe)) (_%g8368183895%_)))))
                (if (let ((__tmp90069 (gx#stx-length _%tl8369784675%_)))
                      (declare (not safe))
                      (##fx>= __tmp90069 '1))
                    (let ((_%__splice8963189632%_
                           (gx#syntax-split-splice _%tl8369784675%_ '1)))
                      (let ((_%tl8373584564%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8963189632%_ '1)))
                            (_%target8373384561%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8963189632%_ '0))))
                        (if (gx#stx-pair? _%tl8373584564%_)
                            (let ((_%e8374284567%_
                                   (gx#syntax-e _%tl8373584564%_)))
                              (let ((_%tl8374484574%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8374284567%_)))
                                    (_%hd8374384571%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8374284567%_))))
                                (if (gx#stx-null? _%tl8374484574%_)
                                    (_%__match8975189752%_
                                     _%e8368884644%_
                                     _%hd8368984648%_
                                     _%tl8369084651%_
                                     _%e8369184654%_
                                     _%hd8369284658%_
                                     _%tl8369384661%_
                                     _%e8369484664%_
                                     _%e8369584668%_
                                     _%hd8369684672%_
                                     _%tl8369784675%_
                                     _%__splice8963189632%_
                                     _%target8373384561%_
                                     _%tl8373584564%_
                                     _%e8374284567%_
                                     _%hd8374384571%_
                                     _%tl8374484574%_)
                                    (if (gx#stx-null? _%tl8369784675%_)
                                        (_%__kont8963389634%_ _%hd8369684672%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8368183895%_))))))
                            (if (gx#stx-null? _%tl8369784675%_)
                                (_%__kont8963389634%_ _%hd8369684672%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8368183895%_))))))
                    (if (gx#stx-null? _%tl8369784675%_)
                        (_%__kont8963389634%_ _%hd8369684672%_)
                        (let () (declare (not safe)) (_%g8368183895%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp90070
                                                           (gx#stx-length
                                                            _%tl8369784675%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp90070 '1))
                                                    (let ((_%__splice8963189632%_
                                                           (gx#syntax-split-splice
                                                            _%tl8369784675%_
                                                            '1)))
                                                      (let ((_%tl8373584564%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8963189632%_ '1)))
                    (_%target8373384561%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8963189632%_ '0))))
                (if (gx#stx-pair? _%tl8373584564%_)
                    (let ((_%e8374284567%_ (gx#syntax-e _%tl8373584564%_)))
                      (let ((_%tl8374484574%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8374284567%_)))
                            (_%hd8374384571%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8374284567%_))))
                        (if (gx#stx-null? _%tl8374484574%_)
                            (_%__match8975189752%_
                             _%e8368884644%_
                             _%hd8368984648%_
                             _%tl8369084651%_
                             _%e8369184654%_
                             _%hd8369284658%_
                             _%tl8369384661%_
                             _%e8369484664%_
                             _%e8369584668%_
                             _%hd8369684672%_
                             _%tl8369784675%_
                             _%__splice8963189632%_
                             _%target8373384561%_
                             _%tl8373584564%_
                             _%e8374284567%_
                             _%hd8374384571%_
                             _%tl8374484574%_)
                            (if (gx#stx-null? _%tl8369784675%_)
                                (_%__kont8963389634%_ _%hd8369684672%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8368183895%_))))))
                    (if (gx#stx-null? _%tl8369784675%_)
                        (_%__kont8963389634%_ _%hd8369684672%_)
                        (let () (declare (not safe)) (_%g8368183895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8369784675%_)
                                                        (_%__kont8963389634%_
                                                         _%hd8369684672%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8368183895%_)))))
                                            (if (let ((__tmp90071
                                                       (gx#stx-length
                                                        _%tl8369784675%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp90071 '1))
                                                (let ((_%__splice8963189632%_
                                                       (gx#syntax-split-splice
                                                        _%tl8369784675%_
                                                        '1)))
                                                  (let ((_%tl8373584564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8963189632%_
                                                            '1)))
                                                        (_%target8373384561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8963189632%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl8373584564%_)
                                                        (let ((_%e8374284567%_
                                                               (gx#syntax-e
                                                                _%tl8373584564%_)))
                                                          (let ((_%tl8374484574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8374284567%_)))
                        (_%hd8374384571%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8374284567%_))))
                    (if (gx#stx-null? _%tl8374484574%_)
                        (_%__match8975189752%_
                         _%e8368884644%_
                         _%hd8368984648%_
                         _%tl8369084651%_
                         _%e8369184654%_
                         _%hd8369284658%_
                         _%tl8369384661%_
                         _%e8369484664%_
                         _%e8369584668%_
                         _%hd8369684672%_
                         _%tl8369784675%_
                         _%__splice8963189632%_
                         _%target8373384561%_
                         _%tl8373584564%_
                         _%e8374284567%_
                         _%hd8374384571%_
                         _%tl8374484574%_)
                        (if (gx#stx-null? _%tl8369784675%_)
                            (_%__kont8963389634%_ _%hd8369684672%_)
                            (let () (declare (not safe)) (_%g8368183895%_))))))
                (if (gx#stx-null? _%tl8369784675%_)
                    (_%__kont8963389634%_ _%hd8369684672%_)
                    (let () (declare (not safe)) (_%g8368183895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl8369784675%_)
                                                    (_%__kont8963389634%_
                                                     _%hd8369684672%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8368183895%_)))))
                                        (if (let ((__tmp90072
                                                   (gx#stx-length
                                                    _%tl8369784675%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp90072 '1))
                                            (let ((_%__splice8963189632%_
                                                   (gx#syntax-split-splice
                                                    _%tl8369784675%_
                                                    '1)))
                                              (let ((_%tl8373584564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8963189632%_
                                                        '1)))
                                                    (_%target8373384561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8963189632%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl8373584564%_)
                                                    (let ((_%e8374284567%_
                                                           (gx#syntax-e
                                                            _%tl8373584564%_)))
                                                      (let ((_%tl8374484574%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8374284567%_)))
                    (_%hd8374384571%_
                     (let () (declare (not safe)) (##car _%e8374284567%_))))
                (if (gx#stx-null? _%tl8374484574%_)
                    (_%__match8975189752%_
                     _%e8368884644%_
                     _%hd8368984648%_
                     _%tl8369084651%_
                     _%e8369184654%_
                     _%hd8369284658%_
                     _%tl8369384661%_
                     _%e8369484664%_
                     _%e8369584668%_
                     _%hd8369684672%_
                     _%tl8369784675%_
                     _%__splice8963189632%_
                     _%target8373384561%_
                     _%tl8373584564%_
                     _%e8374284567%_
                     _%hd8374384571%_
                     _%tl8374484574%_)
                    (if (gx#stx-null? _%tl8369784675%_)
                        (_%__kont8963389634%_ _%hd8369684672%_)
                        (let () (declare (not safe)) (_%g8368183895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8369784675%_)
                                                        (_%__kont8963389634%_
                                                         _%hd8369684672%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8368183895%_))))))
                                            (if (gx#stx-null? _%tl8369784675%_)
                                                (_%__kont8963389634%_
                                                 _%hd8369684672%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8368183895%_)))))))
                                (if (let ((__tmp90073
                                           (gx#stx-length _%tl8369784675%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp90073 '1))
                                    (let ((_%__splice8963189632%_
                                           (gx#syntax-split-splice
                                            _%tl8369784675%_
                                            '1)))
                                      (let ((_%tl8373584564%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8963189632%_
                                                '1)))
                                            (_%target8373384561%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8963189632%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl8373584564%_)
                                            (let ((_%e8374284567%_
                                                   (gx#syntax-e
                                                    _%tl8373584564%_)))
                                              (let ((_%tl8374484574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8374284567%_)))
                                                    (_%hd8374384571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8374284567%_))))
                                                (if (gx#stx-null?
                                                     _%tl8374484574%_)
                                                    (_%__match8975189752%_
                                                     _%e8368884644%_
                                                     _%hd8368984648%_
                                                     _%tl8369084651%_
                                                     _%e8369184654%_
                                                     _%hd8369284658%_
                                                     _%tl8369384661%_
                                                     _%e8369484664%_
                                                     _%e8369584668%_
                                                     _%hd8369684672%_
                                                     _%tl8369784675%_
                                                     _%__splice8963189632%_
                                                     _%target8373384561%_
                                                     _%tl8373584564%_
                                                     _%e8374284567%_
                                                     _%hd8374384571%_
                                                     _%tl8374484574%_)
                                                    (if (gx#stx-null?
                                                         _%tl8369784675%_)
                                                        (_%__kont8963389634%_
                                                         _%hd8369684672%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8368183895%_))))))
                                            (if (gx#stx-null? _%tl8369784675%_)
                                                (_%__kont8963389634%_
                                                 _%hd8369684672%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8368183895%_))))))
                                    (if (gx#stx-null? _%tl8369784675%_)
                                        (_%__kont8963389634%_ _%hd8369684672%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8368183895%_)))))))
                        (if (let ((__tmp90074
                                   (gx#stx-length _%tl8369784675%_)))
                              (declare (not safe))
                              (##fx>= __tmp90074 '1))
                            (let ((_%__splice8963189632%_
                                   (gx#syntax-split-splice
                                    _%tl8369784675%_
                                    '1)))
                              (let ((_%tl8373584564%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8963189632%_
                                        '1)))
                                    (_%target8373384561%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8963189632%_
                                        '0))))
                                (if (gx#stx-pair? _%tl8373584564%_)
                                    (let ((_%e8374284567%_
                                           (gx#syntax-e _%tl8373584564%_)))
                                      (let ((_%tl8374484574%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8374284567%_)))
                                            (_%hd8374384571%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8374284567%_))))
                                        (if (gx#stx-null? _%tl8374484574%_)
                                            (_%__match8975189752%_
                                             _%e8368884644%_
                                             _%hd8368984648%_
                                             _%tl8369084651%_
                                             _%e8369184654%_
                                             _%hd8369284658%_
                                             _%tl8369384661%_
                                             _%e8369484664%_
                                             _%e8369584668%_
                                             _%hd8369684672%_
                                             _%tl8369784675%_
                                             _%__splice8963189632%_
                                             _%target8373384561%_
                                             _%tl8373584564%_
                                             _%e8374284567%_
                                             _%hd8374384571%_
                                             _%tl8374484574%_)
                                            (if (gx#stx-null? _%tl8369784675%_)
                                                (_%__kont8963389634%_
                                                 _%hd8369684672%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8368183895%_))))))
                                    (if (gx#stx-null? _%tl8369784675%_)
                                        (_%__kont8963389634%_ _%hd8369684672%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8368183895%_))))))
                            (if (gx#stx-null? _%tl8369784675%_)
                                (_%__kont8963389634%_ _%hd8369684672%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8368183895%_)))))))
                (if (let ((__tmp90075 (gx#stx-length _%tl8369784675%_)))
                      (declare (not safe))
                      (##fx>= __tmp90075 '1))
                    (let ((_%__splice8963189632%_
                           (gx#syntax-split-splice _%tl8369784675%_ '1)))
                      (let ((_%tl8373584564%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8963189632%_ '1)))
                            (_%target8373384561%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8963189632%_ '0))))
                        (if (gx#stx-pair? _%tl8373584564%_)
                            (let ((_%e8374284567%_
                                   (gx#syntax-e _%tl8373584564%_)))
                              (let ((_%tl8374484574%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8374284567%_)))
                                    (_%hd8374384571%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8374284567%_))))
                                (if (gx#stx-null? _%tl8374484574%_)
                                    (_%__match8975189752%_
                                     _%e8368884644%_
                                     _%hd8368984648%_
                                     _%tl8369084651%_
                                     _%e8369184654%_
                                     _%hd8369284658%_
                                     _%tl8369384661%_
                                     _%e8369484664%_
                                     _%e8369584668%_
                                     _%hd8369684672%_
                                     _%tl8369784675%_
                                     _%__splice8963189632%_
                                     _%target8373384561%_
                                     _%tl8373584564%_
                                     _%e8374284567%_
                                     _%hd8374384571%_
                                     _%tl8374484574%_)
                                    (if (gx#stx-null? _%tl8369784675%_)
                                        (_%__kont8963389634%_ _%hd8369684672%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8368183895%_))))))
                            (if (gx#stx-null? _%tl8369784675%_)
                                (_%__kont8963389634%_ _%hd8369684672%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8368183895%_))))))
                    (if (gx#stx-null? _%tl8369784675%_)
                        (_%__kont8963389634%_ _%hd8369684672%_)
                        (let () (declare (not safe)) (_%g8368183895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl8369784675%_)
                                                        (_%__kont8963389634%_
                                                         _%hd8369684672%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g8368183895%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g8368183895%_)))
                                        (if (equal? _%e8369484664%_ '2)
                                            (if (gx#stx-pair? _%tl8369384661%_)
                                                (let ((_%e8376984367%_
                                                       (gx#syntax-e
                                                        _%tl8369384661%_)))
                                                  (let ((_%tl8377184374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8376984367%_)))
                                                        (_%hd8377084371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8376984367%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl8377184374%_)
                                                        (let ((_%e8377284377%_
                                                               (gx#syntax-e
                                                                _%tl8377184374%_)))
                                                          (let ((_%tl8377484384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e8377284377%_)))
                        (_%hd8377384381%_
                         (let ()
                           (declare (not safe))
                           (##car _%e8377284377%_))))
                    (if (gx#stx-pair? _%hd8377384381%_)
                        (let ((_%e8377584387%_ (gx#syntax-e _%hd8377384381%_)))
                          (let ((_%tl8377784394%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e8377584387%_)))
                                (_%hd8377684391%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e8377584387%_))))
                            (if (gx#stx-pair? _%hd8377684391%_)
                                (let ((_%e8377884397%_
                                       (gx#syntax-e _%hd8377684391%_)))
                                  (let ((_%tl8378084404%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e8377884397%_)))
                                        (_%hd8377984401%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e8377884397%_))))
                                    (if (gx#identifier? _%hd8377984401%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g90076_|
                                             _%hd8377984401%_)
                                            (if (gx#stx-pair? _%tl8378084404%_)
                                                (let ((_%e8378184407%_
                                                       (gx#syntax-e
                                                        _%tl8378084404%_)))
                                                  (let ((_%tl8378384414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e8378184407%_)))
                                                        (_%hd8378284411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e8378184407%_))))
                                                    (if (gx#stx-null?
                                                         _%tl8378384414%_)
                                                        (if (gx#stx-pair?
                                                             _%tl8377784394%_)
                                                            (let ((_%e8378484417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl8377784394%_)))
                      (let ((_%tl8378684424%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8378484417%_)))
                            (_%hd8378584421%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8378484417%_))))
                        (_%__kont8963589636%_
                         _%tl8377484384%_
                         _%tl8378684424%_
                         _%hd8378584421%_
                         _%hd8378284411%_
                         _%hd8377084371%_
                         _%hd8368984648%_)))
                    (_%__kont8963789638%_
                     _%tl8377484384%_
                     _%tl8377784394%_
                     _%hd8377684391%_
                     _%hd8377084371%_
                     _%hd8368984648%_))
                (_%__kont8963789638%_
                 _%tl8377484384%_
                 _%tl8377784394%_
                 _%hd8377684391%_
                 _%hd8377084371%_
                 _%hd8368984648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8963789638%_
                                                 _%tl8377484384%_
                                                 _%tl8377784394%_
                                                 _%hd8377684391%_
                                                 _%hd8377084371%_
                                                 _%hd8368984648%_))
                                            (_%__kont8963789638%_
                                             _%tl8377484384%_
                                             _%tl8377784394%_
                                             _%hd8377684391%_
                                             _%hd8377084371%_
                                             _%hd8368984648%_))
                                        (_%__kont8963789638%_
                                         _%tl8377484384%_
                                         _%tl8377784394%_
                                         _%hd8377684391%_
                                         _%hd8377084371%_
                                         _%hd8368984648%_))))
                                (_%__kont8963789638%_
                                 _%tl8377484384%_
                                 _%tl8377784394%_
                                 _%hd8377684391%_
                                 _%hd8377084371%_
                                 _%hd8368984648%_))))
                        (if (gx#stx-null? _%hd8377384381%_)
                            (_%__kont8963989640%_
                             _%tl8377484384%_
                             _%hd8377084371%_
                             _%hd8368984648%_)
                            (let () (declare (not safe)) (_%g8368183895%_))))))
                (let () (declare (not safe)) (_%g8368183895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8368183895%_)))
                                            (if (equal? _%e8369484664%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl8369384661%_)
                                                    (let ((_%e8383684116%_
                                                           (gx#syntax-e
                                                            _%tl8369384661%_)))
                                                      (let ((_%tl8383884123%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e8383684116%_)))
                    (_%hd8383784120%_
                     (let () (declare (not safe)) (##car _%e8383684116%_))))
                (if (gx#stx-pair? _%tl8383884123%_)
                    (let ((_%e8383984126%_ (gx#syntax-e _%tl8383884123%_)))
                      (let ((_%tl8384184133%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8383984126%_)))
                            (_%hd8384084130%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8383984126%_))))
                        (if (gx#stx-pair? _%hd8384084130%_)
                            (let ((_%e8384284136%_
                                   (gx#syntax-e _%hd8384084130%_)))
                              (let ((_%tl8384484143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8384284136%_)))
                                    (_%hd8384384140%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8384284136%_))))
                                (_%__kont8964189642%_
                                 _%tl8384184133%_
                                 _%tl8384484143%_
                                 _%hd8384384140%_
                                 _%hd8383784120%_
                                 _%hd8368984648%_)))
                            (if (gx#stx-pair/null? _%hd8383784120%_)
                                (let ((_%__splice8964589646%_
                                       (gx#syntax-split-splice
                                        _%hd8383784120%_
                                        '0)))
                                  (let ((_%tl8386383939%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8964589646%_
                                            '1)))
                                        (_%target8386183936%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8964589646%_
                                            '0))))
                                    (if (gx#stx-null? _%tl8386383939%_)
                                        (_%__match8997389974%_
                                         _%e8368884644%_
                                         _%hd8368984648%_
                                         _%tl8369084651%_
                                         _%e8369184654%_
                                         _%hd8369284658%_
                                         _%tl8369384661%_
                                         _%e8369484664%_
                                         _%e8383684116%_
                                         _%hd8383784120%_
                                         _%tl8383884123%_
                                         _%__splice8964589646%_
                                         _%target8386183936%_
                                         _%tl8386383939%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g8368183895%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g8368183895%_))))))
                    (if (gx#stx-pair/null? _%hd8383784120%_)
                        (let ((_%__splice8964589646%_
                               (gx#syntax-split-splice _%hd8383784120%_ '0)))
                          (let ((_%tl8386383939%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8964589646%_ '1)))
                                (_%target8386183936%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8964589646%_ '0))))
                            (if (gx#stx-null? _%tl8386383939%_)
                                (_%__match8997389974%_
                                 _%e8368884644%_
                                 _%hd8368984648%_
                                 _%tl8369084651%_
                                 _%e8369184654%_
                                 _%hd8369284658%_
                                 _%tl8369384661%_
                                 _%e8369484664%_
                                 _%e8383684116%_
                                 _%hd8383784120%_
                                 _%tl8383884123%_
                                 _%__splice8964589646%_
                                 _%target8386183936%_
                                 _%tl8386383939%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g8368183895%_)))))
                        (let () (declare (not safe)) (_%g8368183895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g8368183895%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g8368183895%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g8368183895%_)))))
                          (let () (declare (not safe)) (_%g8368183895%_)))))
                  (let () (declare (not safe)) (_%g8368183895%_))))))))))
