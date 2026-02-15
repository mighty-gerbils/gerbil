(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g172486_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172488_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172490_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172492_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172493_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172495_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172496_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172498_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172499_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172501_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172502_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172504_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj172482
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 '#f '12 '#f '#f))
        (let ((__tmp172485 |gx[1]#_g172486_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 __tmp172485 '3 '#f '#f))
        (let ((__tmp172487 |gx[1]#_g172488_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 __tmp172487 '13 '#f '#f))
        (let ((__tmp172489 |gx[1]#_g172490_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 __tmp172489 '14 '#f '#f))
        (let ((__tmp172491
               (cons (cons 'e |gx[1]#_g172492_|)
                     (cons (cons 'source |gx[1]#_g172493_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 __tmp172491 '15 '#f '#f))
        (let ((__tmp172494
               (cons (cons 'e |gx[1]#_g172495_|)
                     (cons (cons 'source |gx[1]#_g172496_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 __tmp172494 '16 '#f '#f))
        (let ((__tmp172497
               (cons (cons 'e |gx[1]#_g172498_|)
                     (cons (cons 'source |gx[1]#_g172499_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 __tmp172497 '17 '#f '#f))
        (let ((__tmp172500
               (cons (cons 'e |gx[1]#_g172501_|)
                     (cons (cons 'source |gx[1]#_g172502_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 __tmp172500 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172482 '() '20 '#f '#f))
        __obj172482))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx171079%_)
        (let* ((_%g171083171097%_
                (lambda (_%g171084171093%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g171084171093%_)))
               (_%g171082171139%_
                (lambda (_%g171084171101%_)
                  (if (gx#stx-pair? _%g171084171101%_)
                      (let ((_%e171086171104%_
                             (gx#syntax-e _%g171084171101%_)))
                        (let ((_%hd171087171108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171086171104%_)))
                              (_%tl171088171111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171086171104%_))))
                          (if (gx#stx-pair? _%tl171088171111%_)
                              (let ((_%e171089171114%_
                                     (gx#syntax-e _%tl171088171111%_)))
                                (let ((_%hd171090171118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171089171114%_)))
                                      (_%tl171091171121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171089171114%_))))
                                  (if (gx#stx-null? _%tl171091171121%_)
                                      ((lambda (_%g171085171124%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g171085171124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g171085171124%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd171090171118%_)
                                      (_%g171083171097%_ _%g171084171101%_))))
                              (_%g171083171097%_ _%g171084171101%_))))
                      (_%g171083171097%_ _%g171084171101%_)))))
          (_%g171082171139%_ _%$stx171079%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx171143%_)
        (letrec ((_%generate171146%_
                  (lambda (_%tgt171295%_ _%kws171297%_ _%clauses171298%_)
                    (letrec ((_%generate-clause171300%_
                              (lambda (_%hd172233%_ _%E172235%_)
                                (let* ((_%__stx172385172386%_ _%hd172233%_)
                                       (_%g172239172266%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx172385172386%_))))
                                  (let ((_%__kont172388172389%_
                                         (lambda (_%g172241172362%_
                                                  _%g172242172364%_)
                                           (_%generate1171302%_
                                            _%hd172233%_
                                            _%g172242172364%_
                                            '#t
                                            _%g172241172362%_
                                            _%E172235%_)))
                                        (_%__kont172390172391%_
                                         (lambda (_%g172249172314%_
                                                  _%g172250172316%_
                                                  _%g172251172317%_)
                                           (_%generate1171302%_
                                            _%hd172233%_
                                            _%g172251172317%_
                                            _%g172250172316%_
                                            _%g172249172314%_
                                            _%E172235%_)))
                                        (_%__kont172392172393%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx171143%_
                                            _%hd172233%_))))
                                    (if (gx#stx-pair? _%__stx172385172386%_)
                                        (let ((_%e172243172342%_
                                               (gx#syntax-e
                                                _%__stx172385172386%_)))
                                          (let ((_%tl172245172349%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172243172342%_)))
                                                (_%hd172244172346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172243172342%_))))
                                            (if (gx#stx-pair?
                                                 _%tl172245172349%_)
                                                (let ((_%e172246172352%_
                                                       (gx#syntax-e
                                                        _%tl172245172349%_)))
                                                  (let ((_%tl172248172359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172246172352%_)))
                                                        (_%hd172247172356%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172246172352%_))))
                                                    (if (gx#stx-null?
                                                         _%tl172248172359%_)
                                                        (_%__kont172388172389%_
                                                         _%hd172247172356%_
                                                         _%hd172244172346%_)
                                                        (if (gx#stx-pair?
                                                             _%tl172248172359%_)
                                                            (let ((_%e172258172304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl172248172359%_)))
                      (let ((_%tl172260172311%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172258172304%_)))
                            (_%hd172259172308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172258172304%_))))
                        (if (gx#stx-null? _%tl172260172311%_)
                            (_%__kont172390172391%_
                             _%hd172259172308%_
                             _%hd172247172356%_
                             _%hd172244172346%_)
                            (_%__kont172392172393%_))))
                    (_%__kont172392172393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172392172393%_))))
                                        (_%__kont172392172393%_))))))
                             (_%generate1171302%_
                              (lambda (_%where171686%_
                                       _%hd171688%_
                                       _%fender171689%_
                                       _%body171690%_
                                       _%E171691%_)
                                (letrec ((_%recur171693%_
                                          (lambda (_%hd171696%_
                                                   _%tgt171698%_
                                                   _%K171699%_)
                                            (let* ((_%__stx172431172432%_
                                                    _%hd171696%_)
                                                   (_%g171702171714%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx172431172432%_))))
                                              (let ((_%__kont172434172435%_
                                                     (lambda (_%g171704172023%_
                                                              _%g171705172025%_)
                                                       (let* ((_%g172036172044%_
                                                               (lambda (_%g172037172040%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g172037172040%_)))
                      (_%g172035172225%_
                       (lambda (_%g172037172048%_)
                         ((lambda (_%g172038172051%_)
                            (let* ((_%g172063172071%_
                                    (lambda (_%g172064172067%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g172064172067%_)))
                                   (_%g172062172221%_
                                    (lambda (_%g172064172075%_)
                                      ((lambda (_%g172065172078%_)
                                         (let* ((_%g172091172099%_
                                                 (lambda (_%g172092172095%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g172092172095%_)))
                                                (_%g172090172217%_
                                                 (lambda (_%g172092172103%_)
                                                   ((lambda (_%g172093172106%_)
                                                      (let* ((_%g172119172127%_
                                                              (lambda (_%g172120172123%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g172120172123%_)))
                     (_%g172118172213%_
                      (lambda (_%g172120172131%_)
                        ((lambda (_%g172121172134%_)
                           (let* ((_%g172147172155%_
                                   (lambda (_%g172148172151%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172148172151%_)))
                                  (_%g172146172209%_
                                   (lambda (_%g172148172159%_)
                                     ((lambda (_%g172149172162%_)
                                        (let* ((_%g172175172183%_
                                                (lambda (_%g172176172179%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g172176172179%_)))
                                               (_%g172174172205%_
                                                (lambda (_%g172176172187%_)
                                                  ((lambda (_%g172177172190%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g172038172051%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g172065172078%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g172038172051%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g172093172106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g172065172078%_ '()))
                                       '()))
                           (cons (cons _%g172121172134%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g172065172078%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g172149172162%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g172177172190%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g172176172187%_))))
                                          (_%g172174172205%_ _%E171691%_)))
                                      _%g172148172159%_))))
                             (_%g172146172209%_
                              (_%recur171693%_
                               _%g171705172025%_
                               _%g172093172106%_
                               (_%recur171693%_
                                _%g171704172023%_
                                _%g172121172134%_
                                _%K171699%_)))))
                         _%g172120172131%_))))
                (_%g172118172213%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g172092172103%_))))
                                           (_%g172090172217%_
                                            (gx#genident 'hd))))
                                       _%g172064172075%_))))
                              (_%g172062172221%_ (gx#genident 'e))))
                          _%g172037172048%_))))
                 (_%g172035172225%_ _%tgt171698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172436172437%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd171696%_)
                                                           (if (gx#underscore?
                                                                _%hd171696%_)
                                                               _%K171699%_
                                                               (if (let ((__tmp172503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g171728171730%_)
                                    (gx#bound-identifier=?
                                     _%g171728171730%_
                                     _%hd171696%_))))
                             (declare (not safe))
                             (__find __tmp172503 _%kws171297%_))
                           (let* ((_%g171736171751%_
                                   (lambda (_%g171737171747%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171737171747%_)))
                                  (_%g171735171804%_
                                   (lambda (_%g171737171755%_)
                                     (if (gx#stx-pair? _%g171737171755%_)
                                         (let ((_%e171740171758%_
                                                (gx#syntax-e
                                                 _%g171737171755%_)))
                                           (let ((_%hd171741171762%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171740171758%_)))
                                                 (_%tl171742171765%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171740171758%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171742171765%_)
                                                 (let ((_%e171743171768%_
                                                        (gx#syntax-e
                                                         _%tl171742171765%_)))
                                                   (let ((_%hd171744171772%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171743171768%_)))
                                                         (_%tl171745171775%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171743171768%_))))
                                                     (if (gx#stx-null?
                                                          _%tl171745171775%_)
                                                         ((lambda (_%g171738171778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g171739171780%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g171739171780%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g171739171780%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g171738171778%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K171699%_ (cons _%E171691%_ '())))))
                  _%hd171744171772%_
                  _%hd171741171762%_)
                 (_%g171736171751%_ _%g171737171755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171736171751%_
                                                  _%g171737171755%_))))
                                         (_%g171736171751%_
                                          _%g171737171755%_)))))
                             (_%g171735171804%_
                              (list _%tgt171698%_ _%hd171696%_)))
                           (let* ((_%g171810171825%_
                                   (lambda (_%g171811171821%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171811171821%_)))
                                  (_%g171809171870%_
                                   (lambda (_%g171811171829%_)
                                     (if (gx#stx-pair? _%g171811171829%_)
                                         (let ((_%e171814171832%_
                                                (gx#syntax-e
                                                 _%g171811171829%_)))
                                           (let ((_%hd171815171836%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171814171832%_)))
                                                 (_%tl171816171839%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171814171832%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171816171839%_)
                                                 (let ((_%e171817171842%_
                                                        (gx#syntax-e
                                                         _%tl171816171839%_)))
                                                   (let ((_%hd171818171846%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171817171842%_)))
                                                         (_%tl171819171849%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171817171842%_))))
                                                     (if (gx#stx-null?
                                                          _%tl171819171849%_)
                                                         ((lambda (_%g171812171852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g171813171854%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g171812171852%_
                                            (cons _%g171813171854%_ '()))
                                      '())
                                (cons _%K171699%_ '()))))
                  _%hd171818171846%_
                  _%hd171815171836%_)
                 (_%g171810171825%_ _%g171811171829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171810171825%_
                                                  _%g171811171829%_))))
                                         (_%g171810171825%_
                                          _%g171811171829%_)))))
                             (_%g171809171870%_
                              (list _%tgt171698%_ _%hd171696%_)))))
                   (if (gx#stx-null? _%hd171696%_)
                       (let* ((_%g171876171884%_
                               (lambda (_%g171877171880%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g171877171880%_)))
                              (_%g171875171903%_
                               (lambda (_%g171877171888%_)
                                 ((lambda (_%g171878171891%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g171878171891%_
                                                            '()))
                                                (cons _%K171699%_
                                                      (cons _%E171691%_
                                                            '())))))
                                  _%g171877171888%_))))
                         (_%g171875171903%_ _%tgt171698%_))
                       (if (gx#stx-datum? _%hd171696%_)
                           (let* ((_%g171909171928%_
                                   (lambda (_%g171910171924%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171910171924%_)))
                                  (_%g171908171987%_
                                   (lambda (_%g171910171932%_)
                                     (if (gx#stx-pair? _%g171910171932%_)
                                         (let ((_%e171914171935%_
                                                (gx#syntax-e
                                                 _%g171910171932%_)))
                                           (let ((_%hd171915171939%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171914171935%_)))
                                                 (_%tl171916171942%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171914171935%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171916171942%_)
                                                 (let ((_%e171917171945%_
                                                        (gx#syntax-e
                                                         _%tl171916171942%_)))
                                                   (let ((_%hd171918171949%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171917171945%_)))
                                                         (_%tl171919171952%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171917171945%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl171919171952%_)
                                                         (let ((_%e171920171955%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl171919171952%_)))
                   (let ((_%hd171921171959%_
                          (let ()
                            (declare (not safe))
                            (##car _%e171920171955%_)))
                         (_%tl171922171962%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e171920171955%_))))
                     (if (gx#stx-null? _%tl171922171962%_)
                         ((lambda (_%g171911171965%_
                                   _%g171912171967%_
                                   _%g171913171968%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g171911171965%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g171913171968%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g171912171967%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K171699%_
                                              (cons _%E171691%_ '())))))
                          _%hd171921171959%_
                          _%hd171918171949%_
                          _%hd171915171939%_)
                         (_%g171909171928%_ _%g171910171932%_))))
                 (_%g171909171928%_ _%g171910171932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171909171928%_
                                                  _%g171910171932%_))))
                                         (_%g171909171928%_
                                          _%g171910171932%_)))))
                             (_%g171908171987%_
                              (list _%tgt171698%_
                                    _%hd171696%_
                                    (let ((_%e171991%_
                                           (gx#stx-e _%hd171696%_)))
                                      (if (or (keyword? _%e171991%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e171991%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e171991%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx171143%_
                            _%where171686%_
                            _%hd171696%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx172431172432%_)
                                                    (let ((_%e171706172013%_
                                                           (gx#syntax-e
                                                            _%__stx172431172432%_)))
                                                      (let ((_%tl171708172020%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171706172013%_)))
                    (_%hd171707172017%_
                     (let () (declare (not safe)) (##car _%e171706172013%_))))
                (_%__kont172434172435%_
                 _%tl171708172020%_
                 _%hd171707172017%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172436172437%_)))))))
                                  (_%recur171693%_
                                   _%hd171688%_
                                   _%tgt171295%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender171689%_
                                               (cons _%body171690%_
                                                     (cons _%E171691%_
                                                           '()))))))))
                             (_%generate-clauses171303%_
                              (lambda (_%clauses171424%_)
                                (let _%lp171427%_ ((_%rest171430%_
                                                    _%clauses171424%_)
                                                   (_%E171432%_
                                                    (gx#genident 'E))
                                                   (_%r171433%_ '()))
                                  (let* ((_%__stx172467172468%_ _%rest171430%_)
                                         (_%g171436171448%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx172467172468%_))))
                                    (let ((_%__kont172470172471%_
                                           (lambda (_%g171438171513%_
                                                    _%g171439171515%_)
                                             (let* ((_%__stx172447172448%_
                                                     _%g171439171515%_)
                                                    (_%g171527171538%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx172447172448%_))))
                                               (let ((_%__kont172450172451%_
                                                      (lambda (_%g171529171667%_)
                                                        (if (gx#stx-null?
                                                             _%g171438171513%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g171529171667%_)
                             (not (gx#stx-null? _%g171529171667%_)))
                        (cons (cons _%E171432%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g171529171667%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g171439171515%_))
                                          '()))
                              _%r171433%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx171143%_
                         _%g171439171515%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx171143%_
                     _%g171439171515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172452172453%_
                                                      (lambda ()
                                                        (let* ((_%g171549171557%_
                                                                (lambda (_%g171550171553%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g171550171553%_)))
                       (_%g171548171646%_
                        (lambda (_%g171550171561%_)
                          ((lambda (_%g171551171564%_)
                             (let* ((_%g171580171588%_
                                     (lambda (_%g171581171584%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g171581171584%_)))
                                    (_%g171579171642%_
                                     (lambda (_%g171581171592%_)
                                       ((lambda (_%g171582171595%_)
                                          (let* ((_%g171608171616%_
                                                  (lambda (_%g171609171612%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g171609171612%_)))
                                                 (_%g171607171638%_
                                                  (lambda (_%g171609171620%_)
                                                    ((lambda (_%g171610171623%_)
                                                       (_%lp171427%_
                                                        _%g171438171513%_
                                                        _%g171551171564%_
                                                        (cons (cons _%E171432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g171610171623%_ '()))
                      _%r171433%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g171609171620%_))))
                                            (_%g171607171638%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g171582171595%_
                                                                '())))
                                              (gx#stx-source
                                               _%g171439171515%_)))))
                                        _%g171581171592%_))))
                               (_%g171579171642%_
                                (_%generate-clause171300%_
                                 _%g171439171515%_
                                 (cons _%g171551171564%_ '())))))
                           _%g171550171561%_))))
                  (_%g171548171646%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx172447172448%_)
                                                     (let ((_%e171530171657%_
                                                            (gx#syntax-e
                                                             _%__stx172447172448%_)))
                                                       (let ((_%tl171532171664%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e171530171657%_)))
                     (_%hd171531171661%_
                      (let () (declare (not safe)) (##car _%e171530171657%_))))
                 (if (gx#identifier? _%hd171531171661%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g172504_|
                          _%hd171531171661%_)
                         (_%__kont172450172451%_ _%tl171532171664%_)
                         (_%__kont172452172453%_))
                     (_%__kont172452172453%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172452172453%_))))))
                                          (_%__kont172472172473%_
                                           (lambda ()
                                             (let* ((_%g171459171467%_
                                                     (lambda (_%g171460171463%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g171460171463%_)))
                                                    (_%g171458171492%_
                                                     (lambda (_%g171460171471%_)
                                                       ((lambda (_%g171461171474%_)
                                                          (cons (cons _%E171432%_
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
                                 (cons _%g171461171474%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx171143%_))
                                    '()))
                        _%r171433%_))
                _%g171460171471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171458171492%_
                                                _%tgt171295%_)))))
                                      (if (gx#stx-pair? _%__stx172467172468%_)
                                          (let ((_%e171440171503%_
                                                 (gx#syntax-e
                                                  _%__stx172467172468%_)))
                                            (let ((_%tl171442171510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e171440171503%_)))
                                                  (_%hd171441171507%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e171440171503%_))))
                                              (_%__kont172470172471%_
                                               _%tl171442171510%_
                                               _%hd171441171507%_)))
                                          (_%__kont172472172473%_))))))))
                      (let* ((_%bind171305%_
                              (_%generate-clauses171303%_ _%clauses171298%_))
                             (_%g171308171325%_
                              (lambda (_%g171309171321%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g171309171321%_)))
                             (_%g171307171420%_
                              (lambda (_%g171309171329%_)
                                (if (gx#stx-pair/null? _%g171309171329%_)
                                    (let ((_g172505_
                                           (gx#syntax-split-splice
                                            _%g171309171329%_
                                            '0)))
                                      (begin
                                        (let ((_g172506_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g172505_)
                                                     (##values-length
                                                      _g172505_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g172506_ 2)))
                                              (error "Context expects 2 values"
                                                     _g172506_)))
                                        (let ((_%target171311171332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g172505_ 0)))
                                              (_%tl171313171335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g172505_ 1))))
                                          (if (gx#stx-null? _%tl171313171335%_)
                                              (letrec ((_%loop171314171338%_
                                                        (lambda (_%hd171312171342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try171318171345%_)
                  (if (gx#stx-pair? _%hd171312171342%_)
                      (let ((_%e171315171347%_
                             (gx#syntax-e _%hd171312171342%_)))
                        (let ((_%lp-hd171316171351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171315171347%_)))
                              (_%lp-tl171317171354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171315171347%_))))
                          (_%loop171314171338%_
                           _%lp-tl171317171354%_
                           (cons _%lp-hd171316171351%_
                                 _%bind-try171318171345%_))))
                      (let ((_%bind-try171319171357%_
                             (reverse _%bind-try171318171345%_)))
                        ((lambda (_%g171310171360%_)
                           (let* ((_%g171378171386%_
                                   (lambda (_%g171379171382%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171379171382%_)))
                                  (_%g171377171416%_
                                   (lambda (_%g171379171390%_)
                                     ((lambda (_%g171380171393%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp172507
                                                           (lambda (_%g171407171410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g171408171413%_)
                     (cons _%g171407171410%_ _%g171408171413%_))))
              (declare (not safe))
              (foldr__0 __tmp172507 '() _%g171310171360%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g171380171393%_
                                                                '())
                                                          '()))))
                                      _%g171379171390%_))))
                             (_%g171377171416%_ (car (last _%bind171305%_)))))
                         _%bind-try171319171357%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop171314171338%_
                                                 _%target171311171332%_
                                                 '()))
                                              (_%g171308171325%_
                                               _%g171309171329%_)))))
                                    (_%g171308171325%_ _%g171309171329%_)))))
                        (_%g171307171420%_ _%bind171305%_))))))
          (let* ((_%g171149171168%_
                  (lambda (_%g171150171164%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171150171164%_)))
                 (_%g171148171291%_
                  (lambda (_%g171150171172%_)
                    (if (gx#stx-pair? _%g171150171172%_)
                        (let ((_%e171154171175%_
                               (gx#syntax-e _%g171150171172%_)))
                          (let ((_%hd171155171179%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171154171175%_)))
                                (_%tl171156171182%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171154171175%_))))
                            (if (gx#stx-pair? _%tl171156171182%_)
                                (let ((_%e171157171185%_
                                       (gx#syntax-e _%tl171156171182%_)))
                                  (let ((_%hd171158171189%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171157171185%_)))
                                        (_%tl171159171192%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171157171185%_))))
                                    (if (gx#stx-pair? _%tl171159171192%_)
                                        (let ((_%e171160171195%_
                                               (gx#syntax-e
                                                _%tl171159171192%_)))
                                          (let ((_%hd171161171199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171160171195%_)))
                                                (_%tl171162171202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171160171195%_))))
                                            ((lambda (_%g171151171205%_
                                                      _%g171152171207%_
                                                      _%g171153171208%_)
                                               (if (and (gx#identifier-list?
                                                         _%g171152171207%_)
                                                        (gx#stx-list?
                                                         _%g171151171205%_))
                                                   (let* ((_%g171226171234%_
                                                           (lambda (_%g171227171230%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g171227171230%_)))
                                                          (_%g171225171287%_
                                                           (lambda (_%g171227171238%_)
                                                             ((lambda (_%g171228171241%_)
                                                                (let* ((_%g171253171261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g171254171257%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171254171257%_)))
                               (_%g171252171283%_
                                (lambda (_%g171254171265%_)
                                  ((lambda (_%g171255171268%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g171228171241%_
                                                             (cons _%g171153171208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g171255171268%_
                                                       '()))))
                                   _%g171254171265%_))))
                          (_%g171252171283%_
                           (_%generate171146%_
                            _%g171228171241%_
                            (gx#syntax->list _%g171152171207%_)
                            _%g171151171205%_))))
                      _%g171227171238%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g171225171287%_
                                                      (gx#genident 'e)))
                                                   (_%g171149171168%_
                                                    _%g171150171172%_)))
                                             _%tl171162171202%_
                                             _%hd171161171199%_
                                             _%hd171158171189%_)))
                                        (_%g171149171168%_
                                         _%g171150171172%_))))
                                (_%g171149171168%_ _%g171150171172%_))))
                        (_%g171149171168%_ _%g171150171172%_)))))
            (_%g171148171291%_ _%stx171143%_)))))))
