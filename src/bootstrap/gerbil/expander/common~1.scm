(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g118043_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118045_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118047_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118049_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118050_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118052_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118053_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118055_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118056_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118058_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118059_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118061_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj118039
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
          (##unchecked-structure-set! __obj118039 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 '#f '11 '#f '#f))
        (let ((__tmp118042 |gx[1]#_g118043_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 __tmp118042 '12 '#f '#f))
        (let ((__tmp118044 |gx[1]#_g118045_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 __tmp118044 '13 '#f '#f))
        (let ((__tmp118046 |gx[1]#_g118047_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 __tmp118046 '14 '#f '#f))
        (let ((__tmp118048
               (cons (cons 'e |gx[1]#_g118049_|)
                     (cons (cons 'source |gx[1]#_g118050_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 __tmp118048 '15 '#f '#f))
        (let ((__tmp118051
               (cons (cons 'e |gx[1]#_g118052_|)
                     (cons (cons 'source |gx[1]#_g118053_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 __tmp118051 '16 '#f '#f))
        (let ((__tmp118054
               (cons (cons 'e |gx[1]#_g118055_|)
                     (cons (cons 'source |gx[1]#_g118056_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 __tmp118054 '17 '#f '#f))
        (let ((__tmp118057
               (cons (cons 'e |gx[1]#_g118058_|)
                     (cons (cons 'source |gx[1]#_g118059_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 __tmp118057 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj118039 '() '20 '#f '#f))
        __obj118039))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx116634%_)
        (let* ((_%g116638116652%_
                (lambda (_%g116639116648%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g116639116648%_)))
               (_%g116637116694%_
                (lambda (_%g116639116656%_)
                  (if (gx#stx-pair? _%g116639116656%_)
                      (let ((_%e116641116659%_
                             (gx#syntax-e _%g116639116656%_)))
                        (let ((_%hd116642116663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116641116659%_)))
                              (_%tl116643116666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116641116659%_))))
                          (if (gx#stx-pair? _%tl116643116666%_)
                              (let ((_%e116644116669%_
                                     (gx#syntax-e _%tl116643116666%_)))
                                (let ((_%hd116645116673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e116644116669%_)))
                                      (_%tl116646116676%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e116644116669%_))))
                                  (if (gx#stx-null? _%tl116646116676%_)
                                      ((lambda (_%L116679%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L116679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L116679%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd116645116673%_)
                                      (_%g116638116652%_ _%g116639116656%_))))
                              (_%g116638116652%_ _%g116639116656%_))))
                      (_%g116638116652%_ _%g116639116656%_)))))
          (_%g116637116694%_ _%$stx116634%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx116698%_)
        (letrec ((_%generate116701%_
                  (lambda (_%tgt116850%_ _%kws116852%_ _%clauses116853%_)
                    (letrec ((_%generate-clause116855%_
                              (lambda (_%hd117790%_ _%E117792%_)
                                (let* ((_%__stx117942117943%_ _%hd117790%_)
                                       (_%g117796117823%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx117942117943%_))))
                                  (let ((_%__kont117945117946%_
                                         (lambda (_%L117919%_ _%L117921%_)
                                           (_%generate1116857%_
                                            _%hd117790%_
                                            _%L117921%_
                                            '#t
                                            _%L117919%_
                                            _%E117792%_)))
                                        (_%__kont117947117948%_
                                         (lambda (_%L117871%_
                                                  _%L117873%_
                                                  _%L117874%_)
                                           (_%generate1116857%_
                                            _%hd117790%_
                                            _%L117874%_
                                            _%L117873%_
                                            _%L117871%_
                                            _%E117792%_)))
                                        (_%__kont117949117950%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx116698%_
                                            _%hd117790%_))))
                                    (if (gx#stx-pair? _%__stx117942117943%_)
                                        (let ((_%e117800117899%_
                                               (gx#syntax-e
                                                _%__stx117942117943%_)))
                                          (let ((_%tl117802117906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e117800117899%_)))
                                                (_%hd117801117903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e117800117899%_))))
                                            (if (gx#stx-pair?
                                                 _%tl117802117906%_)
                                                (let ((_%e117803117909%_
                                                       (gx#syntax-e
                                                        _%tl117802117906%_)))
                                                  (let ((_%tl117805117916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e117803117909%_)))
                                                        (_%hd117804117913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e117803117909%_))))
                                                    (if (gx#stx-null?
                                                         _%tl117805117916%_)
                                                        (_%__kont117945117946%_
                                                         _%hd117804117913%_
                                                         _%hd117801117903%_)
                                                        (if (gx#stx-pair?
                                                             _%tl117805117916%_)
                                                            (let ((_%e117815117861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl117805117916%_)))
                      (let ((_%tl117817117868%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e117815117861%_)))
                            (_%hd117816117865%_
                             (let ()
                               (declare (not safe))
                               (##car _%e117815117861%_))))
                        (if (gx#stx-null? _%tl117817117868%_)
                            (_%__kont117947117948%_
                             _%hd117816117865%_
                             _%hd117804117913%_
                             _%hd117801117903%_)
                            (_%__kont117949117950%_))))
                    (_%__kont117949117950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont117949117950%_))))
                                        (_%__kont117949117950%_))))))
                             (_%generate1116857%_
                              (lambda (_%where117243%_
                                       _%hd117245%_
                                       _%fender117246%_
                                       _%body117247%_
                                       _%E117248%_)
                                (letrec ((_%recur117250%_
                                          (lambda (_%hd117253%_
                                                   _%tgt117255%_
                                                   _%K117256%_)
                                            (let* ((_%__stx117988117989%_
                                                    _%hd117253%_)
                                                   (_%g117259117271%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx117988117989%_))))
                                              (let ((_%__kont117991117992%_
                                                     (lambda (_%L117580%_
                                                              _%L117582%_)
                                                       (let* ((_%g117593117601%_
                                                               (lambda (_%g117594117597%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g117594117597%_)))
                      (_%g117592117782%_
                       (lambda (_%g117594117605%_)
                         ((lambda (_%L117608%_)
                            (let* ((_%g117620117628%_
                                    (lambda (_%g117621117624%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g117621117624%_)))
                                   (_%g117619117778%_
                                    (lambda (_%g117621117632%_)
                                      ((lambda (_%L117635%_)
                                         (let* ((_%g117648117656%_
                                                 (lambda (_%g117649117652%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g117649117652%_)))
                                                (_%g117647117774%_
                                                 (lambda (_%g117649117660%_)
                                                   ((lambda (_%L117663%_)
                                                      (let* ((_%g117676117684%_
                                                              (lambda (_%g117677117680%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g117677117680%_)))
                     (_%g117675117770%_
                      (lambda (_%g117677117688%_)
                        ((lambda (_%L117691%_)
                           (let* ((_%g117704117712%_
                                   (lambda (_%g117705117708%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117705117708%_)))
                                  (_%g117703117766%_
                                   (lambda (_%g117705117716%_)
                                     ((lambda (_%L117719%_)
                                        (let* ((_%g117732117740%_
                                                (lambda (_%g117733117736%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g117733117736%_)))
                                               (_%g117731117762%_
                                                (lambda (_%g117733117744%_)
                                                  ((lambda (_%L117747%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L117608%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L117635%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L117608%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L117663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L117635%_ '()))
                                       '()))
                           (cons (cons _%L117691%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L117635%_ '()))
                                             '()))
                                 '()))
                     (cons _%L117719%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L117747%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g117733117744%_))))
                                          (_%g117731117762%_ _%E117248%_)))
                                      _%g117705117716%_))))
                             (_%g117703117766%_
                              (_%recur117250%_
                               _%L117582%_
                               _%L117663%_
                               (_%recur117250%_
                                _%L117580%_
                                _%L117691%_
                                _%K117256%_)))))
                         _%g117677117688%_))))
                (_%g117675117770%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g117649117660%_))))
                                           (_%g117647117774%_
                                            (gx#genident 'hd))))
                                       _%g117621117632%_))))
                              (_%g117619117778%_ (gx#genident 'e))))
                          _%g117594117605%_))))
                 (_%g117592117782%_ _%tgt117255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117993117994%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd117253%_)
                                                           (if (gx#underscore?
                                                                _%hd117253%_)
                                                               _%K117256%_
                                                               (if (let ((__tmp118060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g117285117287%_)
                                    (gx#bound-identifier=?
                                     _%g117285117287%_
                                     _%hd117253%_))))
                             (declare (not safe))
                             (__find __tmp118060 _%kws116852%_))
                           (let* ((_%g117293117308%_
                                   (lambda (_%g117294117304%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117294117304%_)))
                                  (_%g117292117361%_
                                   (lambda (_%g117294117312%_)
                                     (if (gx#stx-pair? _%g117294117312%_)
                                         (let ((_%e117297117315%_
                                                (gx#syntax-e
                                                 _%g117294117312%_)))
                                           (let ((_%hd117298117319%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117297117315%_)))
                                                 (_%tl117299117322%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117297117315%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117299117322%_)
                                                 (let ((_%e117300117325%_
                                                        (gx#syntax-e
                                                         _%tl117299117322%_)))
                                                   (let ((_%hd117301117329%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117300117325%_)))
                                                         (_%tl117302117332%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117300117325%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117302117332%_)
                                                         ((lambda (_%L117335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117337%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L117337%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L117337%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L117335%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K117256%_ (cons _%E117248%_ '())))))
                  _%hd117301117329%_
                  _%hd117298117319%_)
                 (_%g117293117308%_ _%g117294117312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117293117308%_
                                                  _%g117294117312%_))))
                                         (_%g117293117308%_
                                          _%g117294117312%_)))))
                             (_%g117292117361%_
                              (list _%tgt117255%_ _%hd117253%_)))
                           (let* ((_%g117367117382%_
                                   (lambda (_%g117368117378%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117368117378%_)))
                                  (_%g117366117427%_
                                   (lambda (_%g117368117386%_)
                                     (if (gx#stx-pair? _%g117368117386%_)
                                         (let ((_%e117371117389%_
                                                (gx#syntax-e
                                                 _%g117368117386%_)))
                                           (let ((_%hd117372117393%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117371117389%_)))
                                                 (_%tl117373117396%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117371117389%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117373117396%_)
                                                 (let ((_%e117374117399%_
                                                        (gx#syntax-e
                                                         _%tl117373117396%_)))
                                                   (let ((_%hd117375117403%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117374117399%_)))
                                                         (_%tl117376117406%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117374117399%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117376117406%_)
                                                         ((lambda (_%L117409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117411%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L117409%_ (cons _%L117411%_ '()))
                                      '())
                                (cons _%K117256%_ '()))))
                  _%hd117375117403%_
                  _%hd117372117393%_)
                 (_%g117367117382%_ _%g117368117386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117367117382%_
                                                  _%g117368117386%_))))
                                         (_%g117367117382%_
                                          _%g117368117386%_)))))
                             (_%g117366117427%_
                              (list _%tgt117255%_ _%hd117253%_)))))
                   (if (gx#stx-null? _%hd117253%_)
                       (let* ((_%g117433117441%_
                               (lambda (_%g117434117437%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g117434117437%_)))
                              (_%g117432117460%_
                               (lambda (_%g117434117445%_)
                                 ((lambda (_%L117448%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L117448%_ '()))
                                                (cons _%K117256%_
                                                      (cons _%E117248%_
                                                            '())))))
                                  _%g117434117445%_))))
                         (_%g117432117460%_ _%tgt117255%_))
                       (if (gx#stx-datum? _%hd117253%_)
                           (let* ((_%g117466117485%_
                                   (lambda (_%g117467117481%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117467117481%_)))
                                  (_%g117465117544%_
                                   (lambda (_%g117467117489%_)
                                     (if (gx#stx-pair? _%g117467117489%_)
                                         (let ((_%e117471117492%_
                                                (gx#syntax-e
                                                 _%g117467117489%_)))
                                           (let ((_%hd117472117496%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117471117492%_)))
                                                 (_%tl117473117499%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117471117492%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117473117499%_)
                                                 (let ((_%e117474117502%_
                                                        (gx#syntax-e
                                                         _%tl117473117499%_)))
                                                   (let ((_%hd117475117506%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117474117502%_)))
                                                         (_%tl117476117509%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117474117502%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl117476117509%_)
                                                         (let ((_%e117477117512%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl117476117509%_)))
                   (let ((_%hd117478117516%_
                          (let ()
                            (declare (not safe))
                            (##car _%e117477117512%_)))
                         (_%tl117479117519%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e117477117512%_))))
                     (if (gx#stx-null? _%tl117479117519%_)
                         ((lambda (_%L117522%_ _%L117524%_ _%L117525%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L117522%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L117525%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L117524%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K117256%_
                                              (cons _%E117248%_ '())))))
                          _%hd117478117516%_
                          _%hd117475117506%_
                          _%hd117472117496%_)
                         (_%g117466117485%_ _%g117467117489%_))))
                 (_%g117466117485%_ _%g117467117489%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117466117485%_
                                                  _%g117467117489%_))))
                                         (_%g117466117485%_
                                          _%g117467117489%_)))))
                             (_%g117465117544%_
                              (list _%tgt117255%_
                                    _%hd117253%_
                                    (let ((_%e117548%_
                                           (gx#stx-e _%hd117253%_)))
                                      (if (or (keyword? _%e117548%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e117548%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e117548%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx116698%_
                            _%where117243%_
                            _%hd117253%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx117988117989%_)
                                                    (let ((_%e117263117570%_
                                                           (gx#syntax-e
                                                            _%__stx117988117989%_)))
                                                      (let ((_%tl117265117577%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e117263117570%_)))
                    (_%hd117264117574%_
                     (let () (declare (not safe)) (##car _%e117263117570%_))))
                (_%__kont117991117992%_
                 _%tl117265117577%_
                 _%hd117264117574%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117993117994%_)))))))
                                  (_%recur117250%_
                                   _%hd117245%_
                                   _%tgt116850%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender117246%_
                                               (cons _%body117247%_
                                                     (cons _%E117248%_
                                                           '()))))))))
                             (_%generate-clauses116858%_
                              (lambda (_%clauses116981%_)
                                (let _%lp116984%_ ((_%rest116987%_
                                                    _%clauses116981%_)
                                                   (_%E116989%_
                                                    (gx#genident 'E))
                                                   (_%r116990%_ '()))
                                  (let* ((_%__stx118024118025%_ _%rest116987%_)
                                         (_%g116993117005%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx118024118025%_))))
                                    (let ((_%__kont118027118028%_
                                           (lambda (_%L117070%_ _%L117072%_)
                                             (let* ((_%__stx118004118005%_
                                                     _%L117072%_)
                                                    (_%g117084117095%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx118004118005%_))))
                                               (let ((_%__kont118007118008%_
                                                      (lambda (_%L117224%_)
                                                        (if (gx#stx-null?
                                                             _%L117070%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L117224%_)
                             (not (gx#stx-null? _%L117224%_)))
                        (cons (cons _%E116989%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L117224%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L117072%_))
                                          '()))
                              _%r116990%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx116698%_
                         _%L117072%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx116698%_
                     _%L117072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont118009118010%_
                                                      (lambda ()
                                                        (let* ((_%g117106117114%_
                                                                (lambda (_%g117107117110%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g117107117110%_)))
                       (_%g117105117203%_
                        (lambda (_%g117107117118%_)
                          ((lambda (_%L117121%_)
                             (let* ((_%g117137117145%_
                                     (lambda (_%g117138117141%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g117138117141%_)))
                                    (_%g117136117199%_
                                     (lambda (_%g117138117149%_)
                                       ((lambda (_%L117152%_)
                                          (let* ((_%g117165117173%_
                                                  (lambda (_%g117166117169%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g117166117169%_)))
                                                 (_%g117164117195%_
                                                  (lambda (_%g117166117177%_)
                                                    ((lambda (_%L117180%_)
                                                       (_%lp116984%_
                                                        _%L117070%_
                                                        _%L117121%_
                                                        (cons (cons _%E116989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L117180%_ '()))
                      _%r116990%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g117166117177%_))))
                                            (_%g117164117195%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L117152%_
                                                                '())))
                                              (gx#stx-source _%L117072%_)))))
                                        _%g117138117149%_))))
                               (_%g117136117199%_
                                (_%generate-clause116855%_
                                 _%L117072%_
                                 (cons _%L117121%_ '())))))
                           _%g117107117118%_))))
                  (_%g117105117203%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx118004118005%_)
                                                     (let ((_%e117087117214%_
                                                            (gx#syntax-e
                                                             _%__stx118004118005%_)))
                                                       (let ((_%tl117089117221%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e117087117214%_)))
                     (_%hd117088117218%_
                      (let () (declare (not safe)) (##car _%e117087117214%_))))
                 (if (gx#identifier? _%hd117088117218%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g118061_|
                          _%hd117088117218%_)
                         (_%__kont118007118008%_ _%tl117089117221%_)
                         (_%__kont118009118010%_))
                     (_%__kont118009118010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont118009118010%_))))))
                                          (_%__kont118029118030%_
                                           (lambda ()
                                             (let* ((_%g117016117024%_
                                                     (lambda (_%g117017117020%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g117017117020%_)))
                                                    (_%g117015117049%_
                                                     (lambda (_%g117017117028%_)
                                                       ((lambda (_%L117031%_)
                                                          (cons (cons _%E116989%_
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
                                 (cons _%L117031%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx116698%_))
                                    '()))
                        _%r116990%_))
                _%g117017117028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g117015117049%_
                                                _%tgt116850%_)))))
                                      (if (gx#stx-pair? _%__stx118024118025%_)
                                          (let ((_%e116997117060%_
                                                 (gx#syntax-e
                                                  _%__stx118024118025%_)))
                                            (let ((_%tl116999117067%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116997117060%_)))
                                                  (_%hd116998117064%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116997117060%_))))
                                              (_%__kont118027118028%_
                                               _%tl116999117067%_
                                               _%hd116998117064%_)))
                                          (_%__kont118029118030%_))))))))
                      (let* ((_%bind116860%_
                              (_%generate-clauses116858%_ _%clauses116853%_))
                             (_%g116863116880%_
                              (lambda (_%g116864116876%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g116864116876%_)))
                             (_%g116862116977%_
                              (lambda (_%g116864116884%_)
                                (if (gx#stx-pair/null? _%g116864116884%_)
                                    (let ((_g118062_
                                           (gx#syntax-split-splice
                                            _%g116864116884%_
                                            '0)))
                                      (begin
                                        (let ((_g118063_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g118062_)
                                                     (##values-length
                                                      _g118062_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g118063_ 2)))
                                              (error "Context expects 2 values"
                                                     _g118063_)))
                                        (let ((_%target116866116887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g118062_ 0)))
                                              (_%tl116868116890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g118062_ 1))))
                                          (if (gx#stx-null? _%tl116868116890%_)
                                              (letrec ((_%loop116869116893%_
                                                        (lambda (_%hd116867116897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try116873116900%_)
                  (if (gx#stx-pair? _%hd116867116897%_)
                      (let ((_%e116870116903%_
                             (gx#syntax-e _%hd116867116897%_)))
                        (let ((_%lp-hd116871116907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116870116903%_)))
                              (_%lp-tl116872116910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116870116903%_))))
                          (_%loop116869116893%_
                           _%lp-tl116872116910%_
                           (cons _%lp-hd116871116907%_
                                 _%bind-try116873116900%_))))
                      (let ((_%bind-try116874116913%_
                             (reverse _%bind-try116873116900%_)))
                        ((lambda (_%L116917%_)
                           (let* ((_%g116935116943%_
                                   (lambda (_%g116936116939%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116936116939%_)))
                                  (_%g116934116973%_
                                   (lambda (_%g116936116947%_)
                                     ((lambda (_%L116950%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp118064
                                                           (lambda (_%g116964116967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g116965116970%_)
                     (cons _%g116964116967%_ _%g116965116970%_))))
              (declare (not safe))
              (__foldr1 __tmp118064 '() _%L116917%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L116950%_
                                                                '())
                                                          '()))))
                                      _%g116936116947%_))))
                             (_%g116934116973%_ (car (last _%bind116860%_)))))
                         _%bind-try116874116913%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop116869116893%_
                                                 _%target116866116887%_
                                                 '()))
                                              (_%g116863116880%_
                                               _%g116864116884%_)))))
                                    (_%g116863116880%_ _%g116864116884%_)))))
                        (_%g116862116977%_ _%bind116860%_))))))
          (let* ((_%g116704116723%_
                  (lambda (_%g116705116719%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g116705116719%_)))
                 (_%g116703116846%_
                  (lambda (_%g116705116727%_)
                    (if (gx#stx-pair? _%g116705116727%_)
                        (let ((_%e116709116730%_
                               (gx#syntax-e _%g116705116727%_)))
                          (let ((_%hd116710116734%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e116709116730%_)))
                                (_%tl116711116737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e116709116730%_))))
                            (if (gx#stx-pair? _%tl116711116737%_)
                                (let ((_%e116712116740%_
                                       (gx#syntax-e _%tl116711116737%_)))
                                  (let ((_%hd116713116744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e116712116740%_)))
                                        (_%tl116714116747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e116712116740%_))))
                                    (if (gx#stx-pair? _%tl116714116747%_)
                                        (let ((_%e116715116750%_
                                               (gx#syntax-e
                                                _%tl116714116747%_)))
                                          (let ((_%hd116716116754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116715116750%_)))
                                                (_%tl116717116757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116715116750%_))))
                                            ((lambda (_%L116760%_
                                                      _%L116762%_
                                                      _%L116763%_)
                                               (if (and (gx#identifier-list?
                                                         _%L116762%_)
                                                        (gx#stx-list?
                                                         _%L116760%_))
                                                   (let* ((_%g116781116789%_
                                                           (lambda (_%g116782116785%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g116782116785%_)))
                                                          (_%g116780116842%_
                                                           (lambda (_%g116782116793%_)
                                                             ((lambda (_%L116796%_)
                                                                (let* ((_%g116808116816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g116809116812%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g116809116812%_)))
                               (_%g116807116838%_
                                (lambda (_%g116809116820%_)
                                  ((lambda (_%L116823%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L116796%_
                                                             (cons _%L116763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L116823%_ '()))))
                                   _%g116809116820%_))))
                          (_%g116807116838%_
                           (_%generate116701%_
                            _%L116796%_
                            (gx#syntax->list _%L116762%_)
                            _%L116760%_))))
                      _%g116782116793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g116780116842%_
                                                      (gx#genident 'e)))
                                                   (_%g116704116723%_
                                                    _%g116705116727%_)))
                                             _%tl116717116757%_
                                             _%hd116716116754%_
                                             _%hd116713116744%_)))
                                        (_%g116704116723%_
                                         _%g116705116727%_))))
                                (_%g116704116723%_ _%g116705116727%_))))
                        (_%g116704116723%_ _%g116705116727%_)))))
            (_%g116703116846%_ _%stx116698%_)))))))
