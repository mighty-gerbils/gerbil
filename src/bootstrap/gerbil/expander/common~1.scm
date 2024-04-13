(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g115402_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115404_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115406_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115408_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115409_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115411_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115412_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115414_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115415_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115417_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115418_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115420_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj115398
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 '#f '11 '#f '#f))
        (let ((__tmp115401 |gx[1]#_g115402_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 __tmp115401 '12 '#f '#f))
        (let ((__tmp115403 |gx[1]#_g115404_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 __tmp115403 '13 '#f '#f))
        (let ((__tmp115405 |gx[1]#_g115406_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 __tmp115405 '14 '#f '#f))
        (let ((__tmp115407
               (cons (cons 'e |gx[1]#_g115408_|)
                     (cons (cons 'source |gx[1]#_g115409_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 __tmp115407 '15 '#f '#f))
        (let ((__tmp115410
               (cons (cons 'e |gx[1]#_g115411_|)
                     (cons (cons 'source |gx[1]#_g115412_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 __tmp115410 '16 '#f '#f))
        (let ((__tmp115413
               (cons (cons 'e |gx[1]#_g115414_|)
                     (cons (cons 'source |gx[1]#_g115415_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 __tmp115413 '17 '#f '#f))
        (let ((__tmp115416
               (cons (cons 'e |gx[1]#_g115417_|)
                     (cons (cons 'source |gx[1]#_g115418_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 __tmp115416 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115398 '() '20 '#f '#f))
        __obj115398))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx113993%_)
        (let* ((_%g113997114011%_
                (lambda (_%g113998114007%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g113998114007%_)))
               (_%g113996114053%_
                (lambda (_%g113998114015%_)
                  (if (gx#stx-pair? _%g113998114015%_)
                      (let ((_%e114000114018%_
                             (gx#syntax-e _%g113998114015%_)))
                        (let ((_%hd114001114022%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e114000114018%_)))
                              (_%tl114002114025%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e114000114018%_))))
                          (if (gx#stx-pair? _%tl114002114025%_)
                              (let ((_%e114003114028%_
                                     (gx#syntax-e _%tl114002114025%_)))
                                (let ((_%hd114004114032%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e114003114028%_)))
                                      (_%tl114005114035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e114003114028%_))))
                                  (if (gx#stx-null? _%tl114005114035%_)
                                      ((lambda (_%L114038%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L114038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L114038%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd114004114032%_)
                                      (_%g113997114011%_ _%g113998114015%_))))
                              (_%g113997114011%_ _%g113998114015%_))))
                      (_%g113997114011%_ _%g113998114015%_)))))
          (_%g113996114053%_ _%$stx113993%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx114057%_)
        (letrec ((_%generate114060%_
                  (lambda (_%tgt114209%_ _%kws114211%_ _%clauses114212%_)
                    (letrec ((_%generate-clause114214%_
                              (lambda (_%hd115149%_ _%E115151%_)
                                (let* ((_%__stx115301115302%_ _%hd115149%_)
                                       (_%g115155115182%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx115301115302%_))))
                                  (let ((_%__kont115304115305%_
                                         (lambda (_%L115278%_ _%L115280%_)
                                           (_%generate1114216%_
                                            _%hd115149%_
                                            _%L115280%_
                                            '#t
                                            _%L115278%_
                                            _%E115151%_)))
                                        (_%__kont115306115307%_
                                         (lambda (_%L115230%_
                                                  _%L115232%_
                                                  _%L115233%_)
                                           (_%generate1114216%_
                                            _%hd115149%_
                                            _%L115233%_
                                            _%L115232%_
                                            _%L115230%_
                                            _%E115151%_)))
                                        (_%__kont115308115309%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx114057%_
                                            _%hd115149%_))))
                                    (if (gx#stx-pair? _%__stx115301115302%_)
                                        (let ((_%e115159115258%_
                                               (gx#syntax-e
                                                _%__stx115301115302%_)))
                                          (let ((_%tl115161115265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e115159115258%_)))
                                                (_%hd115160115262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e115159115258%_))))
                                            (if (gx#stx-pair?
                                                 _%tl115161115265%_)
                                                (let ((_%e115162115268%_
                                                       (gx#syntax-e
                                                        _%tl115161115265%_)))
                                                  (let ((_%tl115164115275%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e115162115268%_)))
                                                        (_%hd115163115272%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e115162115268%_))))
                                                    (if (gx#stx-null?
                                                         _%tl115164115275%_)
                                                        (_%__kont115304115305%_
                                                         _%hd115163115272%_
                                                         _%hd115160115262%_)
                                                        (if (gx#stx-pair?
                                                             _%tl115164115275%_)
                                                            (let ((_%e115174115220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl115164115275%_)))
                      (let ((_%tl115176115227%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115174115220%_)))
                            (_%hd115175115224%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115174115220%_))))
                        (if (gx#stx-null? _%tl115176115227%_)
                            (_%__kont115306115307%_
                             _%hd115175115224%_
                             _%hd115163115272%_
                             _%hd115160115262%_)
                            (_%__kont115308115309%_))))
                    (_%__kont115308115309%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont115308115309%_))))
                                        (_%__kont115308115309%_))))))
                             (_%generate1114216%_
                              (lambda (_%where114602%_
                                       _%hd114604%_
                                       _%fender114605%_
                                       _%body114606%_
                                       _%E114607%_)
                                (letrec ((_%recur114609%_
                                          (lambda (_%hd114612%_
                                                   _%tgt114614%_
                                                   _%K114615%_)
                                            (let* ((_%__stx115347115348%_
                                                    _%hd114612%_)
                                                   (_%g114618114630%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx115347115348%_))))
                                              (let ((_%__kont115350115351%_
                                                     (lambda (_%L114939%_
                                                              _%L114941%_)
                                                       (let* ((_%g114952114960%_
                                                               (lambda (_%g114953114956%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g114953114956%_)))
                      (_%g114951115141%_
                       (lambda (_%g114953114964%_)
                         ((lambda (_%L114967%_)
                            (let* ((_%g114979114987%_
                                    (lambda (_%g114980114983%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g114980114983%_)))
                                   (_%g114978115137%_
                                    (lambda (_%g114980114991%_)
                                      ((lambda (_%L114994%_)
                                         (let* ((_%g115007115015%_
                                                 (lambda (_%g115008115011%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g115008115011%_)))
                                                (_%g115006115133%_
                                                 (lambda (_%g115008115019%_)
                                                   ((lambda (_%L115022%_)
                                                      (let* ((_%g115035115043%_
                                                              (lambda (_%g115036115039%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g115036115039%_)))
                     (_%g115034115129%_
                      (lambda (_%g115036115047%_)
                        ((lambda (_%L115050%_)
                           (let* ((_%g115063115071%_
                                   (lambda (_%g115064115067%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115064115067%_)))
                                  (_%g115062115125%_
                                   (lambda (_%g115064115075%_)
                                     ((lambda (_%L115078%_)
                                        (let* ((_%g115091115099%_
                                                (lambda (_%g115092115095%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g115092115095%_)))
                                               (_%g115090115121%_
                                                (lambda (_%g115092115103%_)
                                                  ((lambda (_%L115106%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L114967%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L114994%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L114967%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L115022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L114994%_ '()))
                                       '()))
                           (cons (cons _%L115050%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L114994%_ '()))
                                             '()))
                                 '()))
                     (cons _%L115078%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L115106%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g115092115103%_))))
                                          (_%g115090115121%_ _%E114607%_)))
                                      _%g115064115075%_))))
                             (_%g115062115125%_
                              (_%recur114609%_
                               _%L114941%_
                               _%L115022%_
                               (_%recur114609%_
                                _%L114939%_
                                _%L115050%_
                                _%K114615%_)))))
                         _%g115036115047%_))))
                (_%g115034115129%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g115008115019%_))))
                                           (_%g115006115133%_
                                            (gx#genident 'hd))))
                                       _%g114980114991%_))))
                              (_%g114978115137%_ (gx#genident 'e))))
                          _%g114953114964%_))))
                 (_%g114951115141%_ _%tgt114614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont115352115353%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd114612%_)
                                                           (if (gx#underscore?
                                                                _%hd114612%_)
                                                               _%K114615%_
                                                               (if (let ((__tmp115419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g114644114646%_)
                                    (gx#bound-identifier=?
                                     _%g114644114646%_
                                     _%hd114612%_))))
                             (declare (not safe))
                             (__find __tmp115419 _%kws114211%_))
                           (let* ((_%g114652114667%_
                                   (lambda (_%g114653114663%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114653114663%_)))
                                  (_%g114651114720%_
                                   (lambda (_%g114653114671%_)
                                     (if (gx#stx-pair? _%g114653114671%_)
                                         (let ((_%e114656114674%_
                                                (gx#syntax-e
                                                 _%g114653114671%_)))
                                           (let ((_%hd114657114678%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114656114674%_)))
                                                 (_%tl114658114681%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114656114674%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114658114681%_)
                                                 (let ((_%e114659114684%_
                                                        (gx#syntax-e
                                                         _%tl114658114681%_)))
                                                   (let ((_%hd114660114688%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114659114684%_)))
                                                         (_%tl114661114691%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114659114684%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114661114691%_)
                                                         ((lambda (_%L114694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114696%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L114696%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L114696%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L114694%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K114615%_ (cons _%E114607%_ '())))))
                  _%hd114660114688%_
                  _%hd114657114678%_)
                 (_%g114652114667%_ _%g114653114671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114652114667%_
                                                  _%g114653114671%_))))
                                         (_%g114652114667%_
                                          _%g114653114671%_)))))
                             (_%g114651114720%_
                              (list _%tgt114614%_ _%hd114612%_)))
                           (let* ((_%g114726114741%_
                                   (lambda (_%g114727114737%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114727114737%_)))
                                  (_%g114725114786%_
                                   (lambda (_%g114727114745%_)
                                     (if (gx#stx-pair? _%g114727114745%_)
                                         (let ((_%e114730114748%_
                                                (gx#syntax-e
                                                 _%g114727114745%_)))
                                           (let ((_%hd114731114752%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114730114748%_)))
                                                 (_%tl114732114755%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114730114748%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114732114755%_)
                                                 (let ((_%e114733114758%_
                                                        (gx#syntax-e
                                                         _%tl114732114755%_)))
                                                   (let ((_%hd114734114762%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114733114758%_)))
                                                         (_%tl114735114765%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114733114758%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114735114765%_)
                                                         ((lambda (_%L114768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114770%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L114768%_ (cons _%L114770%_ '()))
                                      '())
                                (cons _%K114615%_ '()))))
                  _%hd114734114762%_
                  _%hd114731114752%_)
                 (_%g114726114741%_ _%g114727114745%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114726114741%_
                                                  _%g114727114745%_))))
                                         (_%g114726114741%_
                                          _%g114727114745%_)))))
                             (_%g114725114786%_
                              (list _%tgt114614%_ _%hd114612%_)))))
                   (if (gx#stx-null? _%hd114612%_)
                       (let* ((_%g114792114800%_
                               (lambda (_%g114793114796%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g114793114796%_)))
                              (_%g114791114819%_
                               (lambda (_%g114793114804%_)
                                 ((lambda (_%L114807%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L114807%_ '()))
                                                (cons _%K114615%_
                                                      (cons _%E114607%_
                                                            '())))))
                                  _%g114793114804%_))))
                         (_%g114791114819%_ _%tgt114614%_))
                       (if (gx#stx-datum? _%hd114612%_)
                           (let* ((_%g114825114844%_
                                   (lambda (_%g114826114840%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114826114840%_)))
                                  (_%g114824114903%_
                                   (lambda (_%g114826114848%_)
                                     (if (gx#stx-pair? _%g114826114848%_)
                                         (let ((_%e114830114851%_
                                                (gx#syntax-e
                                                 _%g114826114848%_)))
                                           (let ((_%hd114831114855%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114830114851%_)))
                                                 (_%tl114832114858%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114830114851%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114832114858%_)
                                                 (let ((_%e114833114861%_
                                                        (gx#syntax-e
                                                         _%tl114832114858%_)))
                                                   (let ((_%hd114834114865%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114833114861%_)))
                                                         (_%tl114835114868%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114833114861%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl114835114868%_)
                                                         (let ((_%e114836114871%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl114835114868%_)))
                   (let ((_%hd114837114875%_
                          (let ()
                            (declare (not safe))
                            (##car _%e114836114871%_)))
                         (_%tl114838114878%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e114836114871%_))))
                     (if (gx#stx-null? _%tl114838114878%_)
                         ((lambda (_%L114881%_ _%L114883%_ _%L114884%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L114881%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L114884%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L114883%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K114615%_
                                              (cons _%E114607%_ '())))))
                          _%hd114837114875%_
                          _%hd114834114865%_
                          _%hd114831114855%_)
                         (_%g114825114844%_ _%g114826114848%_))))
                 (_%g114825114844%_ _%g114826114848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114825114844%_
                                                  _%g114826114848%_))))
                                         (_%g114825114844%_
                                          _%g114826114848%_)))))
                             (_%g114824114903%_
                              (list _%tgt114614%_
                                    _%hd114612%_
                                    (let ((_%e114907%_
                                           (gx#stx-e _%hd114612%_)))
                                      (if (or (keyword? _%e114907%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e114907%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e114907%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx114057%_
                            _%where114602%_
                            _%hd114612%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx115347115348%_)
                                                    (let ((_%e114622114929%_
                                                           (gx#syntax-e
                                                            _%__stx115347115348%_)))
                                                      (let ((_%tl114624114936%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e114622114929%_)))
                    (_%hd114623114933%_
                     (let () (declare (not safe)) (##car _%e114622114929%_))))
                (_%__kont115350115351%_
                 _%tl114624114936%_
                 _%hd114623114933%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont115352115353%_)))))))
                                  (_%recur114609%_
                                   _%hd114604%_
                                   _%tgt114209%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender114605%_
                                               (cons _%body114606%_
                                                     (cons _%E114607%_
                                                           '()))))))))
                             (_%generate-clauses114217%_
                              (lambda (_%clauses114340%_)
                                (let _%lp114343%_ ((_%rest114346%_
                                                    _%clauses114340%_)
                                                   (_%E114348%_
                                                    (gx#genident 'E))
                                                   (_%r114349%_ '()))
                                  (let* ((_%__stx115383115384%_ _%rest114346%_)
                                         (_%g114352114364%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx115383115384%_))))
                                    (let ((_%__kont115386115387%_
                                           (lambda (_%L114429%_ _%L114431%_)
                                             (let* ((_%__stx115363115364%_
                                                     _%L114431%_)
                                                    (_%g114443114454%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx115363115364%_))))
                                               (let ((_%__kont115366115367%_
                                                      (lambda (_%L114583%_)
                                                        (if (gx#stx-null?
                                                             _%L114429%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L114583%_)
                             (not (gx#stx-null? _%L114583%_)))
                        (cons (cons _%E114348%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L114583%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L114431%_))
                                          '()))
                              _%r114349%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx114057%_
                         _%L114431%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx114057%_
                     _%L114431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont115368115369%_
                                                      (lambda ()
                                                        (let* ((_%g114465114473%_
                                                                (lambda (_%g114466114469%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g114466114469%_)))
                       (_%g114464114562%_
                        (lambda (_%g114466114477%_)
                          ((lambda (_%L114480%_)
                             (let* ((_%g114496114504%_
                                     (lambda (_%g114497114500%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g114497114500%_)))
                                    (_%g114495114558%_
                                     (lambda (_%g114497114508%_)
                                       ((lambda (_%L114511%_)
                                          (let* ((_%g114524114532%_
                                                  (lambda (_%g114525114528%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g114525114528%_)))
                                                 (_%g114523114554%_
                                                  (lambda (_%g114525114536%_)
                                                    ((lambda (_%L114539%_)
                                                       (_%lp114343%_
                                                        _%L114429%_
                                                        _%L114480%_
                                                        (cons (cons _%E114348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L114539%_ '()))
                      _%r114349%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g114525114536%_))))
                                            (_%g114523114554%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L114511%_
                                                                '())))
                                              (gx#stx-source _%L114431%_)))))
                                        _%g114497114508%_))))
                               (_%g114495114558%_
                                (_%generate-clause114214%_
                                 _%L114431%_
                                 (cons _%L114480%_ '())))))
                           _%g114466114477%_))))
                  (_%g114464114562%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx115363115364%_)
                                                     (let ((_%e114446114573%_
                                                            (gx#syntax-e
                                                             _%__stx115363115364%_)))
                                                       (let ((_%tl114448114580%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e114446114573%_)))
                     (_%hd114447114577%_
                      (let () (declare (not safe)) (##car _%e114446114573%_))))
                 (if (gx#identifier? _%hd114447114577%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g115420_|
                          _%hd114447114577%_)
                         (_%__kont115366115367%_ _%tl114448114580%_)
                         (_%__kont115368115369%_))
                     (_%__kont115368115369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont115368115369%_))))))
                                          (_%__kont115388115389%_
                                           (lambda ()
                                             (let* ((_%g114375114383%_
                                                     (lambda (_%g114376114379%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g114376114379%_)))
                                                    (_%g114374114408%_
                                                     (lambda (_%g114376114387%_)
                                                       ((lambda (_%L114390%_)
                                                          (cons (cons _%E114348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'raise-syntax-error)
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"Bad syntax; invalid syntax-case clause"
                                 (cons _%L114390%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx114057%_))
                                    '()))
                        _%r114349%_))
                _%g114376114387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g114374114408%_
                                                _%tgt114209%_)))))
                                      (if (gx#stx-pair? _%__stx115383115384%_)
                                          (let ((_%e114356114419%_
                                                 (gx#syntax-e
                                                  _%__stx115383115384%_)))
                                            (let ((_%tl114358114426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e114356114419%_)))
                                                  (_%hd114357114423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e114356114419%_))))
                                              (_%__kont115386115387%_
                                               _%tl114358114426%_
                                               _%hd114357114423%_)))
                                          (_%__kont115388115389%_))))))))
                      (let* ((_%bind114219%_
                              (_%generate-clauses114217%_ _%clauses114212%_))
                             (_%g114222114239%_
                              (lambda (_%g114223114235%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g114223114235%_)))
                             (_%g114221114336%_
                              (lambda (_%g114223114243%_)
                                (if (gx#stx-pair/null? _%g114223114243%_)
                                    (let ((_g115421_
                                           (gx#syntax-split-splice
                                            _%g114223114243%_
                                            '0)))
                                      (begin
                                        (let ((_g115422_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g115421_)
                                                     (##vector-length
                                                      _g115421_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g115422_ 2)))
                                              (error "Context expects 2 values"
                                                     _g115422_)))
                                        (let ((_%target114225114246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g115421_ 0)))
                                              (_%tl114227114249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g115421_ 1))))
                                          (if (gx#stx-null? _%tl114227114249%_)
                                              (letrec ((_%loop114228114252%_
                                                        (lambda (_%hd114226114256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try114232114259%_)
                  (if (gx#stx-pair? _%hd114226114256%_)
                      (let ((_%e114229114262%_
                             (gx#syntax-e _%hd114226114256%_)))
                        (let ((_%lp-hd114230114266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e114229114262%_)))
                              (_%lp-tl114231114269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e114229114262%_))))
                          (_%loop114228114252%_
                           _%lp-tl114231114269%_
                           (cons _%lp-hd114230114266%_
                                 _%bind-try114232114259%_))))
                      (let ((_%bind-try114233114272%_
                             (reverse _%bind-try114232114259%_)))
                        ((lambda (_%L114276%_)
                           (let* ((_%g114294114302%_
                                   (lambda (_%g114295114298%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114295114298%_)))
                                  (_%g114293114332%_
                                   (lambda (_%g114295114306%_)
                                     ((lambda (_%L114309%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp115423
                                                           (lambda (_%g114323114326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g114324114329%_)
                     (cons _%g114323114326%_ _%g114324114329%_))))
              (declare (not safe))
              (__foldr1 __tmp115423 '() _%L114276%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L114309%_
                                                                '())
                                                          '()))))
                                      _%g114295114306%_))))
                             (_%g114293114332%_ (car (last _%bind114219%_)))))
                         _%bind-try114233114272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop114228114252%_
                                                 _%target114225114246%_
                                                 '()))
                                              (_%g114222114239%_
                                               _%g114223114243%_)))))
                                    (_%g114222114239%_ _%g114223114243%_)))))
                        (_%g114221114336%_ _%bind114219%_))))))
          (let* ((_%g114063114082%_
                  (lambda (_%g114064114078%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g114064114078%_)))
                 (_%g114062114205%_
                  (lambda (_%g114064114086%_)
                    (if (gx#stx-pair? _%g114064114086%_)
                        (let ((_%e114068114089%_
                               (gx#syntax-e _%g114064114086%_)))
                          (let ((_%hd114069114093%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e114068114089%_)))
                                (_%tl114070114096%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e114068114089%_))))
                            (if (gx#stx-pair? _%tl114070114096%_)
                                (let ((_%e114071114099%_
                                       (gx#syntax-e _%tl114070114096%_)))
                                  (let ((_%hd114072114103%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e114071114099%_)))
                                        (_%tl114073114106%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e114071114099%_))))
                                    (if (gx#stx-pair? _%tl114073114106%_)
                                        (let ((_%e114074114109%_
                                               (gx#syntax-e
                                                _%tl114073114106%_)))
                                          (let ((_%hd114075114113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e114074114109%_)))
                                                (_%tl114076114116%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e114074114109%_))))
                                            ((lambda (_%L114119%_
                                                      _%L114121%_
                                                      _%L114122%_)
                                               (if (and (gx#identifier-list?
                                                         _%L114121%_)
                                                        (gx#stx-list?
                                                         _%L114119%_))
                                                   (let* ((_%g114140114148%_
                                                           (lambda (_%g114141114144%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g114141114144%_)))
                                                          (_%g114139114201%_
                                                           (lambda (_%g114141114152%_)
                                                             ((lambda (_%L114155%_)
                                                                (let* ((_%g114167114175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g114168114171%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g114168114171%_)))
                               (_%g114166114197%_
                                (lambda (_%g114168114179%_)
                                  ((lambda (_%L114182%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L114155%_
                                                             (cons _%L114122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L114182%_ '()))))
                                   _%g114168114179%_))))
                          (_%g114166114197%_
                           (_%generate114060%_
                            _%L114155%_
                            (gx#syntax->list _%L114121%_)
                            _%L114119%_))))
                      _%g114141114152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g114139114201%_
                                                      (gx#genident 'e)))
                                                   (_%g114063114082%_
                                                    _%g114064114086%_)))
                                             _%tl114076114116%_
                                             _%hd114075114113%_
                                             _%hd114072114103%_)))
                                        (_%g114063114082%_
                                         _%g114064114086%_))))
                                (_%g114063114082%_ _%g114064114086%_))))
                        (_%g114063114082%_ _%g114064114086%_)))))
            (_%g114062114205%_ _%stx114057%_)))))))
