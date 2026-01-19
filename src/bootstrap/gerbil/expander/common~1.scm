(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g128769_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128771_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128773_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128775_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128776_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128778_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128779_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128781_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128782_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128784_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128785_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128787_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj128765
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
          (##unchecked-structure-set! __obj128765 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 '#f '12 '#f '#f))
        (let ((__tmp128768 |gx[1]#_g128769_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 __tmp128768 '3 '#f '#f))
        (let ((__tmp128770 |gx[1]#_g128771_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 __tmp128770 '13 '#f '#f))
        (let ((__tmp128772 |gx[1]#_g128773_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 __tmp128772 '14 '#f '#f))
        (let ((__tmp128774
               (cons (cons 'e |gx[1]#_g128775_|)
                     (cons (cons 'source |gx[1]#_g128776_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 __tmp128774 '15 '#f '#f))
        (let ((__tmp128777
               (cons (cons 'e |gx[1]#_g128778_|)
                     (cons (cons 'source |gx[1]#_g128779_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 __tmp128777 '16 '#f '#f))
        (let ((__tmp128780
               (cons (cons 'e |gx[1]#_g128781_|)
                     (cons (cons 'source |gx[1]#_g128782_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 __tmp128780 '17 '#f '#f))
        (let ((__tmp128783
               (cons (cons 'e |gx[1]#_g128784_|)
                     (cons (cons 'source |gx[1]#_g128785_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 __tmp128783 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128765 '() '20 '#f '#f))
        __obj128765))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx127360%_)
        (let* ((_%g127364127378%_
                (lambda (_%g127365127374%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g127365127374%_)))
               (_%g127363127420%_
                (lambda (_%g127365127382%_)
                  (if (gx#stx-pair? _%g127365127382%_)
                      (let ((_%e127367127385%_
                             (gx#syntax-e _%g127365127382%_)))
                        (let ((_%hd127368127389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e127367127385%_)))
                              (_%tl127369127392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e127367127385%_))))
                          (if (gx#stx-pair? _%tl127369127392%_)
                              (let ((_%e127370127395%_
                                     (gx#syntax-e _%tl127369127392%_)))
                                (let ((_%hd127371127399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e127370127395%_)))
                                      (_%tl127372127402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e127370127395%_))))
                                  (if (gx#stx-null? _%tl127372127402%_)
                                      ((lambda (_%L127405%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L127405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L127405%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd127371127399%_)
                                      (_%g127364127378%_ _%g127365127382%_))))
                              (_%g127364127378%_ _%g127365127382%_))))
                      (_%g127364127378%_ _%g127365127382%_)))))
          (_%g127363127420%_ _%$stx127360%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx127424%_)
        (letrec ((_%generate127427%_
                  (lambda (_%tgt127576%_ _%kws127578%_ _%clauses127579%_)
                    (letrec ((_%generate-clause127581%_
                              (lambda (_%hd128516%_ _%E128518%_)
                                (let* ((_%__stx128668128669%_ _%hd128516%_)
                                       (_%g128522128549%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx128668128669%_))))
                                  (let ((_%__kont128671128672%_
                                         (lambda (_%L128645%_ _%L128647%_)
                                           (_%generate1127583%_
                                            _%hd128516%_
                                            _%L128647%_
                                            '#t
                                            _%L128645%_
                                            _%E128518%_)))
                                        (_%__kont128673128674%_
                                         (lambda (_%L128597%_
                                                  _%L128599%_
                                                  _%L128600%_)
                                           (_%generate1127583%_
                                            _%hd128516%_
                                            _%L128600%_
                                            _%L128599%_
                                            _%L128597%_
                                            _%E128518%_)))
                                        (_%__kont128675128676%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx127424%_
                                            _%hd128516%_))))
                                    (if (gx#stx-pair? _%__stx128668128669%_)
                                        (let ((_%e128526128625%_
                                               (gx#syntax-e
                                                _%__stx128668128669%_)))
                                          (let ((_%tl128528128632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e128526128625%_)))
                                                (_%hd128527128629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e128526128625%_))))
                                            (if (gx#stx-pair?
                                                 _%tl128528128632%_)
                                                (let ((_%e128529128635%_
                                                       (gx#syntax-e
                                                        _%tl128528128632%_)))
                                                  (let ((_%tl128531128642%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e128529128635%_)))
                                                        (_%hd128530128639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e128529128635%_))))
                                                    (if (gx#stx-null?
                                                         _%tl128531128642%_)
                                                        (_%__kont128671128672%_
                                                         _%hd128530128639%_
                                                         _%hd128527128629%_)
                                                        (if (gx#stx-pair?
                                                             _%tl128531128642%_)
                                                            (let ((_%e128541128587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl128531128642%_)))
                      (let ((_%tl128543128594%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e128541128587%_)))
                            (_%hd128542128591%_
                             (let ()
                               (declare (not safe))
                               (##car _%e128541128587%_))))
                        (if (gx#stx-null? _%tl128543128594%_)
                            (_%__kont128673128674%_
                             _%hd128542128591%_
                             _%hd128530128639%_
                             _%hd128527128629%_)
                            (_%__kont128675128676%_))))
                    (_%__kont128675128676%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont128675128676%_))))
                                        (_%__kont128675128676%_))))))
                             (_%generate1127583%_
                              (lambda (_%where127969%_
                                       _%hd127971%_
                                       _%fender127972%_
                                       _%body127973%_
                                       _%E127974%_)
                                (letrec ((_%recur127976%_
                                          (lambda (_%hd127979%_
                                                   _%tgt127981%_
                                                   _%K127982%_)
                                            (let* ((_%__stx128714128715%_
                                                    _%hd127979%_)
                                                   (_%g127985127997%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx128714128715%_))))
                                              (let ((_%__kont128717128718%_
                                                     (lambda (_%L128306%_
                                                              _%L128308%_)
                                                       (let* ((_%g128319128327%_
                                                               (lambda (_%g128320128323%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g128320128323%_)))
                      (_%g128318128508%_
                       (lambda (_%g128320128331%_)
                         ((lambda (_%L128334%_)
                            (let* ((_%g128346128354%_
                                    (lambda (_%g128347128350%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g128347128350%_)))
                                   (_%g128345128504%_
                                    (lambda (_%g128347128358%_)
                                      ((lambda (_%L128361%_)
                                         (let* ((_%g128374128382%_
                                                 (lambda (_%g128375128378%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g128375128378%_)))
                                                (_%g128373128500%_
                                                 (lambda (_%g128375128386%_)
                                                   ((lambda (_%L128389%_)
                                                      (let* ((_%g128402128410%_
                                                              (lambda (_%g128403128406%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g128403128406%_)))
                     (_%g128401128496%_
                      (lambda (_%g128403128414%_)
                        ((lambda (_%L128417%_)
                           (let* ((_%g128430128438%_
                                   (lambda (_%g128431128434%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128431128434%_)))
                                  (_%g128429128492%_
                                   (lambda (_%g128431128442%_)
                                     ((lambda (_%L128445%_)
                                        (let* ((_%g128458128466%_
                                                (lambda (_%g128459128462%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g128459128462%_)))
                                               (_%g128457128488%_
                                                (lambda (_%g128459128470%_)
                                                  ((lambda (_%L128473%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L128334%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L128361%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L128334%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L128389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L128361%_ '()))
                                       '()))
                           (cons (cons _%L128417%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L128361%_ '()))
                                             '()))
                                 '()))
                     (cons _%L128445%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L128473%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g128459128470%_))))
                                          (_%g128457128488%_ _%E127974%_)))
                                      _%g128431128442%_))))
                             (_%g128429128492%_
                              (_%recur127976%_
                               _%L128308%_
                               _%L128389%_
                               (_%recur127976%_
                                _%L128306%_
                                _%L128417%_
                                _%K127982%_)))))
                         _%g128403128414%_))))
                (_%g128401128496%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g128375128386%_))))
                                           (_%g128373128500%_
                                            (gx#genident 'hd))))
                                       _%g128347128358%_))))
                              (_%g128345128504%_ (gx#genident 'e))))
                          _%g128320128331%_))))
                 (_%g128318128508%_ _%tgt127981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont128719128720%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd127979%_)
                                                           (if (gx#underscore?
                                                                _%hd127979%_)
                                                               _%K127982%_
                                                               (if (let ((__tmp128786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g128011128013%_)
                                    (gx#bound-identifier=?
                                     _%g128011128013%_
                                     _%hd127979%_))))
                             (declare (not safe))
                             (__find __tmp128786 _%kws127578%_))
                           (let* ((_%g128019128034%_
                                   (lambda (_%g128020128030%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128020128030%_)))
                                  (_%g128018128087%_
                                   (lambda (_%g128020128038%_)
                                     (if (gx#stx-pair? _%g128020128038%_)
                                         (let ((_%e128023128041%_
                                                (gx#syntax-e
                                                 _%g128020128038%_)))
                                           (let ((_%hd128024128045%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128023128041%_)))
                                                 (_%tl128025128048%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128023128041%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128025128048%_)
                                                 (let ((_%e128026128051%_
                                                        (gx#syntax-e
                                                         _%tl128025128048%_)))
                                                   (let ((_%hd128027128055%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128026128051%_)))
                                                         (_%tl128028128058%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128026128051%_))))
                                                     (if (gx#stx-null?
                                                          _%tl128028128058%_)
                                                         ((lambda (_%L128061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L128063%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L128063%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L128063%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L128061%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K127982%_ (cons _%E127974%_ '())))))
                  _%hd128027128055%_
                  _%hd128024128045%_)
                 (_%g128019128034%_ _%g128020128038%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128019128034%_
                                                  _%g128020128038%_))))
                                         (_%g128019128034%_
                                          _%g128020128038%_)))))
                             (_%g128018128087%_
                              (list _%tgt127981%_ _%hd127979%_)))
                           (let* ((_%g128093128108%_
                                   (lambda (_%g128094128104%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128094128104%_)))
                                  (_%g128092128153%_
                                   (lambda (_%g128094128112%_)
                                     (if (gx#stx-pair? _%g128094128112%_)
                                         (let ((_%e128097128115%_
                                                (gx#syntax-e
                                                 _%g128094128112%_)))
                                           (let ((_%hd128098128119%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128097128115%_)))
                                                 (_%tl128099128122%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128097128115%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128099128122%_)
                                                 (let ((_%e128100128125%_
                                                        (gx#syntax-e
                                                         _%tl128099128122%_)))
                                                   (let ((_%hd128101128129%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128100128125%_)))
                                                         (_%tl128102128132%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128100128125%_))))
                                                     (if (gx#stx-null?
                                                          _%tl128102128132%_)
                                                         ((lambda (_%L128135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L128137%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L128135%_ (cons _%L128137%_ '()))
                                      '())
                                (cons _%K127982%_ '()))))
                  _%hd128101128129%_
                  _%hd128098128119%_)
                 (_%g128093128108%_ _%g128094128112%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128093128108%_
                                                  _%g128094128112%_))))
                                         (_%g128093128108%_
                                          _%g128094128112%_)))))
                             (_%g128092128153%_
                              (list _%tgt127981%_ _%hd127979%_)))))
                   (if (gx#stx-null? _%hd127979%_)
                       (let* ((_%g128159128167%_
                               (lambda (_%g128160128163%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g128160128163%_)))
                              (_%g128158128186%_
                               (lambda (_%g128160128171%_)
                                 ((lambda (_%L128174%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L128174%_ '()))
                                                (cons _%K127982%_
                                                      (cons _%E127974%_
                                                            '())))))
                                  _%g128160128171%_))))
                         (_%g128158128186%_ _%tgt127981%_))
                       (if (gx#stx-datum? _%hd127979%_)
                           (let* ((_%g128192128211%_
                                   (lambda (_%g128193128207%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128193128207%_)))
                                  (_%g128191128270%_
                                   (lambda (_%g128193128215%_)
                                     (if (gx#stx-pair? _%g128193128215%_)
                                         (let ((_%e128197128218%_
                                                (gx#syntax-e
                                                 _%g128193128215%_)))
                                           (let ((_%hd128198128222%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128197128218%_)))
                                                 (_%tl128199128225%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128197128218%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128199128225%_)
                                                 (let ((_%e128200128228%_
                                                        (gx#syntax-e
                                                         _%tl128199128225%_)))
                                                   (let ((_%hd128201128232%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128200128228%_)))
                                                         (_%tl128202128235%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128200128228%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl128202128235%_)
                                                         (let ((_%e128203128238%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl128202128235%_)))
                   (let ((_%hd128204128242%_
                          (let ()
                            (declare (not safe))
                            (##car _%e128203128238%_)))
                         (_%tl128205128245%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e128203128238%_))))
                     (if (gx#stx-null? _%tl128205128245%_)
                         ((lambda (_%L128248%_ _%L128250%_ _%L128251%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L128248%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L128251%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L128250%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K127982%_
                                              (cons _%E127974%_ '())))))
                          _%hd128204128242%_
                          _%hd128201128232%_
                          _%hd128198128222%_)
                         (_%g128192128211%_ _%g128193128215%_))))
                 (_%g128192128211%_ _%g128193128215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128192128211%_
                                                  _%g128193128215%_))))
                                         (_%g128192128211%_
                                          _%g128193128215%_)))))
                             (_%g128191128270%_
                              (list _%tgt127981%_
                                    _%hd127979%_
                                    (let ((_%e128274%_
                                           (gx#stx-e _%hd127979%_)))
                                      (if (or (keyword? _%e128274%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e128274%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e128274%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx127424%_
                            _%where127969%_
                            _%hd127979%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx128714128715%_)
                                                    (let ((_%e127989128296%_
                                                           (gx#syntax-e
                                                            _%__stx128714128715%_)))
                                                      (let ((_%tl127991128303%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e127989128296%_)))
                    (_%hd127990128300%_
                     (let () (declare (not safe)) (##car _%e127989128296%_))))
                (_%__kont128717128718%_
                 _%tl127991128303%_
                 _%hd127990128300%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont128719128720%_)))))))
                                  (_%recur127976%_
                                   _%hd127971%_
                                   _%tgt127576%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender127972%_
                                               (cons _%body127973%_
                                                     (cons _%E127974%_
                                                           '()))))))))
                             (_%generate-clauses127584%_
                              (lambda (_%clauses127707%_)
                                (let _%lp127710%_ ((_%rest127713%_
                                                    _%clauses127707%_)
                                                   (_%E127715%_
                                                    (gx#genident 'E))
                                                   (_%r127716%_ '()))
                                  (let* ((_%__stx128750128751%_ _%rest127713%_)
                                         (_%g127719127731%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx128750128751%_))))
                                    (let ((_%__kont128753128754%_
                                           (lambda (_%L127796%_ _%L127798%_)
                                             (let* ((_%__stx128730128731%_
                                                     _%L127798%_)
                                                    (_%g127810127821%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx128730128731%_))))
                                               (let ((_%__kont128733128734%_
                                                      (lambda (_%L127950%_)
                                                        (if (gx#stx-null?
                                                             _%L127796%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L127950%_)
                             (not (gx#stx-null? _%L127950%_)))
                        (cons (cons _%E127715%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L127950%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L127798%_))
                                          '()))
                              _%r127716%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx127424%_
                         _%L127798%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx127424%_
                     _%L127798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont128735128736%_
                                                      (lambda ()
                                                        (let* ((_%g127832127840%_
                                                                (lambda (_%g127833127836%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g127833127836%_)))
                       (_%g127831127929%_
                        (lambda (_%g127833127844%_)
                          ((lambda (_%L127847%_)
                             (let* ((_%g127863127871%_
                                     (lambda (_%g127864127867%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g127864127867%_)))
                                    (_%g127862127925%_
                                     (lambda (_%g127864127875%_)
                                       ((lambda (_%L127878%_)
                                          (let* ((_%g127891127899%_
                                                  (lambda (_%g127892127895%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g127892127895%_)))
                                                 (_%g127890127921%_
                                                  (lambda (_%g127892127903%_)
                                                    ((lambda (_%L127906%_)
                                                       (_%lp127710%_
                                                        _%L127796%_
                                                        _%L127847%_
                                                        (cons (cons _%E127715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L127906%_ '()))
                      _%r127716%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g127892127903%_))))
                                            (_%g127890127921%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L127878%_
                                                                '())))
                                              (gx#stx-source _%L127798%_)))))
                                        _%g127864127875%_))))
                               (_%g127862127925%_
                                (_%generate-clause127581%_
                                 _%L127798%_
                                 (cons _%L127847%_ '())))))
                           _%g127833127844%_))))
                  (_%g127831127929%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx128730128731%_)
                                                     (let ((_%e127813127940%_
                                                            (gx#syntax-e
                                                             _%__stx128730128731%_)))
                                                       (let ((_%tl127815127947%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e127813127940%_)))
                     (_%hd127814127944%_
                      (let () (declare (not safe)) (##car _%e127813127940%_))))
                 (if (gx#identifier? _%hd127814127944%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g128787_|
                          _%hd127814127944%_)
                         (_%__kont128733128734%_ _%tl127815127947%_)
                         (_%__kont128735128736%_))
                     (_%__kont128735128736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont128735128736%_))))))
                                          (_%__kont128755128756%_
                                           (lambda ()
                                             (let* ((_%g127742127750%_
                                                     (lambda (_%g127743127746%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g127743127746%_)))
                                                    (_%g127741127775%_
                                                     (lambda (_%g127743127754%_)
                                                       ((lambda (_%L127757%_)
                                                          (cons (cons _%E127715%_
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
                                 (cons _%L127757%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx127424%_))
                                    '()))
                        _%r127716%_))
                _%g127743127754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g127741127775%_
                                                _%tgt127576%_)))))
                                      (if (gx#stx-pair? _%__stx128750128751%_)
                                          (let ((_%e127723127786%_
                                                 (gx#syntax-e
                                                  _%__stx128750128751%_)))
                                            (let ((_%tl127725127793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127723127786%_)))
                                                  (_%hd127724127790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127723127786%_))))
                                              (_%__kont128753128754%_
                                               _%tl127725127793%_
                                               _%hd127724127790%_)))
                                          (_%__kont128755128756%_))))))))
                      (let* ((_%bind127586%_
                              (_%generate-clauses127584%_ _%clauses127579%_))
                             (_%g127589127606%_
                              (lambda (_%g127590127602%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g127590127602%_)))
                             (_%g127588127703%_
                              (lambda (_%g127590127610%_)
                                (if (gx#stx-pair/null? _%g127590127610%_)
                                    (let ((_g128788_
                                           (gx#syntax-split-splice
                                            _%g127590127610%_
                                            '0)))
                                      (begin
                                        (let ((_g128789_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g128788_)
                                                     (##values-length
                                                      _g128788_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g128789_ 2)))
                                              (error "Context expects 2 values"
                                                     _g128789_)))
                                        (let ((_%target127592127613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g128788_ 0)))
                                              (_%tl127594127616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g128788_ 1))))
                                          (if (gx#stx-null? _%tl127594127616%_)
                                              (letrec ((_%loop127595127619%_
                                                        (lambda (_%hd127593127623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try127599127626%_)
                  (if (gx#stx-pair? _%hd127593127623%_)
                      (let ((_%e127596127629%_
                             (gx#syntax-e _%hd127593127623%_)))
                        (let ((_%lp-hd127597127633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e127596127629%_)))
                              (_%lp-tl127598127636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e127596127629%_))))
                          (_%loop127595127619%_
                           _%lp-tl127598127636%_
                           (cons _%lp-hd127597127633%_
                                 _%bind-try127599127626%_))))
                      (let ((_%bind-try127600127639%_
                             (reverse _%bind-try127599127626%_)))
                        ((lambda (_%L127643%_)
                           (let* ((_%g127661127669%_
                                   (lambda (_%g127662127665%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g127662127665%_)))
                                  (_%g127660127699%_
                                   (lambda (_%g127662127673%_)
                                     ((lambda (_%L127676%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp128790
                                                           (lambda (_%g127690127693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g127691127696%_)
                     (cons _%g127690127693%_ _%g127691127696%_))))
              (declare (not safe))
              (__foldr1 __tmp128790 '() _%L127643%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L127676%_
                                                                '())
                                                          '()))))
                                      _%g127662127673%_))))
                             (_%g127660127699%_ (car (last _%bind127586%_)))))
                         _%bind-try127600127639%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop127595127619%_
                                                 _%target127592127613%_
                                                 '()))
                                              (_%g127589127606%_
                                               _%g127590127610%_)))))
                                    (_%g127589127606%_ _%g127590127610%_)))))
                        (_%g127588127703%_ _%bind127586%_))))))
          (let* ((_%g127430127449%_
                  (lambda (_%g127431127445%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g127431127445%_)))
                 (_%g127429127572%_
                  (lambda (_%g127431127453%_)
                    (if (gx#stx-pair? _%g127431127453%_)
                        (let ((_%e127435127456%_
                               (gx#syntax-e _%g127431127453%_)))
                          (let ((_%hd127436127460%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127435127456%_)))
                                (_%tl127437127463%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127435127456%_))))
                            (if (gx#stx-pair? _%tl127437127463%_)
                                (let ((_%e127438127466%_
                                       (gx#syntax-e _%tl127437127463%_)))
                                  (let ((_%hd127439127470%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127438127466%_)))
                                        (_%tl127440127473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127438127466%_))))
                                    (if (gx#stx-pair? _%tl127440127473%_)
                                        (let ((_%e127441127476%_
                                               (gx#syntax-e
                                                _%tl127440127473%_)))
                                          (let ((_%hd127442127480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e127441127476%_)))
                                                (_%tl127443127483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e127441127476%_))))
                                            ((lambda (_%L127486%_
                                                      _%L127488%_
                                                      _%L127489%_)
                                               (if (and (gx#identifier-list?
                                                         _%L127488%_)
                                                        (gx#stx-list?
                                                         _%L127486%_))
                                                   (let* ((_%g127507127515%_
                                                           (lambda (_%g127508127511%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g127508127511%_)))
                                                          (_%g127506127568%_
                                                           (lambda (_%g127508127519%_)
                                                             ((lambda (_%L127522%_)
                                                                (let* ((_%g127534127542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g127535127538%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g127535127538%_)))
                               (_%g127533127564%_
                                (lambda (_%g127535127546%_)
                                  ((lambda (_%L127549%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L127522%_
                                                             (cons _%L127489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L127549%_ '()))))
                                   _%g127535127546%_))))
                          (_%g127533127564%_
                           (_%generate127427%_
                            _%L127522%_
                            (gx#syntax->list _%L127488%_)
                            _%L127486%_))))
                      _%g127508127519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g127506127568%_
                                                      (gx#genident 'e)))
                                                   (_%g127430127449%_
                                                    _%g127431127453%_)))
                                             _%tl127443127483%_
                                             _%hd127442127480%_
                                             _%hd127439127470%_)))
                                        (_%g127430127449%_
                                         _%g127431127453%_))))
                                (_%g127430127449%_ _%g127431127453%_))))
                        (_%g127430127449%_ _%g127431127453%_)))))
            (_%g127429127572%_ _%stx127424%_)))))))
