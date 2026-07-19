(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g180982_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g180984_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g180986_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g180988_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g180989_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g180991_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g180992_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g180994_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g180995_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g180997_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g180998_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181000_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj180978
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
          (##unchecked-structure-set! __obj180978 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 '#f '13 '#f '#f))
        (let ((__tmp180981 |gx[1]#_g180982_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 __tmp180981 '4 '#f '#f))
        (let ((__tmp180983 |gx[1]#_g180984_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 __tmp180983 '14 '#f '#f))
        (let ((__tmp180985 |gx[1]#_g180986_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 __tmp180985 '15 '#f '#f))
        (let ((__tmp180987
               (cons (cons 'e |gx[1]#_g180988_|)
                     (cons (cons 'source |gx[1]#_g180989_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 __tmp180987 '16 '#f '#f))
        (let ((__tmp180990
               (cons (cons 'e |gx[1]#_g180991_|)
                     (cons (cons 'source |gx[1]#_g180992_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 __tmp180990 '17 '#f '#f))
        (let ((__tmp180993
               (cons (cons 'e |gx[1]#_g180994_|)
                     (cons (cons 'source |gx[1]#_g180995_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 __tmp180993 '18 '#f '#f))
        (let ((__tmp180996
               (cons (cons 'e |gx[1]#_g180997_|)
                     (cons (cons 'source |gx[1]#_g180998_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 __tmp180996 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj180978 '() '21 '#f '#f))
        __obj180978))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx179575%_)
        (let* ((_%$%g179579179593%_
                (lambda (_%$%g179580179589%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g179580179589%_)))
               (_%$%g179578179635%_
                (lambda (_%$%g179580179597%_)
                  (if (gx#stx-pair? _%$%g179580179597%_)
                      (let ((_%$%e179582179600%_
                             (gx#syntax-e _%$%g179580179597%_)))
                        (let ((_%$%hd179583179604%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e179582179600%_)))
                              (_%$%tl179584179607%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e179582179600%_))))
                          (if (gx#stx-pair? _%$%tl179584179607%_)
                              (let ((_%$%e179585179610%_
                                     (gx#syntax-e _%$%tl179584179607%_)))
                                (let ((_%$%hd179586179614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e179585179610%_)))
                                      (_%$%tl179587179617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e179585179610%_))))
                                  (if (gx#stx-null? _%$%tl179587179617%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd179586179614%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd179586179614%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g179579179593%_
                                       _%$%g179580179597%_))))
                              (_%$%g179579179593%_ _%$%g179580179597%_))))
                      (_%$%g179579179593%_ _%$%g179580179597%_)))))
          (_%$%g179578179635%_ _%$stx179575%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx179639%_)
        (letrec ((_%generate179642%_
                  (lambda (_%tgt179791%_ _%kws179793%_ _%clauses179794%_)
                    (letrec ((_%generate-clause179796%_
                              (lambda (_%hd180729%_ _%E180731%_)
                                (let* ((_%__stx180881180882%_ _%hd180729%_)
                                       (_%$%g180735180762%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx180881180882%_))))
                                  (let ((_%__kont180884180885%_
                                         (lambda (_%$%g180737180858%_
                                                  _%$%g180738180860%_)
                                           (_%generate1179798%_
                                            _%hd180729%_
                                            _%$%g180738180860%_
                                            '#t
                                            _%$%g180737180858%_
                                            _%E180731%_)))
                                        (_%__kont180886180887%_
                                         (lambda (_%$%g180745180810%_
                                                  _%$%g180746180812%_
                                                  _%$%g180747180813%_)
                                           (_%generate1179798%_
                                            _%hd180729%_
                                            _%$%g180747180813%_
                                            _%$%g180746180812%_
                                            _%$%g180745180810%_
                                            _%E180731%_)))
                                        (_%__kont180888180889%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx179639%_
                                            _%hd180729%_))))
                                    (if (gx#stx-pair? _%__stx180881180882%_)
                                        (let ((_%$%e180739180838%_
                                               (gx#syntax-e
                                                _%__stx180881180882%_)))
                                          (let ((_%$%tl180741180845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e180739180838%_)))
                                                (_%$%hd180740180842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e180739180838%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl180741180845%_)
                                                (let ((_%$%e180742180848%_
                                                       (gx#syntax-e
                                                        _%$%tl180741180845%_)))
                                                  (let ((_%$%tl180744180855%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e180742180848%_)))
                                                        (_%$%hd180743180852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e180742180848%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl180744180855%_)
                                                        (_%__kont180884180885%_
                                                         _%$%hd180743180852%_
                                                         _%$%hd180740180842%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl180744180855%_)
                                                            (let ((_%$%e180754180800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl180744180855%_)))
                      (let ((_%$%tl180756180807%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e180754180800%_)))
                            (_%$%hd180755180804%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e180754180800%_))))
                        (if (gx#stx-null? _%$%tl180756180807%_)
                            (_%__kont180886180887%_
                             _%$%hd180755180804%_
                             _%$%hd180743180852%_
                             _%$%hd180740180842%_)
                            (_%__kont180888180889%_))))
                    (_%__kont180888180889%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont180888180889%_))))
                                        (_%__kont180888180889%_))))))
                             (_%generate1179798%_
                              (lambda (_%where180182%_
                                       _%hd180184%_
                                       _%fender180185%_
                                       _%body180186%_
                                       _%E180187%_)
                                (letrec ((_%recur180189%_
                                          (lambda (_%hd180192%_
                                                   _%tgt180194%_
                                                   _%K180195%_)
                                            (let* ((_%__stx180927180928%_
                                                    _%hd180192%_)
                                                   (_%$%g180198180210%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx180927180928%_))))
                                              (let ((_%__kont180930180931%_
                                                     (lambda (_%$%g180200180519%_
                                                              _%$%g180201180521%_)
                                                       (let* ((_%$%g180532180540%_
                                                               (lambda (_%$%g180533180536%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g180533180536%_)))
                      (_%$%g180531180721%_
                       (lambda (_%$%g180533180544%_)
                         (let* ((_%$%g180559180567%_
                                 (lambda (_%$%g180560180563%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g180560180563%_)))
                                (_%$%g180558180717%_
                                 (lambda (_%$%g180560180571%_)
                                   (let* ((_%$%g180587180595%_
                                           (lambda (_%$%g180588180591%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g180588180591%_)))
                                          (_%$%g180586180713%_
                                           (lambda (_%$%g180588180599%_)
                                             (let* ((_%$%g180615180623%_
                                                     (lambda (_%$%g180616180619%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g180616180619%_)))
                                                    (_%$%g180614180709%_
                                                     (lambda (_%$%g180616180627%_)
                                                       (let* ((_%$%g180643180651%_
                                                               (lambda (_%$%g180644180647%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g180644180647%_)))
                      (_%$%g180642180705%_
                       (lambda (_%$%g180644180655%_)
                         (let* ((_%$%g180671180679%_
                                 (lambda (_%$%g180672180675%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g180672180675%_)))
                                (_%$%g180670180701%_
                                 (lambda (_%$%g180672180683%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g180533180544%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g180560180571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g180533180544%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g180588180599%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g180560180571%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g180616180627%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g180560180571%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g180644180655%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g180672180683%_
                                                           '())))))))
                           (_%$%g180670180701%_ _%E180187%_)))))
                 (_%$%g180642180705%_
                  (_%recur180189%_
                   _%$%g180201180521%_
                   _%$%g180588180599%_
                   (_%recur180189%_
                    _%$%g180200180519%_
                    _%$%g180616180627%_
                    _%K180195%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g180614180709%_
                                                (gx#genident 'tl))))))
                                     (_%$%g180586180713%_
                                      (gx#genident 'hd))))))
                           (_%$%g180558180717%_ (gx#genident 'e))))))
                 (_%$%g180531180721%_ _%tgt180194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont180932180933%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd180192%_)
                                                           (if (gx#underscore?
                                                                _%hd180192%_)
                                                               _%K180195%_
                                                               (if (let ((__tmp180999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g180224180226%_)
                                    (gx#bound-identifier=?
                                     _%$%g180224180226%_
                                     _%hd180192%_))))
                             (declare (not safe))
                             (__find __tmp180999 _%kws179793%_))
                           (let* ((_%$%g180232180247%_
                                   (lambda (_%$%g180233180243%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g180233180243%_)))
                                  (_%$%g180231180300%_
                                   (lambda (_%$%g180233180251%_)
                                     (if (gx#stx-pair? _%$%g180233180251%_)
                                         (let ((_%$%e180236180254%_
                                                (gx#syntax-e
                                                 _%$%g180233180251%_)))
                                           (let ((_%$%hd180237180258%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e180236180254%_)))
                                                 (_%$%tl180238180261%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e180236180254%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl180238180261%_)
                                                 (let ((_%$%e180239180264%_
                                                        (gx#syntax-e
                                                         _%$%tl180238180261%_)))
                                                   (let ((_%$%hd180240180268%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e180239180264%_)))
                                                         (_%$%tl180241180271%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e180239180264%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl180241180271%_)
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
                                               (cons _%$%hd180237180258%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd180237180258%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd180240180268%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K180195%_ (cons _%E180187%_ '()))))
                 (_%$%g180232180247%_ _%$%g180233180251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g180232180247%_
                                                  _%$%g180233180251%_))))
                                         (_%$%g180232180247%_
                                          _%$%g180233180251%_)))))
                             (_%$%g180231180300%_
                              (list _%tgt180194%_ _%hd180192%_)))
                           (let* ((_%$%g180306180321%_
                                   (lambda (_%$%g180307180317%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g180307180317%_)))
                                  (_%$%g180305180366%_
                                   (lambda (_%$%g180307180325%_)
                                     (if (gx#stx-pair? _%$%g180307180325%_)
                                         (let ((_%$%e180310180328%_
                                                (gx#syntax-e
                                                 _%$%g180307180325%_)))
                                           (let ((_%$%hd180311180332%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e180310180328%_)))
                                                 (_%$%tl180312180335%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e180310180328%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl180312180335%_)
                                                 (let ((_%$%e180313180338%_
                                                        (gx#syntax-e
                                                         _%$%tl180312180335%_)))
                                                   (let ((_%$%hd180314180342%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e180313180338%_)))
                                                         (_%$%tl180315180345%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e180313180338%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl180315180345%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd180314180342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd180311180332%_ '()))
                                   '())
                             (cons _%K180195%_ '())))
                 (_%$%g180306180321%_ _%$%g180307180325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g180306180321%_
                                                  _%$%g180307180325%_))))
                                         (_%$%g180306180321%_
                                          _%$%g180307180325%_)))))
                             (_%$%g180305180366%_
                              (list _%tgt180194%_ _%hd180192%_)))))
                   (if (gx#stx-null? _%hd180192%_)
                       (let* ((_%$%g180372180380%_
                               (lambda (_%$%g180373180376%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g180373180376%_)))
                              (_%$%g180371180399%_
                               (lambda (_%$%g180373180384%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g180373180384%_
                                                         '()))
                                             (cons _%K180195%_
                                                   (cons _%E180187%_ '())))))))
                         (_%$%g180371180399%_ _%tgt180194%_))
                       (if (gx#stx-datum? _%hd180192%_)
                           (let* ((_%$%g180405180424%_
                                   (lambda (_%$%g180406180420%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g180406180420%_)))
                                  (_%$%g180404180483%_
                                   (lambda (_%$%g180406180428%_)
                                     (if (gx#stx-pair? _%$%g180406180428%_)
                                         (let ((_%$%e180410180431%_
                                                (gx#syntax-e
                                                 _%$%g180406180428%_)))
                                           (let ((_%$%hd180411180435%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e180410180431%_)))
                                                 (_%$%tl180412180438%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e180410180431%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl180412180438%_)
                                                 (let ((_%$%e180413180441%_
                                                        (gx#syntax-e
                                                         _%$%tl180412180438%_)))
                                                   (let ((_%$%hd180414180445%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e180413180441%_)))
                                                         (_%$%tl180415180448%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e180413180441%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl180415180448%_)
                                                         (let ((_%$%e180416180451%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl180415180448%_)))
                   (let ((_%$%hd180417180455%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e180416180451%_)))
                         (_%$%tl180418180458%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e180416180451%_))))
                     (if (gx#stx-null? _%$%tl180418180458%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd180417180455%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd180411180435%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd180414180445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K180195%_
                                           (cons _%E180187%_ '()))))
                         (_%$%g180405180424%_ _%$%g180406180428%_))))
                 (_%$%g180405180424%_ _%$%g180406180428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g180405180424%_
                                                  _%$%g180406180428%_))))
                                         (_%$%g180405180424%_
                                          _%$%g180406180428%_)))))
                             (_%$%g180404180483%_
                              (list _%tgt180194%_
                                    _%hd180192%_
                                    (let ((_%e180487%_
                                           (gx#stx-e _%hd180192%_)))
                                      (if (or (keyword? _%e180487%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e180487%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e180487%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx179639%_
                            _%where180182%_
                            _%hd180192%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx180927180928%_)
                                                    (let ((_%$%e180202180509%_
                                                           (gx#syntax-e
                                                            _%__stx180927180928%_)))
                                                      (let ((_%$%tl180204180516%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e180202180509%_)))
                    (_%$%hd180203180513%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e180202180509%_))))
                (_%__kont180930180931%_
                 _%$%tl180204180516%_
                 _%$%hd180203180513%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont180932180933%_)))))))
                                  (_%recur180189%_
                                   _%hd180184%_
                                   _%tgt179791%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender180185%_
                                               (cons _%body180186%_
                                                     (cons _%E180187%_
                                                           '()))))))))
                             (_%generate-clauses179799%_
                              (lambda (_%clauses179920%_)
                                (let _%lp179923%_ ((_%rest179926%_
                                                    _%clauses179920%_)
                                                   (_%E179928%_
                                                    (gx#genident 'E))
                                                   (_%r179929%_ '()))
                                  (let* ((_%__stx180963180964%_ _%rest179926%_)
                                         (_%$%g179932179944%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx180963180964%_))))
                                    (let ((_%__kont180966180967%_
                                           (lambda (_%$%g179934180009%_
                                                    _%$%g179935180011%_)
                                             (let* ((_%__stx180943180944%_
                                                     _%$%g179935180011%_)
                                                    (_%$%g180023180034%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx180943180944%_))))
                                               (let ((_%__kont180946180947%_
                                                      (lambda (_%$%g180025180163%_)
                                                        (if (gx#stx-null?
                                                             _%$%g179934180009%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g180025180163%_)
                             (not (gx#stx-null? _%$%g180025180163%_)))
                        (cons (cons _%E179928%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g180025180163%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g179935180011%_))
                                          '()))
                              _%r179929%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx179639%_
                         _%$%g179935180011%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx179639%_
                     _%$%g179935180011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont180948180949%_
                                                      (lambda ()
                                                        (let* ((_%$%g180045180053%_
                                                                (lambda (_%$%g180046180049%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g180046180049%_)))
                       (_%$%g180044180142%_
                        (lambda (_%$%g180046180057%_)
                          (let* ((_%$%g180076180084%_
                                  (lambda (_%$%g180077180080%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g180077180080%_)))
                                 (_%$%g180075180138%_
                                  (lambda (_%$%g180077180088%_)
                                    (let* ((_%$%g180104180112%_
                                            (lambda (_%$%g180105180108%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g180105180108%_)))
                                           (_%$%g180103180134%_
                                            (lambda (_%$%g180105180116%_)
                                              (_%lp179923%_
                                               _%$%g179934180009%_
                                               _%$%g180046180057%_
                                               (cons (cons _%E179928%_
                                                           (cons _%$%g180105180116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r179929%_)))))
                                      (_%$%g180103180134%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g180077180088%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g179935180011%_)))))))
                            (_%$%g180075180138%_
                             (_%generate-clause179796%_
                              _%$%g179935180011%_
                              (cons _%$%g180046180057%_ '())))))))
                  (_%$%g180044180142%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx180943180944%_)
                                                     (let ((_%$%e180026180153%_
                                                            (gx#syntax-e
                                                             _%__stx180943180944%_)))
                                                       (let ((_%$%tl180028180160%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e180026180153%_)))
                     (_%$%hd180027180157%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e180026180153%_))))
                 (if (gx#identifier? _%$%hd180027180157%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g181000_|
                          _%$%hd180027180157%_)
                         (_%__kont180946180947%_ _%$%tl180028180160%_)
                         (_%__kont180948180949%_))
                     (_%__kont180948180949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont180948180949%_))))))
                                          (_%__kont180968180969%_
                                           (lambda ()
                                             (let* ((_%$%g179955179963%_
                                                     (lambda (_%$%g179956179959%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g179956179959%_)))
                                                    (_%$%g179954179988%_
                                                     (lambda (_%$%g179956179967%_)
                                                       (cons (cons _%E179928%_
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
                              (cons _%$%g179956179967%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx179639%_))
                                 '()))
                     _%r179929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g179954179988%_
                                                _%tgt179791%_)))))
                                      (if (gx#stx-pair? _%__stx180963180964%_)
                                          (let ((_%$%e179936179999%_
                                                 (gx#syntax-e
                                                  _%__stx180963180964%_)))
                                            (let ((_%$%tl179938180006%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e179936179999%_)))
                                                  (_%$%hd179937180003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e179936179999%_))))
                                              (_%__kont180966180967%_
                                               _%$%tl179938180006%_
                                               _%$%hd179937180003%_)))
                                          (_%__kont180968180969%_))))))))
                      (let* ((_%bind179801%_
                              (_%generate-clauses179799%_ _%clauses179794%_))
                             (_%$%g179804179821%_
                              (lambda (_%$%g179805179817%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g179805179817%_)))
                             (_%$%g179803179916%_
                              (lambda (_%$%g179805179825%_)
                                (if (gx#stx-pair/null? _%$%g179805179825%_)
                                    (let ((_g181001_
                                           (gx#syntax-split-splice
                                            _%$%g179805179825%_
                                            '0)))
                                      (begin
                                        (let ((_g181002_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g181001_)
                                                     (##values-length
                                                      _g181001_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g181002_ 2)))
                                              (error "Context expects 2 values"
                                                     _g181002_)))
                                        (let ((_%$%target179807179828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181001_ 0)))
                                              (_%$%tl179809179831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181001_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl179809179831%_)
                                              (letrec ((_%$%loop179810179834%_
                                                        (lambda (_%$%hd179808179838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try179814179841%_)
                  (if (gx#stx-pair? _%$%hd179808179838%_)
                      (let ((_%$%e179811179843%_
                             (gx#syntax-e _%$%hd179808179838%_)))
                        (let ((_%$%lp-hd179812179847%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e179811179843%_)))
                              (_%$%lp-tl179813179850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e179811179843%_))))
                          (_%$%loop179810179834%_
                           _%$%lp-tl179813179850%_
                           (cons _%$%lp-hd179812179847%_
                                 _%$%bind-try179814179841%_))))
                      (let* ((_%$%bind-try179815179853%_
                              (reverse _%$%bind-try179814179841%_))
                             (_%$%g179874179882%_
                              (lambda (_%$%g179875179878%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g179875179878%_)))
                             (_%$%g179873179912%_
                              (lambda (_%$%g179875179886%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp181003
                                                   (lambda (_%$%g179903179906%_
                                                            _%$%g179904179909%_)
                                                     (cons _%$%g179903179906%_
                                                           _%$%g179904179909%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp181003
                                               '()
                                               _%$%bind-try179815179853%_))
                                            (cons (cons _%$%g179875179886%_
                                                        '())
                                                  '()))))))
                        (_%$%g179873179912%_ (car (last _%bind179801%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop179810179834%_
                                                 _%$%target179807179828%_
                                                 '()))
                                              (_%$%g179804179821%_
                                               _%$%g179805179825%_)))))
                                    (_%$%g179804179821%_
                                     _%$%g179805179825%_)))))
                        (_%$%g179803179916%_ _%bind179801%_))))))
          (let* ((_%$%g179645179664%_
                  (lambda (_%$%g179646179660%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g179646179660%_)))
                 (_%$%g179644179787%_
                  (lambda (_%$%g179646179668%_)
                    (if (gx#stx-pair? _%$%g179646179668%_)
                        (let ((_%$%e179650179671%_
                               (gx#syntax-e _%$%g179646179668%_)))
                          (let ((_%$%hd179651179675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e179650179671%_)))
                                (_%$%tl179652179678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e179650179671%_))))
                            (if (gx#stx-pair? _%$%tl179652179678%_)
                                (let ((_%$%e179653179681%_
                                       (gx#syntax-e _%$%tl179652179678%_)))
                                  (let ((_%$%hd179654179685%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e179653179681%_)))
                                        (_%$%tl179655179688%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e179653179681%_))))
                                    (if (gx#stx-pair? _%$%tl179655179688%_)
                                        (let ((_%$%e179656179691%_
                                               (gx#syntax-e
                                                _%$%tl179655179688%_)))
                                          (let ((_%$%hd179657179695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e179656179691%_)))
                                                (_%$%tl179658179698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e179656179691%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd179657179695%_)
                                                     (gx#stx-list?
                                                      _%$%tl179658179698%_))
                                                (let* ((_%$%g179722179730%_
                                                        (lambda (_%$%g179723179726%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g179723179726%_)))
                                                       (_%$%g179721179783%_
                                                        (lambda (_%$%g179723179734%_)
                                                          (let* ((_%$%g179749179757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g179750179753%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g179750179753%_)))
                         (_%$%g179748179779%_
                          (lambda (_%$%g179750179761%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g179723179734%_
                                                    (cons _%$%hd179654179685%_
                                                          '()))
                                              '())
                                        (cons _%$%g179750179761%_ '()))))))
                    (_%$%g179748179779%_
                     (_%generate179642%_
                      _%$%g179723179734%_
                      (gx#syntax->list _%$%hd179657179695%_)
                      _%$%tl179658179698%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g179721179783%_
                                                   (gx#genident 'e)))
                                                (_%$%g179645179664%_
                                                 _%$%g179646179668%_))))
                                        (_%$%g179645179664%_
                                         _%$%g179646179668%_))))
                                (_%$%g179645179664%_ _%$%g179646179668%_))))
                        (_%$%g179645179664%_ _%$%g179646179668%_)))))
            (_%$%g179644179787%_ _%stx179639%_)))))))
