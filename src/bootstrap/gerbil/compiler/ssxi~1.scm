(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g274205_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274212_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274214_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274216_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274218_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274220_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274232_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274234_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274236_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274238_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g274240_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx267663%_)
        (let* ((_%$%g267667267685%_
                (lambda (_%$%g267668267681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267668267681%_))))
               (_%$%g267666267740%_
                (lambda (_%$%g267668267689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267668267689%_))
                      (let ((_%$%e267671267692%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267668267689%_))))
                        (let ((_%$%hd267672267696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267671267692%_)))
                              (_%$%tl267673267699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267671267692%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267673267699%_))
                              (let ((_%$%e267674267702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267673267699%_))))
                                (let ((_%$%hd267675267706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267674267702%_)))
                                      (_%$%tl267676267709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267674267702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267676267709%_))
                                      (let ((_%$%e267677267712%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl267676267709%_))))
                                        (let ((_%$%hd267678267716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267677267712%_)))
                                              (_%$%tl267679267719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267677267712%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267679267719%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd267675267706%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd267675267706%_ '()))
                      (cons _%$%hd267678267716%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g267667267685%_
                                                   _%$%g267668267689%_))
                                              (_%$%g267667267685%_
                                               _%$%g267668267689%_))))
                                      (_%$%g267667267685%_
                                       _%$%g267668267689%_))))
                              (_%$%g267667267685%_ _%$%g267668267689%_))))
                      (_%$%g267667267685%_ _%$%g267668267689%_)))))
          (_%$%g267666267740%_ _%$stx267663%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx267744%_)
        (let* ((_%$%g267748267766%_
                (lambda (_%$%g267749267762%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267749267762%_))))
               (_%$%g267747267821%_
                (lambda (_%$%g267749267770%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267749267770%_))
                      (let ((_%$%e267752267773%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267749267770%_))))
                        (let ((_%$%hd267753267777%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267752267773%_)))
                              (_%$%tl267754267780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267752267773%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267754267780%_))
                              (let ((_%$%e267755267783%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267754267780%_))))
                                (let ((_%$%hd267756267787%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267755267783%_)))
                                      (_%$%tl267757267790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267755267783%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267757267790%_))
                                      (let ((_%$%e267758267793%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl267757267790%_))))
                                        (let ((_%$%hd267759267797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267758267793%_)))
                                              (_%$%tl267760267800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267758267793%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267760267800%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd267756267787%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd267756267787%_ '()))
                      (cons _%$%hd267759267797%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g267748267766%_
                                                   _%$%g267749267770%_))
                                              (_%$%g267748267766%_
                                               _%$%g267749267770%_))))
                                      (_%$%g267748267766%_
                                       _%$%g267749267770%_))))
                              (_%$%g267748267766%_ _%$%g267749267770%_))))
                      (_%$%g267748267766%_ _%$%g267749267770%_)))))
          (_%$%g267747267821%_ _%$stx267744%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx267825%_)
        (let* ((_%$%g267829267858%_
                (lambda (_%$%g267830267854%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267830267854%_))))
               (_%$%g267828267954%_
                (lambda (_%$%g267830267862%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267830267862%_))
                      (let ((_%$%e267833267865%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267830267862%_))))
                        (let ((_%$%hd267834267869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267833267865%_)))
                              (_%$%tl267835267872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267833267865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl267835267872%_))
                              (let ((_g274183_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl267835267872%_
                                        '0))))
                                (begin
                                  (let ((_g274184_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g274183_)
                                               (##values-length _g274183_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g274184_ 2)))
                                        (error "Context expects 2 values"
                                               _g274184_)))
                                  (let ((_%$%target267836267875%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274183_ 0)))
                                        (_%$%tl267838267878%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274183_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl267838267878%_))
                                        (letrec ((_%$%loop267839267881%_
                                                  (lambda (_%$%hd267837267885%_
                                                           _%$%type267843267888%_
                                                           _%$%symbol267844267889%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd267837267885%_))
                                                        (let ((_%$%e267840267891%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd267837267885%_))))
                  (let ((_%$%lp-hd267841267895%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e267840267891%_)))
                        (_%$%lp-tl267842267898%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e267840267891%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd267841267895%_))
                        (let ((_%$%e267847267901%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd267841267895%_))))
                          (let ((_%$%hd267848267905%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e267847267901%_)))
                                (_%$%tl267849267908%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e267847267901%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl267849267908%_))
                                (let ((_%$%e267850267911%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl267849267908%_))))
                                  (let ((_%$%hd267851267915%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e267850267911%_)))
                                        (_%$%tl267852267918%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e267850267911%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl267852267918%_))
                                        (_%$%loop267839267881%_
                                         _%$%lp-tl267842267898%_
                                         (cons _%$%hd267851267915%_
                                               _%$%type267843267888%_)
                                         (cons _%$%hd267848267905%_
                                               _%$%symbol267844267889%_))
                                        (_%$%g267829267858%_
                                         _%$%g267830267862%_))))
                                (_%$%g267829267858%_ _%$%g267830267862%_))))
                        (_%$%g267829267858%_ _%$%g267830267862%_))))
                (let ((_%$%type267845267921%_ (reverse _%$%type267843267888%_))
                      (_%$%symbol267846267923%_
                       (reverse _%$%symbol267844267889%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type267845267921%_
                             _%$%symbol267846267923%_))
                          (let ((__tmp274185
                                 (lambda (_%$%g267942267946%_
                                          _%$%g267943267949%_
                                          _%$%g267944267951%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g267943267949%_
                                                     (cons _%$%g267942267946%_
                                                           '())))
                                         _%$%g267944267951%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp274185
                             '()
                             _%$%type267845267921%_
                             _%$%symbol267846267923%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop267839267881%_
                                           _%$%target267836267875%_
                                           '()
                                           '()))
                                        (_%$%g267829267858%_
                                         _%$%g267830267862%_)))))
                              (_%$%g267829267858%_ _%$%g267830267862%_))))
                      (_%$%g267829267858%_ _%$%g267830267862%_)))))
          (_%$%g267828267954%_ _%$stx267825%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx267959%_)
        (let* ((_%__stx273494273495%_ _%$stx267959%_)
               (_%$%g267964268006%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx273494273495%_)))))
          (let ((_%__kont273497273498%_
                 (lambda (_%$%g267966268134%_
                          _%$%g267967268136%_
                          _%$%g267968268137%_
                          _%$%g267969268138%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g267969268138%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g267968268137%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g267967268136%_
                                                       '()))
                                           (cons _%$%g267966268134%_ '())))))))
                (_%__kont273499273500%_
                 (lambda (_%$%g267985268053%_
                          _%$%g267986268055%_
                          _%$%g267987268056%_
                          _%$%g267988268057%_)
                   (cons _%$%g267988268057%_
                         (cons _%$%g267987268056%_
                               (cons _%$%g267986268055%_
                                     (cons _%$%g267985268053%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match273533273534%_
                   (lambda (_%$%e267970268084%_
                            _%$%hd267971268088%_
                            _%$%tl267972268091%_
                            _%$%e267973268094%_
                            _%$%hd267974268098%_
                            _%$%tl267975268101%_
                            _%$%e267976268104%_
                            _%$%hd267977268108%_
                            _%$%tl267978268111%_
                            _%$%e267979268114%_
                            _%$%hd267980268118%_
                            _%$%tl267981268121%_
                            _%$%e267982268124%_
                            _%$%hd267983268128%_
                            _%$%tl267984268131%_)
                     (let ((_%$%g267966268134%_ _%$%hd267983268128%_)
                           (_%$%g267967268136%_ _%$%hd267980268118%_)
                           (_%$%g267968268137%_ _%$%hd267977268108%_)
                           (_%$%g267969268138%_ _%$%hd267974268098%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g267969268138%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g267968268137%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g267967268136%_)))
                           (_%__kont273497273498%_
                            _%$%g267966268134%_
                            _%$%g267967268136%_
                            _%$%g267968268137%_
                            _%$%g267969268138%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g267964268006%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx273494273495%_))
                  (let ((_%$%e267970268084%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx273494273495%_))))
                    (let ((_%$%tl267972268091%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e267970268084%_)))
                          (_%$%hd267971268088%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e267970268084%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl267972268091%_))
                          (let ((_%$%e267973268094%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl267972268091%_))))
                            (let ((_%$%tl267975268101%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e267973268094%_)))
                                  (_%$%hd267974268098%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e267973268094%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl267975268101%_))
                                  (let ((_%$%e267976268104%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl267975268101%_))))
                                    (let ((_%$%tl267978268111%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267976268104%_)))
                                          (_%$%hd267977268108%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267976268104%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl267978268111%_))
                                          (let ((_%$%e267979268114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl267978268111%_))))
                                            (let ((_%$%tl267981268121%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e267979268114%_)))
                                                  (_%$%hd267980268118%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e267979268114%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl267981268121%_))
                                                  (let ((_%$%e267982268124%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl267981268121%_))))
                                                    (let ((_%$%tl267984268131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e267982268124%_)))
                                                          (_%$%hd267983268128%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e267982268124%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl267984268131%_))
                                                          (_%__match273533273534%_
                                                           _%$%e267970268084%_
                                                           _%$%hd267971268088%_
                                                           _%$%tl267972268091%_
                                                           _%$%e267973268094%_
                                                           _%$%hd267974268098%_
                                                           _%$%tl267975268101%_
                                                           _%$%e267976268104%_
                                                           _%$%hd267977268108%_
                                                           _%$%tl267978268111%_
                                                           _%$%e267979268114%_
                                                           _%$%hd267980268118%_
                                                           _%$%tl267981268121%_
                                                           _%$%e267982268124%_
                                                           _%$%hd267983268128%_
                                                           _%$%tl267984268131%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g267964268006%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267981268121%_))
                                                      (_%__kont273499273500%_
                                                       _%$%hd267980268118%_
                                                       _%$%hd267977268108%_
                                                       _%$%hd267974268098%_
                                                       _%$%hd267971268088%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g267964268006%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g267964268006%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g267964268006%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g267964268006%_)))))
                  (let () (declare (not safe)) (_%$%g267964268006%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx268163%_)
        (let* ((_%$%g268167268202%_
                (lambda (_%$%g268168268198%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268168268198%_))))
               (_%$%g268166268315%_
                (lambda (_%$%g268168268206%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268168268206%_))
                      (let ((_%$%e268172268209%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268168268206%_))))
                        (let ((_%$%hd268173268213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268172268209%_)))
                              (_%$%tl268174268216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268172268209%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl268174268216%_))
                              (let ((_g274186_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl268174268216%_
                                        '0))))
                                (begin
                                  (let ((_g274187_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g274186_)
                                               (##values-length _g274186_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g274187_ 2)))
                                        (error "Context expects 2 values"
                                               _g274187_)))
                                  (let ((_%$%target268175268219%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274186_ 0)))
                                        (_%$%tl268177268222%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274186_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl268177268222%_))
                                        (letrec ((_%$%loop268178268225%_
                                                  (lambda (_%$%hd268176268229%_
                                                           _%$%symbol268182268232%_
                                                           _%$%method268183268233%_
                                                           _%$%type-t268184268234%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd268176268229%_))
                                                        (let ((_%$%e268179268236%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd268176268229%_))))
                  (let ((_%$%lp-hd268180268240%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268179268236%_)))
                        (_%$%lp-tl268181268243%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268179268236%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd268180268240%_))
                        (let ((_%$%e268188268246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd268180268240%_))))
                          (let ((_%$%hd268189268250%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268188268246%_)))
                                (_%$%tl268190268253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268188268246%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl268190268253%_))
                                (let ((_%$%e268191268256%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl268190268253%_))))
                                  (let ((_%$%hd268192268260%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e268191268256%_)))
                                        (_%$%tl268193268263%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e268191268256%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl268193268263%_))
                                        (let ((_%$%e268194268266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl268193268263%_))))
                                          (let ((_%$%hd268195268270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268194268266%_)))
                                                (_%$%tl268196268273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268194268266%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl268196268273%_))
                                                (_%$%loop268178268225%_
                                                 _%$%lp-tl268181268243%_
                                                 (cons _%$%hd268195268270%_
                                                       _%$%symbol268182268232%_)
                                                 (cons _%$%hd268192268260%_
                                                       _%$%method268183268233%_)
                                                 (cons _%$%hd268189268250%_
                                                       _%$%type-t268184268234%_))
                                                (_%$%g268167268202%_
                                                 _%$%g268168268206%_))))
                                        (_%$%g268167268202%_
                                         _%$%g268168268206%_))))
                                (_%$%g268167268202%_ _%$%g268168268206%_))))
                        (_%$%g268167268202%_ _%$%g268168268206%_))))
                (let ((_%$%symbol268185268276%_
                       (reverse _%$%symbol268182268232%_))
                      (_%$%method268186268278%_
                       (reverse _%$%method268183268233%_))
                      (_%$%type-t268187268279%_
                       (reverse _%$%type-t268184268234%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol268185268276%_
                             _%$%method268186268278%_
                             _%$%type-t268187268279%_))
                          (let ((__tmp274188
                                 (lambda (_%$%g268300268305%_
                                          _%$%g268301268308%_
                                          _%$%g268302268310%_
                                          _%$%g268303268312%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g268302268310%_
                                                     (cons _%$%g268301268308%_
                                                           (cons _%$%g268300268305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g268303268312%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp274188
                             '()
                             _%$%symbol268185268276%_
                             _%$%method268186268278%_
                             _%$%type-t268187268279%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop268178268225%_
                                           _%$%target268175268219%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g268167268202%_
                                         _%$%g268168268206%_)))))
                              (_%$%g268167268202%_ _%$%g268168268206%_))))
                      (_%$%g268167268202%_ _%$%g268168268206%_)))))
          (_%$%g268166268315%_ _%$stx268163%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx268320%_)
        (let* ((_%$%g268324268357%_
                (lambda (_%$%g268325268353%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268325268353%_))))
               (_%$%g268323268467%_
                (lambda (_%$%g268325268361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268325268361%_))
                      (let ((_%$%e268329268364%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268325268361%_))))
                        (let ((_%$%hd268330268368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268329268364%_)))
                              (_%$%tl268331268371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268329268364%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268331268371%_))
                              (let ((_%$%e268332268374%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268331268371%_))))
                                (let ((_%$%hd268333268378%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268332268374%_)))
                                      (_%$%tl268334268381%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268332268374%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl268334268381%_))
                                      (let ((_g274189_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl268334268381%_
                                                '0))))
                                        (begin
                                          (let ((_g274190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g274189_)
                                                       (##values-length
                                                        _g274189_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g274190_ 2)))
                                                (error "Context expects 2 values"
                                                       _g274190_)))
                                          (let ((_%$%target268335268384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g274189_ 0)))
                                                (_%$%tl268337268387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g274189_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl268337268387%_))
                                                (letrec ((_%$%loop268338268390%_
                                                          (lambda (_%$%hd268336268394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol268342268397%_
                           _%$%method268343268398%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd268336268394%_))
                        (let ((_%$%e268339268400%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd268336268394%_))))
                          (let ((_%$%lp-hd268340268404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268339268400%_)))
                                (_%$%lp-tl268341268407%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268339268400%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd268340268404%_))
                                (let ((_%$%e268346268410%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd268340268404%_))))
                                  (let ((_%$%hd268347268414%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e268346268410%_)))
                                        (_%$%tl268348268417%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e268346268410%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl268348268417%_))
                                        (let ((_%$%e268349268420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl268348268417%_))))
                                          (let ((_%$%hd268350268424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268349268420%_)))
                                                (_%$%tl268351268427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268349268420%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl268351268427%_))
                                                (_%$%loop268338268390%_
                                                 _%$%lp-tl268341268407%_
                                                 (cons _%$%hd268350268424%_
                                                       _%$%symbol268342268397%_)
                                                 (cons _%$%hd268347268414%_
                                                       _%$%method268343268398%_))
                                                (_%$%g268324268357%_
                                                 _%$%g268325268361%_))))
                                        (_%$%g268324268357%_
                                         _%$%g268325268361%_))))
                                (_%$%g268324268357%_ _%$%g268325268361%_))))
                        (let ((_%$%symbol268344268430%_
                               (reverse _%$%symbol268342268397%_))
                              (_%$%method268345268432%_
                               (reverse _%$%method268343268398%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol268344268430%_
                                     _%$%method268345268432%_))
                                  (let ((__tmp274191
                                         (lambda (_%$%g268455268459%_
                                                  _%$%g268456268462%_
                                                  _%$%g268457268464%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd268333268378%_
                                                             (cons _%$%g268456268462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g268455268459%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g268457268464%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp274191
                                     '()
                                     _%$%symbol268344268430%_
                                     _%$%method268345268432%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop268338268390%_
                                                   _%$%target268335268384%_
                                                   '()
                                                   '()))
                                                (_%$%g268324268357%_
                                                 _%$%g268325268361%_)))))
                                      (_%$%g268324268357%_
                                       _%$%g268325268361%_))))
                              (_%$%g268324268357%_ _%$%g268325268361%_))))
                      (_%$%g268324268357%_ _%$%g268325268361%_)))))
          (_%$%g268323268467%_ _%$stx268320%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx268472%_)
        (let* ((_%$%g268476268490%_
                (lambda (_%$%g268477268486%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268477268486%_))))
               (_%$%g268475268531%_
                (lambda (_%$%g268477268494%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268477268494%_))
                      (let ((_%$%e268479268497%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268477268494%_))))
                        (let ((_%$%hd268480268501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268479268497%_)))
                              (_%$%tl268481268504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268479268497%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268481268504%_))
                              (let ((_%$%e268482268507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268481268504%_))))
                                (let ((_%$%hd268483268511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268482268507%_)))
                                      (_%$%tl268484268514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268482268507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl268484268514%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!alias))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd268483268511%_
                                                              '()))
                                                  '()))
                                      (_%$%g268476268490%_
                                       _%$%g268477268494%_))))
                              (_%$%g268476268490%_ _%$%g268477268494%_))))
                      (_%$%g268476268490%_ _%$%g268477268494%_)))))
          (_%$%g268475268531%_ _%$stx268472%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx268535%_)
        (let* ((_%$%g268539268593%_
                (lambda (_%$%g268540268589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268540268589%_))))
               (_%$%g268538268774%_
                (lambda (_%$%g268540268597%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268540268597%_))
                      (let ((_%$%e268552268600%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268540268597%_))))
                        (let ((_%$%hd268553268604%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268552268600%_)))
                              (_%$%tl268554268607%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268552268600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268554268607%_))
                              (let ((_%$%e268555268610%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268554268607%_))))
                                (let ((_%$%hd268556268614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268555268610%_)))
                                      (_%$%tl268557268617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268555268610%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl268557268617%_))
                                      (let ((_%$%e268558268620%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl268557268617%_))))
                                        (let ((_%$%hd268559268624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268558268620%_)))
                                              (_%$%tl268560268627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268558268620%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl268560268627%_))
                                              (let ((_%$%e268561268630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl268560268627%_))))
                                                (let ((_%$%hd268562268634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e268561268630%_)))
                                                      (_%$%tl268563268637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e268561268630%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl268563268637%_))
                                                      (let ((_%$%e268564268640%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl268563268637%_))))
                (let ((_%$%hd268565268644%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e268564268640%_)))
                      (_%$%tl268566268647%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e268564268640%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl268566268647%_))
                      (let ((_%$%e268567268650%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl268566268647%_))))
                        (let ((_%$%hd268568268654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268567268650%_)))
                              (_%$%tl268569268657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268567268650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268569268657%_))
                              (let ((_%$%e268570268660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268569268657%_))))
                                (let ((_%$%hd268571268664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268570268660%_)))
                                      (_%$%tl268572268667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268570268660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl268572268667%_))
                                      (let ((_%$%e268573268670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl268572268667%_))))
                                        (let ((_%$%hd268574268674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268573268670%_)))
                                              (_%$%tl268575268677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268573268670%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl268575268677%_))
                                              (let ((_%$%e268576268680%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl268575268677%_))))
                                                (let ((_%$%hd268577268684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e268576268680%_)))
                                                      (_%$%tl268578268687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e268576268680%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl268578268687%_))
                                                      (let ((_%$%e268579268690%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl268578268687%_))))
                (let ((_%$%hd268580268694%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e268579268690%_)))
                      (_%$%tl268581268697%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e268579268690%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl268581268697%_))
                      (let ((_%$%e268582268700%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl268581268697%_))))
                        (let ((_%$%hd268583268704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268582268700%_)))
                              (_%$%tl268584268707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268582268700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268584268707%_))
                              (let ((_%$%e268585268710%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268584268707%_))))
                                (let ((_%$%hd268586268714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268585268710%_)))
                                      (_%$%tl268587268717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268585268710%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl268587268717%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!class))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd268556268614%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd268559268624%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd268562268634%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd268565268644%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd268568268654%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd268571268664%_ '()))
                                        (cons _%$%hd268574268674%_
                                              (cons _%$%hd268577268684%_
                                                    (cons _%$%hd268580268694%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd268583268704%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd268586268714%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g268539268593%_
                                       _%$%g268540268597%_))))
                              (_%$%g268539268593%_ _%$%g268540268597%_))))
                      (_%$%g268539268593%_ _%$%g268540268597%_))))
              (_%$%g268539268593%_ _%$%g268540268597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g268539268593%_
                                               _%$%g268540268597%_))))
                                      (_%$%g268539268593%_
                                       _%$%g268540268597%_))))
                              (_%$%g268539268593%_ _%$%g268540268597%_))))
                      (_%$%g268539268593%_ _%$%g268540268597%_))))
              (_%$%g268539268593%_ _%$%g268540268597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g268539268593%_
                                               _%$%g268540268597%_))))
                                      (_%$%g268539268593%_
                                       _%$%g268540268597%_))))
                              (_%$%g268539268593%_ _%$%g268540268597%_))))
                      (_%$%g268539268593%_ _%$%g268540268597%_)))))
          (_%$%g268538268774%_ _%$stx268535%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx268778%_)
        (let* ((_%$%g268782268796%_
                (lambda (_%$%g268783268792%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268783268792%_))))
               (_%$%g268781268837%_
                (lambda (_%$%g268783268800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268783268800%_))
                      (let ((_%$%e268785268803%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268783268800%_))))
                        (let ((_%$%hd268786268807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268785268803%_)))
                              (_%$%tl268787268810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268785268803%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268787268810%_))
                              (let ((_%$%e268788268813%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268787268810%_))))
                                (let ((_%$%hd268789268817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268788268813%_)))
                                      (_%$%tl268790268820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268788268813%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl268790268820%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd268789268817%_
                                                              '()))
                                                  '()))
                                      (_%$%g268782268796%_
                                       _%$%g268783268800%_))))
                              (_%$%g268782268796%_ _%$%g268783268800%_))))
                      (_%$%g268782268796%_ _%$%g268783268800%_)))))
          (_%$%g268781268837%_ _%$stx268778%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx268841%_)
        (let* ((_%$%g268845268859%_
                (lambda (_%$%g268846268855%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268846268855%_))))
               (_%$%g268844268900%_
                (lambda (_%$%g268846268863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268846268863%_))
                      (let ((_%$%e268848268866%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268846268863%_))))
                        (let ((_%$%hd268849268870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268848268866%_)))
                              (_%$%tl268850268873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268848268866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268850268873%_))
                              (let ((_%$%e268851268876%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268850268873%_))))
                                (let ((_%$%hd268852268880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268851268876%_)))
                                      (_%$%tl268853268883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268851268876%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl268853268883%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!constructor))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd268852268880%_
                                                              '()))
                                                  '()))
                                      (_%$%g268845268859%_
                                       _%$%g268846268863%_))))
                              (_%$%g268845268859%_ _%$%g268846268863%_))))
                      (_%$%g268845268859%_ _%$%g268846268863%_)))))
          (_%$%g268844268900%_ _%$stx268841%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx268904%_)
        (let* ((_%$%g268908268930%_
                (lambda (_%$%g268909268926%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268909268926%_))))
               (_%$%g268907268999%_
                (lambda (_%$%g268909268934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268909268934%_))
                      (let ((_%$%e268913268937%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268909268934%_))))
                        (let ((_%$%hd268914268941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268913268937%_)))
                              (_%$%tl268915268944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268913268937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268915268944%_))
                              (let ((_%$%e268916268947%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268915268944%_))))
                                (let ((_%$%hd268917268951%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268916268947%_)))
                                      (_%$%tl268918268954%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268916268947%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl268918268954%_))
                                      (let ((_%$%e268919268957%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl268918268954%_))))
                                        (let ((_%$%hd268920268961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268919268957%_)))
                                              (_%$%tl268921268964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268919268957%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl268921268964%_))
                                              (let ((_%$%e268922268967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl268921268964%_))))
                                                (let ((_%$%hd268923268971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e268922268967%_)))
                                                      (_%$%tl268924268974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e268922268967%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl268924268974%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!accessor))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd268917268951%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd268920268961%_ '()))
                                (cons _%$%hd268923268971%_ '()))))
              (_%$%g268908268930%_ _%$%g268909268934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g268908268930%_
                                               _%$%g268909268934%_))))
                                      (_%$%g268908268930%_
                                       _%$%g268909268934%_))))
                              (_%$%g268908268930%_ _%$%g268909268934%_))))
                      (_%$%g268908268930%_ _%$%g268909268934%_)))))
          (_%$%g268907268999%_ _%$stx268904%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx269003%_)
        (let* ((_%$%g269007269029%_
                (lambda (_%$%g269008269025%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269008269025%_))))
               (_%$%g269006269098%_
                (lambda (_%$%g269008269033%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269008269033%_))
                      (let ((_%$%e269012269036%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269008269033%_))))
                        (let ((_%$%hd269013269040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269012269036%_)))
                              (_%$%tl269014269043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269012269036%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269014269043%_))
                              (let ((_%$%e269015269046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269014269043%_))))
                                (let ((_%$%hd269016269050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269015269046%_)))
                                      (_%$%tl269017269053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269015269046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl269017269053%_))
                                      (let ((_%$%e269018269056%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl269017269053%_))))
                                        (let ((_%$%hd269019269060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269018269056%_)))
                                              (_%$%tl269020269063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269018269056%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl269020269063%_))
                                              (let ((_%$%e269021269066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl269020269063%_))))
                                                (let ((_%$%hd269022269070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e269021269066%_)))
                                                      (_%$%tl269023269073%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e269021269066%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl269023269073%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!mutator))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd269016269050%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd269019269060%_ '()))
                                (cons _%$%hd269022269070%_ '()))))
              (_%$%g269007269029%_ _%$%g269008269033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269007269029%_
                                               _%$%g269008269033%_))))
                                      (_%$%g269007269029%_
                                       _%$%g269008269033%_))))
                              (_%$%g269007269029%_ _%$%g269008269033%_))))
                      (_%$%g269007269029%_ _%$%g269008269033%_)))))
          (_%$%g269006269098%_ _%$stx269003%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx269102%_)
        (let* ((_%$%g269106269120%_
                (lambda (_%$%g269107269116%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269107269116%_))))
               (_%$%g269105269161%_
                (lambda (_%$%g269107269124%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269107269124%_))
                      (let ((_%$%e269109269127%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269107269124%_))))
                        (let ((_%$%hd269110269131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269109269127%_)))
                              (_%$%tl269111269134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269109269127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269111269134%_))
                              (let ((_%$%e269112269137%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269111269134%_))))
                                (let ((_%$%hd269113269141%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269112269137%_)))
                                      (_%$%tl269114269144%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269112269137%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl269114269144%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!primitive-predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd269113269141%_
                                                              '()))
                                                  '()))
                                      (_%$%g269106269120%_
                                       _%$%g269107269124%_))))
                              (_%$%g269106269120%_ _%$%g269107269124%_))))
                      (_%$%g269106269120%_ _%$%g269107269124%_)))))
          (_%$%g269105269161%_ _%$stx269102%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx269165%_)
        (let* ((_%$%g269169269187%_
                (lambda (_%$%g269170269183%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269170269183%_))))
               (_%$%g269168269242%_
                (lambda (_%$%g269170269191%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269170269191%_))
                      (let ((_%$%e269173269194%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269170269191%_))))
                        (let ((_%$%hd269174269198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269173269194%_)))
                              (_%$%tl269175269201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269173269194%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269175269201%_))
                              (let ((_%$%e269176269204%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269175269201%_))))
                                (let ((_%$%hd269177269208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269176269204%_)))
                                      (_%$%tl269178269211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269176269204%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl269178269211%_))
                                      (let ((_%$%e269179269214%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl269178269211%_))))
                                        (let ((_%$%hd269180269218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269179269214%_)))
                                              (_%$%tl269181269221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269179269214%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl269181269221%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd269177269208%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd269180269218%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269169269187%_
                                               _%$%g269170269191%_))))
                                      (_%$%g269169269187%_
                                       _%$%g269170269191%_))))
                              (_%$%g269169269187%_ _%$%g269170269191%_))))
                      (_%$%g269169269187%_ _%$%g269170269191%_)))))
          (_%$%g269168269242%_ _%$stx269165%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx269246%_)
        (let* ((_%__stx273562273563%_ _%$stx269246%_)
               (_%$%g269253269314%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx273562273563%_)))))
          (let ((_%__kont273565273566%_
                 (lambda (_%$%g269255269552%_ _%$%g269256269554%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g269256269554%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g269255269552%_ '()))
                                     '())))))
                (_%__kont273567273568%_
                 (lambda (_%$%g269266269491%_
                          _%$%g269267269493%_
                          _%$%g269268269494%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g269268269494%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g269267269493%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%$%g269266269491%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont273569273570%_
                 (lambda (_%$%g269285269415%_ _%$%g269286269417%_)
                   (cons _%$%g269286269417%_
                         (cons _%$%g269285269415%_ (cons '#f '())))))
                (_%__kont273571273572%_
                 (lambda (_%$%g269293269365%_
                          _%$%g269294269367%_
                          _%$%g269295269368%_)
                   (cons _%$%g269295269368%_
                         (cons _%$%g269294269367%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g269293269365%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx273562273563%_))
                (let ((_%$%e269257269522%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx273562273563%_))))
                  (let ((_%$%tl269259269529%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e269257269522%_)))
                        (_%$%hd269258269526%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e269257269522%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl269259269529%_))
                        (let ((_%$%e269260269532%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl269259269529%_))))
                          (let ((_%$%tl269262269539%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e269260269532%_)))
                                (_%$%hd269261269536%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e269260269532%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl269262269539%_))
                                (let ((_%$%e269263269542%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl269262269539%_))))
                                  (let ((_%$%tl269265269549%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e269263269542%_)))
                                        (_%$%hd269264269546%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e269263269542%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl269265269549%_))
                                        (_%__kont273565273566%_
                                         _%$%hd269264269546%_
                                         _%$%hd269261269536%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl269265269549%_))
                                            (let ((_%$%e269278269467%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl269265269549%_))))
                                              (let ((_%$%tl269280269474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e269278269467%_)))
                                                    (_%$%hd269279269471%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e269278269467%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd269279269471%_))
                                                    (let ((_%$%e269281269477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd269279269471%_))))
                                                      (if (equal? _%$%e269281269477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl269280269474%_))
                      (let ((_%$%e269282269481%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl269280269474%_))))
                        (let ((_%$%tl269284269488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269282269481%_)))
                              (_%$%hd269283269485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269282269481%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl269284269488%_))
                              (_%__kont273567273568%_
                               _%$%hd269283269485%_
                               _%$%hd269264269546%_
                               _%$%hd269261269536%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd269264269546%_))
                                  (let ((_%$%e269305269351%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd269264269546%_))))
                                    (declare (not safe))
                                    (_%$%g269253269314%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g269253269314%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd269264269546%_))
                          (let ((_%$%e269305269351%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd269264269546%_))))
                            (if (equal? _%$%e269305269351%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl269280269474%_))
                                    (_%__kont273571273572%_
                                     _%$%hd269279269471%_
                                     _%$%hd269261269536%_
                                     _%$%hd269258269526%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g269253269314%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g269253269314%_))))
                          (let () (declare (not safe)) (_%$%g269253269314%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd269264269546%_))
                      (let ((_%$%e269305269351%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd269264269546%_))))
                        (if (equal? _%$%e269305269351%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl269280269474%_))
                                (_%__kont273571273572%_
                                 _%$%hd269279269471%_
                                 _%$%hd269261269536%_
                                 _%$%hd269258269526%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g269253269314%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g269253269314%_))))
                      (let () (declare (not safe)) (_%$%g269253269314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd269264269546%_))
                                                        (let ((_%$%e269305269351%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd269264269546%_))))
                  (if (equal? _%$%e269305269351%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl269280269474%_))
                          (_%__kont273571273572%_
                           _%$%hd269279269471%_
                           _%$%hd269261269536%_
                           _%$%hd269258269526%_)
                          (let () (declare (not safe)) (_%$%g269253269314%_)))
                      (let () (declare (not safe)) (_%$%g269253269314%_))))
                (let () (declare (not safe)) (_%$%g269253269314%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd269264269546%_))
                                                (let ((_%$%e269305269351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd269264269546%_))))
                                                  (declare (not safe))
                                                  (_%$%g269253269314%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g269253269314%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl269262269539%_))
                                    (_%__kont273569273570%_
                                     _%$%hd269261269536%_
                                     _%$%hd269258269526%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g269253269314%_))))))
                        (let () (declare (not safe)) (_%$%g269253269314%_)))))
                (let () (declare (not safe)) (_%$%g269253269314%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx269573%_)
        (let* ((_%$%g269577269606%_
                (lambda (_%$%g269578269602%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269578269602%_))))
               (_%$%g269576269711%_
                (lambda (_%$%g269578269610%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269578269610%_))
                      (let ((_%$%e269580269613%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269578269610%_))))
                        (let ((_%$%hd269581269617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269580269613%_)))
                              (_%$%tl269582269620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269580269613%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl269582269620%_))
                              (let ((_g274192_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl269582269620%_
                                        '0))))
                                (begin
                                  (let ((_g274193_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g274192_)
                                               (##values-length _g274192_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g274193_ 2)))
                                        (error "Context expects 2 values"
                                               _g274193_)))
                                  (let ((_%$%target269583269623%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274192_ 0)))
                                        (_%$%tl269585269626%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274192_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl269585269626%_))
                                        (letrec ((_%$%loop269586269629%_
                                                  (lambda (_%$%hd269584269633%_
                                                           _%$%clause269590269636%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd269584269633%_))
                                                        (let ((_%$%e269587269638%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd269584269633%_))))
                  (let ((_%$%lp-hd269588269642%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e269587269638%_)))
                        (_%$%lp-tl269589269645%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e269587269638%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd269588269642%_))
                        (let ((_g274194_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd269588269642%_
                                  '0))))
                          (begin
                            (let ((_g274195_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g274194_)
                                         (##values-length _g274194_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g274195_ 2)))
                                  (error "Context expects 2 values"
                                         _g274195_)))
                            (let ((_%$%target269592269648%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g274194_ 0)))
                                  (_%$%tl269594269651%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g274194_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl269594269651%_))
                                  (letrec ((_%$%loop269595269654%_
                                            (lambda (_%$%hd269593269658%_
                                                     _%$%clause269599269661%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd269593269658%_))
                                                  (let ((_%$%e269596269663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd269593269658%_))))
                                                    (let ((_%$%lp-hd269597269667%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e269596269663%_)))
                                                          (_%$%lp-tl269598269670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e269596269663%_))))
                                                      (_%$%loop269595269654%_
                                                       _%$%lp-tl269598269670%_
                                                       (cons _%$%lp-hd269597269667%_
                                                             _%$%clause269599269661%_))))
                                                  (let ((_%$%clause269600269673%_
                                                         (reverse _%$%clause269599269661%_)))
                                                    (_%$%loop269586269629%_
                                                     _%$%lp-tl269589269645%_
                                                     (cons _%$%clause269600269673%_
                                                           _%$%clause269590269636%_)))))))
                                    (_%$%loop269595269654%_
                                     _%$%target269592269648%_
                                     '()))
                                  (_%$%g269577269606%_ _%$%g269578269610%_)))))
                        (_%$%g269577269606%_ _%$%g269578269610%_))))
                (let ((_%$%clause269591269676%_
                       (reverse _%$%clause269590269636%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp274196
                                           (lambda (_%$%g269694269699%_
                                                    _%$%g269695269702%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp274197
                                                                (lambda (_%$%g269696269705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g269697269708%_)
                          (cons _%$%g269696269705%_ _%$%g269697269708%_))))
                   (declare (not safe))
                   (foldr__0 __tmp274197 '() _%$%g269694269699%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g269695269702%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp274196
                                       '()
                                       _%$%clause269591269676%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop269586269629%_
                                           _%$%target269583269623%_
                                           '()))
                                        (_%$%g269577269606%_
                                         _%$%g269578269610%_)))))
                              (_%$%g269577269606%_ _%$%g269578269610%_))))
                      (_%$%g269577269606%_ _%$%g269578269610%_)))))
          (_%$%g269576269711%_ _%$stx269573%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx269717%_)
        (let* ((_%$%g269721269739%_
                (lambda (_%$%g269722269735%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269722269735%_))))
               (_%$%g269720269794%_
                (lambda (_%$%g269722269743%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269722269743%_))
                      (let ((_%$%e269725269746%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269722269743%_))))
                        (let ((_%$%hd269726269750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269725269746%_)))
                              (_%$%tl269727269753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269725269746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269727269753%_))
                              (let ((_%$%e269728269756%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269727269753%_))))
                                (let ((_%$%hd269729269760%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269728269756%_)))
                                      (_%$%tl269730269763%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269728269756%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl269730269763%_))
                                      (let ((_%$%e269731269766%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl269730269763%_))))
                                        (let ((_%$%hd269732269770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269731269766%_)))
                                              (_%$%tl269733269773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269731269766%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl269733269773%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd269729269760%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd269732269770%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269721269739%_
                                               _%$%g269722269743%_))))
                                      (_%$%g269721269739%_
                                       _%$%g269722269743%_))))
                              (_%$%g269721269739%_ _%$%g269722269743%_))))
                      (_%$%g269721269739%_ _%$%g269722269743%_)))))
          (_%$%g269720269794%_ _%$stx269717%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx269798%_)
        (let* ((_%$%g269802269820%_
                (lambda (_%$%g269803269816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269803269816%_))))
               (_%$%g269801269875%_
                (lambda (_%$%g269803269824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269803269824%_))
                      (let ((_%$%e269806269827%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269803269824%_))))
                        (let ((_%$%hd269807269831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269806269827%_)))
                              (_%$%tl269808269834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269806269827%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl269808269834%_))
                              (let ((_%$%e269809269837%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl269808269834%_))))
                                (let ((_%$%hd269810269841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e269809269837%_)))
                                      (_%$%tl269811269844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e269809269837%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl269811269844%_))
                                      (let ((_%$%e269812269847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl269811269844%_))))
                                        (let ((_%$%hd269813269851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e269812269847%_)))
                                              (_%$%tl269814269854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e269812269847%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl269814269854%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd269810269841%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd269813269851%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g269802269820%_
                                               _%$%g269803269824%_))))
                                      (_%$%g269802269820%_
                                       _%$%g269803269824%_))))
                              (_%$%g269802269820%_ _%$%g269803269824%_))))
                      (_%$%g269802269820%_ _%$%g269803269824%_)))))
          (_%$%g269801269875%_ _%$stx269798%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx269879%_)
        (let* ((_%$%g269883269912%_
                (lambda (_%$%g269884269908%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269884269908%_))))
               (_%$%g269882270008%_
                (lambda (_%$%g269884269916%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269884269916%_))
                      (let ((_%$%e269887269919%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269884269916%_))))
                        (let ((_%$%hd269888269923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269887269919%_)))
                              (_%$%tl269889269926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269887269919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl269889269926%_))
                              (let ((_g274198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl269889269926%_
                                        '0))))
                                (begin
                                  (let ((_g274199_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g274198_)
                                               (##values-length _g274198_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g274199_ 2)))
                                        (error "Context expects 2 values"
                                               _g274199_)))
                                  (let ((_%$%target269890269929%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274198_ 0)))
                                        (_%$%tl269892269932%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274198_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl269892269932%_))
                                        (letrec ((_%$%loop269893269935%_
                                                  (lambda (_%$%hd269891269939%_
                                                           _%$%rule269897269942%_
                                                           _%$%proc269898269943%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd269891269939%_))
                                                        (let ((_%$%e269894269945%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd269891269939%_))))
                  (let ((_%$%lp-hd269895269949%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e269894269945%_)))
                        (_%$%lp-tl269896269952%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e269894269945%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd269895269949%_))
                        (let ((_%$%e269901269955%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd269895269949%_))))
                          (let ((_%$%hd269902269959%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e269901269955%_)))
                                (_%$%tl269903269962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e269901269955%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl269903269962%_))
                                (let ((_%$%e269904269965%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl269903269962%_))))
                                  (let ((_%$%hd269905269969%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e269904269965%_)))
                                        (_%$%tl269906269972%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e269904269965%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl269906269972%_))
                                        (_%$%loop269893269935%_
                                         _%$%lp-tl269896269952%_
                                         (cons _%$%hd269905269969%_
                                               _%$%rule269897269942%_)
                                         (cons _%$%hd269902269959%_
                                               _%$%proc269898269943%_))
                                        (_%$%g269883269912%_
                                         _%$%g269884269916%_))))
                                (_%$%g269883269912%_ _%$%g269884269916%_))))
                        (_%$%g269883269912%_ _%$%g269884269916%_))))
                (let ((_%$%rule269899269975%_ (reverse _%$%rule269897269942%_))
                      (_%$%proc269900269977%_
                       (reverse _%$%proc269898269943%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule269899269975%_
                             _%$%proc269900269977%_))
                          (let ((__tmp274200
                                 (lambda (_%$%g269996270000%_
                                          _%$%g269997270003%_
                                          _%$%g269998270005%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g269997270003%_
                                                     (cons _%$%g269996270000%_
                                                           '())))
                                         _%$%g269998270005%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp274200
                             '()
                             _%$%rule269899269975%_
                             _%$%proc269900269977%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop269893269935%_
                                           _%$%target269890269929%_
                                           '()
                                           '()))
                                        (_%$%g269883269912%_
                                         _%$%g269884269916%_)))))
                              (_%$%g269883269912%_ _%$%g269884269916%_))))
                      (_%$%g269883269912%_ _%$%g269884269916%_)))))
          (_%$%g269882270008%_ _%$stx269879%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx270013%_)
        (let* ((_%$%g270017270035%_
                (lambda (_%$%g270018270031%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270018270031%_))))
               (_%$%g270016270090%_
                (lambda (_%$%g270018270039%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270018270039%_))
                      (let ((_%$%e270021270042%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270018270039%_))))
                        (let ((_%$%hd270022270046%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270021270042%_)))
                              (_%$%tl270023270049%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270021270042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270023270049%_))
                              (let ((_%$%e270024270052%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270023270049%_))))
                                (let ((_%$%hd270025270056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270024270052%_)))
                                      (_%$%tl270026270059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270024270052%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270026270059%_))
                                      (let ((_%$%e270027270062%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl270026270059%_))))
                                        (let ((_%$%hd270028270066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270027270062%_)))
                                              (_%$%tl270029270069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270027270062%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270029270069%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'let))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'type))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'optimizer-lookup-type))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd270025270056%_
                                                      '()))
                                          '()))
                              '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'if))
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             '!lambda?))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'type))
                                                '()))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'set!))
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '!lambda-inline))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'type))
                          '()))
              (cons _%$%hd270028270066%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'displayln))
                                                      (cons '"*** WARNING unknown procedure "
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd270025270056%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g270017270035%_
                                               _%$%g270018270039%_))))
                                      (_%$%g270017270035%_
                                       _%$%g270018270039%_))))
                              (_%$%g270017270035%_ _%$%g270018270039%_))))
                      (_%$%g270017270035%_ _%$%g270018270039%_)))))
          (_%$%g270016270090%_ _%$stx270013%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx270094%_)
        (let* ((_%__stx273680273681%_ _%$stx270094%_)
               (_%$%g270099270124%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx273680273681%_)))))
          (let ((_%__kont273683273684%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont273685273686%_
                 (lambda (_%$%g270104270171%_
                          _%$%g270105270173%_
                          _%$%g270106270174%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g270106270174%_
                                           (cons _%$%g270105270173%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g270104270171%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx273680273681%_))
                (let ((_%$%e270101270200%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx273680273681%_))))
                  (let ((_%$%tl270103270207%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270101270200%_)))
                        (_%$%hd270102270204%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270101270200%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl270103270207%_))
                        (_%__kont273683273684%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl270103270207%_))
                            (let ((_%$%e270110270141%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl270103270207%_))))
                              (let ((_%$%tl270112270148%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e270110270141%_)))
                                    (_%$%hd270111270145%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e270110270141%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd270111270145%_))
                                    (let ((_%$%e270113270151%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd270111270145%_))))
                                      (let ((_%$%tl270115270158%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e270113270151%_)))
                                            (_%$%hd270114270155%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e270113270151%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl270115270158%_))
                                            (let ((_%$%e270116270161%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl270115270158%_))))
                                              (let ((_%$%tl270118270168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270116270161%_)))
                                                    (_%$%hd270117270165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270116270161%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl270118270168%_))
                                                    (_%__kont273685273686%_
                                                     _%$%tl270112270148%_
                                                     _%$%hd270117270165%_
                                                     _%$%hd270114270155%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g270099270124%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270099270124%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g270099270124%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g270099270124%_))))))
                (let () (declare (not safe)) (_%$%g270099270124%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx270218%_)
        (let* ((_%__stx273724273725%_ _%$stx270218%_)
               (_%$%g270223270254%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx273724273725%_)))))
          (let ((_%__kont273727273728%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont273729273730%_
                 (lambda (_%$%g270228270319%_
                          _%$%g270229270321%_
                          _%$%g270230270322%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g270230270322%_
                                           (let ((__tmp274201
                                                  (lambda (_%$%g270342270345%_
                                                           _%$%g270343270348%_)
                                                    (cons _%$%g270342270345%_
                                                          _%$%g270343270348%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp274201
                                              '()
                                              _%$%g270229270321%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g270228270319%_)
                                     '()))))))
            (let ((_%__match273767273768%_
                   (lambda (_%$%e270231270261%_
                            _%$%hd270232270265%_
                            _%$%tl270233270268%_
                            _%$%e270234270271%_
                            _%$%hd270235270275%_
                            _%$%tl270236270278%_
                            _%$%e270237270281%_
                            _%$%hd270238270285%_
                            _%$%tl270239270288%_
                            _%__splice273731273732%_
                            _%$%target270240270291%_
                            _%$%tl270242270294%_)
                     (letrec ((_%$%loop270243270297%_
                               (lambda (_%$%hd270241270301%_
                                        _%$%sig270247270304%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd270241270301%_))
                                     (let ((_%$%e270244270306%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd270241270301%_))))
                                       (let ((_%$%lp-tl270246270313%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e270244270306%_)))
                                             (_%$%lp-hd270245270310%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e270244270306%_))))
                                         (_%$%loop270243270297%_
                                          _%$%lp-tl270246270313%_
                                          (cons _%$%lp-hd270245270310%_
                                                _%$%sig270247270304%_))))
                                     (let ((_%$%sig270248270316%_
                                            (reverse _%$%sig270247270304%_)))
                                       (_%__kont273729273730%_
                                        _%$%tl270236270278%_
                                        _%$%sig270248270316%_
                                        _%$%hd270238270285%_))))))
                       (_%$%loop270243270297%_
                        _%$%target270240270291%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx273724273725%_))
                  (let ((_%$%e270225270358%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx273724273725%_))))
                    (let ((_%$%tl270227270365%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270225270358%_)))
                          (_%$%hd270226270362%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270225270358%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl270227270365%_))
                          (_%__kont273727273728%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270227270365%_))
                              (let ((_%$%e270234270271%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270227270365%_))))
                                (let ((_%$%tl270236270278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270234270271%_)))
                                      (_%$%hd270235270275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270234270271%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd270235270275%_))
                                      (let ((_%$%e270237270281%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd270235270275%_))))
                                        (let ((_%$%tl270239270288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270237270281%_)))
                                              (_%$%hd270238270285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270237270281%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl270239270288%_))
                                              (let ((_%__splice273731273732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl270239270288%_
                                                        '0))))
                                                (let ((_%$%tl270242270294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice273731273732%_
                                                          '1)))
                                                      (_%$%target270240270291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice273731273732%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270242270294%_))
                                                      (_%__match273767273768%_
                                                       _%$%e270225270358%_
                                                       _%$%hd270226270362%_
                                                       _%$%tl270227270365%_
                                                       _%$%e270234270271%_
                                                       _%$%hd270235270275%_
                                                       _%$%tl270236270278%_
                                                       _%$%e270237270281%_
                                                       _%$%hd270238270285%_
                                                       _%$%tl270239270288%_
                                                       _%__splice273731273732%_
                                                       _%$%target270240270291%_
                                                       _%$%tl270242270294%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g270223270254%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g270223270254%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g270223270254%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g270223270254%_))))))
                  (let () (declare (not safe)) (_%$%g270223270254%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx270377%_)
        (let* ((_%__stx273770273771%_ _%$stx270377%_)
               (_%$%g270382270429%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx273770273771%_)))))
          (let ((_%__kont273773273774%_
                 (lambda (_%$%g270384270587%_ _%$%g270385270589%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g270385270589%_
                               (let ((__tmp274202
                                      (lambda (_%$%g270609270612%_
                                               _%$%g270610270615%_)
                                        (cons _%$%g270609270612%_
                                              _%$%g270610270615%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp274202
                                  '()
                                  _%$%g270384270587%_))))))
                (_%__kont273777273778%_
                 (lambda (_%$%g270407270484%_ _%$%g270408270486%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g270408270486%_
                               (let ((__tmp274203
                                      (lambda (_%$%g270503270506%_
                                               _%$%g270504270509%_)
                                        (cons _%$%g270503270506%_
                                              _%$%g270504270509%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp274203
                                  '()
                                  _%$%g270407270484%_)))))))
            (let* ((_%__match273837273838%_
                    (lambda (_%$%e270409270436%_
                             _%$%hd270410270440%_
                             _%$%tl270411270443%_
                             _%$%e270412270446%_
                             _%$%hd270413270450%_
                             _%$%tl270414270453%_
                             _%__splice273779273780%_
                             _%$%target270415270456%_
                             _%$%tl270417270459%_)
                      (letrec ((_%$%loop270418270462%_
                                (lambda (_%$%hd270416270466%_
                                         _%$%sig270422270469%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd270416270466%_))
                                      (let ((_%$%e270419270471%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd270416270466%_))))
                                        (let ((_%$%lp-tl270421270478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270419270471%_)))
                                              (_%$%lp-hd270420270475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270419270471%_))))
                                          (_%$%loop270418270462%_
                                           _%$%lp-tl270421270478%_
                                           (cons _%$%lp-hd270420270475%_
                                                 _%$%sig270422270469%_))))
                                      (let ((_%$%sig270423270481%_
                                             (reverse _%$%sig270422270469%_)))
                                        (_%__kont273777273778%_
                                         _%$%sig270423270481%_
                                         _%$%hd270413270450%_))))))
                        (_%$%loop270418270462%_
                         _%$%target270415270456%_
                         '()))))
                   (_%__match273829273830%_
                    (lambda (_%$%e270409270436%_
                             _%$%hd270410270440%_
                             _%$%tl270411270443%_
                             _%$%e270412270446%_
                             _%$%hd270413270450%_
                             _%$%tl270414270453%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl270414270453%_))
                          (let ((_%__splice273779273780%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl270414270453%_
                                    '0))))
                            (let ((_%$%tl270417270459%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice273779273780%_
                                      '1)))
                                  (_%$%target270415270456%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice273779273780%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl270417270459%_))
                                  (_%__match273837273838%_
                                   _%$%e270409270436%_
                                   _%$%hd270410270440%_
                                   _%$%tl270411270443%_
                                   _%$%e270412270446%_
                                   _%$%hd270413270450%_
                                   _%$%tl270414270453%_
                                   _%__splice273779273780%_
                                   _%$%target270415270456%_
                                   _%$%tl270417270459%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g270382270429%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g270382270429%_)))))
                   (_%__match273817273818%_
                    (lambda (_%$%e270386270519%_
                             _%$%hd270387270523%_
                             _%$%tl270388270526%_
                             _%$%e270389270529%_
                             _%$%hd270390270533%_
                             _%$%tl270391270536%_
                             _%$%e270392270539%_
                             _%$%hd270393270543%_
                             _%$%tl270394270546%_
                             _%$%e270395270549%_
                             _%$%hd270396270553%_
                             _%$%tl270397270556%_
                             _%__splice273775273776%_
                             _%$%target270398270559%_
                             _%$%tl270400270562%_)
                      (letrec ((_%$%loop270401270565%_
                                (lambda (_%$%hd270399270569%_
                                         _%$%sig270405270572%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd270399270569%_))
                                      (let ((_%$%e270402270574%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd270399270569%_))))
                                        (let ((_%$%lp-tl270404270581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270402270574%_)))
                                              (_%$%lp-hd270403270578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270402270574%_))))
                                          (_%$%loop270401270565%_
                                           _%$%lp-tl270404270581%_
                                           (cons _%$%lp-hd270403270578%_
                                                 _%$%sig270405270572%_))))
                                      (let ((_%$%sig270406270584%_
                                             (reverse _%$%sig270405270572%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl270394270546%_))
                                            (_%__kont273773273774%_
                                             _%$%sig270406270584%_
                                             _%$%hd270390270533%_)
                                            (_%__match273829273830%_
                                             _%$%e270386270519%_
                                             _%$%hd270387270523%_
                                             _%$%tl270388270526%_
                                             _%$%e270389270529%_
                                             _%$%hd270390270533%_
                                             _%$%tl270391270536%_)))))))
                        (_%$%loop270401270565%_
                         _%$%target270398270559%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx273770273771%_))
                  (let ((_%$%e270386270519%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx273770273771%_))))
                    (let ((_%$%tl270388270526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270386270519%_)))
                          (_%$%hd270387270523%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270386270519%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl270388270526%_))
                          (let ((_%$%e270389270529%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl270388270526%_))))
                            (let ((_%$%tl270391270536%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e270389270529%_)))
                                  (_%$%hd270390270533%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e270389270529%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl270391270536%_))
                                  (let ((_%$%e270392270539%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl270391270536%_))))
                                    (let ((_%$%tl270394270546%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270392270539%_)))
                                          (_%$%hd270393270543%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270392270539%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd270393270543%_))
                                          (let ((_%$%e270395270549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd270393270543%_))))
                                            (let ((_%$%tl270397270556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e270395270549%_)))
                                                  (_%$%hd270396270553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e270395270549%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd270396270553%_))
                                                  (if (let ((__tmp274204
                                                             |gxc[1]#_g274205_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp274204
                                                         _%$%hd270396270553%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl270397270556%_))
                                                          (let ((_%__splice273775273776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl270397270556%_
                            '0))))
                    (let ((_%$%tl270400270562%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice273775273776%_ '1)))
                          (_%$%target270398270559%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice273775273776%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl270400270562%_))
                          (_%__match273817273818%_
                           _%$%e270386270519%_
                           _%$%hd270387270523%_
                           _%$%tl270388270526%_
                           _%$%e270389270529%_
                           _%$%hd270390270533%_
                           _%$%tl270391270536%_
                           _%$%e270392270539%_
                           _%$%hd270393270543%_
                           _%$%tl270394270546%_
                           _%$%e270395270549%_
                           _%$%hd270396270553%_
                           _%$%tl270397270556%_
                           _%__splice273775273776%_
                           _%$%target270398270559%_
                           _%$%tl270400270562%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl270391270536%_))
                              (let ((_%__splice273779273780%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl270391270536%_
                                        '0))))
                                (let ((_%$%tl270417270459%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice273779273780%_
                                          '1)))
                                      (_%$%target270415270456%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice273779273780%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl270417270459%_))
                                      (_%__match273837273838%_
                                       _%$%e270386270519%_
                                       _%$%hd270387270523%_
                                       _%$%tl270388270526%_
                                       _%$%e270389270529%_
                                       _%$%hd270390270533%_
                                       _%$%tl270391270536%_
                                       _%__splice273779273780%_
                                       _%$%target270415270456%_
                                       _%$%tl270417270459%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g270382270429%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g270382270429%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl270391270536%_))
                      (let ((_%__splice273779273780%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl270391270536%_
                                '0))))
                        (let ((_%$%tl270417270459%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice273779273780%_ '1)))
                              (_%$%target270415270456%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice273779273780%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl270417270459%_))
                              (_%__match273837273838%_
                               _%$%e270386270519%_
                               _%$%hd270387270523%_
                               _%$%tl270388270526%_
                               _%$%e270389270529%_
                               _%$%hd270390270533%_
                               _%$%tl270391270536%_
                               _%__splice273779273780%_
                               _%$%target270415270456%_
                               _%$%tl270417270459%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g270382270429%_)))))
                      (let () (declare (not safe)) (_%$%g270382270429%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl270391270536%_))
                  (let ((_%__splice273779273780%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl270391270536%_
                            '0))))
                    (let ((_%$%tl270417270459%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice273779273780%_ '1)))
                          (_%$%target270415270456%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice273779273780%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl270417270459%_))
                          (_%__match273837273838%_
                           _%$%e270386270519%_
                           _%$%hd270387270523%_
                           _%$%tl270388270526%_
                           _%$%e270389270529%_
                           _%$%hd270390270533%_
                           _%$%tl270391270536%_
                           _%__splice273779273780%_
                           _%$%target270415270456%_
                           _%$%tl270417270459%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g270382270429%_)))))
                  (let () (declare (not safe)) (_%$%g270382270429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl270391270536%_))
                                                      (let ((_%__splice273779273780%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl270391270536%_
                        '0))))
                (let ((_%$%tl270417270459%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice273779273780%_ '1)))
                      (_%$%target270415270456%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice273779273780%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl270417270459%_))
                      (_%__match273837273838%_
                       _%$%e270386270519%_
                       _%$%hd270387270523%_
                       _%$%tl270388270526%_
                       _%$%e270389270529%_
                       _%$%hd270390270533%_
                       _%$%tl270391270536%_
                       _%__splice273779273780%_
                       _%$%target270415270456%_
                       _%$%tl270417270459%_)
                      (let () (declare (not safe)) (_%$%g270382270429%_)))))
              (let () (declare (not safe)) (_%$%g270382270429%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl270391270536%_))
                                              (let ((_%__splice273779273780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl270391270536%_
                                                        '0))))
                                                (let ((_%$%tl270417270459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice273779273780%_
                                                          '1)))
                                                      (_%$%target270415270456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice273779273780%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270417270459%_))
                                                      (_%__match273837273838%_
                                                       _%$%e270386270519%_
                                                       _%$%hd270387270523%_
                                                       _%$%tl270388270526%_
                                                       _%$%e270389270529%_
                                                       _%$%hd270390270533%_
                                                       _%$%tl270391270536%_
                                                       _%__splice273779273780%_
                                                       _%$%target270415270456%_
                                                       _%$%tl270417270459%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g270382270429%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g270382270429%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl270391270536%_))
                                      (let ((_%__splice273779273780%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl270391270536%_
                                                '0))))
                                        (let ((_%$%tl270417270459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice273779273780%_
                                                  '1)))
                                              (_%$%target270415270456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice273779273780%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270417270459%_))
                                              (_%__match273837273838%_
                                               _%$%e270386270519%_
                                               _%$%hd270387270523%_
                                               _%$%tl270388270526%_
                                               _%$%e270389270529%_
                                               _%$%hd270390270533%_
                                               _%$%tl270391270536%_
                                               _%__splice273779273780%_
                                               _%$%target270415270456%_
                                               _%$%tl270417270459%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g270382270429%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g270382270429%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g270382270429%_)))))
                  (let () (declare (not safe)) (_%$%g270382270429%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx271772%_ _%id271774%_)
        (let ((_%proc271778%_
               (let ((__tmp274206
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id271774%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp274206))))
          (if (procedure? _%proc271778%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx271772%_
                 _%id271774%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx271763%_ _%id271765%_)
        (let ((_%klass271769%_
               (let ((__tmp274207
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id271765%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp274207))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass271769%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx271763%_
                 _%id271765%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx271013%_ _%proc271015%_ _%sig271016%_)
        (letrec ((_%signature-arity271018%_
                  (lambda (_%args271695%_)
                    (let _%loop271698%_ ((_%rest271701%_ _%args271695%_)
                                         (_%count271703%_ '0))
                      (let* ((_%$%rest271704271715%_ _%rest271701%_)
                             (_%$%E271708271721%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest271704271715%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K271711271752%_
                               (lambda (_%rest271749%_)
                                 (_%loop271698%_
                                  _%rest271749%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count271703%_ '1)))))
                              (_%$%K271710271741%_ (lambda () _%count271703%_))
                              (_%$%K271709271729%_
                               (lambda () (cons _%count271703%_ '()))))
                          (let ((_%$%try-match271706271745%_
                                 (lambda ()
                                   (if (null? _%$%rest271704271715%_)
                                       (_%$%K271710271741%_)
                                       (_%$%K271709271729%_)))))
                            (if (pair? _%$%rest271704271715%_)
                                (let* ((_%$%tl271713271756%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest271704271715%_)))
                                       (_%rest271760%_ _%$%tl271713271756%_))
                                  (_%$%K271711271752%_ _%rest271760%_))
                                (_%$%try-match271706271745%_))))))))
                 (_%make-signature271020%_
                  (lambda (_%args271577%_
                           _%return271579%_
                           _%effect271580%_
                           _%unchecked271581%_)
                    (let ((__tmp274208
                           (lambda (_%$%g271582271584%_)
                             (|gxc[1]#verify-class!|
                              _%ctx271013%_
                              _%$%g271582271584%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp274208 _%args271577%_))
                    (|gxc[1]#verify-class!| _%ctx271013%_ _%return271579%_)
                    (if _%unchecked271581%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx271013%_
                         _%unchecked271581%_)
                        '#!void)
                    (let ((_%arity271588%_
                           (_%signature-arity271018%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args271577%_)))))
                      (if _%effect271580%_
                          (let ((_%effect271591%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect271580%_))))
                            (if (and (list? _%effect271591%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect271591%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx271013%_
                                   _%proc271015%_
                                   _%effect271591%_))))
                          '#!void)
                      (cons _%arity271588%_
                            (cons (let* ((_%$%g271594271617%_
                                          (lambda (_%$%g271595271613%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g271595271613%_))))
                                         (_%$%g271593271691%_
                                          (lambda (_%$%g271595271621%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g271595271621%_))
                                                (let ((_%$%e271600271624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g271595271621%_))))
                                                  (let ((_%$%hd271601271628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e271600271624%_)))
                                                        (_%$%tl271602271631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e271600271624%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl271602271631%_))
                                                        (let ((_%$%e271603271634%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl271602271631%_))))
                  (let ((_%$%hd271604271638%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e271603271634%_)))
                        (_%$%tl271605271641%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e271603271634%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl271605271641%_))
                        (let ((_%$%e271606271644%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl271605271641%_))))
                          (let ((_%$%hd271607271648%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271606271644%_)))
                                (_%$%tl271608271651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271606271644%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl271608271651%_))
                                (let ((_%$%e271609271654%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl271608271651%_))))
                                  (let ((_%$%hd271610271658%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e271609271654%_)))
                                        (_%$%tl271611271661%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e271609271654%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl271611271661%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!signature))
                                              (cons 'arguments:
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd271601271628%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd271604271638%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd271607271648%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd271610271658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'builtin))
                                      '()))
                          '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g271594271617%_
                                         _%$%g271595271621%_))))
                                (_%$%g271594271617%_ _%$%g271595271621%_))))
                        (_%$%g271594271617%_ _%$%g271595271621%_))))
                (_%$%g271594271617%_ _%$%g271595271621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g271594271617%_
                                                 _%$%g271595271621%_)))))
                                    (_%$%g271593271691%_
                                     (list _%args271577%_
                                           _%return271579%_
                                           _%effect271580%_
                                           _%unchecked271581%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx271013%_ _%proc271015%_)
          (let* ((_%__stx273848273849%_ _%sig271016%_)
                 (_%$%g271027271130%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx273848273849%_)))))
            (let ((_%__kont273851273852%_
                   (lambda (_%$%g271029271558%_ _%$%g271030271560%_)
                     (_%make-signature271020%_
                      _%$%g271030271560%_
                      _%$%g271029271558%_
                      '#f
                      '#f)))
                  (_%__kont273853273854%_
                   (lambda (_%$%g271037271509%_
                            _%$%g271038271511%_
                            _%$%g271039271512%_)
                     (_%make-signature271020%_
                      _%$%g271039271512%_
                      _%$%g271038271511%_
                      _%$%g271037271509%_
                      '#f)))
                  (_%__kont273855273856%_
                   (lambda (_%$%g271053271433%_
                            _%$%g271054271435%_
                            _%$%g271055271436%_)
                     (_%make-signature271020%_
                      _%$%g271055271436%_
                      _%$%g271054271435%_
                      _%$%g271053271433%_
                      (let ((__tmp274209
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc271015%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp274209)))))
                  (_%__kont273857273858%_
                   (lambda (_%$%g271073271339%_
                            _%$%g271074271341%_
                            _%$%g271075271342%_
                            _%$%g271076271343%_)
                     (_%make-signature271020%_
                      _%$%g271076271343%_
                      _%$%g271075271342%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g271073271339%_)))))
                  (_%__kont273859273860%_
                   (lambda (_%$%g271097271246%_ _%$%g271098271248%_)
                     (_%make-signature271020%_
                      _%$%g271098271248%_
                      _%$%g271097271246%_
                      '#f
                      (let ((__tmp274210
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc271015%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp274210)))))
                  (_%__kont273861273862%_
                   (lambda (_%$%g271109271181%_
                            _%$%g271110271183%_
                            _%$%g271111271184%_)
                     (_%make-signature271020%_
                      _%$%g271111271184%_
                      _%$%g271110271183%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g271109271181%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx273848273849%_))
                  (let ((_%$%e271031271538%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx273848273849%_))))
                    (let ((_%$%tl271033271545%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e271031271538%_)))
                          (_%$%hd271032271542%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e271031271538%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl271033271545%_))
                          (let ((_%$%e271034271548%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl271033271545%_))))
                            (let ((_%$%tl271036271555%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e271034271548%_)))
                                  (_%$%hd271035271552%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e271034271548%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl271036271555%_))
                                  (_%__kont273851273852%_
                                   _%$%hd271035271552%_
                                   _%$%hd271032271542%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271036271555%_))
                                      (let ((_%$%e271046271485%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271036271555%_))))
                                        (let ((_%$%tl271048271492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271046271485%_)))
                                              (_%$%hd271047271489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271046271485%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd271047271489%_))
                                              (let ((_%$%e271049271495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd271047271489%_))))
                                                (if (equal? _%$%e271049271495%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl271048271492%_))
                                                        (let ((_%$%e271050271499%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl271048271492%_))))
                  (let ((_%$%tl271052271506%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e271050271499%_)))
                        (_%$%hd271051271503%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e271050271499%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl271052271506%_))
                        (_%__kont273853273854%_
                         _%$%hd271051271503%_
                         _%$%hd271035271552%_
                         _%$%hd271032271542%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl271052271506%_))
                            (let ((_%$%e271069271419%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl271052271506%_))))
                              (let ((_%$%tl271071271426%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e271069271419%_)))
                                    (_%$%hd271070271423%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e271069271419%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd271070271423%_))
                                    (let ((_%$%e271072271429%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd271070271423%_))))
                                      (if (equal? _%$%e271072271429%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl271071271426%_))
                                              (_%__kont273855273856%_
                                               _%$%hd271051271503%_
                                               _%$%hd271035271552%_
                                               _%$%hd271032271542%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl271071271426%_))
                                                  (let ((_%$%e271094271329%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl271071271426%_))))
                                                    (let ((_%$%tl271096271336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e271094271329%_)))
                                                          (_%$%hd271095271333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e271094271329%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl271096271336%_))
                                                          (_%__kont273857273858%_
                                                           _%$%hd271095271333%_
                                                           _%$%hd271051271503%_
                                                           _%$%hd271035271552%_
                                                           _%$%hd271032271542%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g271027271130%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g271027271130%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g271027271130%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g271027271130%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g271027271130%_))))))
                (let () (declare (not safe)) (_%$%g271027271130%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e271049271495%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl271048271492%_))
                                                            (_%__kont273859273860%_
                                                             _%$%hd271035271552%_
                                                             _%$%hd271032271542%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl271048271492%_))
                        (let ((_%$%e271122271171%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl271048271492%_))))
                          (let ((_%$%tl271124271178%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271122271171%_)))
                                (_%$%hd271123271175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271122271171%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl271124271178%_))
                                (_%__kont273861273862%_
                                 _%$%hd271123271175%_
                                 _%$%hd271035271552%_
                                 _%$%hd271032271542%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g271027271130%_)))))
                        (let () (declare (not safe)) (_%$%g271027271130%_))))
                (let () (declare (not safe)) (_%$%g271027271130%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g271027271130%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g271027271130%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g271027271130%_)))))
                  (let () (declare (not safe)) (_%$%g271027271130%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig270624%_)
        (let* ((_%$%g270627270707%_
                (lambda (_%$%g270628270703%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g270628270703%_))))
               (_%$%g270626271009%_
                (lambda (_%$%g270628270711%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g270628270711%_))
                      (let ((_%$%e270634270714%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g270628270711%_))))
                        (let ((_%$%hd270635270718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270634270714%_)))
                              (_%$%tl270636270721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270634270714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl270636270721%_))
                              (let ((_%$%e270637270724%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl270636270721%_))))
                                (let ((_%$%hd270638270728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270637270724%_)))
                                      (_%$%tl270639270731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270637270724%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd270638270728%_))
                                      (let ((_%$%e270640270734%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd270638270728%_))))
                                        (if (equal? _%$%e270640270734%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl270639270731%_))
                                                (let ((_%$%e270641270738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl270639270731%_))))
                                                  (let ((_%$%hd270642270742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e270641270738%_)))
                                                        (_%$%tl270643270745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e270641270738%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd270642270742%_))
                                                        (let ((_%$%e270644270748%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd270642270742%_))))
                  (let ((_%$%hd270645270752%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270644270748%_)))
                        (_%$%tl270646270755%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270644270748%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd270645270752%_))
                        (if (let ((__tmp274211 |gxc[1]#_g274212_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp274211
                               _%$%hd270645270752%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl270646270755%_))
                                (let ((_%$%e270647270758%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl270646270755%_))))
                                  (let ((_%$%hd270648270762%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270647270758%_)))
                                        (_%$%tl270649270765%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270647270758%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270649270765%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl270643270745%_))
                                            (let ((_%$%e270650270768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl270643270745%_))))
                                              (let ((_%$%hd270651270772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270650270768%_)))
                                                    (_%$%tl270652270775%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270650270768%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd270651270772%_))
                                                    (let ((_%$%e270653270778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd270651270772%_))))
                                                      (if (equal? _%$%e270653270778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl270652270775%_))
                      (let ((_%$%e270654270782%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl270652270775%_))))
                        (let ((_%$%hd270655270786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270654270782%_)))
                              (_%$%tl270656270789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270654270782%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd270655270786%_))
                              (let ((_%$%e270657270792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd270655270786%_))))
                                (let ((_%$%hd270658270796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270657270792%_)))
                                      (_%$%tl270659270799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270657270792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd270658270796%_))
                                      (if (let ((__tmp274213
                                                 |gxc[1]#_g274214_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp274213
                                             _%$%hd270658270796%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl270659270799%_))
                                              (let ((_%$%e270660270802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl270659270799%_))))
                                                (let ((_%$%hd270661270806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e270660270802%_)))
                                                      (_%$%tl270662270809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e270660270802%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270662270809%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl270656270789%_))
                                                          (let ((_%$%e270663270812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl270656270789%_))))
                    (let ((_%$%hd270664270816%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270663270812%_)))
                          (_%$%tl270665270819%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270663270812%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd270664270816%_))
                          (let ((_%$%e270666270822%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd270664270816%_))))
                            (if (equal? _%$%e270666270822%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl270665270819%_))
                                    (let ((_%$%e270667270826%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl270665270819%_))))
                                      (let ((_%$%hd270668270830%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e270667270826%_)))
                                            (_%$%tl270669270833%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e270667270826%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd270668270830%_))
                                            (let ((_%$%e270670270836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd270668270830%_))))
                                              (let ((_%$%hd270671270840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270670270836%_)))
                                                    (_%$%tl270672270843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270670270836%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd270671270840%_))
                                                    (if (let ((__tmp274215
                                                               |gxc[1]#_g274216_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp274215
                                                           _%$%hd270671270840%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl270672270843%_))
                                                            (let ((_%$%e270673270846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl270672270843%_))))
                      (let ((_%$%hd270674270850%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e270673270846%_)))
                            (_%$%tl270675270853%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e270673270846%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl270675270853%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl270669270833%_))
                                (let ((_%$%e270676270856%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl270669270833%_))))
                                  (let ((_%$%hd270677270860%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270676270856%_)))
                                        (_%$%tl270678270863%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270676270856%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd270677270860%_))
                                        (let ((_%$%e270679270866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd270677270860%_))))
                                          (if (equal? _%$%e270679270866%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl270678270863%_))
                                                  (let ((_%$%e270680270870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl270678270863%_))))
                                                    (let ((_%$%hd270681270874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e270680270870%_)))
                                                          (_%$%tl270682270877%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e270680270870%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd270681270874%_))
                                                          (let ((_%$%e270683270880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd270681270874%_))))
                    (let ((_%$%hd270684270884%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270683270880%_)))
                          (_%$%tl270685270887%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270683270880%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd270684270884%_))
                          (if (let ((__tmp274217 |gxc[1]#_g274218_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp274217
                                 _%$%hd270684270884%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl270685270887%_))
                                  (let ((_%$%e270686270890%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl270685270887%_))))
                                    (let ((_%$%hd270687270894%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270686270890%_)))
                                          (_%$%tl270688270897%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270686270890%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl270688270897%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl270682270877%_))
                                              (let ((_%$%e270689270900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl270682270877%_))))
                                                (let ((_%$%hd270690270904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e270689270900%_)))
                                                      (_%$%tl270691270907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e270689270900%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd270690270904%_))
                                                      (let ((_%$%e270692270910%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd270690270904%_))))
                (if (equal? _%$%e270692270910%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl270691270907%_))
                        (let ((_%$%e270693270914%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl270691270907%_))))
                          (let ((_%$%hd270694270918%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270693270914%_)))
                                (_%$%tl270695270921%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270693270914%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd270694270918%_))
                                (let ((_%$%e270696270924%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd270694270918%_))))
                                  (let ((_%$%hd270697270928%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270696270924%_)))
                                        (_%$%tl270698270931%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270696270924%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd270697270928%_))
                                        (if (let ((__tmp274219
                                                   |gxc[1]#_g274220_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp274219
                                               _%$%hd270697270928%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl270698270931%_))
                                                (let ((_%$%e270699270934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl270698270931%_))))
                                                  (let ((_%$%hd270700270938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e270699270934%_)))
                                                        (_%$%tl270701270941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e270699270934%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270701270941%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl270695270921%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd270687270894%_))
                        (cons _%$%hd270687270894%_
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'make-!signature))
                                          (cons 'return:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd270661270806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd270700270938%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g270627270707%_ _%$%g270628270711%_))
                (_%$%g270627270707%_ _%$%g270628270711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g270627270707%_
                                                 _%$%g270628270711%_))
                                            (_%$%g270627270707%_
                                             _%$%g270628270711%_))
                                        (_%$%g270627270707%_
                                         _%$%g270628270711%_))))
                                (_%$%g270627270707%_ _%$%g270628270711%_))))
                        (_%$%g270627270707%_ _%$%g270628270711%_))
                    (_%$%g270627270707%_ _%$%g270628270711%_)))
              (_%$%g270627270707%_ _%$%g270628270711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g270627270707%_
                                               _%$%g270628270711%_))
                                          (_%$%g270627270707%_
                                           _%$%g270628270711%_))))
                                  (_%$%g270627270707%_ _%$%g270628270711%_))
                              (_%$%g270627270707%_ _%$%g270628270711%_))
                          (_%$%g270627270707%_ _%$%g270628270711%_))))
                  (_%$%g270627270707%_ _%$%g270628270711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g270627270707%_
                                                   _%$%g270628270711%_))
                                              (_%$%g270627270707%_
                                               _%$%g270628270711%_)))
                                        (_%$%g270627270707%_
                                         _%$%g270628270711%_))))
                                (_%$%g270627270707%_ _%$%g270628270711%_))
                            (_%$%g270627270707%_ _%$%g270628270711%_))))
                    (_%$%g270627270707%_ _%$%g270628270711%_))
                (_%$%g270627270707%_ _%$%g270628270711%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g270627270707%_
                                                     _%$%g270628270711%_))))
                                            (_%$%g270627270707%_
                                             _%$%g270628270711%_))))
                                    (_%$%g270627270707%_ _%$%g270628270711%_))
                                (_%$%g270627270707%_ _%$%g270628270711%_)))
                          (_%$%g270627270707%_ _%$%g270628270711%_))))
                  (_%$%g270627270707%_ _%$%g270628270711%_))
              (_%$%g270627270707%_ _%$%g270628270711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g270627270707%_
                                               _%$%g270628270711%_))
                                          (_%$%g270627270707%_
                                           _%$%g270628270711%_))
                                      (_%$%g270627270707%_
                                       _%$%g270628270711%_))))
                              (_%$%g270627270707%_ _%$%g270628270711%_))))
                      (_%$%g270627270707%_ _%$%g270628270711%_))
                  (_%$%g270627270707%_ _%$%g270628270711%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g270627270707%_
                                                     _%$%g270628270711%_))))
                                            (_%$%g270627270707%_
                                             _%$%g270628270711%_))
                                        (_%$%g270627270707%_
                                         _%$%g270628270711%_))))
                                (_%$%g270627270707%_ _%$%g270628270711%_))
                            (_%$%g270627270707%_ _%$%g270628270711%_))
                        (_%$%g270627270707%_ _%$%g270628270711%_))))
                (_%$%g270627270707%_ _%$%g270628270711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g270627270707%_
                                                 _%$%g270628270711%_))
                                            (_%$%g270627270707%_
                                             _%$%g270628270711%_)))
                                      (_%$%g270627270707%_
                                       _%$%g270628270711%_))))
                              (_%$%g270627270707%_ _%$%g270628270711%_))))
                      (_%$%g270627270707%_ _%$%g270628270711%_)))))
          (_%$%g270626271009%_ _%sig270624%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx271781%_)
        (let* ((_%$%g271784271802%_
                (lambda (_%$%g271785271798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271785271798%_))))
               (_%$%g271783271857%_
                (lambda (_%$%g271785271806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271785271806%_))
                      (let ((_%$%e271788271809%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271785271806%_))))
                        (let ((_%$%hd271789271813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271788271809%_)))
                              (_%$%tl271790271816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271788271809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271790271816%_))
                              (let ((_%$%e271791271819%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271790271816%_))))
                                (let ((_%$%hd271792271823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271791271819%_)))
                                      (_%$%tl271793271826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271791271819%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl271793271826%_))
                                      (let ((_%$%e271794271829%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl271793271826%_))))
                                        (let ((_%$%hd271795271833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e271794271829%_)))
                                              (_%$%tl271796271836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e271794271829%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl271796271836%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd271792271823%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd271795271833%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx271781%_
                                                     _%$%hd271792271823%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx271781%_
                                                     _%$%hd271795271833%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd271792271823%_
                                                                (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'make-!primitive-predicate))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd271795271833%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g271784271802%_
                                                   _%$%g271785271806%_))
                                              (_%$%g271784271802%_
                                               _%$%g271785271806%_))))
                                      (_%$%g271784271802%_
                                       _%$%g271785271806%_))))
                              (_%$%g271784271802%_ _%$%g271785271806%_))))
                      (_%$%g271784271802%_ _%$%g271785271806%_)))))
          (_%$%g271783271857%_ _%stx271781%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx271861%_)
        (let* ((_%$%g271864271888%_
                (lambda (_%$%g271865271884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271865271884%_))))
               (_%$%g271863272169%_
                (lambda (_%$%g271865271892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271865271892%_))
                      (let ((_%$%e271868271895%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g271865271892%_))))
                        (let ((_%$%hd271869271899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271868271895%_)))
                              (_%$%tl271870271902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271868271895%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271870271902%_))
                              (let ((_%$%e271871271905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl271870271902%_))))
                                (let ((_%$%hd271872271909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271871271905%_)))
                                      (_%$%tl271873271912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271871271905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl271873271912%_))
                                      (let ((_g274221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl271873271912%_
                                                '0))))
                                        (begin
                                          (let ((_g274222_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g274221_)
                                                       (##values-length
                                                        _g274221_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g274222_ 2)))
                                                (error "Context expects 2 values"
                                                       _g274222_)))
                                          (let ((_%$%target271874271915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g274221_ 0)))
                                                (_%$%tl271876271918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g274221_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl271876271918%_))
                                                (letrec ((_%$%loop271877271921%_
                                                          (lambda (_%$%hd271875271925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature271881271928%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd271875271925%_))
                        (let ((_%$%e271878271930%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd271875271925%_))))
                          (let ((_%$%lp-hd271879271934%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e271878271930%_)))
                                (_%$%lp-tl271880271937%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e271878271930%_))))
                            (_%$%loop271877271921%_
                             _%$%lp-tl271880271937%_
                             (cons _%$%lp-hd271879271934%_
                                   _%$%signature271881271928%_))))
                        (let ((_%$%signature271882271940%_
                               (reverse _%$%signature271881271928%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd271872271909%_))
                              (let* ((_%$%g271963271978%_
                                      (lambda (_%$%g271964271974%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g271964271974%_))))
                                     (_%$%g271962272157%_
                                      (lambda (_%$%g271964271982%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g271964271982%_))
                                            (let ((_%$%e271967271985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g271964271982%_))))
                                              (let ((_%$%hd271968271989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e271967271985%_)))
                                                    (_%$%tl271969271992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e271967271985%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl271969271992%_))
                                                    (let ((_%$%e271970271995%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl271969271992%_))))
                                                      (let ((_%$%hd271971271999%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e271970271995%_)))
                    (_%$%tl271972272002%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e271970271995%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl271972272002%_))
                    (let* ((_%$%g272023272031%_
                            (lambda (_%$%g272024272027%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g272024272027%_))))
                           (_%$%g272022272153%_
                            (lambda (_%$%g272024272035%_)
                              (let* ((_%unchecked272051%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd271971271999%_))
                                     (_%$%g272054272062%_
                                      (lambda (_%$%g272055272058%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g272055272058%_))))
                                     (_%$%g272053272085%_
                                      (lambda (_%$%g272055272066%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g272024272035%_
                                                    (cons _%$%g272055272066%_
                                                          '()))))))
                                (_%$%g272053272085%_
                                 (if _%unchecked272051%_
                                     (let* ((_%$%g272089272104%_
                                             (lambda (_%$%g272090272100%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g272090272100%_))))
                                            (_%$%g272088272149%_
                                             (lambda (_%$%g272090272108%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g272090272108%_))
                                                   (let ((_%$%e272093272111%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g272090272108%_))))
                                                     (let ((_%$%hd272094272115%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e272093272111%_)))
                                                           (_%$%tl272095272118%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e272093272111%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl272095272118%_))
                                                           (let ((_%$%e272096272121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl272095272118%_))))
                     (let ((_%$%hd272097272125%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e272096272121%_)))
                           (_%$%tl272098272128%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e272096272121%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl272098272128%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd272094272115%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd271968271989%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd272097272125%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g272089272104%_ _%$%g272090272108%_))))
                   (_%$%g272089272104%_ _%$%g272090272108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g272089272104%_
                                                    _%$%g272090272108%_)))))
                                       (_%$%g272088272149%_
                                        _%unchecked272051%_))
                                     '(begin)))))))
                      (_%$%g272022272153%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd271872271909%_
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-lambda))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%$%hd271968271989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd271971271999%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g271963271978%_ _%$%g271964271982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g271963271978%_
                                                     _%$%g271964271982%_))))
                                            (_%$%g271963271978%_
                                             _%$%g271964271982%_)))))
                                (_%$%g271962272157%_
                                 (|gxc[1]#parse-signature|
                                  _%stx271861%_
                                  _%$%hd271872271909%_
                                  (let ((__tmp274223
                                         (lambda (_%$%g272160272163%_
                                                  _%$%g272161272166%_)
                                           (cons _%$%g272160272163%_
                                                 _%$%g272161272166%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp274223
                                     '()
                                     _%$%signature271882271940%_)))))
                              (_%$%g271864271888%_ _%$%g271865271892%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop271877271921%_
                                                   _%$%target271874271915%_
                                                   '()))
                                                (_%$%g271864271888%_
                                                 _%$%g271865271892%_)))))
                                      (_%$%g271864271888%_
                                       _%$%g271865271892%_))))
                              (_%$%g271864271888%_ _%$%g271865271892%_))))
                      (_%$%g271864271888%_ _%$%g271865271892%_)))))
          (_%$%g271863272169%_ _%stx271861%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx272174%_)
        (let* ((_%$%g272177272201%_
                (lambda (_%$%g272178272197%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g272178272197%_))))
               (_%$%g272176273076%_
                (lambda (_%$%g272178272205%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g272178272205%_))
                      (let ((_%$%e272181272208%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g272178272205%_))))
                        (let ((_%$%hd272182272212%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272181272208%_)))
                              (_%$%tl272183272215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272181272208%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl272183272215%_))
                              (let ((_%$%e272184272218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl272183272215%_))))
                                (let ((_%$%hd272185272222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272184272218%_)))
                                      (_%$%tl272186272225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272184272218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl272186272225%_))
                                      (let ((_g274224_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl272186272225%_
                                                '0))))
                                        (begin
                                          (let ((_g274225_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g274224_)
                                                       (##values-length
                                                        _g274224_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g274225_ 2)))
                                                (error "Context expects 2 values"
                                                       _g274225_)))
                                          (let ((_%$%target272187272228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g274224_ 0)))
                                                (_%$%tl272189272231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g274224_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl272189272231%_))
                                                (letrec ((_%$%loop272190272234%_
                                                          (lambda (_%$%hd272188272238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature272194272241%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd272188272238%_))
                        (let ((_%$%e272191272243%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd272188272238%_))))
                          (let ((_%$%lp-hd272192272247%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272191272243%_)))
                                (_%$%lp-tl272193272250%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272191272243%_))))
                            (_%$%loop272190272234%_
                             _%$%lp-tl272193272250%_
                             (cons _%$%lp-hd272192272247%_
                                   _%$%case-signature272194272241%_))))
                        (let ((_%$%case-signature272195272253%_
                               (reverse _%$%case-signature272194272241%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd272185272222%_))
                              (let* ((_%signatures272289%_
                                      (map (lambda (_%$%g272275272277%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx272174%_
                                              _%$%hd272185272222%_
                                              _%$%g272275272277%_))
                                           (let ((__tmp274226
                                                  (lambda (_%$%g272280272283%_
                                                           _%$%g272281272286%_)
                                                    (cons _%$%g272280272283%_
                                                          _%$%g272281272286%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp274226
                                              '()
                                              _%$%case-signature272195272253%_))))
                                     (_%$%g272292272318%_
                                      (lambda (_%$%g272293272314%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g272293272314%_))))
                                     (_%$%g272291273072%_
                                      (lambda (_%$%g272293272322%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g272293272322%_))
                                            (let ((_g274227_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g272293272322%_
                                                      '0))))
                                              (begin
                                                (let ((_g274228_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g274227_)
                                                             (##values-length
                                                              _g274227_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g274228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g274228_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target272296272325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g274227_
                                                          0)))
                                                      (_%$%tl272298272328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g274227_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl272298272328%_))
                                                      (letrec ((_%$%loop272299272331%_
                                                                (lambda (_%$%hd272297272335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig272303272338%_
                                 _%$%arity272304272339%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd272297272335%_))
                              (let ((_%$%e272300272341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd272297272335%_))))
                                (let ((_%$%lp-hd272301272345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272300272341%_)))
                                      (_%$%lp-tl272302272348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272300272341%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd272301272345%_))
                                      (let ((_%$%e272307272351%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd272301272345%_))))
                                        (let ((_%$%hd272308272355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272307272351%_)))
                                              (_%$%tl272309272358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272307272351%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl272309272358%_))
                                              (let ((_%$%e272310272361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl272309272358%_))))
                                                (let ((_%$%hd272311272365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e272310272361%_)))
                                                      (_%$%tl272312272368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e272310272361%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl272312272368%_))
                                                      (_%$%loop272299272331%_
                                                       _%$%lp-tl272302272348%_
                                                       (cons _%$%hd272311272365%_
                                                             _%$%sig272303272338%_)
                                                       (cons _%$%hd272308272355%_
                                                             _%$%arity272304272339%_))
                                                      (_%$%g272292272318%_
                                                       _%$%g272293272322%_))))
                                              (_%$%g272292272318%_
                                               _%$%g272293272322%_))))
                                      (_%$%g272292272318%_
                                       _%$%g272293272322%_))))
                              (let ((_%$%sig272305272371%_
                                     (reverse _%$%sig272303272338%_))
                                    (_%$%arity272306272373%_
                                     (reverse _%$%arity272304272339%_)))
                                (let* ((_%$%g272394272402%_
                                        (lambda (_%$%g272395272398%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g272395272398%_))))
                                       (_%$%g272393273057%_
                                        (lambda (_%$%g272395272406%_)
                                          (let* ((_%$%g272422272430%_
                                                  (lambda (_%$%g272423272426%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g272423272426%_))))
                                                 (_%$%g272421272452%_
                                                  (lambda (_%$%g272423272434%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g272395272406%_
                                                                (cons _%$%g272423272434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g272421272452%_
                                             (let ((_g274229_
                                                    (let _%loop272456%_ ((_%rest272459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures272289%_)
                                 (_%unchecked-proc272461%_ '#f)
                                 (_%unchecked-clauses272462%_ '()))
              (let* ((_%$%rest272463272471%_ _%rest272459%_)
                     (_%$%else272465272483%_
                      (lambda ()
                        (values _%unchecked-proc272461%_
                                (reverse! _%unchecked-clauses272462%_))))
                     (_%$%K272467272924%_
                      (lambda (_%rest272487%_ _%hd272489%_)
                        (let* ((_%$%g272491272578%_
                                (lambda (_%$%g272492272574%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g272492272574%_))))
                               (_%$%g272490272920%_
                                (lambda (_%$%g272492272582%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g272492272582%_))
                                      (let ((_%$%e272499272585%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g272492272582%_))))
                                        (let ((_%$%hd272500272589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272499272585%_)))
                                              (_%$%tl272501272592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272499272585%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl272501272592%_))
                                              (let ((_%$%e272502272595%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl272501272592%_))))
                                                (let ((_%$%hd272503272599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e272502272595%_)))
                                                      (_%$%tl272504272602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e272502272595%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd272503272599%_))
                                                      (let ((_%$%e272505272605%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd272503272599%_))))
                (let ((_%$%hd272506272609%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e272505272605%_)))
                      (_%$%tl272507272612%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e272505272605%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl272507272612%_))
                      (let ((_%$%e272508272615%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl272507272612%_))))
                        (let ((_%$%hd272509272619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272508272615%_)))
                              (_%$%tl272510272622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272508272615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd272509272619%_))
                              (let ((_%$%e272511272625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd272509272619%_))))
                                (if (equal? _%$%e272511272625%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl272510272622%_))
                                        (let ((_%$%e272512272629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl272510272622%_))))
                                          (let ((_%$%hd272513272633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e272512272629%_)))
                                                (_%$%tl272514272636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e272512272629%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd272513272633%_))
                                                (let ((_%$%e272515272639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd272513272633%_))))
                                                  (let ((_%$%hd272516272643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e272515272639%_)))
                                                        (_%$%tl272517272646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e272515272639%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd272516272643%_))
                                                        (if (let ((__tmp274231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g274232_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp274231 _%$%hd272516272643%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl272517272646%_))
                        (let ((_%$%e272518272649%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl272517272646%_))))
                          (let ((_%$%hd272519272653%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272518272649%_)))
                                (_%$%tl272520272656%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272518272649%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl272520272656%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl272514272636%_))
                                    (let ((_%$%e272521272659%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl272514272636%_))))
                                      (let ((_%$%hd272522272663%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e272521272659%_)))
                                            (_%$%tl272523272666%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e272521272659%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd272522272663%_))
                                            (let ((_%$%e272524272669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd272522272663%_))))
                                              (if (equal? _%$%e272524272669%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl272523272666%_))
                                                      (let ((_%$%e272525272673%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl272523272666%_))))
                (let ((_%$%hd272526272677%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e272525272673%_)))
                      (_%$%tl272527272680%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e272525272673%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd272526272677%_))
                      (let ((_%$%e272528272683%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd272526272677%_))))
                        (let ((_%$%hd272529272687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272528272683%_)))
                              (_%$%tl272530272690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272528272683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd272529272687%_))
                              (if (let ((__tmp274233 |gxc[1]#_g274234_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp274233
                                     _%$%hd272529272687%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272530272690%_))
                                      (let ((_%$%e272531272693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl272530272690%_))))
                                        (let ((_%$%hd272532272697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272531272693%_)))
                                              (_%$%tl272533272700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272531272693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272533272700%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl272527272680%_))
                                                  (let ((_%$%e272534272703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl272527272680%_))))
                                                    (let ((_%$%hd272535272707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e272534272703%_)))
                                                          (_%$%tl272536272710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e272534272703%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd272535272707%_))
                                                          (let ((_%$%e272537272713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd272535272707%_))))
                    (if (equal? _%$%e272537272713%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl272536272710%_))
                            (let ((_%$%e272538272717%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl272536272710%_))))
                              (let ((_%$%hd272539272721%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e272538272717%_)))
                                    (_%$%tl272540272724%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e272538272717%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd272539272721%_))
                                    (let ((_%$%e272541272727%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd272539272721%_))))
                                      (let ((_%$%hd272542272731%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e272541272727%_)))
                                            (_%$%tl272543272734%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e272541272727%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd272542272731%_))
                                            (if (let ((__tmp274235
                                                       |gxc[1]#_g274236_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp274235
                                                   _%$%hd272542272731%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl272543272734%_))
                                                    (let ((_%$%e272544272737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl272543272734%_))))
                                                      (let ((_%$%hd272545272741%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e272544272737%_)))
                    (_%$%tl272546272744%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e272544272737%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl272546272744%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl272540272724%_))
                        (let ((_%$%e272547272747%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl272540272724%_))))
                          (let ((_%$%hd272548272751%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272547272747%_)))
                                (_%$%tl272549272754%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272547272747%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd272548272751%_))
                                (let ((_%$%e272550272757%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd272548272751%_))))
                                  (if (equal? _%$%e272550272757%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl272549272754%_))
                                          (let ((_%$%e272551272761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl272549272754%_))))
                                            (let ((_%$%hd272552272765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e272551272761%_)))
                                                  (_%$%tl272553272768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e272551272761%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd272552272765%_))
                                                  (let ((_%$%e272554272771%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd272552272765%_))))
                                                    (let ((_%$%hd272555272775%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e272554272771%_)))
                                                          (_%$%tl272556272778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e272554272771%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd272555272775%_))
                                                          (if (let ((__tmp274237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g274238_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp274237
                         _%$%hd272555272775%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl272556272778%_))
                          (let ((_%$%e272557272781%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl272556272778%_))))
                            (let ((_%$%hd272558272785%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e272557272781%_)))
                                  (_%$%tl272559272788%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e272557272781%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl272559272788%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272553272768%_))
                                      (let ((_%$%e272560272791%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl272553272768%_))))
                                        (let ((_%$%hd272561272795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272560272791%_)))
                                              (_%$%tl272562272798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272560272791%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd272561272795%_))
                                              (let ((_%$%e272563272801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd272561272795%_))))
                                                (if (equal? _%$%e272563272801%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl272562272798%_))
                                                        (let ((_%$%e272564272805%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl272562272798%_))))
                  (let ((_%$%hd272565272809%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272564272805%_)))
                        (_%$%tl272566272812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272564272805%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd272565272809%_))
                        (let ((_%$%e272567272815%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd272565272809%_))))
                          (let ((_%$%hd272568272819%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272567272815%_)))
                                (_%$%tl272569272822%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272567272815%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd272568272819%_))
                                (if (let ((__tmp274239 |gxc[1]#_g274240_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp274239
                                       _%$%hd272568272819%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl272569272822%_))
                                        (let ((_%$%e272570272825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl272569272822%_))))
                                          (let ((_%$%hd272571272829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e272570272825%_)))
                                                (_%$%tl272572272832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e272570272825%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl272572272832%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl272566272812%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272504272602%_))
                                                        (let ((_%clause272912%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd272500272589%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!signature))
                                                           (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%hd272532272697%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd272571272829%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked272914%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd272558272785%_))))
                  (_%loop272456%_
                   _%rest272487%_
                   (let ((_%$e272916%_ _%unchecked272914%_))
                     (if _%$e272916%_ _%$e272916%_ _%unchecked-proc272461%_))
                   (cons _%clause272912%_ _%unchecked-clauses272462%_)))
                (_%$%g272491272578%_ _%$%g272492272582%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g272491272578%_
                                                     _%$%g272492272582%_))
                                                (_%$%g272491272578%_
                                                 _%$%g272492272582%_))))
                                        (_%$%g272491272578%_
                                         _%$%g272492272582%_))
                                    (_%$%g272491272578%_ _%$%g272492272582%_))
                                (_%$%g272491272578%_ _%$%g272492272582%_))))
                        (_%$%g272491272578%_ _%$%g272492272582%_))))
                (_%$%g272491272578%_ _%$%g272492272582%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g272491272578%_
                                                     _%$%g272492272582%_)))
                                              (_%$%g272491272578%_
                                               _%$%g272492272582%_))))
                                      (_%$%g272491272578%_
                                       _%$%g272492272582%_))
                                  (_%$%g272491272578%_ _%$%g272492272582%_))))
                          (_%$%g272491272578%_ _%$%g272492272582%_))
                      (_%$%g272491272578%_ _%$%g272492272582%_))
                  (_%$%g272491272578%_ _%$%g272492272582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g272491272578%_
                                                   _%$%g272492272582%_))))
                                          (_%$%g272491272578%_
                                           _%$%g272492272582%_))
                                      (_%$%g272491272578%_
                                       _%$%g272492272582%_)))
                                (_%$%g272491272578%_ _%$%g272492272582%_))))
                        (_%$%g272491272578%_ _%$%g272492272582%_))
                    (_%$%g272491272578%_ _%$%g272492272582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g272491272578%_
                                                     _%$%g272492272582%_))
                                                (_%$%g272491272578%_
                                                 _%$%g272492272582%_))
                                            (_%$%g272491272578%_
                                             _%$%g272492272582%_))))
                                    (_%$%g272491272578%_
                                     _%$%g272492272582%_))))
                            (_%$%g272491272578%_ _%$%g272492272582%_))
                        (_%$%g272491272578%_ _%$%g272492272582%_)))
                  (_%$%g272491272578%_ _%$%g272492272582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g272491272578%_
                                                   _%$%g272492272582%_))
                                              (_%$%g272491272578%_
                                               _%$%g272492272582%_))))
                                      (_%$%g272491272578%_
                                       _%$%g272492272582%_))
                                  (_%$%g272491272578%_ _%$%g272492272582%_))
                              (_%$%g272491272578%_ _%$%g272492272582%_))))
                      (_%$%g272491272578%_ _%$%g272492272582%_))))
              (_%$%g272491272578%_ _%$%g272492272582%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g272491272578%_
                                                   _%$%g272492272582%_)))
                                            (_%$%g272491272578%_
                                             _%$%g272492272582%_))))
                                    (_%$%g272491272578%_ _%$%g272492272582%_))
                                (_%$%g272491272578%_ _%$%g272492272582%_))))
                        (_%$%g272491272578%_ _%$%g272492272582%_))
                    (_%$%g272491272578%_ _%$%g272492272582%_))
                (_%$%g272491272578%_ _%$%g272492272582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g272491272578%_
                                                 _%$%g272492272582%_))))
                                        (_%$%g272491272578%_
                                         _%$%g272492272582%_))
                                    (_%$%g272491272578%_ _%$%g272492272582%_)))
                              (_%$%g272491272578%_ _%$%g272492272582%_))))
                      (_%$%g272491272578%_ _%$%g272492272582%_))))
              (_%$%g272491272578%_ _%$%g272492272582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g272491272578%_
                                               _%$%g272492272582%_))))
                                      (_%$%g272491272578%_
                                       _%$%g272492272582%_)))))
                          (_%$%g272490272920%_ _%hd272489%_)))))
                (if (pair? _%$%rest272463272471%_)
                    (let ((_%$%hd272468272928%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest272463272471%_)))
                          (_%$%tl272469272931%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest272463272471%_))))
                      (let* ((_%hd272934%_ _%$%hd272468272928%_)
                             (_%rest272937%_ _%$%tl272469272931%_))
                        (_%$%K272467272924%_ _%rest272937%_ _%hd272934%_)))
                    (_%$%else272465272483%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g274230_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g274229_)
                                                              (##values-length
                                                               _g274229_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g274230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g274230_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc272940%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g274229_
                                                           0)))
                                                       (_%unchecked-clauses272942%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g274229_
                                                           1))))
                                                   (if _%unchecked-proc272940%_
                                                       (let* ((_%$%g272944272968%_
                                                               (lambda (_%$%g272945272964%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g272945272964%_))))
                      (_%$%g272943273053%_
                       (lambda (_%$%g272945272972%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g272945272972%_))
                             (let ((_%$%e272948272975%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g272945272972%_))))
                               (let ((_%$%hd272949272979%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e272948272975%_)))
                                     (_%$%tl272950272982%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e272948272975%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl272950272982%_))
                                     (let ((_%$%e272951272985%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl272950272982%_))))
                                       (let ((_%$%hd272952272989%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e272951272985%_)))
                                             (_%$%tl272953272992%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e272951272985%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd272952272989%_))
                                             (let ((_g274241_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd272952272989%_
                                                       '0))))
                                               (begin
                                                 (let ((_g274242_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g274241_)
                                                              (##values-length
                                                               _g274241_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g274242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g274242_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target272954272995%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g274241_
                                                           0)))
                                                       (_%$%tl272956272998%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g274241_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl272956272998%_))
                                                       (letrec ((_%$%loop272957273001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd272955273005%_
                                  _%$%clause272961273008%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd272955273005%_))
                               (let ((_%$%e272958273010%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd272955273005%_))))
                                 (let ((_%$%lp-hd272959273014%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e272958273010%_)))
                                       (_%$%lp-tl272960273017%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e272958273010%_))))
                                   (_%$%loop272957273001%_
                                    _%$%lp-tl272960273017%_
                                    (cons _%$%lp-hd272959273014%_
                                          _%$%clause272961273008%_))))
                               (let ((_%$%clause272962273020%_
                                      (reverse _%$%clause272961273008%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl272953272992%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd272949272979%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp274243
                                        (lambda (_%$%g273044273047%_
                                                 _%$%g273045273050%_)
                                          (cons _%$%g273044273047%_
                                                _%$%g273045273050%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp274243
                                    '()
                                    _%$%clause272962273020%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g272944272968%_
                                      _%$%g272945272972%_)))))))
                 (_%$%loop272957273001%_ _%$%target272954272995%_ '()))
               (_%$%g272944272968%_ _%$%g272945272972%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g272944272968%_
                                              _%$%g272945272972%_))))
                                     (_%$%g272944272968%_
                                      _%$%g272945272972%_))))
                             (_%$%g272944272968%_ _%$%g272945272972%_)))))
                 (_%$%g272943273053%_
                  (list _%unchecked-proc272940%_ _%unchecked-clauses272942%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g272393273057%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd272185272222%_
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!primitive-case-lambda))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '@list))
                               (begin
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-check-splice-targets
                                    _%$%sig272305272371%_
                                    _%$%arity272306272373%_))
                                 (let ((__tmp274244
                                        (lambda (_%$%g273060273064%_
                                                 _%$%g273061273067%_
                                                 _%$%g273062273069%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g273061273067%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g273060273064%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g273062273069%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp274244
                                    '()
                                    _%$%sig272305272371%_
                                    _%$%arity272306272373%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop272299272331%_ _%$%target272296272325%_ '() '()))
              (_%$%g272292272318%_ _%$%g272293272322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g272292272318%_
                                             _%$%g272293272322%_)))))
                                (_%$%g272291273072%_ _%signatures272289%_))
                              (_%$%g272177272201%_ _%$%g272178272205%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop272190272234%_
                                                   _%$%target272187272228%_
                                                   '()))
                                                (_%$%g272177272201%_
                                                 _%$%g272178272205%_)))))
                                      (_%$%g272177272201%_
                                       _%$%g272178272205%_))))
                              (_%$%g272177272201%_ _%$%g272178272205%_))))
                      (_%$%g272177272201%_ _%$%g272178272205%_)))))
          (_%$%g272176273076%_ _%stx272174%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx273084%_)
        (let* ((_%__stx274064274065%_ _%$stx273084%_)
               (_%$%g273090273150%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274064274065%_)))))
          (let ((_%__kont274067274068%_
                 (lambda (_%$%g273092273372%_ _%$%g273093273374%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g273093273374%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g273093273374%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g273092273372%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont274069274070%_
                 (lambda (_%$%g273107273297%_
                          _%$%g273108273299%_
                          _%$%g273109273300%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g273109273300%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g273109273300%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g273108273299%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g273107273297%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont274071274072%_
                 (lambda (_%$%g273126273211%_
                          _%$%g273127273213%_
                          _%$%g273128273214%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g273128273214%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g273128273214%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g273127273213%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g273126273211%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx274064274065%_))
                (let ((_%$%e273094273328%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx274064274065%_))))
                  (let ((_%$%tl273096273335%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e273094273328%_)))
                        (_%$%hd273095273332%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e273094273328%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl273096273335%_))
                        (let ((_%$%e273097273338%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl273096273335%_))))
                          (let ((_%$%tl273099273345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e273097273338%_)))
                                (_%$%hd273098273342%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e273097273338%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd273098273342%_))
                                (let ((_%$%e273100273348%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd273098273342%_))))
                                  (if (equal? _%$%e273100273348%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl273099273345%_))
                                          (let ((_%$%e273101273352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl273099273345%_))))
                                            (let ((_%$%tl273103273359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e273101273352%_)))
                                                  (_%$%hd273102273356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e273101273352%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl273103273359%_))
                                                  (let ((_%$%e273104273362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl273103273359%_))))
                                                    (let ((_%$%tl273106273369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e273104273362%_)))
                                                          (_%$%hd273105273366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e273104273362%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl273106273369%_))
                                                          (_%__kont274067274068%_
                                                           _%$%hd273105273366%_
                                                           _%$%hd273102273356%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g273090273150%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g273090273150%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g273090273150%_)))
                                      (if (equal? _%$%e273100273348%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl273099273345%_))
                                              (let ((_%$%e273117273267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl273099273345%_))))
                                                (let ((_%$%tl273119273274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e273117273267%_)))
                                                      (_%$%hd273118273271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e273117273267%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl273119273274%_))
                                                      (let ((_%$%e273120273277%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl273119273274%_))))
                (let ((_%$%tl273122273284%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e273120273277%_)))
                      (_%$%hd273121273281%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e273120273277%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl273122273284%_))
                      (let ((_%$%e273123273287%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl273122273284%_))))
                        (let ((_%$%tl273125273294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273123273287%_)))
                              (_%$%hd273124273291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273123273287%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl273125273294%_))
                              (_%__kont274069274070%_
                               _%$%hd273124273291%_
                               _%$%hd273121273281%_
                               _%$%hd273118273271%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g273090273150%_)))))
                      (let () (declare (not safe)) (_%$%g273090273150%_)))))
              (let () (declare (not safe)) (_%$%g273090273150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273090273150%_)))
                                          (if (equal? _%$%e273100273348%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl273099273345%_))
                                                  (let ((_%$%e273136273181%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl273099273345%_))))
                                                    (let ((_%$%tl273138273188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e273136273181%_)))
                                                          (_%$%hd273137273185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e273136273181%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl273138273188%_))
                                                          (let ((_%$%e273139273191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl273138273188%_))))
                    (let ((_%$%tl273141273198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273139273191%_)))
                          (_%$%hd273140273195%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273139273191%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl273141273198%_))
                          (let ((_%$%e273142273201%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl273141273198%_))))
                            (let ((_%$%tl273144273208%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e273142273201%_)))
                                  (_%$%hd273143273205%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e273142273201%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl273144273208%_))
                                  (_%__kont274071274072%_
                                   _%$%hd273143273205%_
                                   _%$%hd273140273195%_
                                   _%$%hd273137273185%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g273090273150%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g273090273150%_)))))
                  (let () (declare (not safe)) (_%$%g273090273150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g273090273150%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g273090273150%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g273090273150%_)))))
                        (let () (declare (not safe)) (_%$%g273090273150%_)))))
                (let () (declare (not safe)) (_%$%g273090273150%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx273396%_)
        (let* ((_%$%g273400273420%_
                (lambda (_%$%g273401273416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g273401273416%_))))
               (_%$%g273399273489%_
                (lambda (_%$%g273401273424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g273401273424%_))
                      (let ((_%$%e273403273427%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g273401273424%_))))
                        (let ((_%$%hd273404273431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273403273427%_)))
                              (_%$%tl273405273434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273403273427%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl273405273434%_))
                              (let ((_g274245_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl273405273434%_
                                        '0))))
                                (begin
                                  (let ((_g274246_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g274245_)
                                               (##values-length _g274245_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g274246_ 2)))
                                        (error "Context expects 2 values"
                                               _g274246_)))
                                  (let ((_%$%target273406273437%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274245_ 0)))
                                        (_%$%tl273408273440%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g274245_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl273408273440%_))
                                        (letrec ((_%$%loop273409273443%_
                                                  (lambda (_%$%hd273407273447%_
                                                           _%$%decl273413273450%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd273407273447%_))
                                                        (let ((_%$%e273410273452%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd273407273447%_))))
                  (let ((_%$%lp-hd273411273456%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e273410273452%_)))
                        (_%$%lp-tl273412273459%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e273410273452%_))))
                    (_%$%loop273409273443%_
                     _%$%lp-tl273412273459%_
                     (cons _%$%lp-hd273411273456%_ _%$%decl273413273450%_))))
                (let ((_%$%decl273414273462%_
                       (reverse _%$%decl273413273450%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp274247
                               (lambda (_%$%g273480273483%_
                                        _%$%g273481273486%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g273480273483%_)
                                       _%$%g273481273486%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp274247
                           '()
                           _%$%decl273414273462%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop273409273443%_
                                           _%$%target273406273437%_
                                           '()))
                                        (_%$%g273400273420%_
                                         _%$%g273401273424%_)))))
                              (_%$%g273400273420%_ _%$%g273401273424%_))))
                      (_%$%g273400273420%_ _%$%g273401273424%_)))))
          (_%$%g273399273489%_ _%$stx273396%_))))))
