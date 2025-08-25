(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98059_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g98069_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#declare-inline|
      (lambda (_%$stx91019%_)
        (let* ((_%g9102391041%_
                (lambda (_%g9102491037%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9102491037%_)))
               (_%g9102291097%_
                (lambda (_%g9102491045%_)
                  (if (gx#stx-pair? _%g9102491045%_)
                      (let ((_%e9102791048%_ (gx#syntax-e _%g9102491045%_)))
                        (let ((_%hd9102891052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9102791048%_)))
                              (_%tl9102991055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9102791048%_))))
                          (if (gx#stx-pair? _%tl9102991055%_)
                              (let ((_%e9103091058%_
                                     (gx#syntax-e _%tl9102991055%_)))
                                (let ((_%hd9103191062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9103091058%_)))
                                      (_%tl9103291065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9103091058%_))))
                                  (if (gx#stx-pair? _%tl9103291065%_)
                                      (let ((_%e9103391068%_
                                             (gx#syntax-e _%tl9103291065%_)))
                                        (let ((_%hd9103491072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9103391068%_)))
                                              (_%tl9103591075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9103391068%_))))
                                          (if (gx#stx-null? _%tl9103591075%_)
                                              ((lambda (_%L91078%_ _%L91080%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@inline)
                           (cons _%L91080%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%L91078%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd9103491072%_
                                               _%hd9103191062%_)
                                              (_%g9102391041%_
                                               _%g9102491045%_))))
                                      (_%g9102391041%_ _%g9102491045%_))))
                              (_%g9102391041%_ _%g9102491045%_))))
                      (_%g9102391041%_ _%g9102491045%_)))))
          (_%g9102291097%_ _%$stx91019%_))))
    (define |[:0:]#__lock-inline!|
      (lambda (_%$stx91101%_)
        (let* ((_%g9110591119%_
                (lambda (_%g9110691115%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9110691115%_)))
               (_%g9110491160%_
                (lambda (_%g9110691123%_)
                  (if (gx#stx-pair? _%g9110691123%_)
                      (let ((_%e9110891126%_ (gx#syntax-e _%g9110691123%_)))
                        (let ((_%hd9110991130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9110891126%_)))
                              (_%tl9111091133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9110891126%_))))
                          (if (gx#stx-pair? _%tl9111091133%_)
                              (let ((_%e9111191136%_
                                     (gx#syntax-e _%tl9111091133%_)))
                                (let ((_%hd9111291140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9111191136%_)))
                                      (_%tl9111391143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9111191136%_))))
                                  (if (gx#stx-null? _%tl9111391143%_)
                                      ((lambda (_%L91146%_)
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
                                       (cons _%L91146%_
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
                                       _%hd9111291140%_)
                                      (_%g9110591119%_ _%g9110691123%_))))
                              (_%g9110591119%_ _%g9110691123%_))))
                      (_%g9110591119%_ _%g9110691123%_)))))
          (_%g9110491160%_ _%$stx91101%_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_%$stx91164%_)
        (let* ((_%g9116891182%_
                (lambda (_%g9116991178%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9116991178%_)))
               (_%g9116791223%_
                (lambda (_%g9116991186%_)
                  (if (gx#stx-pair? _%g9116991186%_)
                      (let ((_%e9117191189%_ (gx#syntax-e _%g9116991186%_)))
                        (let ((_%hd9117291193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9117191189%_)))
                              (_%tl9117391196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9117191189%_))))
                          (if (gx#stx-pair? _%tl9117391196%_)
                              (let ((_%e9117491199%_
                                     (gx#syntax-e _%tl9117391196%_)))
                                (let ((_%hd9117591203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9117491199%_)))
                                      (_%tl9117691206%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9117491199%_))))
                                  (if (gx#stx-null? _%tl9117691206%_)
                                      ((lambda (_%L91209%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '##vector-cas!)
                                               (cons _%L91209%_
                                                     (cons '0
                                                           (cons '0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '1 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd9117591203%_)
                                      (_%g9116891182%_ _%g9116991186%_))))
                              (_%g9116891182%_ _%g9116991186%_))))
                      (_%g9116891182%_ _%g9116991186%_)))))
          (_%g9116791223%_ _%$stx91164%_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_%$stx91227%_)
        (let* ((_%g9123191241%_
                (lambda (_%g9123291237%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9123291237%_)))
               (_%g9123091262%_
                (lambda (_%g9123291245%_)
                  (if (gx#stx-pair? _%g9123291245%_)
                      (let ((_%e9123391248%_ (gx#syntax-e _%g9123291245%_)))
                        (let ((_%hd9123491252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9123391248%_)))
                              (_%tl9123591255%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9123391248%_))))
                          (if (gx#stx-null? _%tl9123591255%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'vector)
                                       (cons '0 '()))))
                              (_%g9123191241%_ _%g9123291245%_))))
                      (_%g9123191241%_ _%g9123291245%_)))))
          (_%g9123091262%_ _%$stx91227%_))))
    (define |[:0:]#defaget|
      (lambda (_%$stx91266%_)
        (let* ((_%g9127091288%_
                (lambda (_%g9127191284%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9127191284%_)))
               (_%g9126991343%_
                (lambda (_%g9127191292%_)
                  (if (gx#stx-pair? _%g9127191292%_)
                      (let ((_%e9127491295%_ (gx#syntax-e _%g9127191292%_)))
                        (let ((_%hd9127591299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9127491295%_)))
                              (_%tl9127691302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9127491295%_))))
                          (if (gx#stx-pair? _%tl9127691302%_)
                              (let ((_%e9127791305%_
                                     (gx#syntax-e _%tl9127691302%_)))
                                (let ((_%hd9127891309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9127791305%_)))
                                      (_%tl9127991312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9127791305%_))))
                                  (if (gx#stx-pair? _%tl9127991312%_)
                                      (let ((_%e9128091315%_
                                             (gx#syntax-e _%tl9127991312%_)))
                                        (let ((_%hd9128191319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9128091315%_)))
                                              (_%tl9128291322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9128091315%_))))
                                          (if (gx#stx-null? _%tl9128291322%_)
                                              ((lambda (_%L91325%_ _%L91327%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L91327%_
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
                 (cons (cons _%L91325%_
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
                                               _%hd9128191319%_
                                               _%hd9127891309%_)
                                              (_%g9127091288%_
                                               _%g9127191292%_))))
                                      (_%g9127091288%_ _%g9127191292%_))))
                              (_%g9127091288%_ _%g9127191292%_))))
                      (_%g9127091288%_ _%g9127191292%_)))))
          (_%g9126991343%_ _%$stx91266%_))))
    (define |[:0:]#defpget|
      (lambda (_%$stx91347%_)
        (let* ((_%g9135191369%_
                (lambda (_%g9135291365%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9135291365%_)))
               (_%g9135091424%_
                (lambda (_%g9135291373%_)
                  (if (gx#stx-pair? _%g9135291373%_)
                      (let ((_%e9135591376%_ (gx#syntax-e _%g9135291373%_)))
                        (let ((_%hd9135691380%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9135591376%_)))
                              (_%tl9135791383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9135591376%_))))
                          (if (gx#stx-pair? _%tl9135791383%_)
                              (let ((_%e9135891386%_
                                     (gx#syntax-e _%tl9135791383%_)))
                                (let ((_%hd9135991390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9135891386%_)))
                                      (_%tl9136091393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9135891386%_))))
                                  (if (gx#stx-pair? _%tl9136091393%_)
                                      (let ((_%e9136191396%_
                                             (gx#syntax-e _%tl9136091393%_)))
                                        (let ((_%hd9136291400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9136191396%_)))
                                              (_%tl9136391403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9136191396%_))))
                                          (if (gx#stx-null? _%tl9136391403%_)
                                              ((lambda (_%L91406%_ _%L91408%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L91408%_
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
                                               (cons (cons _%L91406%_
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
                                               _%hd9136291400%_
                                               _%hd9135991390%_)
                                              (_%g9135191369%_
                                               _%g9135291373%_))))
                                      (_%g9135191369%_ _%g9135291373%_))))
                              (_%g9135191369%_ _%g9135291373%_))))
                      (_%g9135191369%_ _%g9135291373%_)))))
          (_%g9135091424%_ _%$stx91347%_))))
    (define |[:0:]#defremove1|
      (lambda (_%$stx91428%_)
        (let* ((_%g9143291450%_
                (lambda (_%g9143391446%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9143391446%_)))
               (_%g9143191505%_
                (lambda (_%g9143391454%_)
                  (if (gx#stx-pair? _%g9143391454%_)
                      (let ((_%e9143691457%_ (gx#syntax-e _%g9143391454%_)))
                        (let ((_%hd9143791461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9143691457%_)))
                              (_%tl9143891464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9143691457%_))))
                          (if (gx#stx-pair? _%tl9143891464%_)
                              (let ((_%e9143991467%_
                                     (gx#syntax-e _%tl9143891464%_)))
                                (let ((_%hd9144091471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9143991467%_)))
                                      (_%tl9144191474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9143991467%_))))
                                  (if (gx#stx-pair? _%tl9144191474%_)
                                      (let ((_%e9144291477%_
                                             (gx#syntax-e _%tl9144191474%_)))
                                        (let ((_%hd9144391481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9144291477%_)))
                                              (_%tl9144491484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9144291477%_))))
                                          (if (gx#stx-null? _%tl9144491484%_)
                                              ((lambda (_%L91487%_ _%L91489%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons (cons _%L91489%_
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
                                               (cons (cons _%L91487%_
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
                                               _%hd9144391481%_
                                               _%hd9144091471%_)
                                              (_%g9143291450%_
                                               _%g9143391454%_))))
                                      (_%g9143291450%_ _%g9143391454%_))))
                              (_%g9143291450%_ _%g9143391454%_))))
                      (_%g9143291450%_ _%g9143391454%_)))))
          (_%g9143191505%_ _%$stx91428%_))))
    (define |[:0:]#DBG|
      (lambda (_%$stx91509%_)
        (let* ((_%g9151391524%_
                (lambda (_%g9151491520%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g9151491520%_)))
               (_%g9151291553%_
                (lambda (_%g9151491528%_)
                  (if (gx#stx-pair? _%g9151491528%_)
                      (let ((_%e9151691531%_ (gx#syntax-e _%g9151491528%_)))
                        (let ((_%hd9151791535%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9151691531%_)))
                              (_%tl9151891538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9151691531%_))))
                          ((lambda (_%L91541%_)
                             (cons (gx#datum->syntax '#f 'DBG/1)
                                   (cons '1 _%L91541%_)))
                           _%tl9151891538%_)))
                      (_%g9151391524%_ _%g9151491528%_)))))
          (_%g9151291553%_ _%$stx91509%_))))
    (define |[:0:]#DBG/1|
      (lambda (_%$stx91557%_)
        (let* ((_%__stx9761097611%_ _%$stx91557%_)
               (_%g9156891782%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9761097611%_))))
          (let ((_%__kont9761397614%_
                 (lambda (_%L92635%_
                          _%L92637%_
                          _%L92638%_
                          _%L92639%_
                          _%L92640%_)
                   (cons _%L92640%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9267092673%_
                                                     _%g9267192676%_)
                                              (cons _%g9267092673%_
                                                    _%g9267192676%_))
                                            '()
                                            _%L92638%_)
                                           (cons _%L92639%_
                                                 (cons _%L92637%_
                                                       (cons _%L92635%_
                                                             '())))))))))
                (_%__kont9761797618%_
                 (lambda (_%L92488%_ _%L92490%_ _%L92491%_ _%L92492%_)
                   (cons _%L92492%_
                         (cons '2
                               (cons '()
                                     (cons (__foldr1
                                            (lambda (_%g9251592518%_
                                                     _%g9251692521%_)
                                              (cons _%g9251592518%_
                                                    _%g9251692521%_))
                                            '()
                                            _%L92490%_)
                                           (cons _%L92491%_
                                                 (cons _%L92488%_
                                                       (cons _%L92488%_
                                                             '())))))))))
                (_%__kont9762197622%_
                 (lambda (_%L92391%_)
                   (cons (gx#datum->syntax '#f 'DBG-helper)
                         (cons _%L92391%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons '() '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons '#f (cons '#f '()))))))))
                (_%__kont9762397624%_
                 (lambda (_%L92314%_
                          _%L92316%_
                          _%L92317%_
                          _%L92318%_
                          _%L92319%_
                          _%L92320%_)
                   (cons _%L92320%_
                         (cons '2
                               (cons (cons (cons _%L92318%_
                                                 (cons _%L92317%_ '()))
                                           _%L92319%_)
                                     (cons _%L92316%_ _%L92314%_))))))
                (_%__kont9762597626%_
                 (lambda (_%L92195%_
                          _%L92197%_
                          _%L92198%_
                          _%L92199%_
                          _%L92200%_)
                   (cons _%L92200%_
                         (cons '2
                               (cons (cons (cons _%L92198%_
                                                 (cons _%L92198%_ '()))
                                           _%L92199%_)
                                     (cons _%L92197%_ _%L92195%_))))))
                (_%__kont9762797628%_
                 (lambda (_%L92112%_ _%L92114%_ _%L92115%_)
                   (cons _%L92115%_
                         (cons '3 (cons '() (cons _%L92114%_ _%L92112%_))))))
                (_%__kont9762997630%_
                 (lambda (_%L92033%_
                          _%L92035%_
                          _%L92036%_
                          _%L92037%_
                          _%L92038%_)
                   (cons _%L92038%_
                         (cons '3
                               (cons (cons _%L92036%_ _%L92037%_)
                                     (cons _%L92035%_ _%L92033%_))))))
                (_%__kont9763197632%_
                 (lambda (_%L91917%_
                          _%L91919%_
                          _%L91920%_
                          _%L91921%_
                          _%L91922%_
                          _%L91923%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'tagval)
                                           (cons _%L91920%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'thunk)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L91917%_ '())))
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
                                              (lambda (_%g9195591960%_
                                                       _%g9195691963%_)
                                                (cons _%g9195591960%_
                                                      _%g9195691963%_))
                                              '()
                                              _%L91922%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'list)
                                             (__foldr1
                                              (lambda (_%g9195791966%_
                                                       _%g9195891969%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g9195791966%_ '())))
              _%g9195891969%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L91921%_))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L91919%_ '()))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'thunk)
                                                   '()))))))
               (cons (cons (gx#datum->syntax '#f 'thunk) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9796197962%_
                    (lambda (_%e9173891789%_
                             _%hd9173991793%_
                             _%tl9174091796%_
                             _%e9174191799%_
                             _%hd9174291803%_
                             _%tl9174391806%_
                             _%e9174491809%_
                             _%e9174591813%_
                             _%hd9174691817%_
                             _%tl9174791820%_
                             _%__splice9763397634%_
                             _%target9174891823%_
                             _%tl9175091826%_)
                      (letrec ((_%loop9175191829%_
                                (lambda (_%hd9174991833%_
                                         _%exprs9175591836%_
                                         _%names9175691838%_)
                                  (if (gx#stx-pair? _%hd9174991833%_)
                                      (let ((_%e9175291841%_
                                             (gx#syntax-e _%hd9174991833%_)))
                                        (let ((_%lp-tl9175491848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9175291841%_)))
                                              (_%lp-hd9175391845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9175291841%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd9175391845%_)
                                              (let ((_%e9175991851%_
                                                     (gx#syntax-e
                                                      _%lp-hd9175391845%_)))
                                                (let ((_%tl9176191858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e9175991851%_)))
                                                      (_%hd9176091855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e9175991851%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl9176191858%_)
                                                      (let ((_%e9176291861%_
                                                             (gx#syntax-e
                                                              _%tl9176191858%_)))
                                                        (let ((_%tl9176491868%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e9176291861%_)))
                      (_%hd9176391865%_
                       (let () (declare (not safe)) (##car _%e9176291861%_))))
                  (if (gx#stx-null? _%tl9176491868%_)
                      (_%loop9175191829%_
                       _%lp-tl9175491848%_
                       (cons _%hd9176391865%_ _%exprs9175591836%_)
                       (cons _%hd9176091855%_ _%names9175691838%_))
                      (let () (declare (not safe)) (_%g9156891782%_)))))
              (let () (declare (not safe)) (_%g9156891782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g9156891782%_)))))
                                      (let ((_%names9175891874%_
                                             (reverse _%names9175691838%_))
                                            (_%exprs9175791871%_
                                             (reverse _%exprs9175591836%_)))
                                        (if (gx#stx-pair? _%tl9174791820%_)
                                            (let ((_%e9176591877%_
                                                   (gx#syntax-e
                                                    _%tl9174791820%_)))
                                              (let ((_%tl9176791884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9176591877%_)))
                                                    (_%hd9176691881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9176591877%_))))
                                                (if (gx#stx-null?
                                                     _%hd9176691881%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9176791884%_)
                                                        (let ((_%e9176891887%_
                                                               (gx#syntax-e
                                                                _%tl9176791884%_)))
                                                          (let ((_%tl9177091894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9176891887%_)))
                        (_%hd9176991891%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9176891887%_))))
                    (if (gx#stx-pair? _%tl9177091894%_)
                        (let ((_%e9177191897%_ (gx#syntax-e _%tl9177091894%_)))
                          (let ((_%tl9177391904%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9177191897%_)))
                                (_%hd9177291901%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9177191897%_))))
                            (if (gx#stx-pair? _%tl9177391904%_)
                                (let ((_%e9177491907%_
                                       (gx#syntax-e _%tl9177391904%_)))
                                  (let ((_%tl9177691914%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9177491907%_)))
                                        (_%hd9177591911%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9177491907%_))))
                                    (if (gx#stx-null? _%tl9177691914%_)
                                        (_%__kont9763197632%_
                                         _%hd9177591911%_
                                         _%hd9177291901%_
                                         _%hd9176991891%_
                                         _%exprs9175791871%_
                                         _%names9175891874%_
                                         _%hd9173991793%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9156891782%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9156891782%_)))))
                        (let () (declare (not safe)) (_%g9156891782%_)))))
                (let () (declare (not safe)) (_%g9156891782%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9156891782%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9156891782%_))))))))
                        (_%loop9175191829%_ _%target9174891823%_ '() '()))))
                   (_%__match9773997740%_
                    (lambda (_%e9161092414%_
                             _%hd9161192418%_
                             _%tl9161292421%_
                             _%e9161392424%_
                             _%hd9161492428%_
                             _%tl9161592431%_
                             _%e9161692434%_
                             _%e9161792438%_
                             _%hd9161892442%_
                             _%tl9161992445%_
                             _%__splice9761997620%_
                             _%target9162092448%_
                             _%tl9162292451%_
                             _%e9162992454%_
                             _%hd9163092458%_
                             _%tl9163192461%_)
                      (letrec ((_%loop9162392464%_
                                (lambda (_%hd9162192468%_ _%exprs9162792471%_)
                                  (if (gx#stx-pair? _%hd9162192468%_)
                                      (let ((_%e9162492474%_
                                             (gx#syntax-e _%hd9162192468%_)))
                                        (let ((_%lp-tl9162692481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9162492474%_)))
                                              (_%lp-hd9162592478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9162492474%_))))
                                          (_%loop9162392464%_
                                           _%lp-tl9162692481%_
                                           (cons _%lp-hd9162592478%_
                                                 _%exprs9162792471%_))))
                                      (let ((_%exprs9162892484%_
                                             (reverse _%exprs9162792471%_)))
                                        (_%__kont9761797618%_
                                         _%hd9163092458%_
                                         _%exprs9162892484%_
                                         _%hd9161892442%_
                                         _%hd9161192418%_))))))
                        (_%loop9162392464%_ _%target9162092448%_ '()))))
                   (_%__match9769997700%_
                    (lambda (_%e9157592531%_
                             _%hd9157692535%_
                             _%tl9157792538%_
                             _%e9157892541%_
                             _%hd9157992545%_
                             _%tl9158092548%_
                             _%e9158192551%_
                             _%e9158292555%_
                             _%hd9158392559%_
                             _%tl9158492562%_
                             _%__splice9761597616%_
                             _%target9158592565%_
                             _%tl9158792568%_
                             _%e9159492571%_
                             _%hd9159592575%_
                             _%tl9159692578%_
                             _%e9159792581%_
                             _%hd9159892585%_
                             _%tl9159992588%_
                             _%e9160092591%_
                             _%hd9160192595%_
                             _%tl9160292598%_
                             _%e9160392601%_
                             _%hd9160492605%_
                             _%tl9160592608%_)
                      (letrec ((_%loop9158892611%_
                                (lambda (_%hd9158692615%_ _%exprs9159292618%_)
                                  (if (gx#stx-pair? _%hd9158692615%_)
                                      (let ((_%e9158992621%_
                                             (gx#syntax-e _%hd9158692615%_)))
                                        (let ((_%lp-tl9159192628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9158992621%_)))
                                              (_%lp-hd9159092625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9158992621%_))))
                                          (_%loop9158892611%_
                                           _%lp-tl9159192628%_
                                           (cons _%lp-hd9159092625%_
                                                 _%exprs9159292618%_))))
                                      (let ((_%exprs9159392631%_
                                             (reverse _%exprs9159292618%_)))
                                        (_%__kont9761397614%_
                                         _%hd9160492605%_
                                         _%hd9160192595%_
                                         _%exprs9159392631%_
                                         _%hd9158392559%_
                                         _%hd9157692535%_))))))
                        (_%loop9158892611%_ _%target9158592565%_ '())))))
              (if (gx#stx-pair? _%__stx9761097611%_)
                  (let ((_%e9157592531%_ (gx#syntax-e _%__stx9761097611%_)))
                    (let ((_%tl9157792538%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e9157592531%_)))
                          (_%hd9157692535%_
                           (let ()
                             (declare (not safe))
                             (##car _%e9157592531%_))))
                      (if (gx#stx-pair? _%tl9157792538%_)
                          (let ((_%e9157892541%_
                                 (gx#syntax-e _%tl9157792538%_)))
                            (let ((_%tl9158092548%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9157892541%_)))
                                  (_%hd9157992545%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9157892541%_))))
                              (if (gx#stx-datum? _%hd9157992545%_)
                                  (let ((_%e9158192551%_
                                         (gx#stx-e _%hd9157992545%_)))
                                    (if (equal? _%e9158192551%_ '1)
                                        (if (gx#stx-pair? _%tl9158092548%_)
                                            (let ((_%e9158292555%_
                                                   (gx#syntax-e
                                                    _%tl9158092548%_)))
                                              (let ((_%tl9158492562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9158292555%_)))
                                                    (_%hd9158392559%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9158292555%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl9158492562%_)
                                                    (if (let ((__tmp98058
                                                               (gx#stx-length
                                                                _%tl9158492562%_)))
                                                          (declare (not safe))
                                                          (##fx>= __tmp98058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '2))
                (let ((_%__splice9761597616%_
                       (gx#syntax-split-splice->vector _%tl9158492562%_ '2)))
                  (let ((_%tl9158792568%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9761597616%_ '1)))
                        (_%target9158592565%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9761597616%_ '0))))
                    (if (gx#stx-pair? _%tl9158792568%_)
                        (let ((_%e9159492571%_ (gx#syntax-e _%tl9158792568%_)))
                          (let ((_%tl9159692578%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9159492571%_)))
                                (_%hd9159592575%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9159492571%_))))
                            (if (gx#stx-pair? _%hd9159592575%_)
                                (let ((_%e9159792581%_
                                       (gx#syntax-e _%hd9159592575%_)))
                                  (let ((_%tl9159992588%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9159792581%_)))
                                        (_%hd9159892585%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9159792581%_))))
                                    (if (gx#identifier? _%hd9159892585%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g98059_|
                                             _%hd9159892585%_)
                                            (if (gx#stx-pair? _%tl9159992588%_)
                                                (let ((_%e9160092591%_
                                                       (gx#syntax-e
                                                        _%tl9159992588%_)))
                                                  (let ((_%tl9160292598%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9160092591%_)))
                                                        (_%hd9160192595%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9160092591%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9160292598%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9159692578%_)
                                                            (let ((_%e9160392601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9159692578%_)))
                      (let ((_%tl9160592608%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9160392601%_)))
                            (_%hd9160492605%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9160392601%_))))
                        (if (gx#stx-null? _%tl9160592608%_)
                            (_%__match9769997700%_
                             _%e9157592531%_
                             _%hd9157692535%_
                             _%tl9157792538%_
                             _%e9157892541%_
                             _%hd9157992545%_
                             _%tl9158092548%_
                             _%e9158192551%_
                             _%e9158292555%_
                             _%hd9158392559%_
                             _%tl9158492562%_
                             _%__splice9761597616%_
                             _%target9158592565%_
                             _%tl9158792568%_
                             _%e9159492571%_
                             _%hd9159592575%_
                             _%tl9159692578%_
                             _%e9159792581%_
                             _%hd9159892585%_
                             _%tl9159992588%_
                             _%e9160092591%_
                             _%hd9160192595%_
                             _%tl9160292598%_
                             _%e9160392601%_
                             _%hd9160492605%_
                             _%tl9160592608%_)
                            (if (let ((__tmp98060
                                       (gx#stx-length _%tl9158492562%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp98060 '1))
                                (let ((_%__splice9761997620%_
                                       (gx#syntax-split-splice->vector
                                        _%tl9158492562%_
                                        '1)))
                                  (let ((_%tl9162292451%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9761997620%_
                                            '1)))
                                        (_%target9162092448%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9761997620%_
                                            '0))))
                                    (if (gx#stx-pair? _%tl9162292451%_)
                                        (let ((_%e9162992454%_
                                               (gx#syntax-e _%tl9162292451%_)))
                                          (let ((_%tl9163192461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e9162992454%_)))
                                                (_%hd9163092458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e9162992454%_))))
                                            (if (gx#stx-null? _%tl9163192461%_)
                                                (_%__match9773997740%_
                                                 _%e9157592531%_
                                                 _%hd9157692535%_
                                                 _%tl9157792538%_
                                                 _%e9157892541%_
                                                 _%hd9157992545%_
                                                 _%tl9158092548%_
                                                 _%e9158192551%_
                                                 _%e9158292555%_
                                                 _%hd9158392559%_
                                                 _%tl9158492562%_
                                                 _%__splice9761997620%_
                                                 _%target9162092448%_
                                                 _%tl9162292451%_
                                                 _%e9162992454%_
                                                 _%hd9163092458%_
                                                 _%tl9163192461%_)
                                                (if (gx#stx-null?
                                                     _%tl9158492562%_)
                                                    (_%__kont9762197622%_
                                                     _%hd9158392559%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9156891782%_))))))
                                        (if (gx#stx-null? _%tl9158492562%_)
                                            (_%__kont9762197622%_
                                             _%hd9158392559%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9156891782%_))))))
                                (if (gx#stx-null? _%tl9158492562%_)
                                    (_%__kont9762197622%_ _%hd9158392559%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9156891782%_)))))))
                    (if (let ((__tmp98061 (gx#stx-length _%tl9158492562%_)))
                          (declare (not safe))
                          (##fx>= __tmp98061 '1))
                        (let ((_%__splice9761997620%_
                               (gx#syntax-split-splice->vector
                                _%tl9158492562%_
                                '1)))
                          (let ((_%tl9162292451%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9761997620%_ '1)))
                                (_%target9162092448%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9761997620%_ '0))))
                            (if (gx#stx-pair? _%tl9162292451%_)
                                (let ((_%e9162992454%_
                                       (gx#syntax-e _%tl9162292451%_)))
                                  (let ((_%tl9163192461%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9162992454%_)))
                                        (_%hd9163092458%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9162992454%_))))
                                    (if (gx#stx-null? _%tl9163192461%_)
                                        (_%__match9773997740%_
                                         _%e9157592531%_
                                         _%hd9157692535%_
                                         _%tl9157792538%_
                                         _%e9157892541%_
                                         _%hd9157992545%_
                                         _%tl9158092548%_
                                         _%e9158192551%_
                                         _%e9158292555%_
                                         _%hd9158392559%_
                                         _%tl9158492562%_
                                         _%__splice9761997620%_
                                         _%target9162092448%_
                                         _%tl9162292451%_
                                         _%e9162992454%_
                                         _%hd9163092458%_
                                         _%tl9163192461%_)
                                        (if (gx#stx-null? _%tl9158492562%_)
                                            (_%__kont9762197622%_
                                             _%hd9158392559%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g9156891782%_))))))
                                (if (gx#stx-null? _%tl9158492562%_)
                                    (_%__kont9762197622%_ _%hd9158392559%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g9156891782%_))))))
                        (if (gx#stx-null? _%tl9158492562%_)
                            (_%__kont9762197622%_ _%hd9158392559%_)
                            (let () (declare (not safe)) (_%g9156891782%_)))))
                (if (let ((__tmp98062 (gx#stx-length _%tl9158492562%_)))
                      (declare (not safe))
                      (##fx>= __tmp98062 '1))
                    (let ((_%__splice9761997620%_
                           (gx#syntax-split-splice->vector
                            _%tl9158492562%_
                            '1)))
                      (let ((_%tl9162292451%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9761997620%_ '1)))
                            (_%target9162092448%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9761997620%_ '0))))
                        (if (gx#stx-pair? _%tl9162292451%_)
                            (let ((_%e9162992454%_
                                   (gx#syntax-e _%tl9162292451%_)))
                              (let ((_%tl9163192461%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9162992454%_)))
                                    (_%hd9163092458%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9162992454%_))))
                                (if (gx#stx-null? _%tl9163192461%_)
                                    (_%__match9773997740%_
                                     _%e9157592531%_
                                     _%hd9157692535%_
                                     _%tl9157792538%_
                                     _%e9157892541%_
                                     _%hd9157992545%_
                                     _%tl9158092548%_
                                     _%e9158192551%_
                                     _%e9158292555%_
                                     _%hd9158392559%_
                                     _%tl9158492562%_
                                     _%__splice9761997620%_
                                     _%target9162092448%_
                                     _%tl9162292451%_
                                     _%e9162992454%_
                                     _%hd9163092458%_
                                     _%tl9163192461%_)
                                    (if (gx#stx-null? _%tl9158492562%_)
                                        (_%__kont9762197622%_ _%hd9158392559%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9156891782%_))))))
                            (if (gx#stx-null? _%tl9158492562%_)
                                (_%__kont9762197622%_ _%hd9158392559%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9156891782%_))))))
                    (if (gx#stx-null? _%tl9158492562%_)
                        (_%__kont9762197622%_ _%hd9158392559%_)
                        (let () (declare (not safe)) (_%g9156891782%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ((__tmp98063
                                                           (gx#stx-length
                                                            _%tl9158492562%_)))
                                                      (declare (not safe))
                                                      (##fx>= __tmp98063 '1))
                                                    (let ((_%__splice9761997620%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl9158492562%_
                                                            '1)))
                                                      (let ((_%tl9162292451%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9761997620%_ '1)))
                    (_%target9162092448%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9761997620%_ '0))))
                (if (gx#stx-pair? _%tl9162292451%_)
                    (let ((_%e9162992454%_ (gx#syntax-e _%tl9162292451%_)))
                      (let ((_%tl9163192461%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9162992454%_)))
                            (_%hd9163092458%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9162992454%_))))
                        (if (gx#stx-null? _%tl9163192461%_)
                            (_%__match9773997740%_
                             _%e9157592531%_
                             _%hd9157692535%_
                             _%tl9157792538%_
                             _%e9157892541%_
                             _%hd9157992545%_
                             _%tl9158092548%_
                             _%e9158192551%_
                             _%e9158292555%_
                             _%hd9158392559%_
                             _%tl9158492562%_
                             _%__splice9761997620%_
                             _%target9162092448%_
                             _%tl9162292451%_
                             _%e9162992454%_
                             _%hd9163092458%_
                             _%tl9163192461%_)
                            (if (gx#stx-null? _%tl9158492562%_)
                                (_%__kont9762197622%_ _%hd9158392559%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9156891782%_))))))
                    (if (gx#stx-null? _%tl9158492562%_)
                        (_%__kont9762197622%_ _%hd9158392559%_)
                        (let () (declare (not safe)) (_%g9156891782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9158492562%_)
                                                        (_%__kont9762197622%_
                                                         _%hd9158392559%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9156891782%_)))))
                                            (if (let ((__tmp98064
                                                       (gx#stx-length
                                                        _%tl9158492562%_)))
                                                  (declare (not safe))
                                                  (##fx>= __tmp98064 '1))
                                                (let ((_%__splice9761997620%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl9158492562%_
                                                        '1)))
                                                  (let ((_%tl9162292451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9761997620%_
                                                            '1)))
                                                        (_%target9162092448%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9761997620%_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _%tl9162292451%_)
                                                        (let ((_%e9162992454%_
                                                               (gx#syntax-e
                                                                _%tl9162292451%_)))
                                                          (let ((_%tl9163192461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9162992454%_)))
                        (_%hd9163092458%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9162992454%_))))
                    (if (gx#stx-null? _%tl9163192461%_)
                        (_%__match9773997740%_
                         _%e9157592531%_
                         _%hd9157692535%_
                         _%tl9157792538%_
                         _%e9157892541%_
                         _%hd9157992545%_
                         _%tl9158092548%_
                         _%e9158192551%_
                         _%e9158292555%_
                         _%hd9158392559%_
                         _%tl9158492562%_
                         _%__splice9761997620%_
                         _%target9162092448%_
                         _%tl9162292451%_
                         _%e9162992454%_
                         _%hd9163092458%_
                         _%tl9163192461%_)
                        (if (gx#stx-null? _%tl9158492562%_)
                            (_%__kont9762197622%_ _%hd9158392559%_)
                            (let () (declare (not safe)) (_%g9156891782%_))))))
                (if (gx#stx-null? _%tl9158492562%_)
                    (_%__kont9762197622%_ _%hd9158392559%_)
                    (let () (declare (not safe)) (_%g9156891782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl9158492562%_)
                                                    (_%__kont9762197622%_
                                                     _%hd9158392559%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9156891782%_)))))
                                        (if (let ((__tmp98065
                                                   (gx#stx-length
                                                    _%tl9158492562%_)))
                                              (declare (not safe))
                                              (##fx>= __tmp98065 '1))
                                            (let ((_%__splice9761997620%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl9158492562%_
                                                    '1)))
                                              (let ((_%tl9162292451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9761997620%_
                                                        '1)))
                                                    (_%target9162092448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice9761997620%_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _%tl9162292451%_)
                                                    (let ((_%e9162992454%_
                                                           (gx#syntax-e
                                                            _%tl9162292451%_)))
                                                      (let ((_%tl9163192461%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9162992454%_)))
                    (_%hd9163092458%_
                     (let () (declare (not safe)) (##car _%e9162992454%_))))
                (if (gx#stx-null? _%tl9163192461%_)
                    (_%__match9773997740%_
                     _%e9157592531%_
                     _%hd9157692535%_
                     _%tl9157792538%_
                     _%e9157892541%_
                     _%hd9157992545%_
                     _%tl9158092548%_
                     _%e9158192551%_
                     _%e9158292555%_
                     _%hd9158392559%_
                     _%tl9158492562%_
                     _%__splice9761997620%_
                     _%target9162092448%_
                     _%tl9162292451%_
                     _%e9162992454%_
                     _%hd9163092458%_
                     _%tl9163192461%_)
                    (if (gx#stx-null? _%tl9158492562%_)
                        (_%__kont9762197622%_ _%hd9158392559%_)
                        (let () (declare (not safe)) (_%g9156891782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9158492562%_)
                                                        (_%__kont9762197622%_
                                                         _%hd9158392559%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9156891782%_))))))
                                            (if (gx#stx-null? _%tl9158492562%_)
                                                (_%__kont9762197622%_
                                                 _%hd9158392559%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9156891782%_)))))))
                                (if (let ((__tmp98066
                                           (gx#stx-length _%tl9158492562%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp98066 '1))
                                    (let ((_%__splice9761997620%_
                                           (gx#syntax-split-splice->vector
                                            _%tl9158492562%_
                                            '1)))
                                      (let ((_%tl9162292451%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9761997620%_
                                                '1)))
                                            (_%target9162092448%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice9761997620%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl9162292451%_)
                                            (let ((_%e9162992454%_
                                                   (gx#syntax-e
                                                    _%tl9162292451%_)))
                                              (let ((_%tl9163192461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9162992454%_)))
                                                    (_%hd9163092458%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9162992454%_))))
                                                (if (gx#stx-null?
                                                     _%tl9163192461%_)
                                                    (_%__match9773997740%_
                                                     _%e9157592531%_
                                                     _%hd9157692535%_
                                                     _%tl9157792538%_
                                                     _%e9157892541%_
                                                     _%hd9157992545%_
                                                     _%tl9158092548%_
                                                     _%e9158192551%_
                                                     _%e9158292555%_
                                                     _%hd9158392559%_
                                                     _%tl9158492562%_
                                                     _%__splice9761997620%_
                                                     _%target9162092448%_
                                                     _%tl9162292451%_
                                                     _%e9162992454%_
                                                     _%hd9163092458%_
                                                     _%tl9163192461%_)
                                                    (if (gx#stx-null?
                                                         _%tl9158492562%_)
                                                        (_%__kont9762197622%_
                                                         _%hd9158392559%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9156891782%_))))))
                                            (if (gx#stx-null? _%tl9158492562%_)
                                                (_%__kont9762197622%_
                                                 _%hd9158392559%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9156891782%_))))))
                                    (if (gx#stx-null? _%tl9158492562%_)
                                        (_%__kont9762197622%_ _%hd9158392559%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9156891782%_)))))))
                        (if (let ((__tmp98067
                                   (gx#stx-length _%tl9158492562%_)))
                              (declare (not safe))
                              (##fx>= __tmp98067 '1))
                            (let ((_%__splice9761997620%_
                                   (gx#syntax-split-splice->vector
                                    _%tl9158492562%_
                                    '1)))
                              (let ((_%tl9162292451%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9761997620%_
                                        '1)))
                                    (_%target9162092448%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice9761997620%_
                                        '0))))
                                (if (gx#stx-pair? _%tl9162292451%_)
                                    (let ((_%e9162992454%_
                                           (gx#syntax-e _%tl9162292451%_)))
                                      (let ((_%tl9163192461%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9162992454%_)))
                                            (_%hd9163092458%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9162992454%_))))
                                        (if (gx#stx-null? _%tl9163192461%_)
                                            (_%__match9773997740%_
                                             _%e9157592531%_
                                             _%hd9157692535%_
                                             _%tl9157792538%_
                                             _%e9157892541%_
                                             _%hd9157992545%_
                                             _%tl9158092548%_
                                             _%e9158192551%_
                                             _%e9158292555%_
                                             _%hd9158392559%_
                                             _%tl9158492562%_
                                             _%__splice9761997620%_
                                             _%target9162092448%_
                                             _%tl9162292451%_
                                             _%e9162992454%_
                                             _%hd9163092458%_
                                             _%tl9163192461%_)
                                            (if (gx#stx-null? _%tl9158492562%_)
                                                (_%__kont9762197622%_
                                                 _%hd9158392559%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9156891782%_))))))
                                    (if (gx#stx-null? _%tl9158492562%_)
                                        (_%__kont9762197622%_ _%hd9158392559%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9156891782%_))))))
                            (if (gx#stx-null? _%tl9158492562%_)
                                (_%__kont9762197622%_ _%hd9158392559%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9156891782%_)))))))
                (if (let ((__tmp98068 (gx#stx-length _%tl9158492562%_)))
                      (declare (not safe))
                      (##fx>= __tmp98068 '1))
                    (let ((_%__splice9761997620%_
                           (gx#syntax-split-splice->vector
                            _%tl9158492562%_
                            '1)))
                      (let ((_%tl9162292451%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9761997620%_ '1)))
                            (_%target9162092448%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9761997620%_ '0))))
                        (if (gx#stx-pair? _%tl9162292451%_)
                            (let ((_%e9162992454%_
                                   (gx#syntax-e _%tl9162292451%_)))
                              (let ((_%tl9163192461%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9162992454%_)))
                                    (_%hd9163092458%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9162992454%_))))
                                (if (gx#stx-null? _%tl9163192461%_)
                                    (_%__match9773997740%_
                                     _%e9157592531%_
                                     _%hd9157692535%_
                                     _%tl9157792538%_
                                     _%e9157892541%_
                                     _%hd9157992545%_
                                     _%tl9158092548%_
                                     _%e9158192551%_
                                     _%e9158292555%_
                                     _%hd9158392559%_
                                     _%tl9158492562%_
                                     _%__splice9761997620%_
                                     _%target9162092448%_
                                     _%tl9162292451%_
                                     _%e9162992454%_
                                     _%hd9163092458%_
                                     _%tl9163192461%_)
                                    (if (gx#stx-null? _%tl9158492562%_)
                                        (_%__kont9762197622%_ _%hd9158392559%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9156891782%_))))))
                            (if (gx#stx-null? _%tl9158492562%_)
                                (_%__kont9762197622%_ _%hd9158392559%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9156891782%_))))))
                    (if (gx#stx-null? _%tl9158492562%_)
                        (_%__kont9762197622%_ _%hd9158392559%_)
                        (let () (declare (not safe)) (_%g9156891782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%tl9158492562%_)
                                                        (_%__kont9762197622%_
                                                         _%hd9158392559%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g9156891782%_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g9156891782%_)))
                                        (if (equal? _%e9158192551%_ '2)
                                            (if (gx#stx-pair? _%tl9158092548%_)
                                                (let ((_%e9165692254%_
                                                       (gx#syntax-e
                                                        _%tl9158092548%_)))
                                                  (let ((_%tl9165892261%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9165692254%_)))
                                                        (_%hd9165792258%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9165692254%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl9165892261%_)
                                                        (let ((_%e9165992264%_
                                                               (gx#syntax-e
                                                                _%tl9165892261%_)))
                                                          (let ((_%tl9166192271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e9165992264%_)))
                        (_%hd9166092268%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9165992264%_))))
                    (if (gx#stx-pair? _%hd9166092268%_)
                        (let ((_%e9166292274%_ (gx#syntax-e _%hd9166092268%_)))
                          (let ((_%tl9166492281%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9166292274%_)))
                                (_%hd9166392278%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9166292274%_))))
                            (if (gx#stx-pair? _%hd9166392278%_)
                                (let ((_%e9166592284%_
                                       (gx#syntax-e _%hd9166392278%_)))
                                  (let ((_%tl9166792291%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9166592284%_)))
                                        (_%hd9166692288%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9166592284%_))))
                                    (if (gx#identifier? _%hd9166692288%_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g98069_|
                                             _%hd9166692288%_)
                                            (if (gx#stx-pair? _%tl9166792291%_)
                                                (let ((_%e9166892294%_
                                                       (gx#syntax-e
                                                        _%tl9166792291%_)))
                                                  (let ((_%tl9167092301%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e9166892294%_)))
                                                        (_%hd9166992298%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e9166892294%_))))
                                                    (if (gx#stx-null?
                                                         _%tl9167092301%_)
                                                        (if (gx#stx-pair?
                                                             _%tl9166492281%_)
                                                            (let ((_%e9167192304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl9166492281%_)))
                      (let ((_%tl9167392311%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9167192304%_)))
                            (_%hd9167292308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9167192304%_))))
                        (_%__kont9762397624%_
                         _%tl9166192271%_
                         _%tl9167392311%_
                         _%hd9167292308%_
                         _%hd9166992298%_
                         _%hd9165792258%_
                         _%hd9157692535%_)))
                    (_%__kont9762597626%_
                     _%tl9166192271%_
                     _%tl9166492281%_
                     _%hd9166392278%_
                     _%hd9165792258%_
                     _%hd9157692535%_))
                (_%__kont9762597626%_
                 _%tl9166192271%_
                 _%tl9166492281%_
                 _%hd9166392278%_
                 _%hd9165792258%_
                 _%hd9157692535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9762597626%_
                                                 _%tl9166192271%_
                                                 _%tl9166492281%_
                                                 _%hd9166392278%_
                                                 _%hd9165792258%_
                                                 _%hd9157692535%_))
                                            (_%__kont9762597626%_
                                             _%tl9166192271%_
                                             _%tl9166492281%_
                                             _%hd9166392278%_
                                             _%hd9165792258%_
                                             _%hd9157692535%_))
                                        (_%__kont9762597626%_
                                         _%tl9166192271%_
                                         _%tl9166492281%_
                                         _%hd9166392278%_
                                         _%hd9165792258%_
                                         _%hd9157692535%_))))
                                (_%__kont9762597626%_
                                 _%tl9166192271%_
                                 _%tl9166492281%_
                                 _%hd9166392278%_
                                 _%hd9165792258%_
                                 _%hd9157692535%_))))
                        (if (gx#stx-null? _%hd9166092268%_)
                            (_%__kont9762797628%_
                             _%tl9166192271%_
                             _%hd9165792258%_
                             _%hd9157692535%_)
                            (let () (declare (not safe)) (_%g9156891782%_))))))
                (let () (declare (not safe)) (_%g9156891782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9156891782%_)))
                                            (if (equal? _%e9158192551%_ '3)
                                                (if (gx#stx-pair?
                                                     _%tl9158092548%_)
                                                    (let ((_%e9172392003%_
                                                           (gx#syntax-e
                                                            _%tl9158092548%_)))
                                                      (let ((_%tl9172592010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e9172392003%_)))
                    (_%hd9172492007%_
                     (let () (declare (not safe)) (##car _%e9172392003%_))))
                (if (gx#stx-pair? _%tl9172592010%_)
                    (let ((_%e9172692013%_ (gx#syntax-e _%tl9172592010%_)))
                      (let ((_%tl9172892020%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9172692013%_)))
                            (_%hd9172792017%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9172692013%_))))
                        (if (gx#stx-pair? _%hd9172792017%_)
                            (let ((_%e9172992023%_
                                   (gx#syntax-e _%hd9172792017%_)))
                              (let ((_%tl9173192030%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9172992023%_)))
                                    (_%hd9173092027%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9172992023%_))))
                                (_%__kont9762997630%_
                                 _%tl9172892020%_
                                 _%tl9173192030%_
                                 _%hd9173092027%_
                                 _%hd9172492007%_
                                 _%hd9157692535%_)))
                            (if (gx#stx-pair/null? _%hd9172492007%_)
                                (let ((_%__splice9763397634%_
                                       (gx#syntax-split-splice->vector
                                        _%hd9172492007%_
                                        '0)))
                                  (let ((_%tl9175091826%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9763397634%_
                                            '1)))
                                        (_%target9174891823%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice9763397634%_
                                            '0))))
                                    (if (gx#stx-null? _%tl9175091826%_)
                                        (_%__match9796197962%_
                                         _%e9157592531%_
                                         _%hd9157692535%_
                                         _%tl9157792538%_
                                         _%e9157892541%_
                                         _%hd9157992545%_
                                         _%tl9158092548%_
                                         _%e9158192551%_
                                         _%e9172392003%_
                                         _%hd9172492007%_
                                         _%tl9172592010%_
                                         _%__splice9763397634%_
                                         _%target9174891823%_
                                         _%tl9175091826%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9156891782%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9156891782%_))))))
                    (if (gx#stx-pair/null? _%hd9172492007%_)
                        (let ((_%__splice9763397634%_
                               (gx#syntax-split-splice->vector
                                _%hd9172492007%_
                                '0)))
                          (let ((_%tl9175091826%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9763397634%_ '1)))
                                (_%target9174891823%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9763397634%_ '0))))
                            (if (gx#stx-null? _%tl9175091826%_)
                                (_%__match9796197962%_
                                 _%e9157592531%_
                                 _%hd9157692535%_
                                 _%tl9157792538%_
                                 _%e9157892541%_
                                 _%hd9157992545%_
                                 _%tl9158092548%_
                                 _%e9158192551%_
                                 _%e9172392003%_
                                 _%hd9172492007%_
                                 _%tl9172592010%_
                                 _%__splice9763397634%_
                                 _%target9174891823%_
                                 _%tl9175091826%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g9156891782%_)))))
                        (let () (declare (not safe)) (_%g9156891782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g9156891782%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g9156891782%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g9156891782%_)))))
                          (let () (declare (not safe)) (_%g9156891782%_)))))
                  (let () (declare (not safe)) (_%g9156891782%_))))))))))
