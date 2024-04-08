(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g201716_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201723_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201725_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201727_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201729_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201731_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201743_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201745_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201747_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201749_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201751_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx195134%_)
        (let* ((_%g195138195156%_
                (lambda (_%g195139195152%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195139195152%_))))
               (_%g195137195211%_
                (lambda (_%g195139195160%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195139195160%_))
                      (let ((_%e195144195163%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195139195160%_))))
                        (let ((_%hd195143195167%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195144195163%_)))
                              (_%tl195142195170%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195144195163%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195142195170%_))
                              (let ((_%e195147195173%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195142195170%_))))
                                (let ((_%hd195146195177%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195147195173%_)))
                                      (_%tl195145195180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195147195173%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195145195180%_))
                                      (let ((_%e195150195183%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195145195180%_))))
                                        (let ((_%hd195149195187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195150195183%_)))
                                              (_%tl195148195190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195150195183%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195148195190%_))
                                              ((lambda (_%L195193%_
                                                        _%L195195%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195195%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L195195%_ '()))
                         (cons _%L195193%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195138195156%_
                                                      _%g195139195160%_)))
                                               _%hd195149195187%_
                                               _%hd195146195177%_)
                                              (_%g195138195156%_
                                               _%g195139195160%_))))
                                      (_%g195138195156%_ _%g195139195160%_))))
                              (_%g195138195156%_ _%g195139195160%_))))
                      (_%g195138195156%_ _%g195139195160%_)))))
          (_%g195137195211%_ _%$stx195134%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx195215%_)
        (let* ((_%g195219195237%_
                (lambda (_%g195220195233%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195220195233%_))))
               (_%g195218195292%_
                (lambda (_%g195220195241%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195220195241%_))
                      (let ((_%e195225195244%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195220195241%_))))
                        (let ((_%hd195224195248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195225195244%_)))
                              (_%tl195223195251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195225195244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195223195251%_))
                              (let ((_%e195228195254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195223195251%_))))
                                (let ((_%hd195227195258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195228195254%_)))
                                      (_%tl195226195261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195228195254%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195226195261%_))
                                      (let ((_%e195231195264%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195226195261%_))))
                                        (let ((_%hd195230195268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195231195264%_)))
                                              (_%tl195229195271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195231195264%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195229195271%_))
                                              ((lambda (_%L195274%_
                                                        _%L195276%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195276%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L195276%_ '()))
                         (cons _%L195274%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195219195237%_
                                                      _%g195220195241%_)))
                                               _%hd195230195268%_
                                               _%hd195227195258%_)
                                              (_%g195219195237%_
                                               _%g195220195241%_))))
                                      (_%g195219195237%_ _%g195220195241%_))))
                              (_%g195219195237%_ _%g195220195241%_))))
                      (_%g195219195237%_ _%g195220195241%_)))))
          (_%g195218195292%_ _%$stx195215%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx195296%_)
        (let* ((_%g195300195329%_
                (lambda (_%g195301195325%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195301195325%_))))
               (_%g195299195429%_
                (lambda (_%g195301195333%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195301195333%_))
                      (let ((_%e195306195336%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195301195333%_))))
                        (let ((_%hd195305195340%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195306195336%_)))
                              (_%tl195304195343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195306195336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195304195343%_))
                              (let ((_g201694_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195304195343%_
                                        '0))))
                                (begin
                                  (let ((_g201695_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201694_)
                                               (##vector-length _g201694_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201695_ 2)))
                                        (error "Context expects 2 values"
                                               _g201695_)))
                                  (let ((_%target195307195346%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201694_ 0)))
                                        (_%tl195309195349%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201694_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195309195349%_))
                                        (letrec ((_%loop195310195352%_
                                                  (lambda (_%hd195308195356%_
                                                           _%type195314195359%_
                                                           _%symbol195315195361%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195308195356%_))
                                                        (let ((_%e195311195364%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195308195356%_))))
                  (let ((_%lp-hd195312195368%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195311195364%_)))
                        (_%lp-tl195313195371%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195311195364%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195312195368%_))
                        (let ((_%e195320195374%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195312195368%_))))
                          (let ((_%hd195319195378%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195320195374%_)))
                                (_%tl195318195381%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195320195374%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195318195381%_))
                                (let ((_%e195323195384%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195318195381%_))))
                                  (let ((_%hd195322195388%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195323195384%_)))
                                        (_%tl195321195391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195323195384%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195321195391%_))
                                        (_%loop195310195352%_
                                         _%lp-tl195313195371%_
                                         (cons _%hd195322195388%_
                                               _%type195314195359%_)
                                         (cons _%hd195319195378%_
                                               _%symbol195315195361%_))
                                        (_%g195300195329%_
                                         _%g195301195333%_))))
                                (_%g195300195329%_ _%g195301195333%_))))
                        (_%g195300195329%_ _%g195301195333%_))))
                (let ((_%type195316195394%_ (reverse _%type195314195359%_))
                      (_%symbol195317195397%_
                       (reverse _%symbol195315195361%_)))
                  ((lambda (_%L195400%_ _%L195402%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195400%_
                                _%L195402%_))
                             (let ((__tmp201696
                                    (lambda (_%g195417195421%_
                                             _%g195418195424%_
                                             _%g195419195426%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195418195424%_
                                                        (cons _%g195417195421%_
                                                              '())))
                                            _%g195419195426%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201696
                                '()
                                _%L195400%_
                                _%L195402%_)))))
                   _%type195316195394%_
                   _%symbol195317195397%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195310195352%_
                                           _%target195307195346%_
                                           '()
                                           '()))
                                        (_%g195300195329%_
                                         _%g195301195333%_)))))
                              (_%g195300195329%_ _%g195301195333%_))))
                      (_%g195300195329%_ _%g195301195333%_)))))
          (_%g195299195429%_ _%$stx195296%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195434%_)
        (let* ((_%__stx201005201006%_ _%$stx195434%_)
               (_%g195439195481%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201005201006%_)))))
          (let ((_%__kont201008201009%_
                 (lambda (_%L195609%_ _%L195611%_ _%L195612%_ _%L195613%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195613%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195612%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195611%_ '()))
                                           (cons _%L195609%_ '())))))))
                (_%__kont201010201011%_
                 (lambda (_%L195528%_ _%L195530%_ _%L195531%_ _%L195532%_)
                   (cons _%L195532%_
                         (cons _%L195531%_
                               (cons _%L195530%_
                                     (cons _%L195528%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match201044201045%_
                   (lambda (_%e195447195559%_
                            _%hd195446195563%_
                            _%tl195445195566%_
                            _%e195450195569%_
                            _%hd195449195573%_
                            _%tl195448195576%_
                            _%e195453195579%_
                            _%hd195452195583%_
                            _%tl195451195586%_
                            _%e195456195589%_
                            _%hd195455195593%_
                            _%tl195454195596%_
                            _%e195459195599%_
                            _%hd195458195603%_
                            _%tl195457195606%_)
                     (let ((_%L195609%_ _%hd195458195603%_)
                           (_%L195611%_ _%hd195455195593%_)
                           (_%L195612%_ _%hd195452195583%_)
                           (_%L195613%_ _%hd195449195573%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195613%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195612%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195611%_)))
                           (_%__kont201008201009%_
                            _%L195609%_
                            _%L195611%_
                            _%L195612%_
                            _%L195613%_)
                           (let ()
                             (declare (not safe))
                             (_%g195439195481%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201005201006%_))
                  (let ((_%e195447195559%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201005201006%_))))
                    (let ((_%tl195445195566%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195447195559%_)))
                          (_%hd195446195563%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195447195559%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195445195566%_))
                          (let ((_%e195450195569%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195445195566%_))))
                            (let ((_%tl195448195576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195450195569%_)))
                                  (_%hd195449195573%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195450195569%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195448195576%_))
                                  (let ((_%e195453195579%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195448195576%_))))
                                    (let ((_%tl195451195586%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195453195579%_)))
                                          (_%hd195452195583%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195453195579%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195451195586%_))
                                          (let ((_%e195456195589%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195451195586%_))))
                                            (let ((_%tl195454195596%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195456195589%_)))
                                                  (_%hd195455195593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195456195589%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195454195596%_))
                                                  (let ((_%e195459195599%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195454195596%_))))
                                                    (let ((_%tl195457195606%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195459195599%_)))
                                                          (_%hd195458195603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195459195599%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195457195606%_))
                                                          (_%__match201044201045%_
                                                           _%e195447195559%_
                                                           _%hd195446195563%_
                                                           _%tl195445195566%_
                                                           _%e195450195569%_
                                                           _%hd195449195573%_
                                                           _%tl195448195576%_
                                                           _%e195453195579%_
                                                           _%hd195452195583%_
                                                           _%tl195451195586%_
                                                           _%e195456195589%_
                                                           _%hd195455195593%_
                                                           _%tl195454195596%_
                                                           _%e195459195599%_
                                                           _%hd195458195603%_
                                                           _%tl195457195606%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195439195481%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195454195596%_))
                                                      (_%__kont201010201011%_
                                                       _%hd195455195593%_
                                                       _%hd195452195583%_
                                                       _%hd195449195573%_
                                                       _%hd195446195563%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195439195481%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195439195481%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195439195481%_)))))
                          (let () (declare (not safe)) (_%g195439195481%_)))))
                  (let () (declare (not safe)) (_%g195439195481%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195638%_)
        (let* ((_%g195642195677%_
                (lambda (_%g195643195673%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195643195673%_))))
               (_%g195641195796%_
                (lambda (_%g195643195681%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195643195681%_))
                      (let ((_%e195649195684%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195643195681%_))))
                        (let ((_%hd195648195688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195649195684%_)))
                              (_%tl195647195691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195649195684%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195647195691%_))
                              (let ((_g201697_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195647195691%_
                                        '0))))
                                (begin
                                  (let ((_g201698_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201697_)
                                               (##vector-length _g201697_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201698_ 2)))
                                        (error "Context expects 2 values"
                                               _g201698_)))
                                  (let ((_%target195650195694%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201697_ 0)))
                                        (_%tl195652195697%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201697_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195652195697%_))
                                        (letrec ((_%loop195653195700%_
                                                  (lambda (_%hd195651195704%_
                                                           _%symbol195657195707%_
                                                           _%method195658195709%_
                                                           _%type-t195659195711%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195651195704%_))
                                                        (let ((_%e195654195714%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195651195704%_))))
                  (let ((_%lp-hd195655195718%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195654195714%_)))
                        (_%lp-tl195656195721%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195654195714%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195655195718%_))
                        (let ((_%e195665195724%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195655195718%_))))
                          (let ((_%hd195664195728%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195665195724%_)))
                                (_%tl195663195731%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195665195724%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195663195731%_))
                                (let ((_%e195668195734%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195663195731%_))))
                                  (let ((_%hd195667195738%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195668195734%_)))
                                        (_%tl195666195741%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195668195734%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195666195741%_))
                                        (let ((_%e195671195744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195666195741%_))))
                                          (let ((_%hd195670195748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195671195744%_)))
                                                (_%tl195669195751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195671195744%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195669195751%_))
                                                (_%loop195653195700%_
                                                 _%lp-tl195656195721%_
                                                 (cons _%hd195670195748%_
                                                       _%symbol195657195707%_)
                                                 (cons _%hd195667195738%_
                                                       _%method195658195709%_)
                                                 (cons _%hd195664195728%_
                                                       _%type-t195659195711%_))
                                                (_%g195642195677%_
                                                 _%g195643195681%_))))
                                        (_%g195642195677%_
                                         _%g195643195681%_))))
                                (_%g195642195677%_ _%g195643195681%_))))
                        (_%g195642195677%_ _%g195643195681%_))))
                (let ((_%symbol195660195754%_ (reverse _%symbol195657195707%_))
                      (_%method195661195757%_ (reverse _%method195658195709%_))
                      (_%type-t195662195759%_
                       (reverse _%type-t195659195711%_)))
                  ((lambda (_%L195762%_ _%L195764%_ _%L195765%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195762%_
                                _%L195764%_
                                _%L195765%_))
                             (let ((__tmp201699
                                    (lambda (_%g195781195786%_
                                             _%g195782195789%_
                                             _%g195783195791%_
                                             _%g195784195793%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g195783195791%_
                                                        (cons _%g195782195789%_
                                                              (cons _%g195781195786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g195784195793%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201699
                                '()
                                _%L195762%_
                                _%L195764%_
                                _%L195765%_)))))
                   _%symbol195660195754%_
                   _%method195661195757%_
                   _%type-t195662195759%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195653195700%_
                                           _%target195650195694%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195642195677%_
                                         _%g195643195681%_)))))
                              (_%g195642195677%_ _%g195643195681%_))))
                      (_%g195642195677%_ _%g195643195681%_)))))
          (_%g195641195796%_ _%$stx195638%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx195801%_)
        (let* ((_%g195805195838%_
                (lambda (_%g195806195834%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195806195834%_))))
               (_%g195804195952%_
                (lambda (_%g195806195842%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195806195842%_))
                      (let ((_%e195812195845%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195806195842%_))))
                        (let ((_%hd195811195849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195812195845%_)))
                              (_%tl195810195852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195812195845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195810195852%_))
                              (let ((_%e195815195855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195810195852%_))))
                                (let ((_%hd195814195859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195815195855%_)))
                                      (_%tl195813195862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195815195855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195813195862%_))
                                      (let ((_g201700_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195813195862%_
                                                '0))))
                                        (begin
                                          (let ((_g201701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201700_)
                                                       (##vector-length
                                                        _g201700_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201701_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201701_)))
                                          (let ((_%target195816195865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201700_ 0)))
                                                (_%tl195818195868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201700_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195818195868%_))
                                                (letrec ((_%loop195819195871%_
                                                          (lambda (_%hd195817195875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol195823195878%_
                           _%method195824195880%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195817195875%_))
                        (let ((_%e195820195883%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd195817195875%_))))
                          (let ((_%lp-hd195821195887%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195820195883%_)))
                                (_%lp-tl195822195890%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195820195883%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195821195887%_))
                                (let ((_%e195829195893%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd195821195887%_))))
                                  (let ((_%hd195828195897%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195829195893%_)))
                                        (_%tl195827195900%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195829195893%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195827195900%_))
                                        (let ((_%e195832195903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195827195900%_))))
                                          (let ((_%hd195831195907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195832195903%_)))
                                                (_%tl195830195910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195832195903%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195830195910%_))
                                                (_%loop195819195871%_
                                                 _%lp-tl195822195890%_
                                                 (cons _%hd195831195907%_
                                                       _%symbol195823195878%_)
                                                 (cons _%hd195828195897%_
                                                       _%method195824195880%_))
                                                (_%g195805195838%_
                                                 _%g195806195842%_))))
                                        (_%g195805195838%_
                                         _%g195806195842%_))))
                                (_%g195805195838%_ _%g195806195842%_))))
                        (let ((_%symbol195825195913%_
                               (reverse _%symbol195823195878%_))
                              (_%method195826195916%_
                               (reverse _%method195824195880%_)))
                          ((lambda (_%L195919%_ _%L195921%_ _%L195922%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L195919%_
                                        _%L195921%_))
                                     (let ((__tmp201702
                                            (lambda (_%g195940195944%_
                                                     _%g195941195947%_
                                                     _%g195942195949%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L195922%_
                                                                (cons _%g195941195947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g195940195944%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g195942195949%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201702
                                        '()
                                        _%L195919%_
                                        _%L195921%_)))))
                           _%symbol195825195913%_
                           _%method195826195916%_
                           _%hd195814195859%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195819195871%_
                                                   _%target195816195865%_
                                                   '()
                                                   '()))
                                                (_%g195805195838%_
                                                 _%g195806195842%_)))))
                                      (_%g195805195838%_ _%g195806195842%_))))
                              (_%g195805195838%_ _%g195806195842%_))))
                      (_%g195805195838%_ _%g195806195842%_)))))
          (_%g195804195952%_ _%$stx195801%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx195957%_)
        (let* ((_%g195961195975%_
                (lambda (_%g195962195971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195962195971%_))))
               (_%g195960196016%_
                (lambda (_%g195962195979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195962195979%_))
                      (let ((_%e195966195982%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195962195979%_))))
                        (let ((_%hd195965195986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195966195982%_)))
                              (_%tl195964195989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195966195982%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195964195989%_))
                              (let ((_%e195969195992%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195964195989%_))))
                                (let ((_%hd195968195996%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195969195992%_)))
                                      (_%tl195967195999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195969195992%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195967195999%_))
                                      ((lambda (_%L196002%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195968195996%_)
                                      (_%g195961195975%_ _%g195962195979%_))))
                              (_%g195961195975%_ _%g195962195979%_))))
                      (_%g195961195975%_ _%g195962195979%_)))))
          (_%g195960196016%_ _%$stx195957%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx196020%_)
        (let* ((_%g196024196078%_
                (lambda (_%g196025196074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196025196074%_))))
               (_%g196023196259%_
                (lambda (_%g196025196082%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196025196082%_))
                      (let ((_%e196039196085%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196025196082%_))))
                        (let ((_%hd196038196089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196039196085%_)))
                              (_%tl196037196092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196039196085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196037196092%_))
                              (let ((_%e196042196095%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196037196092%_))))
                                (let ((_%hd196041196099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196042196095%_)))
                                      (_%tl196040196102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196042196095%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196040196102%_))
                                      (let ((_%e196045196105%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196040196102%_))))
                                        (let ((_%hd196044196109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196045196105%_)))
                                              (_%tl196043196112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196045196105%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196043196112%_))
                                              (let ((_%e196048196115%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196043196112%_))))
                                                (let ((_%hd196047196119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196048196115%_)))
                                                      (_%tl196046196122%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196048196115%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196046196122%_))
                                                      (let ((_%e196051196125%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196046196122%_))))
                (let ((_%hd196050196129%_
                       (let () (declare (not safe)) (##car _%e196051196125%_)))
                      (_%tl196049196132%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196051196125%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196049196132%_))
                      (let ((_%e196054196135%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196049196132%_))))
                        (let ((_%hd196053196139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196054196135%_)))
                              (_%tl196052196142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196054196135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196052196142%_))
                              (let ((_%e196057196145%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196052196142%_))))
                                (let ((_%hd196056196149%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196057196145%_)))
                                      (_%tl196055196152%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196057196145%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196055196152%_))
                                      (let ((_%e196060196155%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196055196152%_))))
                                        (let ((_%hd196059196159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196060196155%_)))
                                              (_%tl196058196162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196060196155%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196058196162%_))
                                              (let ((_%e196063196165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196058196162%_))))
                                                (let ((_%hd196062196169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196063196165%_)))
                                                      (_%tl196061196172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196063196165%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196061196172%_))
                                                      (let ((_%e196066196175%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196061196172%_))))
                (let ((_%hd196065196179%_
                       (let () (declare (not safe)) (##car _%e196066196175%_)))
                      (_%tl196064196182%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196066196175%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196064196182%_))
                      (let ((_%e196069196185%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196064196182%_))))
                        (let ((_%hd196068196189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196069196185%_)))
                              (_%tl196067196192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196069196185%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196067196192%_))
                              (let ((_%e196072196195%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196067196192%_))))
                                (let ((_%hd196071196199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196072196195%_)))
                                      (_%tl196070196202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196072196195%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196070196202%_))
                                      ((lambda (_%L196205%_
                                                _%L196207%_
                                                _%L196208%_
                                                _%L196209%_
                                                _%L196210%_
                                                _%L196211%_
                                                _%L196212%_
                                                _%L196213%_
                                                _%L196214%_
                                                _%L196215%_
                                                _%L196216%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L196215%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L196214%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196213%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196212%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196211%_ '()))
                                           (cons _%L196210%_
                                                 (cons _%L196209%_
                                                       (cons _%L196208%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196207%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L196205%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd196071196199%_
                                       _%hd196068196189%_
                                       _%hd196065196179%_
                                       _%hd196062196169%_
                                       _%hd196059196159%_
                                       _%hd196056196149%_
                                       _%hd196053196139%_
                                       _%hd196050196129%_
                                       _%hd196047196119%_
                                       _%hd196044196109%_
                                       _%hd196041196099%_)
                                      (_%g196024196078%_ _%g196025196082%_))))
                              (_%g196024196078%_ _%g196025196082%_))))
                      (_%g196024196078%_ _%g196025196082%_))))
              (_%g196024196078%_ _%g196025196082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196024196078%_
                                               _%g196025196082%_))))
                                      (_%g196024196078%_ _%g196025196082%_))))
                              (_%g196024196078%_ _%g196025196082%_))))
                      (_%g196024196078%_ _%g196025196082%_))))
              (_%g196024196078%_ _%g196025196082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196024196078%_
                                               _%g196025196082%_))))
                                      (_%g196024196078%_ _%g196025196082%_))))
                              (_%g196024196078%_ _%g196025196082%_))))
                      (_%g196024196078%_ _%g196025196082%_)))))
          (_%g196023196259%_ _%$stx196020%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx196263%_)
        (let* ((_%g196267196281%_
                (lambda (_%g196268196277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196268196277%_))))
               (_%g196266196322%_
                (lambda (_%g196268196285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196268196285%_))
                      (let ((_%e196272196288%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196268196285%_))))
                        (let ((_%hd196271196292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196272196288%_)))
                              (_%tl196270196295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196272196288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196270196295%_))
                              (let ((_%e196275196298%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196270196295%_))))
                                (let ((_%hd196274196302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196275196298%_)))
                                      (_%tl196273196305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196275196298%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196273196305%_))
                                      ((lambda (_%L196308%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196274196302%_)
                                      (_%g196267196281%_ _%g196268196285%_))))
                              (_%g196267196281%_ _%g196268196285%_))))
                      (_%g196267196281%_ _%g196268196285%_)))))
          (_%g196266196322%_ _%$stx196263%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx196326%_)
        (let* ((_%g196330196344%_
                (lambda (_%g196331196340%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196331196340%_))))
               (_%g196329196385%_
                (lambda (_%g196331196348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196331196348%_))
                      (let ((_%e196335196351%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196331196348%_))))
                        (let ((_%hd196334196355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196335196351%_)))
                              (_%tl196333196358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196335196351%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196333196358%_))
                              (let ((_%e196338196361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196333196358%_))))
                                (let ((_%hd196337196365%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196338196361%_)))
                                      (_%tl196336196368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196338196361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196336196368%_))
                                      ((lambda (_%L196371%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196337196365%_)
                                      (_%g196330196344%_ _%g196331196348%_))))
                              (_%g196330196344%_ _%g196331196348%_))))
                      (_%g196330196344%_ _%g196331196348%_)))))
          (_%g196329196385%_ _%$stx196326%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx196389%_)
        (let* ((_%g196393196415%_
                (lambda (_%g196394196411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196394196411%_))))
               (_%g196392196484%_
                (lambda (_%g196394196419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196394196419%_))
                      (let ((_%e196400196422%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196394196419%_))))
                        (let ((_%hd196399196426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196400196422%_)))
                              (_%tl196398196429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196400196422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196398196429%_))
                              (let ((_%e196403196432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196398196429%_))))
                                (let ((_%hd196402196436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196403196432%_)))
                                      (_%tl196401196439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196403196432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196401196439%_))
                                      (let ((_%e196406196442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196401196439%_))))
                                        (let ((_%hd196405196446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196406196442%_)))
                                              (_%tl196404196449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196406196442%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196404196449%_))
                                              (let ((_%e196409196452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196404196449%_))))
                                                (let ((_%hd196408196456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196409196452%_)))
                                                      (_%tl196407196459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196409196452%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196407196459%_))
                                                      ((lambda (_%L196462%_
                                                                _%L196464%_
                                                                _%L196465%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196465%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196464%_ '()))
                                   (cons _%L196462%_ '())))))
               _%hd196408196456%_
               _%hd196405196446%_
               _%hd196402196436%_)
              (_%g196393196415%_ _%g196394196419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196393196415%_
                                               _%g196394196419%_))))
                                      (_%g196393196415%_ _%g196394196419%_))))
                              (_%g196393196415%_ _%g196394196419%_))))
                      (_%g196393196415%_ _%g196394196419%_)))))
          (_%g196392196484%_ _%$stx196389%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196488%_)
        (let* ((_%g196492196514%_
                (lambda (_%g196493196510%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196493196510%_))))
               (_%g196491196583%_
                (lambda (_%g196493196518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196493196518%_))
                      (let ((_%e196499196521%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196493196518%_))))
                        (let ((_%hd196498196525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196499196521%_)))
                              (_%tl196497196528%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196499196521%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196497196528%_))
                              (let ((_%e196502196531%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196497196528%_))))
                                (let ((_%hd196501196535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196502196531%_)))
                                      (_%tl196500196538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196502196531%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196500196538%_))
                                      (let ((_%e196505196541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196500196538%_))))
                                        (let ((_%hd196504196545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196505196541%_)))
                                              (_%tl196503196548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196505196541%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196503196548%_))
                                              (let ((_%e196508196551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196503196548%_))))
                                                (let ((_%hd196507196555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196508196551%_)))
                                                      (_%tl196506196558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196508196551%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196506196558%_))
                                                      ((lambda (_%L196561%_
                                                                _%L196563%_
                                                                _%L196564%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196564%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196563%_ '()))
                                   (cons _%L196561%_ '())))))
               _%hd196507196555%_
               _%hd196504196545%_
               _%hd196501196535%_)
              (_%g196492196514%_ _%g196493196518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196492196514%_
                                               _%g196493196518%_))))
                                      (_%g196492196514%_ _%g196493196518%_))))
                              (_%g196492196514%_ _%g196493196518%_))))
                      (_%g196492196514%_ _%g196493196518%_)))))
          (_%g196491196583%_ _%$stx196488%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196587%_)
        (let* ((_%g196591196605%_
                (lambda (_%g196592196601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196592196601%_))))
               (_%g196590196646%_
                (lambda (_%g196592196609%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196592196609%_))
                      (let ((_%e196596196612%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196592196609%_))))
                        (let ((_%hd196595196616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196596196612%_)))
                              (_%tl196594196619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196596196612%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196594196619%_))
                              (let ((_%e196599196622%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196594196619%_))))
                                (let ((_%hd196598196626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196599196622%_)))
                                      (_%tl196597196629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196599196622%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196597196629%_))
                                      ((lambda (_%L196632%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196598196626%_)
                                      (_%g196591196605%_ _%g196592196609%_))))
                              (_%g196591196605%_ _%g196592196609%_))))
                      (_%g196591196605%_ _%g196592196609%_)))))
          (_%g196590196646%_ _%$stx196587%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196650%_)
        (let* ((_%g196654196672%_
                (lambda (_%g196655196668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196655196668%_))))
               (_%g196653196727%_
                (lambda (_%g196655196676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196655196676%_))
                      (let ((_%e196660196679%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196655196676%_))))
                        (let ((_%hd196659196683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196660196679%_)))
                              (_%tl196658196686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196660196679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196658196686%_))
                              (let ((_%e196663196689%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196658196686%_))))
                                (let ((_%hd196662196693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196663196689%_)))
                                      (_%tl196661196696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196663196689%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196661196696%_))
                                      (let ((_%e196666196699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196661196696%_))))
                                        (let ((_%hd196665196703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196666196699%_)))
                                              (_%tl196664196706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196666196699%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196664196706%_))
                                              ((lambda (_%L196709%_
                                                        _%L196711%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196711%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196709%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196665196703%_
                                               _%hd196662196693%_)
                                              (_%g196654196672%_
                                               _%g196655196676%_))))
                                      (_%g196654196672%_ _%g196655196676%_))))
                              (_%g196654196672%_ _%g196655196676%_))))
                      (_%g196654196672%_ _%g196655196676%_)))))
          (_%g196653196727%_ _%$stx196650%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx196731%_)
        (let* ((_%__stx201073201074%_ _%$stx196731%_)
               (_%g196738196799%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201073201074%_)))))
          (let ((_%__kont201076201077%_
                 (lambda (_%L197037%_ _%L197039%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197039%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197037%_ '()))
                                     '())))))
                (_%__kont201078201079%_
                 (lambda (_%L196976%_ _%L196978%_ _%L196979%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196979%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196978%_ '()))
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
                                 (cons _%L196976%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont201080201081%_
                 (lambda (_%L196900%_ _%L196902%_)
                   (cons _%L196902%_ (cons _%L196900%_ (cons '#f '())))))
                (_%__kont201082201083%_
                 (lambda (_%L196850%_ _%L196852%_ _%L196853%_)
                   (cons _%L196853%_
                         (cons _%L196852%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L196850%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201073201074%_))
                (let ((_%e196744197007%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201073201074%_))))
                  (let ((_%tl196742197014%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196744197007%_)))
                        (_%hd196743197011%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196744197007%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196742197014%_))
                        (let ((_%e196747197017%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl196742197014%_))))
                          (let ((_%tl196745197024%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196747197017%_)))
                                (_%hd196746197021%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196747197017%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196745197024%_))
                                (let ((_%e196750197027%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196745197024%_))))
                                  (let ((_%tl196748197034%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196750197027%_)))
                                        (_%hd196749197031%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196750197027%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196748197034%_))
                                        (_%__kont201076201077%_
                                         _%hd196749197031%_
                                         _%hd196746197021%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196748197034%_))
                                            (let ((_%e196765196952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl196748197034%_))))
                                              (let ((_%tl196763196959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196765196952%_)))
                                                    (_%hd196764196956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196765196952%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd196764196956%_))
                                                    (let ((_%e196766196962%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd196764196956%_))))
                                                      (if (equal? _%e196766196962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196763196959%_))
                      (let ((_%e196769196966%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196763196959%_))))
                        (let ((_%tl196767196973%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196769196966%_)))
                              (_%hd196768196970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196769196966%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196767196973%_))
                              (_%__kont201078201079%_
                               _%hd196768196970%_
                               _%hd196749197031%_
                               _%hd196746197021%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd196749197031%_))
                                  (let ((_%e196790196836%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196749197031%_))))
                                    (declare (not safe))
                                    (_%g196738196799%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196738196799%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd196749197031%_))
                          (let ((_%e196790196836%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196749197031%_))))
                            (if (equal? _%e196790196836%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196763196959%_))
                                    (_%__kont201082201083%_
                                     _%hd196764196956%_
                                     _%hd196746197021%_
                                     _%hd196743197011%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196738196799%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g196738196799%_))))
                          (let () (declare (not safe)) (_%g196738196799%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd196749197031%_))
                      (let ((_%e196790196836%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd196749197031%_))))
                        (if (equal? _%e196790196836%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196763196959%_))
                                (_%__kont201082201083%_
                                 _%hd196764196956%_
                                 _%hd196746197021%_
                                 _%hd196743197011%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196738196799%_)))
                            (let () (declare (not safe)) (_%g196738196799%_))))
                      (let () (declare (not safe)) (_%g196738196799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd196749197031%_))
                                                        (let ((_%e196790196836%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196749197031%_))))
                  (if (equal? _%e196790196836%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196763196959%_))
                          (_%__kont201082201083%_
                           _%hd196764196956%_
                           _%hd196746197021%_
                           _%hd196743197011%_)
                          (let () (declare (not safe)) (_%g196738196799%_)))
                      (let () (declare (not safe)) (_%g196738196799%_))))
                (let () (declare (not safe)) (_%g196738196799%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd196749197031%_))
                                                (let ((_%e196790196836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd196749197031%_))))
                                                  (declare (not safe))
                                                  (_%g196738196799%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196738196799%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196745197024%_))
                                    (_%__kont201080201081%_
                                     _%hd196746197021%_
                                     _%hd196743197011%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196738196799%_))))))
                        (let () (declare (not safe)) (_%g196738196799%_)))))
                (let () (declare (not safe)) (_%g196738196799%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx197058%_)
        (let* ((_%g197062197091%_
                (lambda (_%g197063197087%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197063197087%_))))
               (_%g197061197200%_
                (lambda (_%g197063197095%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197063197095%_))
                      (let ((_%e197067197098%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197063197095%_))))
                        (let ((_%hd197066197102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197067197098%_)))
                              (_%tl197065197105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197067197098%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197065197105%_))
                              (let ((_g201703_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197065197105%_
                                        '0))))
                                (begin
                                  (let ((_g201704_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201703_)
                                               (##vector-length _g201703_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201704_ 2)))
                                        (error "Context expects 2 values"
                                               _g201704_)))
                                  (let ((_%target197068197108%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201703_ 0)))
                                        (_%tl197070197111%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201703_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197070197111%_))
                                        (letrec ((_%loop197071197114%_
                                                  (lambda (_%hd197069197118%_
                                                           _%clause197075197121%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197069197118%_))
                                                        (let ((_%e197072197124%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197069197118%_))))
                  (let ((_%lp-hd197073197128%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197072197124%_)))
                        (_%lp-tl197074197131%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197072197124%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd197073197128%_))
                        (let ((_g201705_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd197073197128%_
                                  '0))))
                          (begin
                            (let ((_g201706_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201705_)
                                         (##vector-length _g201705_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201706_ 2)))
                                  (error "Context expects 2 values"
                                         _g201706_)))
                            (let ((_%target197077197134%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201705_ 0)))
                                  (_%tl197079197137%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201705_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197079197137%_))
                                  (letrec ((_%loop197080197140%_
                                            (lambda (_%hd197078197144%_
                                                     _%clause197084197147%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd197078197144%_))
                                                  (let ((_%e197081197150%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd197078197144%_))))
                                                    (let ((_%lp-hd197082197154%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197081197150%_)))
                                                          (_%lp-tl197083197157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197081197150%_))))
                                                      (_%loop197080197140%_
                                                       _%lp-tl197083197157%_
                                                       (cons _%lp-hd197082197154%_
                                                             _%clause197084197147%_))))
                                                  (let ((_%clause197085197160%_
                                                         (reverse _%clause197084197147%_)))
                                                    (_%loop197071197114%_
                                                     _%lp-tl197074197131%_
                                                     (cons _%clause197085197160%_
                                                           _%clause197075197121%_)))))))
                                    (_%loop197080197140%_
                                     _%target197077197134%_
                                     '()))
                                  (_%g197062197091%_ _%g197063197095%_)))))
                        (_%g197062197091%_ _%g197063197095%_))))
                (let ((_%clause197076197164%_
                       (reverse _%clause197075197121%_)))
                  ((lambda (_%L197168%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp201707
                                              (lambda (_%g197183197188%_
                                                       _%g197184197191%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp201708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g197185197194%_ _%g197186197197%_)
                             (cons _%g197185197194%_ _%g197186197197%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201708 '() _%g197183197188%_)))
              _%g197184197191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp201707
                                          '()
                                          _%L197168%_)))
                                 '())))
                   _%clause197076197164%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197071197114%_
                                           _%target197068197108%_
                                           '()))
                                        (_%g197062197091%_
                                         _%g197063197095%_)))))
                              (_%g197062197091%_ _%g197063197095%_))))
                      (_%g197062197091%_ _%g197063197095%_)))))
          (_%g197061197200%_ _%$stx197058%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx197206%_)
        (let* ((_%g197210197228%_
                (lambda (_%g197211197224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197211197224%_))))
               (_%g197209197283%_
                (lambda (_%g197211197232%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197211197232%_))
                      (let ((_%e197216197235%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197211197232%_))))
                        (let ((_%hd197215197239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197216197235%_)))
                              (_%tl197214197242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197216197235%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197214197242%_))
                              (let ((_%e197219197245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197214197242%_))))
                                (let ((_%hd197218197249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197219197245%_)))
                                      (_%tl197217197252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197219197245%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197217197252%_))
                                      (let ((_%e197222197255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197217197252%_))))
                                        (let ((_%hd197221197259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197222197255%_)))
                                              (_%tl197220197262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197222197255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197220197262%_))
                                              ((lambda (_%L197265%_
                                                        _%L197267%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197267%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197265%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197221197259%_
                                               _%hd197218197249%_)
                                              (_%g197210197228%_
                                               _%g197211197232%_))))
                                      (_%g197210197228%_ _%g197211197232%_))))
                              (_%g197210197228%_ _%g197211197232%_))))
                      (_%g197210197228%_ _%g197211197232%_)))))
          (_%g197209197283%_ _%$stx197206%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx197287%_)
        (let* ((_%g197291197309%_
                (lambda (_%g197292197305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197292197305%_))))
               (_%g197290197364%_
                (lambda (_%g197292197313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197292197313%_))
                      (let ((_%e197297197316%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197292197313%_))))
                        (let ((_%hd197296197320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197297197316%_)))
                              (_%tl197295197323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197297197316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197295197323%_))
                              (let ((_%e197300197326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197295197323%_))))
                                (let ((_%hd197299197330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197300197326%_)))
                                      (_%tl197298197333%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197300197326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197298197333%_))
                                      (let ((_%e197303197336%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197298197333%_))))
                                        (let ((_%hd197302197340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197303197336%_)))
                                              (_%tl197301197343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197303197336%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197301197343%_))
                                              ((lambda (_%L197346%_
                                                        _%L197348%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197348%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197346%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197302197340%_
                                               _%hd197299197330%_)
                                              (_%g197291197309%_
                                               _%g197292197313%_))))
                                      (_%g197291197309%_ _%g197292197313%_))))
                              (_%g197291197309%_ _%g197292197313%_))))
                      (_%g197291197309%_ _%g197292197313%_)))))
          (_%g197290197364%_ _%$stx197287%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx197368%_)
        (let* ((_%g197372197401%_
                (lambda (_%g197373197397%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197373197397%_))))
               (_%g197371197501%_
                (lambda (_%g197373197405%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197373197405%_))
                      (let ((_%e197378197408%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197373197405%_))))
                        (let ((_%hd197377197412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197378197408%_)))
                              (_%tl197376197415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197378197408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197376197415%_))
                              (let ((_g201709_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197376197415%_
                                        '0))))
                                (begin
                                  (let ((_g201710_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201709_)
                                               (##vector-length _g201709_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201710_ 2)))
                                        (error "Context expects 2 values"
                                               _g201710_)))
                                  (let ((_%target197379197418%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201709_ 0)))
                                        (_%tl197381197421%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201709_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197381197421%_))
                                        (letrec ((_%loop197382197424%_
                                                  (lambda (_%hd197380197428%_
                                                           _%rule197386197431%_
                                                           _%proc197387197433%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197380197428%_))
                                                        (let ((_%e197383197436%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197380197428%_))))
                  (let ((_%lp-hd197384197440%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197383197436%_)))
                        (_%lp-tl197385197443%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197383197436%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197384197440%_))
                        (let ((_%e197392197446%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197384197440%_))))
                          (let ((_%hd197391197450%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197392197446%_)))
                                (_%tl197390197453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197392197446%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197390197453%_))
                                (let ((_%e197395197456%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197390197453%_))))
                                  (let ((_%hd197394197460%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197395197456%_)))
                                        (_%tl197393197463%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197395197456%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197393197463%_))
                                        (_%loop197382197424%_
                                         _%lp-tl197385197443%_
                                         (cons _%hd197394197460%_
                                               _%rule197386197431%_)
                                         (cons _%hd197391197450%_
                                               _%proc197387197433%_))
                                        (_%g197372197401%_
                                         _%g197373197405%_))))
                                (_%g197372197401%_ _%g197373197405%_))))
                        (_%g197372197401%_ _%g197373197405%_))))
                (let ((_%rule197388197466%_ (reverse _%rule197386197431%_))
                      (_%proc197389197469%_ (reverse _%proc197387197433%_)))
                  ((lambda (_%L197472%_ _%L197474%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197472%_
                                _%L197474%_))
                             (let ((__tmp201711
                                    (lambda (_%g197489197493%_
                                             _%g197490197496%_
                                             _%g197491197498%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197490197496%_
                                                        (cons _%g197489197493%_
                                                              '())))
                                            _%g197491197498%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201711
                                '()
                                _%L197472%_
                                _%L197474%_)))))
                   _%rule197388197466%_
                   _%proc197389197469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197382197424%_
                                           _%target197379197418%_
                                           '()
                                           '()))
                                        (_%g197372197401%_
                                         _%g197373197405%_)))))
                              (_%g197372197401%_ _%g197373197405%_))))
                      (_%g197372197401%_ _%g197373197405%_)))))
          (_%g197371197501%_ _%$stx197368%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197506%_)
        (let* ((_%g197510197528%_
                (lambda (_%g197511197524%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197511197524%_))))
               (_%g197509197583%_
                (lambda (_%g197511197532%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197511197532%_))
                      (let ((_%e197516197535%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197511197532%_))))
                        (let ((_%hd197515197539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197516197535%_)))
                              (_%tl197514197542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197516197535%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197514197542%_))
                              (let ((_%e197519197545%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197514197542%_))))
                                (let ((_%hd197518197549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197519197545%_)))
                                      (_%tl197517197552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197519197545%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197517197552%_))
                                      (let ((_%e197522197555%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197517197552%_))))
                                        (let ((_%hd197521197559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197522197555%_)))
                                              (_%tl197520197562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197522197555%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197520197562%_))
                                              ((lambda (_%L197565%_
                                                        _%L197567%_)
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
                                                   (cons _%L197567%_ '()))
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L197565%_ '())))
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
                                   (cons _%L197567%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197521197559%_
                                               _%hd197518197549%_)
                                              (_%g197510197528%_
                                               _%g197511197532%_))))
                                      (_%g197510197528%_ _%g197511197532%_))))
                              (_%g197510197528%_ _%g197511197532%_))))
                      (_%g197510197528%_ _%g197511197532%_)))))
          (_%g197509197583%_ _%$stx197506%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197587%_)
        (let* ((_%__stx201191201192%_ _%$stx197587%_)
               (_%g197592197617%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201191201192%_)))))
          (let ((_%__kont201194201195%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201196201197%_
                 (lambda (_%L197664%_ _%L197666%_ _%L197667%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197667%_ (cons _%L197666%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197664%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201191201192%_))
                (let ((_%e197596197693%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201191201192%_))))
                  (let ((_%tl197594197700%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197596197693%_)))
                        (_%hd197595197697%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197596197693%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197594197700%_))
                        (_%__kont201194201195%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197594197700%_))
                            (let ((_%e197605197634%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197594197700%_))))
                              (let ((_%tl197603197641%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197605197634%_)))
                                    (_%hd197604197638%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197605197634%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197604197638%_))
                                    (let ((_%e197608197644%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197604197638%_))))
                                      (let ((_%tl197606197651%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197608197644%_)))
                                            (_%hd197607197648%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197608197644%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197606197651%_))
                                            (let ((_%e197611197654%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197606197651%_))))
                                              (let ((_%tl197609197661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197611197654%_)))
                                                    (_%hd197610197658%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197611197654%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197609197661%_))
                                                    (_%__kont201196201197%_
                                                     _%tl197603197641%_
                                                     _%hd197610197658%_
                                                     _%hd197607197648%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197592197617%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197592197617%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197592197617%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197592197617%_))))))
                (let () (declare (not safe)) (_%g197592197617%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx197711%_)
        (let* ((_%__stx201235201236%_ _%$stx197711%_)
               (_%g197716197747%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201235201236%_)))))
          (let ((_%__kont201238201239%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201240201241%_
                 (lambda (_%L197814%_ _%L197816%_ _%L197817%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L197817%_
                                           (let ((__tmp201712
                                                  (lambda (_%g197837197840%_
                                                           _%g197838197843%_)
                                                    (cons _%g197837197840%_
                                                          _%g197838197843%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201712
                                              '()
                                              _%L197816%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L197814%_)
                                     '()))))))
            (let ((_%__match201278201279%_
                   (lambda (_%e197726197754%_
                            _%hd197725197758%_
                            _%tl197724197761%_
                            _%e197729197764%_
                            _%hd197728197768%_
                            _%tl197727197771%_
                            _%e197732197774%_
                            _%hd197731197778%_
                            _%tl197730197781%_
                            _%__splice201242201243%_
                            _%target197733197784%_
                            _%tl197735197787%_)
                     (letrec ((_%loop197736197790%_
                               (lambda (_%hd197734197794%_ _%sig197740197797%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197734197794%_))
                                     (let ((_%e197737197800%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd197734197794%_))))
                                       (let ((_%lp-tl197739197807%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197737197800%_)))
                                             (_%lp-hd197738197804%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197737197800%_))))
                                         (_%loop197736197790%_
                                          _%lp-tl197739197807%_
                                          (cons _%lp-hd197738197804%_
                                                _%sig197740197797%_))))
                                     (let ((_%sig197741197810%_
                                            (reverse _%sig197740197797%_)))
                                       (_%__kont201240201241%_
                                        _%tl197727197771%_
                                        _%sig197741197810%_
                                        _%hd197731197778%_))))))
                       (_%loop197736197790%_ _%target197733197784%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201235201236%_))
                  (let ((_%e197720197853%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201235201236%_))))
                    (let ((_%tl197718197860%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197720197853%_)))
                          (_%hd197719197857%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197720197853%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197718197860%_))
                          (_%__kont201238201239%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197718197860%_))
                              (let ((_%e197729197764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197718197860%_))))
                                (let ((_%tl197727197771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197729197764%_)))
                                      (_%hd197728197768%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197729197764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197728197768%_))
                                      (let ((_%e197732197774%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197728197768%_))))
                                        (let ((_%tl197730197781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197732197774%_)))
                                              (_%hd197731197778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197732197774%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197730197781%_))
                                              (let ((_%__splice201242201243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197730197781%_
                                                        '0))))
                                                (let ((_%tl197735197787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201242201243%_
                                                          '1)))
                                                      (_%target197733197784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201242201243%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197735197787%_))
                                                      (_%__match201278201279%_
                                                       _%e197720197853%_
                                                       _%hd197719197857%_
                                                       _%tl197718197860%_
                                                       _%e197729197764%_
                                                       _%hd197728197768%_
                                                       _%tl197727197771%_
                                                       _%e197732197774%_
                                                       _%hd197731197778%_
                                                       _%tl197730197781%_
                                                       _%__splice201242201243%_
                                                       _%target197733197784%_
                                                       _%tl197735197787%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197716197747%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197716197747%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197716197747%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197716197747%_))))))
                  (let () (declare (not safe)) (_%g197716197747%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx197872%_)
        (let* ((_%__stx201281201282%_ _%$stx197872%_)
               (_%g197877197924%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201281201282%_)))))
          (let ((_%__kont201284201285%_
                 (lambda (_%L198086%_ _%L198088%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L198088%_
                               (let ((__tmp201713
                                      (lambda (_%g198108198111%_
                                               _%g198109198114%_)
                                        (cons _%g198108198111%_
                                              _%g198109198114%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201713 '() _%L198086%_))))))
                (_%__kont201288201289%_
                 (lambda (_%L197981%_ _%L197983%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L197983%_
                               (let ((__tmp201714
                                      (lambda (_%g198000198003%_
                                               _%g198001198006%_)
                                        (cons _%g198000198003%_
                                              _%g198001198006%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201714 '() _%L197981%_)))))))
            (let* ((_%__match201348201349%_
                    (lambda (_%e197906197931%_
                             _%hd197905197935%_
                             _%tl197904197938%_
                             _%e197909197941%_
                             _%hd197908197945%_
                             _%tl197907197948%_
                             _%__splice201290201291%_
                             _%target197910197951%_
                             _%tl197912197954%_)
                      (letrec ((_%loop197913197957%_
                                (lambda (_%hd197911197961%_
                                         _%sig197917197964%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197911197961%_))
                                      (let ((_%e197914197967%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197911197961%_))))
                                        (let ((_%lp-tl197916197974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197914197967%_)))
                                              (_%lp-hd197915197971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197914197967%_))))
                                          (_%loop197913197957%_
                                           _%lp-tl197916197974%_
                                           (cons _%lp-hd197915197971%_
                                                 _%sig197917197964%_))))
                                      (let ((_%sig197918197977%_
                                             (reverse _%sig197917197964%_)))
                                        (_%__kont201288201289%_
                                         _%sig197918197977%_
                                         _%hd197908197945%_))))))
                        (_%loop197913197957%_ _%target197910197951%_ '()))))
                   (_%__match201340201341%_
                    (lambda (_%e197906197931%_
                             _%hd197905197935%_
                             _%tl197904197938%_
                             _%e197909197941%_
                             _%hd197908197945%_
                             _%tl197907197948%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl197907197948%_))
                          (let ((_%__splice201290201291%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl197907197948%_
                                    '0))))
                            (let ((_%tl197912197954%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201290201291%_
                                      '1)))
                                  (_%target197910197951%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201290201291%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197912197954%_))
                                  (_%__match201348201349%_
                                   _%e197906197931%_
                                   _%hd197905197935%_
                                   _%tl197904197938%_
                                   _%e197909197941%_
                                   _%hd197908197945%_
                                   _%tl197907197948%_
                                   _%__splice201290201291%_
                                   _%target197910197951%_
                                   _%tl197912197954%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g197877197924%_)))))
                          (let () (declare (not safe)) (_%g197877197924%_)))))
                   (_%__match201328201329%_
                    (lambda (_%e197883198016%_
                             _%hd197882198020%_
                             _%tl197881198023%_
                             _%e197886198026%_
                             _%hd197885198030%_
                             _%tl197884198033%_
                             _%e197889198036%_
                             _%hd197888198040%_
                             _%tl197887198043%_
                             _%e197892198046%_
                             _%hd197891198050%_
                             _%tl197890198053%_
                             _%__splice201286201287%_
                             _%target197893198056%_
                             _%tl197895198059%_)
                      (letrec ((_%loop197896198062%_
                                (lambda (_%hd197894198066%_
                                         _%sig197900198069%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197894198066%_))
                                      (let ((_%e197897198072%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197894198066%_))))
                                        (let ((_%lp-tl197899198079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197897198072%_)))
                                              (_%lp-hd197898198076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197897198072%_))))
                                          (_%loop197896198062%_
                                           _%lp-tl197899198079%_
                                           (cons _%lp-hd197898198076%_
                                                 _%sig197900198069%_))))
                                      (let ((_%sig197901198082%_
                                             (reverse _%sig197900198069%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197887198043%_))
                                            (_%__kont201284201285%_
                                             _%sig197901198082%_
                                             _%hd197885198030%_)
                                            (_%__match201340201341%_
                                             _%e197883198016%_
                                             _%hd197882198020%_
                                             _%tl197881198023%_
                                             _%e197886198026%_
                                             _%hd197885198030%_
                                             _%tl197884198033%_)))))))
                        (_%loop197896198062%_ _%target197893198056%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201281201282%_))
                  (let ((_%e197883198016%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201281201282%_))))
                    (let ((_%tl197881198023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197883198016%_)))
                          (_%hd197882198020%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197883198016%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197881198023%_))
                          (let ((_%e197886198026%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197881198023%_))))
                            (let ((_%tl197884198033%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197886198026%_)))
                                  (_%hd197885198030%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197886198026%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197884198033%_))
                                  (let ((_%e197889198036%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197884198033%_))))
                                    (let ((_%tl197887198043%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197889198036%_)))
                                          (_%hd197888198040%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197889198036%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd197888198040%_))
                                          (let ((_%e197892198046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd197888198040%_))))
                                            (let ((_%tl197890198053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197892198046%_)))
                                                  (_%hd197891198050%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197892198046%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd197891198050%_))
                                                  (if (let ((__tmp201715
                                                             |gxc[1]#_g201716_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp201715
                                                         _%hd197891198050%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl197890198053%_))
                                                          (let ((_%__splice201286201287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197890198053%_ '0))))
                    (let ((_%tl197895198059%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201286201287%_ '1)))
                          (_%target197893198056%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201286201287%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197895198059%_))
                          (_%__match201328201329%_
                           _%e197883198016%_
                           _%hd197882198020%_
                           _%tl197881198023%_
                           _%e197886198026%_
                           _%hd197885198030%_
                           _%tl197884198033%_
                           _%e197889198036%_
                           _%hd197888198040%_
                           _%tl197887198043%_
                           _%e197892198046%_
                           _%hd197891198050%_
                           _%tl197890198053%_
                           _%__splice201286201287%_
                           _%target197893198056%_
                           _%tl197895198059%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197884198033%_))
                              (let ((_%__splice201290201291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197884198033%_
                                        '0))))
                                (let ((_%tl197912197954%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201290201291%_
                                          '1)))
                                      (_%target197910197951%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201290201291%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197912197954%_))
                                      (_%__match201348201349%_
                                       _%e197883198016%_
                                       _%hd197882198020%_
                                       _%tl197881198023%_
                                       _%e197886198026%_
                                       _%hd197885198030%_
                                       _%tl197884198033%_
                                       _%__splice201290201291%_
                                       _%target197910197951%_
                                       _%tl197912197954%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g197877197924%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197877197924%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197884198033%_))
                      (let ((_%__splice201290201291%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197884198033%_
                                '0))))
                        (let ((_%tl197912197954%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201290201291%_ '1)))
                              (_%target197910197951%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201290201291%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197912197954%_))
                              (_%__match201348201349%_
                               _%e197883198016%_
                               _%hd197882198020%_
                               _%tl197881198023%_
                               _%e197886198026%_
                               _%hd197885198030%_
                               _%tl197884198033%_
                               _%__splice201290201291%_
                               _%target197910197951%_
                               _%tl197912197954%_)
                              (let ()
                                (declare (not safe))
                                (_%g197877197924%_)))))
                      (let () (declare (not safe)) (_%g197877197924%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl197884198033%_))
                  (let ((_%__splice201290201291%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197884198033%_ '0))))
                    (let ((_%tl197912197954%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201290201291%_ '1)))
                          (_%target197910197951%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201290201291%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197912197954%_))
                          (_%__match201348201349%_
                           _%e197883198016%_
                           _%hd197882198020%_
                           _%tl197881198023%_
                           _%e197886198026%_
                           _%hd197885198030%_
                           _%tl197884198033%_
                           _%__splice201290201291%_
                           _%target197910197951%_
                           _%tl197912197954%_)
                          (let () (declare (not safe)) (_%g197877197924%_)))))
                  (let () (declare (not safe)) (_%g197877197924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197884198033%_))
                                                      (let ((_%__splice201290201291%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197884198033%_ '0))))
                (let ((_%tl197912197954%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201290201291%_ '1)))
                      (_%target197910197951%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201290201291%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197912197954%_))
                      (_%__match201348201349%_
                       _%e197883198016%_
                       _%hd197882198020%_
                       _%tl197881198023%_
                       _%e197886198026%_
                       _%hd197885198030%_
                       _%tl197884198033%_
                       _%__splice201290201291%_
                       _%target197910197951%_
                       _%tl197912197954%_)
                      (let () (declare (not safe)) (_%g197877197924%_)))))
              (let () (declare (not safe)) (_%g197877197924%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197884198033%_))
                                              (let ((_%__splice201290201291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197884198033%_
                                                        '0))))
                                                (let ((_%tl197912197954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201290201291%_
                                                          '1)))
                                                      (_%target197910197951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201290201291%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197912197954%_))
                                                      (_%__match201348201349%_
                                                       _%e197883198016%_
                                                       _%hd197882198020%_
                                                       _%tl197881198023%_
                                                       _%e197886198026%_
                                                       _%hd197885198030%_
                                                       _%tl197884198033%_
                                                       _%__splice201290201291%_
                                                       _%target197910197951%_
                                                       _%tl197912197954%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197877197924%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197877197924%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197884198033%_))
                                      (let ((_%__splice201290201291%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197884198033%_
                                                '0))))
                                        (let ((_%tl197912197954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201290201291%_
                                                  '1)))
                                              (_%target197910197951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201290201291%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197912197954%_))
                                              (_%__match201348201349%_
                                               _%e197883198016%_
                                               _%hd197882198020%_
                                               _%tl197881198023%_
                                               _%e197886198026%_
                                               _%hd197885198030%_
                                               _%tl197884198033%_
                                               _%__splice201290201291%_
                                               _%target197910197951%_
                                               _%tl197912197954%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197877197924%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197877197924%_))))))
                          (let () (declare (not safe)) (_%g197877197924%_)))))
                  (let () (declare (not safe)) (_%g197877197924%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx199271%_ _%id199273%_)
        (let ((_%proc199277%_
               (let ((__tmp201717
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199273%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201717))))
          (if (procedure? _%proc199277%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx199271%_
                 _%id199273%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx199262%_ _%id199264%_)
        (let ((_%klass199268%_
               (let ((__tmp201718
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199264%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201718))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass199268%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx199262%_
                 _%id199264%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198512%_ _%proc198514%_ _%sig198515%_)
        (letrec ((_%signature-arity198517%_
                  (lambda (_%args199194%_)
                    (let _%loop199197%_ ((_%rest199200%_ _%args199194%_)
                                         (_%count199202%_ '0))
                      (let* ((_%rest199203199214%_ _%rest199200%_)
                             (_%E199207199220%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest199203199214%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K199210199251%_
                               (lambda (_%rest199248%_)
                                 (_%loop199197%_
                                  _%rest199248%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count199202%_ '1)))))
                              (_%K199209199240%_ (lambda () _%count199202%_))
                              (_%K199208199228%_
                               (lambda () (cons _%count199202%_ '()))))
                          (let ((_%try-match199205199244%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest199203199214%_))
                                       (_%K199209199240%_)
                                       (_%K199208199228%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest199203199214%_))
                                (let* ((_%tl199212199255%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199203199214%_)))
                                       (_%rest199259%_ _%tl199212199255%_))
                                  (_%K199210199251%_ _%rest199259%_))
                                (_%try-match199205199244%_))))))))
                 (_%make-signature198519%_
                  (lambda (_%args199076%_
                           _%return199078%_
                           _%effect199079%_
                           _%unchecked199080%_)
                    (let ((__tmp201719
                           (lambda (_%g199081199083%_)
                             (|gxc[1]#verify-class!|
                              _%ctx198512%_
                              _%g199081199083%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp201719 _%args199076%_))
                    (|gxc[1]#verify-class!| _%ctx198512%_ _%return199078%_)
                    (if _%unchecked199080%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx198512%_
                         _%unchecked199080%_)
                        '#!void)
                    (let ((_%arity199087%_
                           (_%signature-arity198517%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args199076%_)))))
                      (if _%effect199079%_
                          (let ((_%effect199090%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect199079%_))))
                            (if (and (list? _%effect199090%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect199090%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198512%_
                                   _%proc198514%_
                                   _%effect199090%_))))
                          '#!void)
                      (cons _%arity199087%_
                            (cons (let* ((_%g199093199116%_
                                          (lambda (_%g199094199112%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g199094199112%_))))
                                         (_%g199092199190%_
                                          (lambda (_%g199094199120%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g199094199120%_))
                                                (let ((_%e199101199123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g199094199120%_))))
                                                  (let ((_%hd199100199127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199101199123%_)))
                                                        (_%tl199099199130%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199101199123%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199099199130%_))
                                                        (let ((_%e199104199133%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199099199130%_))))
                  (let ((_%hd199103199137%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199104199133%_)))
                        (_%tl199102199140%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199104199133%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199102199140%_))
                        (let ((_%e199107199143%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199102199140%_))))
                          (let ((_%hd199106199147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199107199143%_)))
                                (_%tl199105199150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199107199143%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199105199150%_))
                                (let ((_%e199110199153%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199105199150%_))))
                                  (let ((_%hd199109199157%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199110199153%_)))
                                        (_%tl199108199160%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199110199153%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199108199160%_))
                                        ((lambda (_%L199163%_
                                                  _%L199165%_
                                                  _%L199166%_
                                                  _%L199167%_)
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
                           (cons _%L199167%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L199166%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L199165%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L199163%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd199109199157%_
                                         _%hd199106199147%_
                                         _%hd199103199137%_
                                         _%hd199100199127%_)
                                        (_%g199093199116%_
                                         _%g199094199120%_))))
                                (_%g199093199116%_ _%g199094199120%_))))
                        (_%g199093199116%_ _%g199094199120%_))))
                (_%g199093199116%_ _%g199094199120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199093199116%_
                                                 _%g199094199120%_)))))
                                    (_%g199092199190%_
                                     (list _%args199076%_
                                           _%return199078%_
                                           _%effect199079%_
                                           _%unchecked199080%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx198512%_ _%proc198514%_)
          (let* ((_%__stx201359201360%_ _%sig198515%_)
                 (_%g198526198629%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201359201360%_)))))
            (let ((_%__kont201362201363%_
                   (lambda (_%L199057%_ _%L199059%_)
                     (_%make-signature198519%_
                      _%L199059%_
                      _%L199057%_
                      '#f
                      '#f)))
                  (_%__kont201364201365%_
                   (lambda (_%L199008%_ _%L199010%_ _%L199011%_)
                     (_%make-signature198519%_
                      _%L199011%_
                      _%L199010%_
                      _%L199008%_
                      '#f)))
                  (_%__kont201366201367%_
                   (lambda (_%L198932%_ _%L198934%_ _%L198935%_)
                     (_%make-signature198519%_
                      _%L198935%_
                      _%L198934%_
                      _%L198932%_
                      (let ((__tmp201720
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198514%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp201720)))))
                  (_%__kont201368201369%_
                   (lambda (_%L198838%_ _%L198840%_ _%L198841%_ _%L198842%_)
                     (_%make-signature198519%_
                      _%L198842%_
                      _%L198841%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L198838%_)))))
                  (_%__kont201370201371%_
                   (lambda (_%L198745%_ _%L198747%_)
                     (_%make-signature198519%_
                      _%L198747%_
                      _%L198745%_
                      '#f
                      (let ((__tmp201721
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198514%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp201721)))))
                  (_%__kont201372201373%_
                   (lambda (_%L198680%_ _%L198682%_ _%L198683%_)
                     (_%make-signature198519%_
                      _%L198683%_
                      _%L198682%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L198680%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201359201360%_))
                  (let ((_%e198532199037%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201359201360%_))))
                    (let ((_%tl198530199044%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198532199037%_)))
                          (_%hd198531199041%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198532199037%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198530199044%_))
                          (let ((_%e198535199047%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198530199044%_))))
                            (let ((_%tl198533199054%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198535199047%_)))
                                  (_%hd198534199051%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198535199047%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198533199054%_))
                                  (_%__kont201362201363%_
                                   _%hd198534199051%_
                                   _%hd198531199041%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198533199054%_))
                                      (let ((_%e198547198984%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198533199054%_))))
                                        (let ((_%tl198545198991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198547198984%_)))
                                              (_%hd198546198988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198547198984%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198546198988%_))
                                              (let ((_%e198548198994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198546198988%_))))
                                                (if (equal? _%e198548198994%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198545198991%_))
                                                        (let ((_%e198551198998%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198545198991%_))))
                  (let ((_%tl198549199005%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198551198998%_)))
                        (_%hd198550199002%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198551198998%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198549199005%_))
                        (_%__kont201364201365%_
                         _%hd198550199002%_
                         _%hd198534199051%_
                         _%hd198531199041%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198549199005%_))
                            (let ((_%e198570198918%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198549199005%_))))
                              (let ((_%tl198568198925%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198570198918%_)))
                                    (_%hd198569198922%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198570198918%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198569198922%_))
                                    (let ((_%e198571198928%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198569198922%_))))
                                      (if (equal? _%e198571198928%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198568198925%_))
                                              (_%__kont201366201367%_
                                               _%hd198550199002%_
                                               _%hd198534199051%_
                                               _%hd198531199041%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198568198925%_))
                                                  (let ((_%e198595198828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198568198925%_))))
                                                    (let ((_%tl198593198835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198595198828%_)))
                                                          (_%hd198594198832%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198595198828%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198593198835%_))
                                                          (_%__kont201368201369%_
                                                           _%hd198594198832%_
                                                           _%hd198550199002%_
                                                           _%hd198534199051%_
                                                           _%hd198531199041%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198526198629%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198526198629%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198526198629%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198526198629%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198526198629%_))))))
                (let () (declare (not safe)) (_%g198526198629%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198548198994%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198545198991%_))
                                                            (_%__kont201370201371%_
                                                             _%hd198534199051%_
                                                             _%hd198531199041%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198545198991%_))
                        (let ((_%e198623198670%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198545198991%_))))
                          (let ((_%tl198621198677%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198623198670%_)))
                                (_%hd198622198674%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198623198670%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198621198677%_))
                                (_%__kont201372201373%_
                                 _%hd198622198674%_
                                 _%hd198534199051%_
                                 _%hd198531199041%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198526198629%_)))))
                        (let () (declare (not safe)) (_%g198526198629%_))))
                (let () (declare (not safe)) (_%g198526198629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198526198629%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198526198629%_))))))
                          (let () (declare (not safe)) (_%g198526198629%_)))))
                  (let () (declare (not safe)) (_%g198526198629%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig198123%_)
        (let* ((_%g198126198206%_
                (lambda (_%g198127198202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198127198202%_))))
               (_%g198125198508%_
                (lambda (_%g198127198210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198127198210%_))
                      (let ((_%e198135198213%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198127198210%_))))
                        (let ((_%hd198134198217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198135198213%_)))
                              (_%tl198133198220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198135198213%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198133198220%_))
                              (let ((_%e198138198223%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198133198220%_))))
                                (let ((_%hd198137198227%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198138198223%_)))
                                      (_%tl198136198230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198138198223%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd198137198227%_))
                                      (let ((_%e198139198233%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd198137198227%_))))
                                        (if (equal? _%e198139198233%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198136198230%_))
                                                (let ((_%e198142198237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198136198230%_))))
                                                  (let ((_%hd198141198241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198142198237%_)))
                                                        (_%tl198140198244%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198142198237%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198141198241%_))
                                                        (let ((_%e198145198247%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198141198241%_))))
                  (let ((_%hd198144198251%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198145198247%_)))
                        (_%tl198143198254%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198145198247%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd198144198251%_))
                        (if (let ((__tmp201722 |gxc[1]#_g201723_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp201722
                               _%hd198144198251%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198143198254%_))
                                (let ((_%e198148198257%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198143198254%_))))
                                  (let ((_%hd198147198261%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198148198257%_)))
                                        (_%tl198146198264%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198148198257%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198146198264%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198140198244%_))
                                            (let ((_%e198151198267%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198140198244%_))))
                                              (let ((_%hd198150198271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198151198267%_)))
                                                    (_%tl198149198274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198151198267%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198150198271%_))
                                                    (let ((_%e198152198277%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198150198271%_))))
                                                      (if (equal? _%e198152198277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198149198274%_))
                      (let ((_%e198155198281%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198149198274%_))))
                        (let ((_%hd198154198285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198155198281%_)))
                              (_%tl198153198288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198155198281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198154198285%_))
                              (let ((_%e198158198291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd198154198285%_))))
                                (let ((_%hd198157198295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198158198291%_)))
                                      (_%tl198156198298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198158198291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198157198295%_))
                                      (if (let ((__tmp201724
                                                 |gxc[1]#_g201725_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp201724
                                             _%hd198157198295%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198156198298%_))
                                              (let ((_%e198161198301%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198156198298%_))))
                                                (let ((_%hd198160198305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198161198301%_)))
                                                      (_%tl198159198308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198161198301%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198159198308%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198153198288%_))
                                                          (let ((_%e198164198311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl198153198288%_))))
                    (let ((_%hd198163198315%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198164198311%_)))
                          (_%tl198162198318%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198164198311%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198163198315%_))
                          (let ((_%e198165198321%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198163198315%_))))
                            (if (equal? _%e198165198321%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198162198318%_))
                                    (let ((_%e198168198325%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl198162198318%_))))
                                      (let ((_%hd198167198329%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198168198325%_)))
                                            (_%tl198166198332%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198168198325%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198167198329%_))
                                            (let ((_%e198171198335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd198167198329%_))))
                                              (let ((_%hd198170198339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198171198335%_)))
                                                    (_%tl198169198342%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198171198335%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198170198339%_))
                                                    (if (let ((__tmp201726
                                                               |gxc[1]#_g201727_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp201726
                                                           _%hd198170198339%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198169198342%_))
                                                            (let ((_%e198174198345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl198169198342%_))))
                      (let ((_%hd198173198349%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198174198345%_)))
                            (_%tl198172198352%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198174198345%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198172198352%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198166198332%_))
                                (let ((_%e198177198355%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198166198332%_))))
                                  (let ((_%hd198176198359%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198177198355%_)))
                                        (_%tl198175198362%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198177198355%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd198176198359%_))
                                        (let ((_%e198178198365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198176198359%_))))
                                          (if (equal? _%e198178198365%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198175198362%_))
                                                  (let ((_%e198181198369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198175198362%_))))
                                                    (let ((_%hd198180198373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198181198369%_)))
                                                          (_%tl198179198376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198181198369%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198180198373%_))
                                                          (let ((_%e198184198379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd198180198373%_))))
                    (let ((_%hd198183198383%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198184198379%_)))
                          (_%tl198182198386%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198184198379%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd198183198383%_))
                          (if (let ((__tmp201728 |gxc[1]#_g201729_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp201728
                                 _%hd198183198383%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198182198386%_))
                                  (let ((_%e198187198389%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198182198386%_))))
                                    (let ((_%hd198186198393%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198187198389%_)))
                                          (_%tl198185198396%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198187198389%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198185198396%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198179198376%_))
                                              (let ((_%e198190198399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198179198376%_))))
                                                (let ((_%hd198189198403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198190198399%_)))
                                                      (_%tl198188198406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198190198399%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd198189198403%_))
                                                      (let ((_%e198191198409%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd198189198403%_))))
                (if (equal? _%e198191198409%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198188198406%_))
                        (let ((_%e198194198413%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198188198406%_))))
                          (let ((_%hd198193198417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198194198413%_)))
                                (_%tl198192198420%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198194198413%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198193198417%_))
                                (let ((_%e198197198423%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd198193198417%_))))
                                  (let ((_%hd198196198427%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198197198423%_)))
                                        (_%tl198195198430%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198197198423%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd198196198427%_))
                                        (if (let ((__tmp201730
                                                   |gxc[1]#_g201731_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp201730
                                               _%hd198196198427%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198195198430%_))
                                                (let ((_%e198200198433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198195198430%_))))
                                                  (let ((_%hd198199198437%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198200198433%_)))
                                                        (_%tl198198198440%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198200198433%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198198198440%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198192198420%_))
                                                            ((lambda (_%L198443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L198445%_
                              _%L198446%_
                              _%L198447%_
                              _%L198448%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L198445%_))
                           (cons _%L198445%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L198447%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198443%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd198199198437%_
                     _%hd198186198393%_
                     _%hd198173198349%_
                     _%hd198160198305%_
                     _%hd198147198261%_)
                    (_%g198126198206%_ _%g198127198210%_))
                (_%g198126198206%_ _%g198127198210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198126198206%_
                                                 _%g198127198210%_))
                                            (_%g198126198206%_
                                             _%g198127198210%_))
                                        (_%g198126198206%_
                                         _%g198127198210%_))))
                                (_%g198126198206%_ _%g198127198210%_))))
                        (_%g198126198206%_ _%g198127198210%_))
                    (_%g198126198206%_ _%g198127198210%_)))
              (_%g198126198206%_ _%g198127198210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198126198206%_
                                               _%g198127198210%_))
                                          (_%g198126198206%_
                                           _%g198127198210%_))))
                                  (_%g198126198206%_ _%g198127198210%_))
                              (_%g198126198206%_ _%g198127198210%_))
                          (_%g198126198206%_ _%g198127198210%_))))
                  (_%g198126198206%_ _%g198127198210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g198126198206%_
                                                   _%g198127198210%_))
                                              (_%g198126198206%_
                                               _%g198127198210%_)))
                                        (_%g198126198206%_
                                         _%g198127198210%_))))
                                (_%g198126198206%_ _%g198127198210%_))
                            (_%g198126198206%_ _%g198127198210%_))))
                    (_%g198126198206%_ _%g198127198210%_))
                (_%g198126198206%_ _%g198127198210%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198126198206%_
                                                     _%g198127198210%_))))
                                            (_%g198126198206%_
                                             _%g198127198210%_))))
                                    (_%g198126198206%_ _%g198127198210%_))
                                (_%g198126198206%_ _%g198127198210%_)))
                          (_%g198126198206%_ _%g198127198210%_))))
                  (_%g198126198206%_ _%g198127198210%_))
              (_%g198126198206%_ _%g198127198210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198126198206%_
                                               _%g198127198210%_))
                                          (_%g198126198206%_
                                           _%g198127198210%_))
                                      (_%g198126198206%_ _%g198127198210%_))))
                              (_%g198126198206%_ _%g198127198210%_))))
                      (_%g198126198206%_ _%g198127198210%_))
                  (_%g198126198206%_ _%g198127198210%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198126198206%_
                                                     _%g198127198210%_))))
                                            (_%g198126198206%_
                                             _%g198127198210%_))
                                        (_%g198126198206%_
                                         _%g198127198210%_))))
                                (_%g198126198206%_ _%g198127198210%_))
                            (_%g198126198206%_ _%g198127198210%_))
                        (_%g198126198206%_ _%g198127198210%_))))
                (_%g198126198206%_ _%g198127198210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198126198206%_
                                                 _%g198127198210%_))
                                            (_%g198126198206%_
                                             _%g198127198210%_)))
                                      (_%g198126198206%_ _%g198127198210%_))))
                              (_%g198126198206%_ _%g198127198210%_))))
                      (_%g198126198206%_ _%g198127198210%_)))))
          (_%g198125198508%_ _%sig198123%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx199280%_)
        (let* ((_%g199283199301%_
                (lambda (_%g199284199297%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199284199297%_))))
               (_%g199282199356%_
                (lambda (_%g199284199305%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199284199305%_))
                      (let ((_%e199289199308%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199284199305%_))))
                        (let ((_%hd199288199312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199289199308%_)))
                              (_%tl199287199315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199289199308%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199287199315%_))
                              (let ((_%e199292199318%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199287199315%_))))
                                (let ((_%hd199291199322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199292199318%_)))
                                      (_%tl199290199325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199292199318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199290199325%_))
                                      (let ((_%e199295199328%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199290199325%_))))
                                        (let ((_%hd199294199332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199295199328%_)))
                                              (_%tl199293199335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199295199328%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199293199335%_))
                                              ((lambda (_%L199338%_
                                                        _%L199340%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199340%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199338%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx199280%_
                                                        _%L199340%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx199280%_
                                                        _%L199338%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199340%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L199338%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199283199301%_
                                                      _%g199284199305%_)))
                                               _%hd199294199332%_
                                               _%hd199291199322%_)
                                              (_%g199283199301%_
                                               _%g199284199305%_))))
                                      (_%g199283199301%_ _%g199284199305%_))))
                              (_%g199283199301%_ _%g199284199305%_))))
                      (_%g199283199301%_ _%g199284199305%_)))))
          (_%g199282199356%_ _%stx199280%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx199360%_)
        (let* ((_%g199363199387%_
                (lambda (_%g199364199383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199364199383%_))))
               (_%g199362199670%_
                (lambda (_%g199364199391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199364199391%_))
                      (let ((_%e199369199394%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199364199391%_))))
                        (let ((_%hd199368199398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199369199394%_)))
                              (_%tl199367199401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199369199394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199367199401%_))
                              (let ((_%e199372199404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199367199401%_))))
                                (let ((_%hd199371199408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199372199404%_)))
                                      (_%tl199370199411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199372199404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199370199411%_))
                                      (let ((_g201732_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199370199411%_
                                                '0))))
                                        (begin
                                          (let ((_g201733_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201732_)
                                                       (##vector-length
                                                        _g201732_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201733_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201733_)))
                                          (let ((_%target199373199414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201732_ 0)))
                                                (_%tl199375199417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201732_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199375199417%_))
                                                (letrec ((_%loop199376199420%_
                                                          (lambda (_%hd199374199424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature199380199427%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199374199424%_))
                        (let ((_%e199377199430%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199374199424%_))))
                          (let ((_%lp-hd199378199434%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199377199430%_)))
                                (_%lp-tl199379199437%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199377199430%_))))
                            (_%loop199376199420%_
                             _%lp-tl199379199437%_
                             (cons _%lp-hd199378199434%_
                                   _%signature199380199427%_))))
                        (let ((_%signature199381199440%_
                               (reverse _%signature199380199427%_)))
                          ((lambda (_%L199444%_ _%L199446%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199446%_))
                                 (let* ((_%g199464199479%_
                                         (lambda (_%g199465199475%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199465199475%_))))
                                        (_%g199463199658%_
                                         (lambda (_%g199465199483%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199465199483%_))
                                               (let ((_%e199470199486%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199465199483%_))))
                                                 (let ((_%hd199469199490%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199470199486%_)))
                                                       (_%tl199468199493%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199470199486%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199468199493%_))
                                                       (let ((_%e199473199496%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199468199493%_))))
                 (let ((_%hd199472199500%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199473199496%_)))
                       (_%tl199471199503%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199473199496%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199471199503%_))
                       ((lambda (_%L199506%_ _%L199508%_)
                          (let* ((_%g199524199532%_
                                  (lambda (_%g199525199528%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g199525199528%_))))
                                 (_%g199523199654%_
                                  (lambda (_%g199525199536%_)
                                    ((lambda (_%L199539%_)
                                       (let* ((_%unchecked199552%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L199506%_))
                                              (_%g199555199563%_
                                               (lambda (_%g199556199559%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g199556199559%_))))
                                              (_%g199554199586%_
                                               (lambda (_%g199556199567%_)
                                                 ((lambda (_%L199570%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L199539%_
                                                                (cons _%L199570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g199556199567%_))))
                                         (_%g199554199586%_
                                          (if _%unchecked199552%_
                                              (let* ((_%g199590199605%_
                                                      (lambda (_%g199591199601%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199591199601%_))))
                                                     (_%g199589199650%_
                                                      (lambda (_%g199591199609%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199591199609%_))
                                                            (let ((_%e199596199612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g199591199609%_))))
                      (let ((_%hd199595199616%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199596199612%_)))
                            (_%tl199594199619%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199596199612%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199594199619%_))
                            (let ((_%e199599199622%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199594199619%_))))
                              (let ((_%hd199598199626%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199599199622%_)))
                                    (_%tl199597199629%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199599199622%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199597199629%_))
                                    ((lambda (_%L199632%_ _%L199634%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L199634%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L199508%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L199632%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd199598199626%_
                                     _%hd199595199616%_)
                                    (_%g199590199605%_ _%g199591199609%_))))
                            (_%g199590199605%_ _%g199591199609%_))))
                    (_%g199590199605%_ _%g199591199609%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199589199650%_
                                                 _%unchecked199552%_))
                                              '(begin)))))
                                     _%g199525199536%_))))
                            (_%g199523199654%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L199446%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L199508%_ '()))
                   (cons '#f (cons 'signature: (cons _%L199506%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd199472199500%_
                        _%hd199469199490%_)
                       (_%g199464199479%_ _%g199465199483%_))))
               (_%g199464199479%_ _%g199465199483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199464199479%_
                                                _%g199465199483%_)))))
                                   (_%g199463199658%_
                                    (|gxc[1]#parse-signature|
                                     _%stx199360%_
                                     _%L199446%_
                                     (let ((__tmp201734
                                            (lambda (_%g199661199664%_
                                                     _%g199662199667%_)
                                              (cons _%g199661199664%_
                                                    _%g199662199667%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp201734
                                        '()
                                        _%L199444%_)))))
                                 (_%g199363199387%_ _%g199364199391%_)))
                           _%signature199381199440%_
                           _%hd199371199408%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199376199420%_
                                                   _%target199373199414%_
                                                   '()))
                                                (_%g199363199387%_
                                                 _%g199364199391%_)))))
                                      (_%g199363199387%_ _%g199364199391%_))))
                              (_%g199363199387%_ _%g199364199391%_))))
                      (_%g199363199387%_ _%g199364199391%_)))))
          (_%g199362199670%_ _%stx199360%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199675%_)
        (let* ((_%g199678199702%_
                (lambda (_%g199679199698%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199679199698%_))))
               (_%g199677200585%_
                (lambda (_%g199679199706%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199679199706%_))
                      (let ((_%e199684199709%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199679199706%_))))
                        (let ((_%hd199683199713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199684199709%_)))
                              (_%tl199682199716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199684199709%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199682199716%_))
                              (let ((_%e199687199719%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199682199716%_))))
                                (let ((_%hd199686199723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199687199719%_)))
                                      (_%tl199685199726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199687199719%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199685199726%_))
                                      (let ((_g201735_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199685199726%_
                                                '0))))
                                        (begin
                                          (let ((_g201736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201735_)
                                                       (##vector-length
                                                        _g201735_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201736_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201736_)))
                                          (let ((_%target199688199729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201735_ 0)))
                                                (_%tl199690199732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201735_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199690199732%_))
                                                (letrec ((_%loop199691199735%_
                                                          (lambda (_%hd199689199739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199695199742%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199689199739%_))
                        (let ((_%e199692199745%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199689199739%_))))
                          (let ((_%lp-hd199693199749%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199692199745%_)))
                                (_%lp-tl199694199752%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199692199745%_))))
                            (_%loop199691199735%_
                             _%lp-tl199694199752%_
                             (cons _%lp-hd199693199749%_
                                   _%case-signature199695199742%_))))
                        (let ((_%case-signature199696199755%_
                               (reverse _%case-signature199695199742%_)))
                          ((lambda (_%L199759%_ _%L199761%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199761%_))
                                 (let* ((_%signatures199792%_
                                         (map (lambda (_%g199778199780%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx199675%_
                                                 _%L199761%_
                                                 _%g199778199780%_))
                                              (let ((__tmp201737
                                                     (lambda (_%g199783199786%_
                                                              _%g199784199789%_)
                                                       (cons _%g199783199786%_
                                                             _%g199784199789%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp201737
                                                 '()
                                                 _%L199759%_))))
                                        (_%g199795199821%_
                                         (lambda (_%g199796199817%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199796199817%_))))
                                        (_%g199794200581%_
                                         (lambda (_%g199796199825%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g199796199825%_))
                                               (let ((_g201738_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g199796199825%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g201739_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g201738_)
                        (##vector-length _g201738_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g201739_ 2)))
                 (error "Context expects 2 values" _g201739_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target199799199828%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201738_
                                                             0)))
                                                         (_%tl199801199831%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201738_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199801199831%_))
                                                         (letrec ((_%loop199802199834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd199800199838%_
                                    _%sig199806199841%_
                                    _%arity199807199843%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd199800199838%_))
                                 (let ((_%e199803199846%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd199800199838%_))))
                                   (let ((_%lp-hd199804199850%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199803199846%_)))
                                         (_%lp-tl199805199853%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199803199846%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd199804199850%_))
                                         (let ((_%e199812199856%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd199804199850%_))))
                                           (let ((_%hd199811199860%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199812199856%_)))
                                                 (_%tl199810199863%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199812199856%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199810199863%_))
                                                 (let ((_%e199815199866%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199810199863%_))))
                                                   (let ((_%hd199814199870%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199815199866%_)))
                                                         (_%tl199813199873%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199815199866%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199813199873%_))
                                                         (_%loop199802199834%_
                                                          _%lp-tl199805199853%_
                                                          (cons _%hd199814199870%_
                                                                _%sig199806199841%_)
                                                          (cons _%hd199811199860%_
                                                                _%arity199807199843%_))
                                                         (_%g199795199821%_
                                                          _%g199796199825%_))))
                                                 (_%g199795199821%_
                                                  _%g199796199825%_))))
                                         (_%g199795199821%_
                                          _%g199796199825%_))))
                                 (let ((_%sig199808199876%_
                                        (reverse _%sig199806199841%_))
                                       (_%arity199809199879%_
                                        (reverse _%arity199807199843%_)))
                                   ((lambda (_%L199882%_ _%L199884%_)
                                      (let* ((_%g199901199909%_
                                              (lambda (_%g199902199905%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g199902199905%_))))
                                             (_%g199900200566%_
                                              (lambda (_%g199902199913%_)
                                                ((lambda (_%L199916%_)
                                                   (let* ((_%g199929199937%_
                                                           (lambda (_%g199930199933%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g199930199933%_))))
                  (_%g199928199959%_
                   (lambda (_%g199930199941%_)
                     ((lambda (_%L199944%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L199916%_ (cons _%L199944%_ '()))))
                      _%g199930199941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199928199959%_
                                                      (let ((_g201740_
                                                             (let _%loop199963%_ ((_%rest199966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures199792%_)
                                          (_%unchecked-proc199968%_ '#f)
                                          (_%unchecked-clauses199969%_ '()))
                       (let* ((_%rest199970199978%_ _%rest199966%_)
                              (_%else199972199990%_
                               (lambda ()
                                 (values _%unchecked-proc199968%_
                                         (reverse!
                                          _%unchecked-clauses199969%_))))
                              (_%K199974200431%_
                               (lambda (_%rest199994%_ _%hd199996%_)
                                 (let* ((_%g199998200085%_
                                         (lambda (_%g199999200081%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199999200081%_))))
                                        (_%g199997200427%_
                                         (lambda (_%g199999200089%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199999200089%_))
                                               (let ((_%e200008200092%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199999200089%_))))
                                                 (let ((_%hd200007200096%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200008200092%_)))
                                                       (_%tl200006200099%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200008200092%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200006200099%_))
                                                       (let ((_%e200011200102%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200006200099%_))))
                 (let ((_%hd200010200106%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200011200102%_)))
                       (_%tl200009200109%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200011200102%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd200010200106%_))
                       (let ((_%e200014200112%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd200010200106%_))))
                         (let ((_%hd200013200116%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200014200112%_)))
                               (_%tl200012200119%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200014200112%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl200012200119%_))
                               (let ((_%e200017200122%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl200012200119%_))))
                                 (let ((_%hd200016200126%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200017200122%_)))
                                       (_%tl200015200129%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200017200122%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd200016200126%_))
                                       (let ((_%e200018200132%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200016200126%_))))
                                         (if (equal? _%e200018200132%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200015200129%_))
                                                 (let ((_%e200021200136%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200015200129%_))))
                                                   (let ((_%hd200020200140%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200021200136%_)))
                                                         (_%tl200019200143%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200021200136%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd200020200140%_))
                                                         (let ((_%e200024200146%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd200020200140%_))))
                   (let ((_%hd200023200150%_
                          (let ()
                            (declare (not safe))
                            (##car _%e200024200146%_)))
                         (_%tl200022200153%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e200024200146%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd200023200150%_))
                         (if (let ((__tmp201742 |gxc[1]#_g201743_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp201742
                                _%hd200023200150%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200022200153%_))
                                 (let ((_%e200027200156%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200022200153%_))))
                                   (let ((_%hd200026200160%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200027200156%_)))
                                         (_%tl200025200163%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200027200156%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl200025200163%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200019200143%_))
                                             (let ((_%e200030200166%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl200019200143%_))))
                                               (let ((_%hd200029200170%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200030200166%_)))
                                                     (_%tl200028200173%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200030200166%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd200029200170%_))
                                                     (let ((_%e200031200176%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd200029200170%_))))
                                                       (if (equal? _%e200031200176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl200028200173%_))
                       (let ((_%e200034200180%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl200028200173%_))))
                         (let ((_%hd200033200184%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200034200180%_)))
                               (_%tl200032200187%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200034200180%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd200033200184%_))
                               (let ((_%e200037200190%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd200033200184%_))))
                                 (let ((_%hd200036200194%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200037200190%_)))
                                       (_%tl200035200197%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200037200190%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd200036200194%_))
                                       (if (let ((__tmp201744
                                                  |gxc[1]#_g201745_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp201744
                                              _%hd200036200194%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200035200197%_))
                                               (let ((_%e200040200200%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200035200197%_))))
                                                 (let ((_%hd200039200204%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200040200200%_)))
                                                       (_%tl200038200207%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200040200200%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl200038200207%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl200032200187%_))
                                                           (let ((_%e200043200210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl200032200187%_))))
                     (let ((_%hd200042200214%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200043200210%_)))
                           (_%tl200041200217%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200043200210%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd200042200214%_))
                           (let ((_%e200044200220%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd200042200214%_))))
                             (if (equal? _%e200044200220%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl200041200217%_))
                                     (let ((_%e200047200224%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl200041200217%_))))
                                       (let ((_%hd200046200228%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200047200224%_)))
                                             (_%tl200045200231%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200047200224%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd200046200228%_))
                                             (let ((_%e200050200234%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd200046200228%_))))
                                               (let ((_%hd200049200238%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200050200234%_)))
                                                     (_%tl200048200241%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200050200234%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd200049200238%_))
                                                     (if (let ((__tmp201746
                                                                |gxc[1]#_g201747_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp201746
                                                            _%hd200049200238%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200048200241%_))
                     (let ((_%e200053200244%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl200048200241%_))))
                       (let ((_%hd200052200248%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200053200244%_)))
                             (_%tl200051200251%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200053200244%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200051200251%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200045200231%_))
                                 (let ((_%e200056200254%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200045200231%_))))
                                   (let ((_%hd200055200258%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200056200254%_)))
                                         (_%tl200054200261%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200056200254%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd200055200258%_))
                                         (let ((_%e200057200264%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd200055200258%_))))
                                           (if (equal? _%e200057200264%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl200054200261%_))
                                                   (let ((_%e200060200268%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl200054200261%_))))
                                                     (let ((_%hd200059200272%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200060200268%_)))
                                                           (_%tl200058200275%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200060200268%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd200059200272%_))
                                                           (let ((_%e200063200278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd200059200272%_))))
                     (let ((_%hd200062200282%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200063200278%_)))
                           (_%tl200061200285%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200063200278%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd200062200282%_))
                           (if (let ((__tmp201748 |gxc[1]#_g201749_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp201748
                                  _%hd200062200282%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl200061200285%_))
                                   (let ((_%e200066200288%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl200061200285%_))))
                                     (let ((_%hd200065200292%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e200066200288%_)))
                                           (_%tl200064200295%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e200066200288%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl200064200295%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200058200275%_))
                                               (let ((_%e200069200298%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200058200275%_))))
                                                 (let ((_%hd200068200302%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200069200298%_)))
                                                       (_%tl200067200305%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200069200298%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd200068200302%_))
                                                       (let ((_%e200070200308%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd200068200302%_))))
                 (if (equal? _%e200070200308%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200067200305%_))
                         (let ((_%e200073200312%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl200067200305%_))))
                           (let ((_%hd200072200316%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200073200312%_)))
                                 (_%tl200071200319%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200073200312%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200072200316%_))
                                 (let ((_%e200076200322%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200072200316%_))))
                                   (let ((_%hd200075200326%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200076200322%_)))
                                         (_%tl200074200329%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200076200322%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd200075200326%_))
                                         (if (let ((__tmp201750
                                                    |gxc[1]#_g201751_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp201750
                                                _%hd200075200326%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200074200329%_))
                                                 (let ((_%e200079200332%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200074200329%_))))
                                                   (let ((_%hd200078200336%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200079200332%_)))
                                                         (_%tl200077200339%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200079200332%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200077200339%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl200071200319%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl200009200109%_))
                         ((lambda (_%L200342%_
                                   _%L200344%_
                                   _%L200345%_
                                   _%L200346%_
                                   _%L200347%_
                                   _%L200348%_)
                            (let ((_%clause200419%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L200348%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L200346%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200342%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked200421%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L200344%_))))
                              (_%loop199963%_
                               _%rest199994%_
                               (let ((_%$e200423%_ _%unchecked200421%_))
                                 (if _%$e200423%_
                                     _%$e200423%_
                                     _%unchecked-proc199968%_))
                               (cons _%clause200419%_
                                     _%unchecked-clauses199969%_))))
                          _%hd200078200336%_
                          _%hd200065200292%_
                          _%hd200052200248%_
                          _%hd200039200204%_
                          _%hd200026200160%_
                          _%hd200007200096%_)
                         (_%g199998200085%_ _%g199999200089%_))
                     (_%g199998200085%_ _%g199999200089%_))
                 (_%g199998200085%_ _%g199999200089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199998200085%_
                                                  _%g199999200089%_))
                                             (_%g199998200085%_
                                              _%g199999200089%_))
                                         (_%g199998200085%_
                                          _%g199999200089%_))))
                                 (_%g199998200085%_ _%g199999200089%_))))
                         (_%g199998200085%_ _%g199999200089%_))
                     (_%g199998200085%_ _%g199999200089%_)))
               (_%g199998200085%_ _%g199999200089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199998200085%_
                                                _%g199999200089%_))
                                           (_%g199998200085%_
                                            _%g199999200089%_))))
                                   (_%g199998200085%_ _%g199999200089%_))
                               (_%g199998200085%_ _%g199999200089%_))
                           (_%g199998200085%_ _%g199999200089%_))))
                   (_%g199998200085%_ _%g199999200089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199998200085%_
                                                    _%g199999200089%_))
                                               (_%g199998200085%_
                                                _%g199999200089%_)))
                                         (_%g199998200085%_
                                          _%g199999200089%_))))
                                 (_%g199998200085%_ _%g199999200089%_))
                             (_%g199998200085%_ _%g199999200089%_))))
                     (_%g199998200085%_ _%g199999200089%_))
                 (_%g199998200085%_ _%g199999200089%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199998200085%_
                                                      _%g199999200089%_))))
                                             (_%g199998200085%_
                                              _%g199999200089%_))))
                                     (_%g199998200085%_ _%g199999200089%_))
                                 (_%g199998200085%_ _%g199999200089%_)))
                           (_%g199998200085%_ _%g199999200089%_))))
                   (_%g199998200085%_ _%g199999200089%_))
               (_%g199998200085%_ _%g199999200089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199998200085%_
                                                _%g199999200089%_))
                                           (_%g199998200085%_
                                            _%g199999200089%_))
                                       (_%g199998200085%_ _%g199999200089%_))))
                               (_%g199998200085%_ _%g199999200089%_))))
                       (_%g199998200085%_ _%g199999200089%_))
                   (_%g199998200085%_ _%g199999200089%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199998200085%_
                                                      _%g199999200089%_))))
                                             (_%g199998200085%_
                                              _%g199999200089%_))
                                         (_%g199998200085%_
                                          _%g199999200089%_))))
                                 (_%g199998200085%_ _%g199999200089%_))
                             (_%g199998200085%_ _%g199999200089%_))
                         (_%g199998200085%_ _%g199999200089%_))))
                 (_%g199998200085%_ _%g199999200089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199998200085%_
                                                  _%g199999200089%_))
                                             (_%g199998200085%_
                                              _%g199999200089%_)))
                                       (_%g199998200085%_ _%g199999200089%_))))
                               (_%g199998200085%_ _%g199999200089%_))))
                       (_%g199998200085%_ _%g199999200089%_))))
               (_%g199998200085%_ _%g199999200089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199998200085%_
                                                _%g199999200089%_)))))
                                   (_%g199997200427%_ _%hd199996%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest199970199978%_))
                             (let ((_%hd199975200435%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest199970199978%_)))
                                   (_%tl199976200438%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest199970199978%_))))
                               (let* ((_%hd200441%_ _%hd199975200435%_)
                                      (_%rest200444%_ _%tl199976200438%_))
                                 (_%K199974200431%_
                                  _%rest200444%_
                                  _%hd200441%_)))
                             (_%else199972199990%_))))))
                (begin
                  (let ((_g201741_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g201740_)
                               (##vector-length _g201740_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g201741_ 2)))
                        (error "Context expects 2 values" _g201741_)))
                  (let ((_%unchecked-proc200447%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g201740_ 0)))
                        (_%unchecked-clauses200449%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g201740_ 1))))
                    (if _%unchecked-proc200447%_
                        (let* ((_%g200451200475%_
                                (lambda (_%g200452200471%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g200452200471%_))))
                               (_%g200450200562%_
                                (lambda (_%g200452200479%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g200452200479%_))
                                      (let ((_%e200457200482%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g200452200479%_))))
                                        (let ((_%hd200456200486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200457200482%_)))
                                              (_%tl200455200489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200457200482%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200455200489%_))
                                              (let ((_%e200460200492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200455200489%_))))
                                                (let ((_%hd200459200496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200460200492%_)))
                                                      (_%tl200458200499%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200460200492%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd200459200496%_))
                                                      (let ((_g201752_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd200459200496%_ '0))))
                (begin
                  (let ((_g201753_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g201752_)
                               (##vector-length _g201752_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g201753_ 2)))
                        (error "Context expects 2 values" _g201753_)))
                  (let ((_%target200461200502%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g201752_ 0)))
                        (_%tl200463200505%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g201752_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl200463200505%_))
                        (letrec ((_%loop200464200508%_
                                  (lambda (_%hd200462200512%_
                                           _%clause200468200515%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd200462200512%_))
                                        (let ((_%e200465200518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd200462200512%_))))
                                          (let ((_%lp-hd200466200522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200465200518%_)))
                                                (_%lp-tl200467200525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200465200518%_))))
                                            (_%loop200464200508%_
                                             _%lp-tl200467200525%_
                                             (cons _%lp-hd200466200522%_
                                                   _%clause200468200515%_))))
                                        (let ((_%clause200469200528%_
                                               (reverse _%clause200468200515%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200458200499%_))
                                              ((lambda (_%L200532%_
                                                        _%L200534%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L200534%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp201754
                                                    (lambda (_%g200553200556%_
                                                             _%g200554200559%_)
                                                      (cons _%g200553200556%_
                                                            _%g200554200559%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp201754
                                                '()
                                                _%L200532%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause200469200528%_
                                               _%hd200456200486%_)
                                              (_%g200451200475%_
                                               _%g200452200479%_)))))))
                          (_%loop200464200508%_ _%target200461200502%_ '()))
                        (_%g200451200475%_ _%g200452200479%_)))))
              (_%g200451200475%_ _%g200452200479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200451200475%_
                                               _%g200452200479%_))))
                                      (_%g200451200475%_ _%g200452200479%_)))))
                          (_%g200450200562%_
                           (list _%unchecked-proc200447%_
                                 _%unchecked-clauses200449%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g199902199913%_))))
                                        (_%g199900200566%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L199761%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L199882%_
                                          _%L199884%_))
                                       (let ((__tmp201755
                                              (lambda (_%g200569200573%_
                                                       _%g200570200576%_
                                                       _%g200571200578%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g200570200576%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g200569200573%_ '())))))
              _%g200571200578%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp201755
                                          '()
                                          _%L199882%_
                                          _%L199884%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig199808199876%_
                                    _%arity199809199879%_))))))
                   (_%loop199802199834%_ _%target199799199828%_ '() '()))
                 (_%g199795199821%_ _%g199796199825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199795199821%_
                                                _%g199796199825%_)))))
                                   (_%g199794200581%_ _%signatures199792%_))
                                 (_%g199678199702%_ _%g199679199706%_)))
                           _%case-signature199696199755%_
                           _%hd199686199723%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199691199735%_
                                                   _%target199688199729%_
                                                   '()))
                                                (_%g199678199702%_
                                                 _%g199679199706%_)))))
                                      (_%g199678199702%_ _%g199679199706%_))))
                              (_%g199678199702%_ _%g199679199706%_))))
                      (_%g199678199702%_ _%g199679199706%_)))))
          (_%g199677200585%_ _%stx199675%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200593%_)
        (let* ((_%__stx201575201576%_ _%$stx200593%_)
               (_%g200599200659%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201575201576%_)))))
          (let ((_%__kont201578201579%_
                 (lambda (_%L200881%_ _%L200883%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200883%_ '()))
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
                                                       (cons _%L200883%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200881%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201580201581%_
                 (lambda (_%L200806%_ _%L200808%_ _%L200809%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200809%_ '()))
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
                                                       (cons _%L200809%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200808%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200806%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201582201583%_
                 (lambda (_%L200720%_ _%L200722%_ _%L200723%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200723%_ '()))
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
                                                       (cons _%L200723%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200722%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200720%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201575201576%_))
                (let ((_%e200605200837%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201575201576%_))))
                  (let ((_%tl200603200844%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200605200837%_)))
                        (_%hd200604200841%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200605200837%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200603200844%_))
                        (let ((_%e200608200847%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200603200844%_))))
                          (let ((_%tl200606200854%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200608200847%_)))
                                (_%hd200607200851%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200608200847%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200607200851%_))
                                (let ((_%e200609200857%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200607200851%_))))
                                  (if (equal? _%e200609200857%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200606200854%_))
                                          (let ((_%e200612200861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200606200854%_))))
                                            (let ((_%tl200610200868%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200612200861%_)))
                                                  (_%hd200611200865%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200612200861%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200610200868%_))
                                                  (let ((_%e200615200871%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200610200868%_))))
                                                    (let ((_%tl200613200878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200615200871%_)))
                                                          (_%hd200614200875%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200615200871%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200613200878%_))
                                                          (_%__kont201578201579%_
                                                           _%hd200614200875%_
                                                           _%hd200611200865%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200599200659%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200599200659%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200599200659%_)))
                                      (if (equal? _%e200609200857%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200606200854%_))
                                              (let ((_%e200628200776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200606200854%_))))
                                                (let ((_%tl200626200783%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200628200776%_)))
                                                      (_%hd200627200780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200628200776%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200626200783%_))
                                                      (let ((_%e200631200786%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200626200783%_))))
                (let ((_%tl200629200793%_
                       (let () (declare (not safe)) (##cdr _%e200631200786%_)))
                      (_%hd200630200790%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200631200786%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200629200793%_))
                      (let ((_%e200634200796%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200629200793%_))))
                        (let ((_%tl200632200803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200634200796%_)))
                              (_%hd200633200800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200634200796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200632200803%_))
                              (_%__kont201580201581%_
                               _%hd200633200800%_
                               _%hd200630200790%_
                               _%hd200627200780%_)
                              (let ()
                                (declare (not safe))
                                (_%g200599200659%_)))))
                      (let () (declare (not safe)) (_%g200599200659%_)))))
              (let () (declare (not safe)) (_%g200599200659%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200599200659%_)))
                                          (if (equal? _%e200609200857%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200606200854%_))
                                                  (let ((_%e200647200690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200606200854%_))))
                                                    (let ((_%tl200645200697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200647200690%_)))
                                                          (_%hd200646200694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200647200690%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200645200697%_))
                                                          (let ((_%e200650200700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200645200697%_))))
                    (let ((_%tl200648200707%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200650200700%_)))
                          (_%hd200649200704%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200650200700%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200648200707%_))
                          (let ((_%e200653200710%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200648200707%_))))
                            (let ((_%tl200651200717%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200653200710%_)))
                                  (_%hd200652200714%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200653200710%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200651200717%_))
                                  (_%__kont201582201583%_
                                   _%hd200652200714%_
                                   _%hd200649200704%_
                                   _%hd200646200694%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200599200659%_)))))
                          (let () (declare (not safe)) (_%g200599200659%_)))))
                  (let () (declare (not safe)) (_%g200599200659%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200599200659%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200599200659%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200599200659%_)))))
                        (let () (declare (not safe)) (_%g200599200659%_)))))
                (let () (declare (not safe)) (_%g200599200659%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx200905%_)
        (let* ((_%g200909200929%_
                (lambda (_%g200910200925%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200910200925%_))))
               (_%g200908201000%_
                (lambda (_%g200910200933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200910200933%_))
                      (let ((_%e200914200936%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200910200933%_))))
                        (let ((_%hd200913200940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200914200936%_)))
                              (_%tl200912200943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200914200936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200912200943%_))
                              (let ((_g201756_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200912200943%_
                                        '0))))
                                (begin
                                  (let ((_g201757_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201756_)
                                               (##vector-length _g201756_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201757_ 2)))
                                        (error "Context expects 2 values"
                                               _g201757_)))
                                  (let ((_%target200915200946%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201756_ 0)))
                                        (_%tl200917200949%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201756_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200917200949%_))
                                        (letrec ((_%loop200918200952%_
                                                  (lambda (_%hd200916200956%_
                                                           _%decl200922200959%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200916200956%_))
                                                        (let ((_%e200919200962%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200916200956%_))))
                  (let ((_%lp-hd200920200966%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200919200962%_)))
                        (_%lp-tl200921200969%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200919200962%_))))
                    (_%loop200918200952%_
                     _%lp-tl200921200969%_
                     (cons _%lp-hd200920200966%_ _%decl200922200959%_))))
                (let ((_%decl200923200972%_ (reverse _%decl200922200959%_)))
                  ((lambda (_%L200976%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp201758
                                  (lambda (_%g200991200994%_ _%g200992200997%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g200991200994%_)
                                          _%g200992200997%_))))
                             (declare (not safe))
                             (__foldr1 __tmp201758 '() _%L200976%_))))
                   _%decl200923200972%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200918200952%_
                                           _%target200915200946%_
                                           '()))
                                        (_%g200909200929%_
                                         _%g200910200933%_)))))
                              (_%g200909200929%_ _%g200910200933%_))))
                      (_%g200909200929%_ _%g200910200933%_)))))
          (_%g200908201000%_ _%$stx200905%_))))))
