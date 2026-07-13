(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g178458_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178460_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178462_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178464_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178465_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178467_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178468_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178470_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178471_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178473_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178474_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178476_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj178454
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
          (##unchecked-structure-set! __obj178454 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 '#f '13 '#f '#f))
        (let ((__tmp178457 |gx[1]#_g178458_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 __tmp178457 '4 '#f '#f))
        (let ((__tmp178459 |gx[1]#_g178460_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 __tmp178459 '14 '#f '#f))
        (let ((__tmp178461 |gx[1]#_g178462_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 __tmp178461 '15 '#f '#f))
        (let ((__tmp178463
               (cons (cons 'e |gx[1]#_g178464_|)
                     (cons (cons 'source |gx[1]#_g178465_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 __tmp178463 '16 '#f '#f))
        (let ((__tmp178466
               (cons (cons 'e |gx[1]#_g178467_|)
                     (cons (cons 'source |gx[1]#_g178468_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 __tmp178466 '17 '#f '#f))
        (let ((__tmp178469
               (cons (cons 'e |gx[1]#_g178470_|)
                     (cons (cons 'source |gx[1]#_g178471_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 __tmp178469 '18 '#f '#f))
        (let ((__tmp178472
               (cons (cons 'e |gx[1]#_g178473_|)
                     (cons (cons 'source |gx[1]#_g178474_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 __tmp178472 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178454 '() '21 '#f '#f))
        __obj178454))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx177051%_)
        (let* ((_%$%g177055177069%_
                (lambda (_%$%g177056177065%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g177056177065%_)))
               (_%$%g177054177111%_
                (lambda (_%$%g177056177073%_)
                  (if (gx#stx-pair? _%$%g177056177073%_)
                      (let ((_%$%e177058177076%_
                             (gx#syntax-e _%$%g177056177073%_)))
                        (let ((_%$%hd177059177080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177058177076%_)))
                              (_%$%tl177060177083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177058177076%_))))
                          (if (gx#stx-pair? _%$%tl177060177083%_)
                              (let ((_%$%e177061177086%_
                                     (gx#syntax-e _%$%tl177060177083%_)))
                                (let ((_%$%hd177062177090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e177061177086%_)))
                                      (_%$%tl177063177093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e177061177086%_))))
                                  (if (gx#stx-null? _%$%tl177063177093%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd177062177090%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd177062177090%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g177055177069%_
                                       _%$%g177056177073%_))))
                              (_%$%g177055177069%_ _%$%g177056177073%_))))
                      (_%$%g177055177069%_ _%$%g177056177073%_)))))
          (_%$%g177054177111%_ _%$stx177051%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx177115%_)
        (letrec ((_%generate177118%_
                  (lambda (_%tgt177267%_ _%kws177269%_ _%clauses177270%_)
                    (letrec ((_%generate-clause177272%_
                              (lambda (_%hd178205%_ _%E178207%_)
                                (let* ((_%__stx178357178358%_ _%hd178205%_)
                                       (_%$%g178211178238%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx178357178358%_))))
                                  (let ((_%__kont178360178361%_
                                         (lambda (_%$%g178213178334%_
                                                  _%$%g178214178336%_)
                                           (_%generate1177274%_
                                            _%hd178205%_
                                            _%$%g178214178336%_
                                            '#t
                                            _%$%g178213178334%_
                                            _%E178207%_)))
                                        (_%__kont178362178363%_
                                         (lambda (_%$%g178221178286%_
                                                  _%$%g178222178288%_
                                                  _%$%g178223178289%_)
                                           (_%generate1177274%_
                                            _%hd178205%_
                                            _%$%g178223178289%_
                                            _%$%g178222178288%_
                                            _%$%g178221178286%_
                                            _%E178207%_)))
                                        (_%__kont178364178365%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx177115%_
                                            _%hd178205%_))))
                                    (if (gx#stx-pair? _%__stx178357178358%_)
                                        (let ((_%$%e178215178314%_
                                               (gx#syntax-e
                                                _%__stx178357178358%_)))
                                          (let ((_%$%tl178217178321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e178215178314%_)))
                                                (_%$%hd178216178318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e178215178314%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl178217178321%_)
                                                (let ((_%$%e178218178324%_
                                                       (gx#syntax-e
                                                        _%$%tl178217178321%_)))
                                                  (let ((_%$%tl178220178331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e178218178324%_)))
                                                        (_%$%hd178219178328%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e178218178324%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl178220178331%_)
                                                        (_%__kont178360178361%_
                                                         _%$%hd178219178328%_
                                                         _%$%hd178216178318%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl178220178331%_)
                                                            (let ((_%$%e178230178276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl178220178331%_)))
                      (let ((_%$%tl178232178283%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e178230178276%_)))
                            (_%$%hd178231178280%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e178230178276%_))))
                        (if (gx#stx-null? _%$%tl178232178283%_)
                            (_%__kont178362178363%_
                             _%$%hd178231178280%_
                             _%$%hd178219178328%_
                             _%$%hd178216178318%_)
                            (_%__kont178364178365%_))))
                    (_%__kont178364178365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont178364178365%_))))
                                        (_%__kont178364178365%_))))))
                             (_%generate1177274%_
                              (lambda (_%where177658%_
                                       _%hd177660%_
                                       _%fender177661%_
                                       _%body177662%_
                                       _%E177663%_)
                                (letrec ((_%recur177665%_
                                          (lambda (_%hd177668%_
                                                   _%tgt177670%_
                                                   _%K177671%_)
                                            (let* ((_%__stx178403178404%_
                                                    _%hd177668%_)
                                                   (_%$%g177674177686%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx178403178404%_))))
                                              (let ((_%__kont178406178407%_
                                                     (lambda (_%$%g177676177995%_
                                                              _%$%g177677177997%_)
                                                       (let* ((_%$%g178008178016%_
                                                               (lambda (_%$%g178009178012%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g178009178012%_)))
                      (_%$%g178007178197%_
                       (lambda (_%$%g178009178020%_)
                         (let* ((_%$%g178035178043%_
                                 (lambda (_%$%g178036178039%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g178036178039%_)))
                                (_%$%g178034178193%_
                                 (lambda (_%$%g178036178047%_)
                                   (let* ((_%$%g178063178071%_
                                           (lambda (_%$%g178064178067%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g178064178067%_)))
                                          (_%$%g178062178189%_
                                           (lambda (_%$%g178064178075%_)
                                             (let* ((_%$%g178091178099%_
                                                     (lambda (_%$%g178092178095%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g178092178095%_)))
                                                    (_%$%g178090178185%_
                                                     (lambda (_%$%g178092178103%_)
                                                       (let* ((_%$%g178119178127%_
                                                               (lambda (_%$%g178120178123%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g178120178123%_)))
                      (_%$%g178118178181%_
                       (lambda (_%$%g178120178131%_)
                         (let* ((_%$%g178147178155%_
                                 (lambda (_%$%g178148178151%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g178148178151%_)))
                                (_%$%g178146178177%_
                                 (lambda (_%$%g178148178159%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g178009178020%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g178036178047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g178009178020%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g178064178075%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g178036178047%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g178092178103%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g178036178047%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g178120178131%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g178148178159%_
                                                           '())))))))
                           (_%$%g178146178177%_ _%E177663%_)))))
                 (_%$%g178118178181%_
                  (_%recur177665%_
                   _%$%g177677177997%_
                   _%$%g178064178075%_
                   (_%recur177665%_
                    _%$%g177676177995%_
                    _%$%g178092178103%_
                    _%K177671%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g178090178185%_
                                                (gx#genident 'tl))))))
                                     (_%$%g178062178189%_
                                      (gx#genident 'hd))))))
                           (_%$%g178034178193%_ (gx#genident 'e))))))
                 (_%$%g178007178197%_ _%tgt177670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178408178409%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd177668%_)
                                                           (if (gx#underscore?
                                                                _%hd177668%_)
                                                               _%K177671%_
                                                               (if (let ((__tmp178475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g177700177702%_)
                                    (gx#bound-identifier=?
                                     _%$%g177700177702%_
                                     _%hd177668%_))))
                             (declare (not safe))
                             (__find __tmp178475 _%kws177269%_))
                           (let* ((_%$%g177708177723%_
                                   (lambda (_%$%g177709177719%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g177709177719%_)))
                                  (_%$%g177707177776%_
                                   (lambda (_%$%g177709177727%_)
                                     (if (gx#stx-pair? _%$%g177709177727%_)
                                         (let ((_%$%e177712177730%_
                                                (gx#syntax-e
                                                 _%$%g177709177727%_)))
                                           (let ((_%$%hd177713177734%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e177712177730%_)))
                                                 (_%$%tl177714177737%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e177712177730%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl177714177737%_)
                                                 (let ((_%$%e177715177740%_
                                                        (gx#syntax-e
                                                         _%$%tl177714177737%_)))
                                                   (let ((_%$%hd177716177744%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e177715177740%_)))
                                                         (_%$%tl177717177747%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e177715177740%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl177717177747%_)
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
                                               (cons _%$%hd177713177734%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd177713177734%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd177716177744%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K177671%_ (cons _%E177663%_ '()))))
                 (_%$%g177708177723%_ _%$%g177709177727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g177708177723%_
                                                  _%$%g177709177727%_))))
                                         (_%$%g177708177723%_
                                          _%$%g177709177727%_)))))
                             (_%$%g177707177776%_
                              (list _%tgt177670%_ _%hd177668%_)))
                           (let* ((_%$%g177782177797%_
                                   (lambda (_%$%g177783177793%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g177783177793%_)))
                                  (_%$%g177781177842%_
                                   (lambda (_%$%g177783177801%_)
                                     (if (gx#stx-pair? _%$%g177783177801%_)
                                         (let ((_%$%e177786177804%_
                                                (gx#syntax-e
                                                 _%$%g177783177801%_)))
                                           (let ((_%$%hd177787177808%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e177786177804%_)))
                                                 (_%$%tl177788177811%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e177786177804%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl177788177811%_)
                                                 (let ((_%$%e177789177814%_
                                                        (gx#syntax-e
                                                         _%$%tl177788177811%_)))
                                                   (let ((_%$%hd177790177818%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e177789177814%_)))
                                                         (_%$%tl177791177821%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e177789177814%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl177791177821%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd177790177818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd177787177808%_ '()))
                                   '())
                             (cons _%K177671%_ '())))
                 (_%$%g177782177797%_ _%$%g177783177801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g177782177797%_
                                                  _%$%g177783177801%_))))
                                         (_%$%g177782177797%_
                                          _%$%g177783177801%_)))))
                             (_%$%g177781177842%_
                              (list _%tgt177670%_ _%hd177668%_)))))
                   (if (gx#stx-null? _%hd177668%_)
                       (let* ((_%$%g177848177856%_
                               (lambda (_%$%g177849177852%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g177849177852%_)))
                              (_%$%g177847177875%_
                               (lambda (_%$%g177849177860%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g177849177860%_
                                                         '()))
                                             (cons _%K177671%_
                                                   (cons _%E177663%_ '())))))))
                         (_%$%g177847177875%_ _%tgt177670%_))
                       (if (gx#stx-datum? _%hd177668%_)
                           (let* ((_%$%g177881177900%_
                                   (lambda (_%$%g177882177896%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g177882177896%_)))
                                  (_%$%g177880177959%_
                                   (lambda (_%$%g177882177904%_)
                                     (if (gx#stx-pair? _%$%g177882177904%_)
                                         (let ((_%$%e177886177907%_
                                                (gx#syntax-e
                                                 _%$%g177882177904%_)))
                                           (let ((_%$%hd177887177911%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e177886177907%_)))
                                                 (_%$%tl177888177914%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e177886177907%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl177888177914%_)
                                                 (let ((_%$%e177889177917%_
                                                        (gx#syntax-e
                                                         _%$%tl177888177914%_)))
                                                   (let ((_%$%hd177890177921%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e177889177917%_)))
                                                         (_%$%tl177891177924%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e177889177917%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl177891177924%_)
                                                         (let ((_%$%e177892177927%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl177891177924%_)))
                   (let ((_%$%hd177893177931%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e177892177927%_)))
                         (_%$%tl177894177934%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e177892177927%_))))
                     (if (gx#stx-null? _%$%tl177894177934%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd177893177931%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd177887177911%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd177890177921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K177671%_
                                           (cons _%E177663%_ '()))))
                         (_%$%g177881177900%_ _%$%g177882177904%_))))
                 (_%$%g177881177900%_ _%$%g177882177904%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g177881177900%_
                                                  _%$%g177882177904%_))))
                                         (_%$%g177881177900%_
                                          _%$%g177882177904%_)))))
                             (_%$%g177880177959%_
                              (list _%tgt177670%_
                                    _%hd177668%_
                                    (let ((_%e177963%_
                                           (gx#stx-e _%hd177668%_)))
                                      (if (or (keyword? _%e177963%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e177963%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e177963%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx177115%_
                            _%where177658%_
                            _%hd177668%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx178403178404%_)
                                                    (let ((_%$%e177678177985%_
                                                           (gx#syntax-e
                                                            _%__stx178403178404%_)))
                                                      (let ((_%$%tl177680177992%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e177678177985%_)))
                    (_%$%hd177679177989%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e177678177985%_))))
                (_%__kont178406178407%_
                 _%$%tl177680177992%_
                 _%$%hd177679177989%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178408178409%_)))))))
                                  (_%recur177665%_
                                   _%hd177660%_
                                   _%tgt177267%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender177661%_
                                               (cons _%body177662%_
                                                     (cons _%E177663%_
                                                           '()))))))))
                             (_%generate-clauses177275%_
                              (lambda (_%clauses177396%_)
                                (let _%lp177399%_ ((_%rest177402%_
                                                    _%clauses177396%_)
                                                   (_%E177404%_
                                                    (gx#genident 'E))
                                                   (_%r177405%_ '()))
                                  (let* ((_%__stx178439178440%_ _%rest177402%_)
                                         (_%$%g177408177420%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx178439178440%_))))
                                    (let ((_%__kont178442178443%_
                                           (lambda (_%$%g177410177485%_
                                                    _%$%g177411177487%_)
                                             (let* ((_%__stx178419178420%_
                                                     _%$%g177411177487%_)
                                                    (_%$%g177499177510%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx178419178420%_))))
                                               (let ((_%__kont178422178423%_
                                                      (lambda (_%$%g177501177639%_)
                                                        (if (gx#stx-null?
                                                             _%$%g177410177485%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g177501177639%_)
                             (not (gx#stx-null? _%$%g177501177639%_)))
                        (cons (cons _%E177404%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g177501177639%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g177411177487%_))
                                          '()))
                              _%r177405%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx177115%_
                         _%$%g177411177487%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx177115%_
                     _%$%g177411177487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont178424178425%_
                                                      (lambda ()
                                                        (let* ((_%$%g177521177529%_
                                                                (lambda (_%$%g177522177525%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g177522177525%_)))
                       (_%$%g177520177618%_
                        (lambda (_%$%g177522177533%_)
                          (let* ((_%$%g177552177560%_
                                  (lambda (_%$%g177553177556%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g177553177556%_)))
                                 (_%$%g177551177614%_
                                  (lambda (_%$%g177553177564%_)
                                    (let* ((_%$%g177580177588%_
                                            (lambda (_%$%g177581177584%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g177581177584%_)))
                                           (_%$%g177579177610%_
                                            (lambda (_%$%g177581177592%_)
                                              (_%lp177399%_
                                               _%$%g177410177485%_
                                               _%$%g177522177533%_
                                               (cons (cons _%E177404%_
                                                           (cons _%$%g177581177592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r177405%_)))))
                                      (_%$%g177579177610%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g177553177564%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g177411177487%_)))))))
                            (_%$%g177551177614%_
                             (_%generate-clause177272%_
                              _%$%g177411177487%_
                              (cons _%$%g177522177533%_ '())))))))
                  (_%$%g177520177618%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx178419178420%_)
                                                     (let ((_%$%e177502177629%_
                                                            (gx#syntax-e
                                                             _%__stx178419178420%_)))
                                                       (let ((_%$%tl177504177636%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e177502177629%_)))
                     (_%$%hd177503177633%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e177502177629%_))))
                 (if (gx#identifier? _%$%hd177503177633%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g178476_|
                          _%$%hd177503177633%_)
                         (_%__kont178422178423%_ _%$%tl177504177636%_)
                         (_%__kont178424178425%_))
                     (_%__kont178424178425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont178424178425%_))))))
                                          (_%__kont178444178445%_
                                           (lambda ()
                                             (let* ((_%$%g177431177439%_
                                                     (lambda (_%$%g177432177435%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g177432177435%_)))
                                                    (_%$%g177430177464%_
                                                     (lambda (_%$%g177432177443%_)
                                                       (cons (cons _%E177404%_
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
                              (cons _%$%g177432177443%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx177115%_))
                                 '()))
                     _%r177405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g177430177464%_
                                                _%tgt177267%_)))))
                                      (if (gx#stx-pair? _%__stx178439178440%_)
                                          (let ((_%$%e177412177475%_
                                                 (gx#syntax-e
                                                  _%__stx178439178440%_)))
                                            (let ((_%$%tl177414177482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e177412177475%_)))
                                                  (_%$%hd177413177479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e177412177475%_))))
                                              (_%__kont178442178443%_
                                               _%$%tl177414177482%_
                                               _%$%hd177413177479%_)))
                                          (_%__kont178444178445%_))))))))
                      (let* ((_%bind177277%_
                              (_%generate-clauses177275%_ _%clauses177270%_))
                             (_%$%g177280177297%_
                              (lambda (_%$%g177281177293%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g177281177293%_)))
                             (_%$%g177279177392%_
                              (lambda (_%$%g177281177301%_)
                                (if (gx#stx-pair/null? _%$%g177281177301%_)
                                    (let ((_g178477_
                                           (gx#syntax-split-splice
                                            _%$%g177281177301%_
                                            '0)))
                                      (begin
                                        (let ((_g178478_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g178477_)
                                                     (##values-length
                                                      _g178477_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g178478_ 2)))
                                              (error "Context expects 2 values"
                                                     _g178478_)))
                                        (let ((_%$%target177283177304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g178477_ 0)))
                                              (_%$%tl177285177307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g178477_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl177285177307%_)
                                              (letrec ((_%$%loop177286177310%_
                                                        (lambda (_%$%hd177284177314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try177290177317%_)
                  (if (gx#stx-pair? _%$%hd177284177314%_)
                      (let ((_%$%e177287177319%_
                             (gx#syntax-e _%$%hd177284177314%_)))
                        (let ((_%$%lp-hd177288177323%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177287177319%_)))
                              (_%$%lp-tl177289177326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177287177319%_))))
                          (_%$%loop177286177310%_
                           _%$%lp-tl177289177326%_
                           (cons _%$%lp-hd177288177323%_
                                 _%$%bind-try177290177317%_))))
                      (let* ((_%$%bind-try177291177329%_
                              (reverse _%$%bind-try177290177317%_))
                             (_%$%g177350177358%_
                              (lambda (_%$%g177351177354%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g177351177354%_)))
                             (_%$%g177349177388%_
                              (lambda (_%$%g177351177362%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp178479
                                                   (lambda (_%$%g177379177382%_
                                                            _%$%g177380177385%_)
                                                     (cons _%$%g177379177382%_
                                                           _%$%g177380177385%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp178479
                                               '()
                                               _%$%bind-try177291177329%_))
                                            (cons (cons _%$%g177351177362%_
                                                        '())
                                                  '()))))))
                        (_%$%g177349177388%_ (car (last _%bind177277%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop177286177310%_
                                                 _%$%target177283177304%_
                                                 '()))
                                              (_%$%g177280177297%_
                                               _%$%g177281177301%_)))))
                                    (_%$%g177280177297%_
                                     _%$%g177281177301%_)))))
                        (_%$%g177279177392%_ _%bind177277%_))))))
          (let* ((_%$%g177121177140%_
                  (lambda (_%$%g177122177136%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g177122177136%_)))
                 (_%$%g177120177263%_
                  (lambda (_%$%g177122177144%_)
                    (if (gx#stx-pair? _%$%g177122177144%_)
                        (let ((_%$%e177126177147%_
                               (gx#syntax-e _%$%g177122177144%_)))
                          (let ((_%$%hd177127177151%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e177126177147%_)))
                                (_%$%tl177128177154%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e177126177147%_))))
                            (if (gx#stx-pair? _%$%tl177128177154%_)
                                (let ((_%$%e177129177157%_
                                       (gx#syntax-e _%$%tl177128177154%_)))
                                  (let ((_%$%hd177130177161%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e177129177157%_)))
                                        (_%$%tl177131177164%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e177129177157%_))))
                                    (if (gx#stx-pair? _%$%tl177131177164%_)
                                        (let ((_%$%e177132177167%_
                                               (gx#syntax-e
                                                _%$%tl177131177164%_)))
                                          (let ((_%$%hd177133177171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e177132177167%_)))
                                                (_%$%tl177134177174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e177132177167%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd177133177171%_)
                                                     (gx#stx-list?
                                                      _%$%tl177134177174%_))
                                                (let* ((_%$%g177198177206%_
                                                        (lambda (_%$%g177199177202%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g177199177202%_)))
                                                       (_%$%g177197177259%_
                                                        (lambda (_%$%g177199177210%_)
                                                          (let* ((_%$%g177225177233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g177226177229%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g177226177229%_)))
                         (_%$%g177224177255%_
                          (lambda (_%$%g177226177237%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g177199177210%_
                                                    (cons _%$%hd177130177161%_
                                                          '()))
                                              '())
                                        (cons _%$%g177226177237%_ '()))))))
                    (_%$%g177224177255%_
                     (_%generate177118%_
                      _%$%g177199177210%_
                      (gx#syntax->list _%$%hd177133177171%_)
                      _%$%tl177134177174%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g177197177259%_
                                                   (gx#genident 'e)))
                                                (_%$%g177121177140%_
                                                 _%$%g177122177144%_))))
                                        (_%$%g177121177140%_
                                         _%$%g177122177144%_))))
                                (_%$%g177121177140%_ _%$%g177122177144%_))))
                        (_%$%g177121177140%_ _%$%g177122177144%_)))))
            (_%$%g177120177263%_ _%stx177115%_)))))))
