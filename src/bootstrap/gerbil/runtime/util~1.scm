(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g99163_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g99173_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx92123%_)
        (let* ((_%g9212792145%_
                (lambda (_%g9212892141%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9212892141%_)))
               (_%g9212692201%_
                (lambda (_%g9212892149%_)
                  (if (gx#stx-pair? _%g9212892149%_)
                      (let ((_%e9213192152%_ (gx#syntax-e _%g9212892149%_)))
                        (let ((_%hd9213292156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9213192152%_)))
                              (_%tl9213392159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9213192152%_))))
                          (if (gx#stx-pair? _%tl9213392159%_)
                              (let ((_%e9213492162%_
                                     (gx#syntax-e _%tl9213392159%_)))
                                (let ((_%hd9213592166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9213492162%_)))
                                      (_%tl9213692169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9213492162%_))))
                                  (if (gx#stx-pair? _%tl9213692169%_)
                                      (let ((_%e9213792172%_
                                             (gx#syntax-e _%tl9213692169%_)))
                                        (let ((_%hd9213892176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9213792172%_)))
                                              (_%tl9213992179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9213792172%_))))
                                          (if (gx#stx-null? _%tl9213992179%_)
                                              ((lambda (_%L92182%_ _%L92184%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L92184%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L92182%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9213892176%_
                                               _%hd9213592166%_)
                                              (_%g9212792145%_
                                               _%g9212892149%_))))
                                      (_%g9212792145%_ _%g9212892149%_))))
                              (_%g9212792145%_ _%g9212892149%_))))
                      (_%g9212792145%_ _%g9212892149%_)))))
          (_%g9212692201%_ _%$stx92123%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx92205%_)
        (let* ((_%g9220992223%_
                (lambda (_%g9221092219%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9221092219%_)))
               (_%g9220892264%_
                (lambda (_%g9221092227%_)
                  (if (gx#stx-pair? _%g9221092227%_)
                      (let ((_%e9221292230%_ (gx#syntax-e _%g9221092227%_)))
                        (let ((_%hd9221392234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9221292230%_)))
                              (_%tl9221492237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9221292230%_))))
                          (if (gx#stx-pair? _%tl9221492237%_)
                              (let ((_%e9221592240%_
                                     (gx#syntax-e _%tl9221492237%_)))
                                (let ((_%hd9221692244%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9221592240%_)))
                                      (_%tl9221792247%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9221592240%_))))
                                  (if (gx#stx-null? _%tl9221792247%_)
                                      ((lambda (_%L92250%_)
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
                                       (cons _%L92250%_
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
                                       _%hd9221692244%_)
                                      (_%g9220992223%_ _%g9221092227%_))))
                              (_%g9220992223%_ _%g9221092227%_))))
                      (_%g9220992223%_ _%g9221092227%_)))))
          (_%g9220892264%_ _%$stx92205%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx92268%_)
        (let* ((_%g9227292286%_
                (lambda (_%g9227392282%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9227392282%_)))
               (_%g9227192327%_
                (lambda (_%g9227392290%_)
                  (if (gx#stx-pair? _%g9227392290%_)
                      (let ((_%e9227592293%_ (gx#syntax-e _%g9227392290%_)))
                        (let ((_%hd9227692297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9227592293%_)))
                              (_%tl9227792300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9227592293%_))))
                          (if (gx#stx-pair? _%tl9227792300%_)
                              (let ((_%e9227892303%_
                                     (gx#syntax-e _%tl9227792300%_)))
                                (let ((_%hd9227992307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9227892303%_)))
                                      (_%tl9228092310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9227892303%_))))
                                  (if (gx#stx-null? _%tl9228092310%_)
                                      ((lambda (_%L92313%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L92313%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd9227992307%_)
                                      (_%g9227292286%_ _%g9227392290%_))))
                              (_%g9227292286%_ _%g9227392290%_))))
                      (_%g9227292286%_ _%g9227392290%_)))))
          (_%g9227192327%_ _%$stx92268%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx92331%_)
        (let* ((_%g9233592345%_
                (lambda (_%g9233692341%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9233692341%_)))
               (_%g9233492366%_
                (lambda (_%g9233692349%_)
                  (if (gx#stx-pair? _%g9233692349%_)
                      (let ((_%e9233792352%_ (gx#syntax-e _%g9233692349%_)))
                        (let ((_%hd9233892356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9233792352%_)))
                              (_%tl9233992359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9233792352%_))))
                          (if (gx#stx-null? _%tl9233992359%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g9233592345%_ _%g9233692349%_))))
                      (_%g9233592345%_ _%g9233692349%_)))))
          (_%g9233492366%_ _%$stx92331%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx92370%_)
        (let* ((_%g9237492392%_
                (lambda (_%g9237592388%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9237592388%_)))
               (_%g9237392447%_
                (lambda (_%g9237592396%_)
                  (if (gx#stx-pair? _%g9237592396%_)
                      (let ((_%e9237892399%_ (gx#syntax-e _%g9237592396%_)))
                        (let ((_%hd9237992403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9237892399%_)))
                              (_%tl9238092406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9237892399%_))))
                          (if (gx#stx-pair? _%tl9238092406%_)
                              (let ((_%e9238192409%_
                                     (gx#syntax-e _%tl9238092406%_)))
                                (let ((_%hd9238292413%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9238192409%_)))
                                      (_%tl9238392416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9238192409%_))))
                                  (if (gx#stx-pair? _%tl9238392416%_)
                                      (let ((_%e9238492419%_
                                             (gx#syntax-e _%tl9238392416%_)))
                                        (let ((_%hd9238592423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9238492419%_)))
                                              (_%tl9238692426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9238492419%_))))
                                          (if (gx#stx-null? _%tl9238692426%_)
                                              ((lambda (_%L92429%_ _%L92431%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L92431%_
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
                 (cons (cons _%L92429%_
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
                                               _%hd9238592423%_
                                               _%hd9238292413%_)
                                              (_%g9237492392%_
                                               _%g9237592396%_))))
                                      (_%g9237492392%_ _%g9237592396%_))))
                              (_%g9237492392%_ _%g9237592396%_))))
                      (_%g9237492392%_ _%g9237592396%_)))))
          (_%g9237392447%_ _%$stx92370%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx92451%_)
        (let* ((_%g9245592473%_
                (lambda (_%g9245692469%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9245692469%_)))
               (_%g9245492528%_
                (lambda (_%g9245692477%_)
                  (if (gx#stx-pair? _%g9245692477%_)
                      (let ((_%e9245992480%_ (gx#syntax-e _%g9245692477%_)))
                        (let ((_%hd9246092484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9245992480%_)))
                              (_%tl9246192487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9245992480%_))))
                          (if (gx#stx-pair? _%tl9246192487%_)
                              (let ((_%e9246292490%_
                                     (gx#syntax-e _%tl9246192487%_)))
                                (let ((_%hd9246392494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9246292490%_)))
                                      (_%tl9246492497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9246292490%_))))
                                  (if (gx#stx-pair? _%tl9246492497%_)
                                      (let ((_%e9246592500%_
                                             (gx#syntax-e _%tl9246492497%_)))
                                        (let ((_%hd9246692504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9246592500%_)))
                                              (_%tl9246792507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9246592500%_))))
                                          (if (gx#stx-null? _%tl9246792507%_)
                                              ((lambda (_%L92510%_ _%L92512%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L92512%_
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
                                               (cons (cons _%L92510%_
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
                                               _%hd9246692504%_
                                               _%hd9246392494%_)
                                              (_%g9245592473%_
                                               _%g9245692477%_))))
                                      (_%g9245592473%_ _%g9245692477%_))))
                              (_%g9245592473%_ _%g9245692477%_))))
                      (_%g9245592473%_ _%g9245692477%_)))))
          (_%g9245492528%_ _%$stx92451%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx92532%_)
        (let* ((_%g9253692554%_
                (lambda (_%g9253792550%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9253792550%_)))
               (_%g9253592609%_
                (lambda (_%g9253792558%_)
                  (if (gx#stx-pair? _%g9253792558%_)
                      (let ((_%e9254092561%_ (gx#syntax-e _%g9253792558%_)))
                        (let ((_%hd9254192565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9254092561%_)))
                              (_%tl9254292568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9254092561%_))))
                          (if (gx#stx-pair? _%tl9254292568%_)
                              (let ((_%e9254392571%_
                                     (gx#syntax-e _%tl9254292568%_)))
                                (let ((_%hd9254492575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9254392571%_)))
                                      (_%tl9254592578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9254392571%_))))
                                  (if (gx#stx-pair? _%tl9254592578%_)
                                      (let ((_%e9254692581%_
                                             (gx#syntax-e _%tl9254592578%_)))
                                        (let ((_%hd9254792585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9254692581%_)))
                                              (_%tl9254892588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9254692581%_))))
                                          (if (gx#stx-null? _%tl9254892588%_)
                                              ((lambda (_%L92591%_ _%L92593%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L92593%_
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
                                               (cons (cons _%L92591%_
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
                                               _%hd9254792585%_
                                               _%hd9254492575%_)
                                              (_%g9253692554%_
                                               _%g9253792558%_))))
                                      (_%g9253692554%_ _%g9253792558%_))))
                              (_%g9253692554%_ _%g9253792558%_))))
                      (_%g9253692554%_ _%g9253792558%_)))))
          (_%g9253592609%_ _%$stx92532%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx92613%_)
        (let* ((_%g9261792628%_
                (lambda (_%g9261892624%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9261892624%_)))
               (_%g9261692657%_
                (lambda (_%g9261892632%_)
                  (if (gx#stx-pair? _%g9261892632%_)
                      (let ((_%e9262092635%_ (gx#syntax-e _%g9261892632%_)))
                        (let ((_%hd9262192639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9262092635%_)))
                              (_%tl9262292642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9262092635%_))))
                          ((lambda (_%L92645%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L92645%_)))
                           _%tl9262292642%_)))
                      (_%g9261792628%_ _%g9261892632%_)))))
          (_%g9261692657%_ _%$stx92613%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx92661%_)
        (let* ((_%__stx9871498715%_ _%$stx92661%_)
               (_%g9267292886%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9871498715%_))))
          (let ((_%__kont9871798718%_
                 (lambda (_%L93739%_
                          _%L93741%_
                          _%L93742%_
                          _%L93743%_
                          _%L93744%_)
                   (cons _%L93744%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9377493777%_
                                                     _%g9377593780%_)
                                              (cons _%g9377493777%_
                                                    _%g9377593780%_))
                                            '()
                                            _%L93742%_)
                                           (cons _%L93743%_
                                                 (cons _%L93741%_
                                                       (cons _%L93739%_
                                                             '())))))))))
                (_%__kont9872198722%_
                 (lambda (_%L93592%_ _%L93594%_ _%L93595%_ _%L93596%_)
                   (cons _%L93596%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9361993622%_
                                                     _%g9362093625%_)
                                              (cons _%g9361993622%_
                                                    _%g9362093625%_))
                                            '()
                                            _%L93594%_)
                                           (cons _%L93595%_
                                                 (cons _%L93592%_
                                                       (cons _%L93592%_
                                                             '())))))))))
                (_%__kont9872598726%_
                 (lambda (_%L93495%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L93495%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9872798728%_
                 (lambda (_%L93418%_
                          _%L93420%_
                          _%L93421%_
                          _%L93422%_
                          _%L93423%_
                          _%L93424%_)
                   (cons _%L93424%_
                         (cons '2
                               (cons (cons (cons _%L93422%_
                                                 (cons _%L93421%_ '()))
                                           _%L93423%_)
                                     (cons _%L93420%_ _%L93418%_))))))
                (_%__kont9872998730%_
                 (lambda (_%L93299%_
                          _%L93301%_
                          _%L93302%_
                          _%L93303%_
                          _%L93304%_)
                   (cons _%L93304%_
                         (cons '2
                               (cons (cons (cons _%L93302%_
                                                 (cons _%L93302%_ '()))
                                           _%L93303%_)
                                     (cons _%L93301%_ _%L93299%_))))))
                (_%__kont9873198732%_
                 (lambda (_%L93216%_ _%L93218%_ _%L93219%_)
                   (cons _%L93219%_
                         (cons '3 (cons '() (cons _%L93218%_ _%L93216%_))))))
                (_%__kont9873398734%_
                 (lambda (_%L93137%_
                          _%L93139%_
                          _%L93140%_
                          _%L93141%_
                          _%L93142%_)
                   (cons _%L93142%_
                         (cons '3
                               (cons (cons _%L93140%_ _%L93141%_)
                                     (cons _%L93139%_ _%L93137%_))))))
                (_%__kont9873598736%_
                 (lambda (_%L93021%_
                          _%L93023%_
                          _%L93024%_
                          _%L93025%_
                          _%L93026%_
                          _%L93027%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L93024%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L93021%_ '())))
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
                                              (lambda (_%g9305993064%_
                                                       _%g9306093067%_)
                                                (cons _%g9305993064%_
                                                      _%g9306093067%_))
                                              '()
                                              _%L93026%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g9306193070%_
                                                       _%g9306293073%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g9306193070%_ '())))
              _%g9306293073%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L93025%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L93023%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9906599066%_
                    (lambda (_%e9284292893%_
                             _%hd9284392897%_
                             _%tl9284492900%_
                             _%e9284592903%_
                             _%hd9284692907%_
                             _%tl9284792910%_
                             _%e9284892913%_
                             _%e9284992917%_
                             _%hd9285092921%_
                             _%tl9285192924%_
                             _%__splice9873798738%_
                             _%target9285292927%_
                             _%tl9285492930%_)
                      (letrec ((_%loop9285592933%_
                                (lambda (_%hd9285392937%_
                                         _%exprs9285992940%_
                                         _%names9286092942%_)
                                  (if (gx#stx-pair? _%hd9285392937%_)
                                      (let ((_%e9285692945%_
                                             (gx#syntax-e _%hd9285392937%_)))
                                        (let ((_%lp-tl9285892952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9285692945%_)))
                                              (_%lp-hd9285792949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9285692945%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd9285792949%_)
                                              (let ((_%e9286392955%_
                                                     (gx#syntax-e
                                                      _%lp-hd9285792949%_)))
                                                (let ((_%tl9286592962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e9286392955%_)))
                                                      (_%hd9286492959%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e9286392955%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl9286592962%_)
                                                      (let ((_%e9286692965%_
                                                             (gx#syntax-e
                                                              _%tl9286592962%_)))
                                                        (let ((_%tl9286892972%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e9286692965%_)))
                      (_%hd9286792969%_
                       (let () (declare (not safe)) (##car _%e9286692965%_))))
                  (if (gx#stx-null? _%tl9286892972%_)
                      (_%loop9285592933%_
                       _%lp-tl9285892952%_
                       (cons _%hd9286792969%_ _%exprs9285992940%_)
                       (cons _%hd9286492959%_ _%names9286092942%_))
                      (let () (declare (not safe)) (_%g9267292886%_)))))
              (let () (declare (not safe)) (_%g9267292886%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g9267292886%_)))))
                                      (let ((_%names9286292978%_
                                             (reverse _%names9286092942%_))
                                            (_%exprs9286192975%_
                                             (reverse _%exprs9285992940%_)))
                                        (if (gx#stx-pair? _%tl9285192924%_)
                                            (let ((_%e9286992981%_
                                                   (gx#syntax-e
                                                    _%tl9285192924%_)))
                                              (let ((_%tl9287192988%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9286992981%_)))
                                                    (_%hd9287092985%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9286992981%_))))
                                                (if (gx#stx-null?
                                                     _%hd9287092985%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9287192988%_)
                                                        (let ((_%e9287292991%_
                                                               (gx#syntax-e
                                                                _%tl9287192988%_)))
                                                          (let ((_%tl9287492998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9287292991%_)))
                        (_%hd9287392995%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9287292991%_))))
                    (if (gx#stx-pair? _%tl9287492998%_)
                        (let ((_%e9287593001%_ (gx#syntax-e _%tl9287492998%_)))
                          (let ((_%tl9287793008%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9287593001%_)))
                                (_%hd9287693005%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9287593001%_))))
                            (if (gx#stx-pair? _%tl9287793008%_)
                                (let ((_%e9287893011%_
                                       (gx#syntax-e _%tl9287793008%_)))
                                  (let ((_%tl9288093018%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9287893011%_)))
                                        (_%hd9287993015%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9287893011%_))))
                                    (if (gx#stx-null? _%tl9288093018%_)
                                        (_%__kont9873598736%_
                                         _%hd9287993015%_
                                         _%hd9287693005%_
                                         _%hd9287392995%_
                                         _%exprs9286192975%_
                                         _%names9286292978%_
                                         _%hd9284392897%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9267292886%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9267292886%_)))))
                        (let () (declare (not safe)) (_%g9267292886%_)))))
                (let () (declare (not safe)) (_%g9267292886%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9267292886%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9267292886%_))))))))
                        (_%loop9285592933%_ _%target9285292927%_ '() '()))))
                   (_%__match9884398844%_
                    (lambda (_%e9271493518%_
                             _%hd9271593522%_
                             _%tl9271693525%_
                             _%e9271793528%_
                             _%hd9271893532%_
                             _%tl9271993535%_
                             _%e9272093538%_
                             _%e9272193542%_
                             _%hd9272293546%_
                             _%tl9272393549%_
                             _%__splice9872398724%_
                             _%target9272493552%_
                             _%tl9272693555%_
                             _%e9273393558%_
                             _%hd9273493562%_
                             _%tl9273593565%_)
                      (letrec ((_%loop9272793568%_
                                (lambda (_%hd9272593572%_ _%exprs9273193575%_)
                                  (if (gx#stx-pair? _%hd9272593572%_)
                                      (let ((_%e9272893578%_
                                             (gx#syntax-e _%hd9272593572%_)))
                                        (let ((_%lp-tl9273093585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9272893578%_)))
                                              (_%lp-hd9272993582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9272893578%_))))
                                          (_%loop9272793568%_
                                           _%lp-tl9273093585%_
                                           (cons _%lp-hd9272993582%_
                                                 _%exprs9273193575%_))))
                                      (let ((_%exprs9273293588%_
                                             (reverse _%exprs9273193575%_)))
                                        (_%__kont9872198722%_
                                         _%hd9273493562%_
                                         _%exprs9273293588%_
                                         _%hd9272293546%_
                                         _%hd9271593522%_))))))
                        (_%loop9272793568%_ _%target9272493552%_ '()))))
                   (_%__match9880398804%_
                    (lambda (_%e9267993635%_
                             _%hd9268093639%_
                             _%tl9268193642%_
                             _%e9268293645%_
                             _%hd9268393649%_
                             _%tl9268493652%_
                             _%e9268593655%_
                             _%e9268693659%_
                             _%hd9268793663%_
                             _%tl9268893666%_
                             _%__splice9871998720%_
                             _%target9268993669%_
                             _%tl9269193672%_
                             _%e9269893675%_
                             _%hd9269993679%_
                             _%tl9270093682%_
                             _%e9270193685%_
                             _%hd9270293689%_
                             _%tl9270393692%_
                             _%e9270493695%_
                             _%hd9270593699%_
                             _%tl9270693702%_
                             _%e9270793705%_
                             _%hd9270893709%_
                             _%tl9270993712%_)
                      (letrec ((_%loop9269293715%_
                                (lambda (_%hd9269093719%_ _%exprs9269693722%_)
                                  (if (gx#stx-pair? _%hd9269093719%_)
                                      (let ((_%e9269393725%_
                                             (gx#syntax-e _%hd9269093719%_)))
                                        (let ((_%lp-tl9269593732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9269393725%_)))
                                              (_%lp-hd9269493729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9269393725%_))))
                                          (_%loop9269293715%_
                                           _%lp-tl9269593732%_
                                           (cons _%lp-hd9269493729%_
                                                 _%exprs9269693722%_))))
                                      (let ((_%exprs9269793735%_
                                             (reverse _%exprs9269693722%_)))
                                        (_%__kont9871798718%_
                                         _%hd9270893709%_
                                         _%hd9270593699%_
                                         _%exprs9269793735%_
                                         _%hd9268793663%_
                                         _%hd9268093639%_))))))
                        (_%loop9269293715%_ _%target9268993669%_ '())))))
              (if (gx#stx-pair? _%__stx9871498715%_)
                  (let ((_%e9267993635%_ (gx#syntax-e _%__stx9871498715%_)))
                    (let ((_%tl9268193642%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e9267993635%_)))
                          (_%hd9268093639%_
                           (let ()
                             (declare (not safe))
                             (##car _%e9267993635%_))))
                      (if (gx#stx-pair? _%tl9268193642%_)
                          (let ((_%e9268293645%_
                                 (gx#syntax-e _%tl9268193642%_)))
                            (let ((_%tl9268493652%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9268293645%_)))
                                  (_%hd9268393649%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9268293645%_))))
                              (if (gx#stx-datum? _%hd9268393649%_)
                                  (let ((_%e9268593655%_
                                         (gx#stx-e _%hd9268393649%_)))
                                    (if (equal? _%e9268593655%_ '1)
                                        (if (gx#stx-pair? _%tl9268493652%_)
                                            (let ((_%e9268693659%_
                                                   (gx#syntax-e
                                                    _%tl9268493652%_)))
                                              (let ((_%tl9268893666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9268693659%_)))
                                                    (_%hd9268793663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9268693659%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl9268893666%_)
                                                    (if (let ((__tmp99162
                                                               (gx#stx-length
                                                                _%tl9268893666%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp99162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9871998720%_
                       (gx#syntax-split-splice->vector _%tl9268893666%_ '2)))
                  (let ((_%tl9269193672%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9871998720%_ '1)))
                        (_%target9268993669%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9871998720%_ '0))))
                    (if (gx#stx-pair? _%tl9269193672%_)
                        (let ((_%e9269893675%_ (gx#syntax-e _%tl9269193672%_)))
                          (let ((_%tl9270093682%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9269893675%_)))
                                (_%hd9269993679%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9269893675%_))))
                            (if (gx#stx-pair? _%hd9269993679%_)
                                (let ((_%e9270193685%_
                                       (gx#syntax-e _%hd9269993679%_)))
                                  (let ((_%tl9270393692%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9270193685%_)))
                                        (_%hd9270293689%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9270193685%_))))
                                    (if (gx#identifier? _%hd9270293689%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g99163_|
                                             _%hd9270293689%_)
                                            (if (gx#stx-pair? _%tl9270393692%_)
                                                (let ((_%e9270493695%_
                                                       (gx#syntax-e
                                                        _%tl9270393692%_)))
                                                  (let ((_%tl9270693702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9270493695%_)))
                                                        (_%hd9270593699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9270493695%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9270693702%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9270093682%_)
                                                            (let ((_%e9270793705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9270093682%_)))
                      (let ((_%tl9270993712%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9270793705%_)))
                            (_%hd9270893709%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9270793705%_))))
                        (if (gx#stx-null? _%tl9270993712%_)
                            (_%__match9880398804%_
                             _%e9267993635%_
                             _%hd9268093639%_
                             _%tl9268193642%_
                             _%e9268293645%_
                             _%hd9268393649%_
                             _%tl9268493652%_
                             _%e9268593655%_
                             _%e9268693659%_
                             _%hd9268793663%_
                             _%tl9268893666%_
                             _%__splice9871998720%_
                             _%target9268993669%_
                             _%tl9269193672%_
                             _%e9269893675%_
                             _%hd9269993679%_
                             _%tl9270093682%_
                             _%e9270193685%_
                             _%hd9270293689%_
                             _%tl9270393692%_
                             _%e9270493695%_
                             _%hd9270593699%_
                             _%tl9270693702%_
                             _%e9270793705%_
                             _%hd9270893709%_
                             _%tl9270993712%_)
                            (if (let ((__tmp99164
                                       (gx#stx-length _%tl9268893666%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp99164 '1))
                                (let ((_%__splice9872398724%_
                                       (gx#syntax-split-splice->vector
                                        _%tl9268893666%_
                                        '1)))
                                  (let ((_%tl9272693555%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9872398724%_
                                            '1)))
                                        (_%target9272493552%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9872398724%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl9272693555%_)
                                        (let ((_%e9273393558%_
                                               (gx#syntax-e _%tl9272693555%_)))
                                          (let ((_%tl9273593565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e9273393558%_)))
                                                (_%hd9273493562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e9273393558%_))))
                                            (if (gx#stx-null? _%tl9273593565%_)
                                                (_%__match9884398844%_
                                                 _%e9267993635%_
                                                 _%hd9268093639%_
                                                 _%tl9268193642%_
                                                 _%e9268293645%_
                                                 _%hd9268393649%_
                                                 _%tl9268493652%_
                                                 _%e9268593655%_
                                                 _%e9268693659%_
                                                 _%hd9268793663%_
                                                 _%tl9268893666%_
                                                 _%__splice9872398724%_
                                                 _%target9272493552%_
                                                 _%tl9272693555%_
                                                 _%e9273393558%_
                                                 _%hd9273493562%_
                                                 _%tl9273593565%_)
                                                (if (gx#stx-null?
                                                     _%tl9268893666%_)
                                                    (_%__kont9872598726%_
                                                     _%hd9268793663%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9267292886%_))))))
                                        (if (gx#stx-null? _%tl9268893666%_)
                                            (_%__kont9872598726%_
                                             _%hd9268793663%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9267292886%_))))))
                                (if (gx#stx-null? _%tl9268893666%_)
                                    (_%__kont9872598726%_ _%hd9268793663%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9267292886%_)))))))
                    (if (let ((__tmp99165 (gx#stx-length _%tl9268893666%_)))
                          (declare (not safe))
                          (##fx>= __tmp99165 '1))
                        (let ((_%__splice9872398724%_
                               (gx#syntax-split-splice->vector
                                _%tl9268893666%_
                                '1)))
                          (let ((_%tl9272693555%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9872398724%_ '1)))
                                (_%target9272493552%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9872398724%_ '0))))
                            (if (gx#stx-pair? _%tl9272693555%_)
                                (let ((_%e9273393558%_
                                       (gx#syntax-e _%tl9272693555%_)))
                                  (let ((_%tl9273593565%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9273393558%_)))
                                        (_%hd9273493562%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9273393558%_))))
                                    (if (gx#stx-null? _%tl9273593565%_)
                                        (_%__match9884398844%_
                                         _%e9267993635%_
                                         _%hd9268093639%_
                                         _%tl9268193642%_
                                         _%e9268293645%_
                                         _%hd9268393649%_
                                         _%tl9268493652%_
                                         _%e9268593655%_
                                         _%e9268693659%_
                                         _%hd9268793663%_
                                         _%tl9268893666%_
                                         _%__splice9872398724%_
                                         _%target9272493552%_
                                         _%tl9272693555%_
                                         _%e9273393558%_
                                         _%hd9273493562%_
                                         _%tl9273593565%_)
                                        (if (gx#stx-null? _%tl9268893666%_)
                                            (_%__kont9872598726%_
                                             _%hd9268793663%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9267292886%_))))))
                                (if (gx#stx-null? _%tl9268893666%_)
                                    (_%__kont9872598726%_ _%hd9268793663%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9267292886%_))))))
                        (if (gx#stx-null? _%tl9268893666%_)
                            (_%__kont9872598726%_ _%hd9268793663%_)
                            (let () (declare (not safe)) (_%g9267292886%_)))))
                (if (let ((__tmp99166 (gx#stx-length _%tl9268893666%_)))
                      (declare (not safe))
                      (##fx>= __tmp99166 '1))
                    (let ((_%__splice9872398724%_
                           (gx#syntax-split-splice->vector
                            _%tl9268893666%_
                            '1)))
                      (let ((_%tl9272693555%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9872398724%_ '1)))
                            (_%target9272493552%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9872398724%_ '0))))
                        (if (gx#stx-pair? _%tl9272693555%_)
                            (let ((_%e9273393558%_
                                   (gx#syntax-e _%tl9272693555%_)))
                              (let ((_%tl9273593565%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9273393558%_)))
                                    (_%hd9273493562%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9273393558%_))))
                                (if (gx#stx-null? _%tl9273593565%_)
                                    (_%__match9884398844%_
                                     _%e9267993635%_
                                     _%hd9268093639%_
                                     _%tl9268193642%_
                                     _%e9268293645%_
                                     _%hd9268393649%_
                                     _%tl9268493652%_
                                     _%e9268593655%_
                                     _%e9268693659%_
                                     _%hd9268793663%_
                                     _%tl9268893666%_
                                     _%__splice9872398724%_
                                     _%target9272493552%_
                                     _%tl9272693555%_
                                     _%e9273393558%_
                                     _%hd9273493562%_
                                     _%tl9273593565%_)
                                    (if (gx#stx-null? _%tl9268893666%_)
                                        (_%__kont9872598726%_ _%hd9268793663%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9267292886%_))))))
                            (if (gx#stx-null? _%tl9268893666%_)
                                (_%__kont9872598726%_ _%hd9268793663%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9267292886%_))))))
                    (if (gx#stx-null? _%tl9268893666%_)
                        (_%__kont9872598726%_ _%hd9268793663%_)
                        (let () (declare (not safe)) (_%g9267292886%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp99167
                                                           (gx#stx-length
                                                            _%tl9268893666%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp99167 '1))
                                                    (let ((_%__splice9872398724%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl9268893666%_
                                                            '1)))
                                                      (let ((_%tl9272693555%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9872398724%_ '1)))
                    (_%target9272493552%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9872398724%_ '0))))
                (if (gx#stx-pair? _%tl9272693555%_)
                    (let ((_%e9273393558%_ (gx#syntax-e _%tl9272693555%_)))
                      (let ((_%tl9273593565%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9273393558%_)))
                            (_%hd9273493562%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9273393558%_))))
                        (if (gx#stx-null? _%tl9273593565%_)
                            (_%__match9884398844%_
                             _%e9267993635%_
                             _%hd9268093639%_
                             _%tl9268193642%_
                             _%e9268293645%_
                             _%hd9268393649%_
                             _%tl9268493652%_
                             _%e9268593655%_
                             _%e9268693659%_
                             _%hd9268793663%_
                             _%tl9268893666%_
                             _%__splice9872398724%_
                             _%target9272493552%_
                             _%tl9272693555%_
                             _%e9273393558%_
                             _%hd9273493562%_
                             _%tl9273593565%_)
                            (if (gx#stx-null? _%tl9268893666%_)
                                (_%__kont9872598726%_ _%hd9268793663%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9267292886%_))))))
                    (if (gx#stx-null? _%tl9268893666%_)
                        (_%__kont9872598726%_ _%hd9268793663%_)
                        (let () (declare (not safe)) (_%g9267292886%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9268893666%_)
                                                        (_%__kont9872598726%_
                                                         _%hd9268793663%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9267292886%_)))))
                                            (if (let ((__tmp99168
                                                       (gx#stx-length
                                                        _%tl9268893666%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp99168 '1))
                                                (let ((_%__splice9872398724%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl9268893666%_
                                                        '1)))
                                                  (let ((_%tl9272693555%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9872398724%_
                                                            '1)))
                                                        (_%target9272493552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9872398724%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl9272693555%_)
                                                        (let ((_%e9273393558%_
                                                               (gx#syntax-e
                                                                _%tl9272693555%_)))
                                                          (let ((_%tl9273593565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9273393558%_)))
                        (_%hd9273493562%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9273393558%_))))
                    (if (gx#stx-null? _%tl9273593565%_)
                        (_%__match9884398844%_
                         _%e9267993635%_
                         _%hd9268093639%_
                         _%tl9268193642%_
                         _%e9268293645%_
                         _%hd9268393649%_
                         _%tl9268493652%_
                         _%e9268593655%_
                         _%e9268693659%_
                         _%hd9268793663%_
                         _%tl9268893666%_
                         _%__splice9872398724%_
                         _%target9272493552%_
                         _%tl9272693555%_
                         _%e9273393558%_
                         _%hd9273493562%_
                         _%tl9273593565%_)
                        (if (gx#stx-null? _%tl9268893666%_)
                            (_%__kont9872598726%_ _%hd9268793663%_)
                            (let () (declare (not safe)) (_%g9267292886%_))))))
                (if (gx#stx-null? _%tl9268893666%_)
                    (_%__kont9872598726%_ _%hd9268793663%_)
                    (let () (declare (not safe)) (_%g9267292886%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl9268893666%_)
                                                    (_%__kont9872598726%_
                                                     _%hd9268793663%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9267292886%_)))))
                                        (if (let ((__tmp99169
                                                   (gx#stx-length
                                                    _%tl9268893666%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp99169 '1))
                                            (let ((_%__splice9872398724%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl9268893666%_
                                                    '1)))
                                              (let ((_%tl9272693555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9872398724%_
                                                        '1)))
                                                    (_%target9272493552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9872398724%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl9272693555%_)
                                                    (let ((_%e9273393558%_
                                                           (gx#syntax-e
                                                            _%tl9272693555%_)))
                                                      (let ((_%tl9273593565%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9273393558%_)))
                    (_%hd9273493562%_
                     (let () (declare (not safe)) (##car _%e9273393558%_))))
                (if (gx#stx-null? _%tl9273593565%_)
                    (_%__match9884398844%_
                     _%e9267993635%_
                     _%hd9268093639%_
                     _%tl9268193642%_
                     _%e9268293645%_
                     _%hd9268393649%_
                     _%tl9268493652%_
                     _%e9268593655%_
                     _%e9268693659%_
                     _%hd9268793663%_
                     _%tl9268893666%_
                     _%__splice9872398724%_
                     _%target9272493552%_
                     _%tl9272693555%_
                     _%e9273393558%_
                     _%hd9273493562%_
                     _%tl9273593565%_)
                    (if (gx#stx-null? _%tl9268893666%_)
                        (_%__kont9872598726%_ _%hd9268793663%_)
                        (let () (declare (not safe)) (_%g9267292886%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9268893666%_)
                                                        (_%__kont9872598726%_
                                                         _%hd9268793663%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9267292886%_))))))
                                            (if (gx#stx-null? _%tl9268893666%_)
                                                (_%__kont9872598726%_
                                                 _%hd9268793663%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9267292886%_)))))))
                                (if (let ((__tmp99170
                                           (gx#stx-length _%tl9268893666%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp99170 '1))
                                    (let ((_%__splice9872398724%_
                                           (gx#syntax-split-splice->vector
                                            _%tl9268893666%_
                                            '1)))
                                      (let ((_%tl9272693555%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9872398724%_
                                                '1)))
                                            (_%target9272493552%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9872398724%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl9272693555%_)
                                            (let ((_%e9273393558%_
                                                   (gx#syntax-e
                                                    _%tl9272693555%_)))
                                              (let ((_%tl9273593565%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9273393558%_)))
                                                    (_%hd9273493562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9273393558%_))))
                                                (if (gx#stx-null?
                                                     _%tl9273593565%_)
                                                    (_%__match9884398844%_
                                                     _%e9267993635%_
                                                     _%hd9268093639%_
                                                     _%tl9268193642%_
                                                     _%e9268293645%_
                                                     _%hd9268393649%_
                                                     _%tl9268493652%_
                                                     _%e9268593655%_
                                                     _%e9268693659%_
                                                     _%hd9268793663%_
                                                     _%tl9268893666%_
                                                     _%__splice9872398724%_
                                                     _%target9272493552%_
                                                     _%tl9272693555%_
                                                     _%e9273393558%_
                                                     _%hd9273493562%_
                                                     _%tl9273593565%_)
                                                    (if (gx#stx-null?
                                                         _%tl9268893666%_)
                                                        (_%__kont9872598726%_
                                                         _%hd9268793663%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9267292886%_))))))
                                            (if (gx#stx-null? _%tl9268893666%_)
                                                (_%__kont9872598726%_
                                                 _%hd9268793663%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9267292886%_))))))
                                    (if (gx#stx-null? _%tl9268893666%_)
                                        (_%__kont9872598726%_ _%hd9268793663%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9267292886%_)))))))
                        (if (let ((__tmp99171
                                   (gx#stx-length _%tl9268893666%_)))
                              (declare (not safe))
                              (##fx>= __tmp99171 '1))
                            (let ((_%__splice9872398724%_
                                   (gx#syntax-split-splice->vector
                                    _%tl9268893666%_
                                    '1)))
                              (let ((_%tl9272693555%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9872398724%_
                                        '1)))
                                    (_%target9272493552%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9872398724%_
                                        '0))))
                                (if (gx#stx-pair? _%tl9272693555%_)
                                    (let ((_%e9273393558%_
                                           (gx#syntax-e _%tl9272693555%_)))
                                      (let ((_%tl9273593565%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9273393558%_)))
                                            (_%hd9273493562%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9273393558%_))))
                                        (if (gx#stx-null? _%tl9273593565%_)
                                            (_%__match9884398844%_
                                             _%e9267993635%_
                                             _%hd9268093639%_
                                             _%tl9268193642%_
                                             _%e9268293645%_
                                             _%hd9268393649%_
                                             _%tl9268493652%_
                                             _%e9268593655%_
                                             _%e9268693659%_
                                             _%hd9268793663%_
                                             _%tl9268893666%_
                                             _%__splice9872398724%_
                                             _%target9272493552%_
                                             _%tl9272693555%_
                                             _%e9273393558%_
                                             _%hd9273493562%_
                                             _%tl9273593565%_)
                                            (if (gx#stx-null? _%tl9268893666%_)
                                                (_%__kont9872598726%_
                                                 _%hd9268793663%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9267292886%_))))))
                                    (if (gx#stx-null? _%tl9268893666%_)
                                        (_%__kont9872598726%_ _%hd9268793663%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9267292886%_))))))
                            (if (gx#stx-null? _%tl9268893666%_)
                                (_%__kont9872598726%_ _%hd9268793663%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9267292886%_)))))))
                (if (let ((__tmp99172 (gx#stx-length _%tl9268893666%_)))
                      (declare (not safe))
                      (##fx>= __tmp99172 '1))
                    (let ((_%__splice9872398724%_
                           (gx#syntax-split-splice->vector
                            _%tl9268893666%_
                            '1)))
                      (let ((_%tl9272693555%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9872398724%_ '1)))
                            (_%target9272493552%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9872398724%_ '0))))
                        (if (gx#stx-pair? _%tl9272693555%_)
                            (let ((_%e9273393558%_
                                   (gx#syntax-e _%tl9272693555%_)))
                              (let ((_%tl9273593565%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9273393558%_)))
                                    (_%hd9273493562%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9273393558%_))))
                                (if (gx#stx-null? _%tl9273593565%_)
                                    (_%__match9884398844%_
                                     _%e9267993635%_
                                     _%hd9268093639%_
                                     _%tl9268193642%_
                                     _%e9268293645%_
                                     _%hd9268393649%_
                                     _%tl9268493652%_
                                     _%e9268593655%_
                                     _%e9268693659%_
                                     _%hd9268793663%_
                                     _%tl9268893666%_
                                     _%__splice9872398724%_
                                     _%target9272493552%_
                                     _%tl9272693555%_
                                     _%e9273393558%_
                                     _%hd9273493562%_
                                     _%tl9273593565%_)
                                    (if (gx#stx-null? _%tl9268893666%_)
                                        (_%__kont9872598726%_ _%hd9268793663%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9267292886%_))))))
                            (if (gx#stx-null? _%tl9268893666%_)
                                (_%__kont9872598726%_ _%hd9268793663%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9267292886%_))))))
                    (if (gx#stx-null? _%tl9268893666%_)
                        (_%__kont9872598726%_ _%hd9268793663%_)
                        (let () (declare (not safe)) (_%g9267292886%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9268893666%_)
                                                        (_%__kont9872598726%_
                                                         _%hd9268793663%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9267292886%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9267292886%_)))
                                        (if (equal? _%e9268593655%_ '2)
                                            (if (gx#stx-pair? _%tl9268493652%_)
                                                (let ((_%e9276093358%_
                                                       (gx#syntax-e
                                                        _%tl9268493652%_)))
                                                  (let ((_%tl9276293365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9276093358%_)))
                                                        (_%hd9276193362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9276093358%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl9276293365%_)
                                                        (let ((_%e9276393368%_
                                                               (gx#syntax-e
                                                                _%tl9276293365%_)))
                                                          (let ((_%tl9276593375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9276393368%_)))
                        (_%hd9276493372%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9276393368%_))))
                    (if (gx#stx-pair? _%hd9276493372%_)
                        (let ((_%e9276693378%_ (gx#syntax-e _%hd9276493372%_)))
                          (let ((_%tl9276893385%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9276693378%_)))
                                (_%hd9276793382%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9276693378%_))))
                            (if (gx#stx-pair? _%hd9276793382%_)
                                (let ((_%e9276993388%_
                                       (gx#syntax-e _%hd9276793382%_)))
                                  (let ((_%tl9277193395%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9276993388%_)))
                                        (_%hd9277093392%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9276993388%_))))
                                    (if (gx#identifier? _%hd9277093392%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g99173_|
                                             _%hd9277093392%_)
                                            (if (gx#stx-pair? _%tl9277193395%_)
                                                (let ((_%e9277293398%_
                                                       (gx#syntax-e
                                                        _%tl9277193395%_)))
                                                  (let ((_%tl9277493405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9277293398%_)))
                                                        (_%hd9277393402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9277293398%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9277493405%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9276893385%_)
                                                            (let ((_%e9277593408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9276893385%_)))
                      (let ((_%tl9277793415%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9277593408%_)))
                            (_%hd9277693412%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9277593408%_))))
                        (_%__kont9872798728%_
                         _%tl9276593375%_
                         _%tl9277793415%_
                         _%hd9277693412%_
                         _%hd9277393402%_
                         _%hd9276193362%_
                         _%hd9268093639%_)))
                    (_%__kont9872998730%_
                     _%tl9276593375%_
                     _%tl9276893385%_
                     _%hd9276793382%_
                     _%hd9276193362%_
                     _%hd9268093639%_))
                (_%__kont9872998730%_
                 _%tl9276593375%_
                 _%tl9276893385%_
                 _%hd9276793382%_
                 _%hd9276193362%_
                 _%hd9268093639%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9872998730%_
                                                 _%tl9276593375%_
                                                 _%tl9276893385%_
                                                 _%hd9276793382%_
                                                 _%hd9276193362%_
                                                 _%hd9268093639%_))
                                            (_%__kont9872998730%_
                                             _%tl9276593375%_
                                             _%tl9276893385%_
                                             _%hd9276793382%_
                                             _%hd9276193362%_
                                             _%hd9268093639%_))
                                        (_%__kont9872998730%_
                                         _%tl9276593375%_
                                         _%tl9276893385%_
                                         _%hd9276793382%_
                                         _%hd9276193362%_
                                         _%hd9268093639%_))))
                                (_%__kont9872998730%_
                                 _%tl9276593375%_
                                 _%tl9276893385%_
                                 _%hd9276793382%_
                                 _%hd9276193362%_
                                 _%hd9268093639%_))))
                        (if (gx#stx-null? _%hd9276493372%_)
                            (_%__kont9873198732%_
                             _%tl9276593375%_
                             _%hd9276193362%_
                             _%hd9268093639%_)
                            (let () (declare (not safe)) (_%g9267292886%_))))))
                (let () (declare (not safe)) (_%g9267292886%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9267292886%_)))
                                            (if (equal? _%e9268593655%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl9268493652%_)
                                                    (let ((_%e9282793107%_
                                                           (gx#syntax-e
                                                            _%tl9268493652%_)))
                                                      (let ((_%tl9282993114%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9282793107%_)))
                    (_%hd9282893111%_
                     (let () (declare (not safe)) (##car _%e9282793107%_))))
                (if (gx#stx-pair? _%tl9282993114%_)
                    (let ((_%e9283093117%_ (gx#syntax-e _%tl9282993114%_)))
                      (let ((_%tl9283293124%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9283093117%_)))
                            (_%hd9283193121%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9283093117%_))))
                        (if (gx#stx-pair? _%hd9283193121%_)
                            (let ((_%e9283393127%_
                                   (gx#syntax-e _%hd9283193121%_)))
                              (let ((_%tl9283593134%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9283393127%_)))
                                    (_%hd9283493131%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9283393127%_))))
                                (_%__kont9873398734%_
                                 _%tl9283293124%_
                                 _%tl9283593134%_
                                 _%hd9283493131%_
                                 _%hd9282893111%_
                                 _%hd9268093639%_)))
                            (if (gx#stx-pair/null? _%hd9282893111%_)
                                (let ((_%__splice9873798738%_
                                       (gx#syntax-split-splice->vector
                                        _%hd9282893111%_
                                        '0)))
                                  (let ((_%tl9285492930%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9873798738%_
                                            '1)))
                                        (_%target9285292927%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9873798738%_
                                            '0))))
                                    (if (gx#stx-null? _%tl9285492930%_)
                                        (_%__match9906599066%_
                                         _%e9267993635%_
                                         _%hd9268093639%_
                                         _%tl9268193642%_
                                         _%e9268293645%_
                                         _%hd9268393649%_
                                         _%tl9268493652%_
                                         _%e9268593655%_
                                         _%e9282793107%_
                                         _%hd9282893111%_
                                         _%tl9282993114%_
                                         _%__splice9873798738%_
                                         _%target9285292927%_
                                         _%tl9285492930%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9267292886%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9267292886%_))))))
                    (if (gx#stx-pair/null? _%hd9282893111%_)
                        (let ((_%__splice9873798738%_
                               (gx#syntax-split-splice->vector
                                _%hd9282893111%_
                                '0)))
                          (let ((_%tl9285492930%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9873798738%_ '1)))
                                (_%target9285292927%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9873798738%_ '0))))
                            (if (gx#stx-null? _%tl9285492930%_)
                                (_%__match9906599066%_
                                 _%e9267993635%_
                                 _%hd9268093639%_
                                 _%tl9268193642%_
                                 _%e9268293645%_
                                 _%hd9268393649%_
                                 _%tl9268493652%_
                                 _%e9268593655%_
                                 _%e9282793107%_
                                 _%hd9282893111%_
                                 _%tl9282993114%_
                                 _%__splice9873798738%_
                                 _%target9285292927%_
                                 _%tl9285492930%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9267292886%_)))))
                        (let () (declare (not safe)) (_%g9267292886%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9267292886%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9267292886%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g9267292886%_)))))
                          (let () (declare (not safe)) (_%g9267292886%_)))))
                  (let () (declare (not safe)) (_%g9267292886%_))))))))))
