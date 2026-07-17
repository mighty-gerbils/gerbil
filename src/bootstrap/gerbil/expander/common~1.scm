(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g181115_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181117_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181119_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181121_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181122_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181124_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181125_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181127_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181128_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181130_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181131_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181133_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj181111
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 '#f '13 '#f '#f))
        (let ((__tmp181114 |gx[1]#_g181115_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 __tmp181114 '4 '#f '#f))
        (let ((__tmp181116 |gx[1]#_g181117_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 __tmp181116 '14 '#f '#f))
        (let ((__tmp181118 |gx[1]#_g181119_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 __tmp181118 '15 '#f '#f))
        (let ((__tmp181120
               (cons (cons 'e |gx[1]#_g181121_|)
                     (cons (cons 'source |gx[1]#_g181122_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 __tmp181120 '16 '#f '#f))
        (let ((__tmp181123
               (cons (cons 'e |gx[1]#_g181124_|)
                     (cons (cons 'source |gx[1]#_g181125_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 __tmp181123 '17 '#f '#f))
        (let ((__tmp181126
               (cons (cons 'e |gx[1]#_g181127_|)
                     (cons (cons 'source |gx[1]#_g181128_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 __tmp181126 '18 '#f '#f))
        (let ((__tmp181129
               (cons (cons 'e |gx[1]#_g181130_|)
                     (cons (cons 'source |gx[1]#_g181131_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 __tmp181129 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181111 '() '21 '#f '#f))
        __obj181111))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx179708%_)
        (let* ((_%$%g179712179726%_
                (lambda (_%$%g179713179722%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g179713179722%_)))
               (_%$%g179711179768%_
                (lambda (_%$%g179713179730%_)
                  (if (gx#stx-pair? _%$%g179713179730%_)
                      (let ((_%$%e179715179733%_
                             (gx#syntax-e _%$%g179713179730%_)))
                        (let ((_%$%hd179716179737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e179715179733%_)))
                              (_%$%tl179717179740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e179715179733%_))))
                          (if (gx#stx-pair? _%$%tl179717179740%_)
                              (let ((_%$%e179718179743%_
                                     (gx#syntax-e _%$%tl179717179740%_)))
                                (let ((_%$%hd179719179747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e179718179743%_)))
                                      (_%$%tl179720179750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e179718179743%_))))
                                  (if (gx#stx-null? _%$%tl179720179750%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd179719179747%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd179719179747%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g179712179726%_
                                       _%$%g179713179730%_))))
                              (_%$%g179712179726%_ _%$%g179713179730%_))))
                      (_%$%g179712179726%_ _%$%g179713179730%_)))))
          (_%$%g179711179768%_ _%$stx179708%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx179772%_)
        (letrec ((_%generate179775%_
                  (lambda (_%tgt179924%_ _%kws179926%_ _%clauses179927%_)
                    (letrec ((_%generate-clause179929%_
                              (lambda (_%hd180862%_ _%E180864%_)
                                (let* ((_%__stx181014181015%_ _%hd180862%_)
                                       (_%$%g180868180895%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx181014181015%_))))
                                  (let ((_%__kont181017181018%_
                                         (lambda (_%$%g180870180991%_
                                                  _%$%g180871180993%_)
                                           (_%generate1179931%_
                                            _%hd180862%_
                                            _%$%g180871180993%_
                                            '#t
                                            _%$%g180870180991%_
                                            _%E180864%_)))
                                        (_%__kont181019181020%_
                                         (lambda (_%$%g180878180943%_
                                                  _%$%g180879180945%_
                                                  _%$%g180880180946%_)
                                           (_%generate1179931%_
                                            _%hd180862%_
                                            _%$%g180880180946%_
                                            _%$%g180879180945%_
                                            _%$%g180878180943%_
                                            _%E180864%_)))
                                        (_%__kont181021181022%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx179772%_
                                            _%hd180862%_))))
                                    (if (gx#stx-pair? _%__stx181014181015%_)
                                        (let ((_%$%e180872180971%_
                                               (gx#syntax-e
                                                _%__stx181014181015%_)))
                                          (let ((_%$%tl180874180978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e180872180971%_)))
                                                (_%$%hd180873180975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e180872180971%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl180874180978%_)
                                                (let ((_%$%e180875180981%_
                                                       (gx#syntax-e
                                                        _%$%tl180874180978%_)))
                                                  (let ((_%$%tl180877180988%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e180875180981%_)))
                                                        (_%$%hd180876180985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e180875180981%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl180877180988%_)
                                                        (_%__kont181017181018%_
                                                         _%$%hd180876180985%_
                                                         _%$%hd180873180975%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl180877180988%_)
                                                            (let ((_%$%e180887180933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl180877180988%_)))
                      (let ((_%$%tl180889180940%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e180887180933%_)))
                            (_%$%hd180888180937%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e180887180933%_))))
                        (if (gx#stx-null? _%$%tl180889180940%_)
                            (_%__kont181019181020%_
                             _%$%hd180888180937%_
                             _%$%hd180876180985%_
                             _%$%hd180873180975%_)
                            (_%__kont181021181022%_))))
                    (_%__kont181021181022%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont181021181022%_))))
                                        (_%__kont181021181022%_))))))
                             (_%generate1179931%_
                              (lambda (_%where180315%_
                                       _%hd180317%_
                                       _%fender180318%_
                                       _%body180319%_
                                       _%E180320%_)
                                (letrec ((_%recur180322%_
                                          (lambda (_%hd180325%_
                                                   _%tgt180327%_
                                                   _%K180328%_)
                                            (let* ((_%__stx181060181061%_
                                                    _%hd180325%_)
                                                   (_%$%g180331180343%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx181060181061%_))))
                                              (let ((_%__kont181063181064%_
                                                     (lambda (_%$%g180333180652%_
                                                              _%$%g180334180654%_)
                                                       (let* ((_%$%g180665180673%_
                                                               (lambda (_%$%g180666180669%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g180666180669%_)))
                      (_%$%g180664180854%_
                       (lambda (_%$%g180666180677%_)
                         (let* ((_%$%g180692180700%_
                                 (lambda (_%$%g180693180696%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g180693180696%_)))
                                (_%$%g180691180850%_
                                 (lambda (_%$%g180693180704%_)
                                   (let* ((_%$%g180720180728%_
                                           (lambda (_%$%g180721180724%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g180721180724%_)))
                                          (_%$%g180719180846%_
                                           (lambda (_%$%g180721180732%_)
                                             (let* ((_%$%g180748180756%_
                                                     (lambda (_%$%g180749180752%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g180749180752%_)))
                                                    (_%$%g180747180842%_
                                                     (lambda (_%$%g180749180760%_)
                                                       (let* ((_%$%g180776180784%_
                                                               (lambda (_%$%g180777180780%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g180777180780%_)))
                      (_%$%g180775180838%_
                       (lambda (_%$%g180777180788%_)
                         (let* ((_%$%g180804180812%_
                                 (lambda (_%$%g180805180808%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g180805180808%_)))
                                (_%$%g180803180834%_
                                 (lambda (_%$%g180805180816%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g180666180677%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g180693180704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g180666180677%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g180721180732%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g180693180704%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g180749180760%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g180693180704%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g180777180788%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g180805180816%_
                                                           '())))))))
                           (_%$%g180803180834%_ _%E180320%_)))))
                 (_%$%g180775180838%_
                  (_%recur180322%_
                   _%$%g180334180654%_
                   _%$%g180721180732%_
                   (_%recur180322%_
                    _%$%g180333180652%_
                    _%$%g180749180760%_
                    _%K180328%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g180747180842%_
                                                (gx#genident 'tl))))))
                                     (_%$%g180719180846%_
                                      (gx#genident 'hd))))))
                           (_%$%g180691180850%_ (gx#genident 'e))))))
                 (_%$%g180664180854%_ _%tgt180327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont181065181066%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd180325%_)
                                                           (if (gx#underscore?
                                                                _%hd180325%_)
                                                               _%K180328%_
                                                               (if (let ((__tmp181132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g180357180359%_)
                                    (gx#bound-identifier=?
                                     _%$%g180357180359%_
                                     _%hd180325%_))))
                             (declare (not safe))
                             (__find __tmp181132 _%kws179926%_))
                           (let* ((_%$%g180365180380%_
                                   (lambda (_%$%g180366180376%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g180366180376%_)))
                                  (_%$%g180364180433%_
                                   (lambda (_%$%g180366180384%_)
                                     (if (gx#stx-pair? _%$%g180366180384%_)
                                         (let ((_%$%e180369180387%_
                                                (gx#syntax-e
                                                 _%$%g180366180384%_)))
                                           (let ((_%$%hd180370180391%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e180369180387%_)))
                                                 (_%$%tl180371180394%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e180369180387%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl180371180394%_)
                                                 (let ((_%$%e180372180397%_
                                                        (gx#syntax-e
                                                         _%$%tl180371180394%_)))
                                                   (let ((_%$%hd180373180401%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e180372180397%_)))
                                                         (_%$%tl180374180404%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e180372180397%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl180374180404%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'and)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'identifier?)
                                               (cons _%$%hd180370180391%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd180370180391%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd180373180401%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K180328%_ (cons _%E180320%_ '()))))
                 (_%$%g180365180380%_ _%$%g180366180384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g180365180380%_
                                                  _%$%g180366180384%_))))
                                         (_%$%g180365180380%_
                                          _%$%g180366180384%_)))))
                             (_%$%g180364180433%_
                              (list _%tgt180327%_ _%hd180325%_)))
                           (let* ((_%$%g180439180454%_
                                   (lambda (_%$%g180440180450%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g180440180450%_)))
                                  (_%$%g180438180499%_
                                   (lambda (_%$%g180440180458%_)
                                     (if (gx#stx-pair? _%$%g180440180458%_)
                                         (let ((_%$%e180443180461%_
                                                (gx#syntax-e
                                                 _%$%g180440180458%_)))
                                           (let ((_%$%hd180444180465%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e180443180461%_)))
                                                 (_%$%tl180445180468%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e180443180461%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl180445180468%_)
                                                 (let ((_%$%e180446180471%_
                                                        (gx#syntax-e
                                                         _%$%tl180445180468%_)))
                                                   (let ((_%$%hd180447180475%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e180446180471%_)))
                                                         (_%$%tl180448180478%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e180446180471%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl180448180478%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd180447180475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd180444180465%_ '()))
                                   '())
                             (cons _%K180328%_ '())))
                 (_%$%g180439180454%_ _%$%g180440180458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g180439180454%_
                                                  _%$%g180440180458%_))))
                                         (_%$%g180439180454%_
                                          _%$%g180440180458%_)))))
                             (_%$%g180438180499%_
                              (list _%tgt180327%_ _%hd180325%_)))))
                   (if (gx#stx-null? _%hd180325%_)
                       (let* ((_%$%g180505180513%_
                               (lambda (_%$%g180506180509%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g180506180509%_)))
                              (_%$%g180504180532%_
                               (lambda (_%$%g180506180517%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g180506180517%_
                                                         '()))
                                             (cons _%K180328%_
                                                   (cons _%E180320%_ '())))))))
                         (_%$%g180504180532%_ _%tgt180327%_))
                       (if (gx#stx-datum? _%hd180325%_)
                           (let* ((_%$%g180538180557%_
                                   (lambda (_%$%g180539180553%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g180539180553%_)))
                                  (_%$%g180537180616%_
                                   (lambda (_%$%g180539180561%_)
                                     (if (gx#stx-pair? _%$%g180539180561%_)
                                         (let ((_%$%e180543180564%_
                                                (gx#syntax-e
                                                 _%$%g180539180561%_)))
                                           (let ((_%$%hd180544180568%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e180543180564%_)))
                                                 (_%$%tl180545180571%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e180543180564%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl180545180571%_)
                                                 (let ((_%$%e180546180574%_
                                                        (gx#syntax-e
                                                         _%$%tl180545180571%_)))
                                                   (let ((_%$%hd180547180578%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e180546180574%_)))
                                                         (_%$%tl180548180581%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e180546180574%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl180548180581%_)
                                                         (let ((_%$%e180549180584%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl180548180581%_)))
                   (let ((_%$%hd180550180588%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e180549180584%_)))
                         (_%$%tl180551180591%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e180549180584%_))))
                     (if (gx#stx-null? _%$%tl180551180591%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd180550180588%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd180544180568%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd180547180578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K180328%_
                                           (cons _%E180320%_ '()))))
                         (_%$%g180538180557%_ _%$%g180539180561%_))))
                 (_%$%g180538180557%_ _%$%g180539180561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g180538180557%_
                                                  _%$%g180539180561%_))))
                                         (_%$%g180538180557%_
                                          _%$%g180539180561%_)))))
                             (_%$%g180537180616%_
                              (list _%tgt180327%_
                                    _%hd180325%_
                                    (let ((_%e180620%_
                                           (gx#stx-e _%hd180325%_)))
                                      (if (or (keyword? _%e180620%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e180620%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e180620%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx179772%_
                            _%where180315%_
                            _%hd180325%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx181060181061%_)
                                                    (let ((_%$%e180335180642%_
                                                           (gx#syntax-e
                                                            _%__stx181060181061%_)))
                                                      (let ((_%$%tl180337180649%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e180335180642%_)))
                    (_%$%hd180336180646%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e180335180642%_))))
                (_%__kont181063181064%_
                 _%$%tl180337180649%_
                 _%$%hd180336180646%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont181065181066%_)))))))
                                  (_%recur180322%_
                                   _%hd180317%_
                                   _%tgt179924%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender180318%_
                                               (cons _%body180319%_
                                                     (cons _%E180320%_
                                                           '()))))))))
                             (_%generate-clauses179932%_
                              (lambda (_%clauses180053%_)
                                (let _%lp180056%_ ((_%rest180059%_
                                                    _%clauses180053%_)
                                                   (_%E180061%_
                                                    (gx#genident 'E))
                                                   (_%r180062%_ '()))
                                  (let* ((_%__stx181096181097%_ _%rest180059%_)
                                         (_%$%g180065180077%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx181096181097%_))))
                                    (let ((_%__kont181099181100%_
                                           (lambda (_%$%g180067180142%_
                                                    _%$%g180068180144%_)
                                             (let* ((_%__stx181076181077%_
                                                     _%$%g180068180144%_)
                                                    (_%$%g180156180167%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx181076181077%_))))
                                               (let ((_%__kont181079181080%_
                                                      (lambda (_%$%g180158180296%_)
                                                        (if (gx#stx-null?
                                                             _%$%g180067180142%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g180158180296%_)
                             (not (gx#stx-null? _%$%g180158180296%_)))
                        (cons (cons _%E180061%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g180158180296%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g180068180144%_))
                                          '()))
                              _%r180062%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx179772%_
                         _%$%g180068180144%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx179772%_
                     _%$%g180068180144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont181081181082%_
                                                      (lambda ()
                                                        (let* ((_%$%g180178180186%_
                                                                (lambda (_%$%g180179180182%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g180179180182%_)))
                       (_%$%g180177180275%_
                        (lambda (_%$%g180179180190%_)
                          (let* ((_%$%g180209180217%_
                                  (lambda (_%$%g180210180213%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g180210180213%_)))
                                 (_%$%g180208180271%_
                                  (lambda (_%$%g180210180221%_)
                                    (let* ((_%$%g180237180245%_
                                            (lambda (_%$%g180238180241%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g180238180241%_)))
                                           (_%$%g180236180267%_
                                            (lambda (_%$%g180238180249%_)
                                              (_%lp180056%_
                                               _%$%g180067180142%_
                                               _%$%g180179180190%_
                                               (cons (cons _%E180061%_
                                                           (cons _%$%g180238180249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r180062%_)))))
                                      (_%$%g180236180267%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g180210180221%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g180068180144%_)))))))
                            (_%$%g180208180271%_
                             (_%generate-clause179929%_
                              _%$%g180068180144%_
                              (cons _%$%g180179180190%_ '())))))))
                  (_%$%g180177180275%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx181076181077%_)
                                                     (let ((_%$%e180159180286%_
                                                            (gx#syntax-e
                                                             _%__stx181076181077%_)))
                                                       (let ((_%$%tl180161180293%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e180159180286%_)))
                     (_%$%hd180160180290%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e180159180286%_))))
                 (if (gx#identifier? _%$%hd180160180290%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g181133_|
                          _%$%hd180160180290%_)
                         (_%__kont181079181080%_ _%$%tl180161180293%_)
                         (_%__kont181081181082%_))
                     (_%__kont181081181082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont181081181082%_))))))
                                          (_%__kont181101181102%_
                                           (lambda ()
                                             (let* ((_%$%g180088180096%_
                                                     (lambda (_%$%g180089180092%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g180089180092%_)))
                                                    (_%$%g180087180121%_
                                                     (lambda (_%$%g180089180100%_)
                                                       (cons (cons _%E180061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax; invalid syntax-case clause"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g180089180100%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx179772%_))
                                 '()))
                     _%r180062%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g180087180121%_
                                                _%tgt179924%_)))))
                                      (if (gx#stx-pair? _%__stx181096181097%_)
                                          (let ((_%$%e180069180132%_
                                                 (gx#syntax-e
                                                  _%__stx181096181097%_)))
                                            (let ((_%$%tl180071180139%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e180069180132%_)))
                                                  (_%$%hd180070180136%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e180069180132%_))))
                                              (_%__kont181099181100%_
                                               _%$%tl180071180139%_
                                               _%$%hd180070180136%_)))
                                          (_%__kont181101181102%_))))))))
                      (let* ((_%bind179934%_
                              (_%generate-clauses179932%_ _%clauses179927%_))
                             (_%$%g179937179954%_
                              (lambda (_%$%g179938179950%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g179938179950%_)))
                             (_%$%g179936180049%_
                              (lambda (_%$%g179938179958%_)
                                (if (gx#stx-pair/null? _%$%g179938179958%_)
                                    (let ((_g181134_
                                           (gx#syntax-split-splice
                                            _%$%g179938179958%_
                                            '0)))
                                      (begin
                                        (let ((_g181135_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g181134_)
                                                     (##values-length
                                                      _g181134_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g181135_ 2)))
                                              (error "Context expects 2 values"
                                                     _g181135_)))
                                        (let ((_%$%target179940179961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181134_ 0)))
                                              (_%$%tl179942179964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181134_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl179942179964%_)
                                              (letrec ((_%$%loop179943179967%_
                                                        (lambda (_%$%hd179941179971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try179947179974%_)
                  (if (gx#stx-pair? _%$%hd179941179971%_)
                      (let ((_%$%e179944179976%_
                             (gx#syntax-e _%$%hd179941179971%_)))
                        (let ((_%$%lp-hd179945179980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e179944179976%_)))
                              (_%$%lp-tl179946179983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e179944179976%_))))
                          (_%$%loop179943179967%_
                           _%$%lp-tl179946179983%_
                           (cons _%$%lp-hd179945179980%_
                                 _%$%bind-try179947179974%_))))
                      (let* ((_%$%bind-try179948179986%_
                              (reverse _%$%bind-try179947179974%_))
                             (_%$%g180007180015%_
                              (lambda (_%$%g180008180011%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g180008180011%_)))
                             (_%$%g180006180045%_
                              (lambda (_%$%g180008180019%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp181136
                                                   (lambda (_%$%g180036180039%_
                                                            _%$%g180037180042%_)
                                                     (cons _%$%g180036180039%_
                                                           _%$%g180037180042%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp181136
                                               '()
                                               _%$%bind-try179948179986%_))
                                            (cons (cons _%$%g180008180019%_
                                                        '())
                                                  '()))))))
                        (_%$%g180006180045%_ (car (last _%bind179934%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop179943179967%_
                                                 _%$%target179940179961%_
                                                 '()))
                                              (_%$%g179937179954%_
                                               _%$%g179938179958%_)))))
                                    (_%$%g179937179954%_
                                     _%$%g179938179958%_)))))
                        (_%$%g179936180049%_ _%bind179934%_))))))
          (let* ((_%$%g179778179797%_
                  (lambda (_%$%g179779179793%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g179779179793%_)))
                 (_%$%g179777179920%_
                  (lambda (_%$%g179779179801%_)
                    (if (gx#stx-pair? _%$%g179779179801%_)
                        (let ((_%$%e179783179804%_
                               (gx#syntax-e _%$%g179779179801%_)))
                          (let ((_%$%hd179784179808%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e179783179804%_)))
                                (_%$%tl179785179811%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e179783179804%_))))
                            (if (gx#stx-pair? _%$%tl179785179811%_)
                                (let ((_%$%e179786179814%_
                                       (gx#syntax-e _%$%tl179785179811%_)))
                                  (let ((_%$%hd179787179818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e179786179814%_)))
                                        (_%$%tl179788179821%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e179786179814%_))))
                                    (if (gx#stx-pair? _%$%tl179788179821%_)
                                        (let ((_%$%e179789179824%_
                                               (gx#syntax-e
                                                _%$%tl179788179821%_)))
                                          (let ((_%$%hd179790179828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e179789179824%_)))
                                                (_%$%tl179791179831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e179789179824%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd179790179828%_)
                                                     (gx#stx-list?
                                                      _%$%tl179791179831%_))
                                                (let* ((_%$%g179855179863%_
                                                        (lambda (_%$%g179856179859%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g179856179859%_)))
                                                       (_%$%g179854179916%_
                                                        (lambda (_%$%g179856179867%_)
                                                          (let* ((_%$%g179882179890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g179883179886%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g179883179886%_)))
                         (_%$%g179881179912%_
                          (lambda (_%$%g179883179894%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g179856179867%_
                                                    (cons _%$%hd179787179818%_
                                                          '()))
                                              '())
                                        (cons _%$%g179883179894%_ '()))))))
                    (_%$%g179881179912%_
                     (_%generate179775%_
                      _%$%g179856179867%_
                      (gx#syntax->list _%$%hd179790179828%_)
                      _%$%tl179791179831%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g179854179916%_
                                                   (gx#genident 'e)))
                                                (_%$%g179778179797%_
                                                 _%$%g179779179801%_))))
                                        (_%$%g179778179797%_
                                         _%$%g179779179801%_))))
                                (_%$%g179778179797%_ _%$%g179779179801%_))))
                        (_%$%g179778179797%_ _%$%g179779179801%_)))))
            (_%$%g179777179920%_ _%stx179772%_)))))))
