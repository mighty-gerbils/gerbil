(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g116318_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116320_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116322_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116324_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116325_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116327_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116328_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116330_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116331_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116333_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116334_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116336_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj116314
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
          (##unchecked-structure-set! __obj116314 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 '#f '11 '#f '#f))
        (let ((__tmp116317 |gx[1]#_g116318_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 __tmp116317 '12 '#f '#f))
        (let ((__tmp116319 |gx[1]#_g116320_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 __tmp116319 '13 '#f '#f))
        (let ((__tmp116321 |gx[1]#_g116322_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 __tmp116321 '14 '#f '#f))
        (let ((__tmp116323
               (cons (cons 'e |gx[1]#_g116324_|)
                     (cons (cons 'source |gx[1]#_g116325_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 __tmp116323 '15 '#f '#f))
        (let ((__tmp116326
               (cons (cons 'e |gx[1]#_g116327_|)
                     (cons (cons 'source |gx[1]#_g116328_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 __tmp116326 '16 '#f '#f))
        (let ((__tmp116329
               (cons (cons 'e |gx[1]#_g116330_|)
                     (cons (cons 'source |gx[1]#_g116331_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 __tmp116329 '17 '#f '#f))
        (let ((__tmp116332
               (cons (cons 'e |gx[1]#_g116333_|)
                     (cons (cons 'source |gx[1]#_g116334_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 __tmp116332 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116314 '() '20 '#f '#f))
        __obj116314))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx114909%_)
        (let* ((_%g114913114927%_
                (lambda (_%g114914114923%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g114914114923%_)))
               (_%g114912114969%_
                (lambda (_%g114914114931%_)
                  (if (gx#stx-pair? _%g114914114931%_)
                      (let ((_%e114916114934%_
                             (gx#syntax-e _%g114914114931%_)))
                        (let ((_%hd114917114938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e114916114934%_)))
                              (_%tl114918114941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e114916114934%_))))
                          (if (gx#stx-pair? _%tl114918114941%_)
                              (let ((_%e114919114944%_
                                     (gx#syntax-e _%tl114918114941%_)))
                                (let ((_%hd114920114948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e114919114944%_)))
                                      (_%tl114921114951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e114919114944%_))))
                                  (if (gx#stx-null? _%tl114921114951%_)
                                      ((lambda (_%L114954%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L114954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L114954%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd114920114948%_)
                                      (_%g114913114927%_ _%g114914114931%_))))
                              (_%g114913114927%_ _%g114914114931%_))))
                      (_%g114913114927%_ _%g114914114931%_)))))
          (_%g114912114969%_ _%$stx114909%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx114973%_)
        (letrec ((_%generate114976%_
                  (lambda (_%tgt115125%_ _%kws115127%_ _%clauses115128%_)
                    (letrec ((_%generate-clause115130%_
                              (lambda (_%hd116065%_ _%E116067%_)
                                (let* ((_%__stx116217116218%_ _%hd116065%_)
                                       (_%g116071116098%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx116217116218%_))))
                                  (let ((_%__kont116220116221%_
                                         (lambda (_%L116194%_ _%L116196%_)
                                           (_%generate1115132%_
                                            _%hd116065%_
                                            _%L116196%_
                                            '#t
                                            _%L116194%_
                                            _%E116067%_)))
                                        (_%__kont116222116223%_
                                         (lambda (_%L116146%_
                                                  _%L116148%_
                                                  _%L116149%_)
                                           (_%generate1115132%_
                                            _%hd116065%_
                                            _%L116149%_
                                            _%L116148%_
                                            _%L116146%_
                                            _%E116067%_)))
                                        (_%__kont116224116225%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx114973%_
                                            _%hd116065%_))))
                                    (if (gx#stx-pair? _%__stx116217116218%_)
                                        (let ((_%e116075116174%_
                                               (gx#syntax-e
                                                _%__stx116217116218%_)))
                                          (let ((_%tl116077116181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116075116174%_)))
                                                (_%hd116076116178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116075116174%_))))
                                            (if (gx#stx-pair?
                                                 _%tl116077116181%_)
                                                (let ((_%e116078116184%_
                                                       (gx#syntax-e
                                                        _%tl116077116181%_)))
                                                  (let ((_%tl116080116191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e116078116184%_)))
                                                        (_%hd116079116188%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e116078116184%_))))
                                                    (if (gx#stx-null?
                                                         _%tl116080116191%_)
                                                        (_%__kont116220116221%_
                                                         _%hd116079116188%_
                                                         _%hd116076116178%_)
                                                        (if (gx#stx-pair?
                                                             _%tl116080116191%_)
                                                            (let ((_%e116090116136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl116080116191%_)))
                      (let ((_%tl116092116143%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116090116136%_)))
                            (_%hd116091116140%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116090116136%_))))
                        (if (gx#stx-null? _%tl116092116143%_)
                            (_%__kont116222116223%_
                             _%hd116091116140%_
                             _%hd116079116188%_
                             _%hd116076116178%_)
                            (_%__kont116224116225%_))))
                    (_%__kont116224116225%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont116224116225%_))))
                                        (_%__kont116224116225%_))))))
                             (_%generate1115132%_
                              (lambda (_%where115518%_
                                       _%hd115520%_
                                       _%fender115521%_
                                       _%body115522%_
                                       _%E115523%_)
                                (letrec ((_%recur115525%_
                                          (lambda (_%hd115528%_
                                                   _%tgt115530%_
                                                   _%K115531%_)
                                            (let* ((_%__stx116263116264%_
                                                    _%hd115528%_)
                                                   (_%g115534115546%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx116263116264%_))))
                                              (let ((_%__kont116266116267%_
                                                     (lambda (_%L115855%_
                                                              _%L115857%_)
                                                       (let* ((_%g115868115876%_
                                                               (lambda (_%g115869115872%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g115869115872%_)))
                      (_%g115867116057%_
                       (lambda (_%g115869115880%_)
                         ((lambda (_%L115883%_)
                            (let* ((_%g115895115903%_
                                    (lambda (_%g115896115899%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g115896115899%_)))
                                   (_%g115894116053%_
                                    (lambda (_%g115896115907%_)
                                      ((lambda (_%L115910%_)
                                         (let* ((_%g115923115931%_
                                                 (lambda (_%g115924115927%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g115924115927%_)))
                                                (_%g115922116049%_
                                                 (lambda (_%g115924115935%_)
                                                   ((lambda (_%L115938%_)
                                                      (let* ((_%g115951115959%_
                                                              (lambda (_%g115952115955%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g115952115955%_)))
                     (_%g115950116045%_
                      (lambda (_%g115952115963%_)
                        ((lambda (_%L115966%_)
                           (let* ((_%g115979115987%_
                                   (lambda (_%g115980115983%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115980115983%_)))
                                  (_%g115978116041%_
                                   (lambda (_%g115980115991%_)
                                     ((lambda (_%L115994%_)
                                        (let* ((_%g116007116015%_
                                                (lambda (_%g116008116011%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g116008116011%_)))
                                               (_%g116006116037%_
                                                (lambda (_%g116008116019%_)
                                                  ((lambda (_%L116022%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L115883%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L115910%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L115883%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L115938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L115910%_ '()))
                                       '()))
                           (cons (cons _%L115966%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L115910%_ '()))
                                             '()))
                                 '()))
                     (cons _%L115994%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L116022%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g116008116019%_))))
                                          (_%g116006116037%_ _%E115523%_)))
                                      _%g115980115991%_))))
                             (_%g115978116041%_
                              (_%recur115525%_
                               _%L115857%_
                               _%L115938%_
                               (_%recur115525%_
                                _%L115855%_
                                _%L115966%_
                                _%K115531%_)))))
                         _%g115952115963%_))))
                (_%g115950116045%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g115924115935%_))))
                                           (_%g115922116049%_
                                            (gx#genident 'hd))))
                                       _%g115896115907%_))))
                              (_%g115894116053%_ (gx#genident 'e))))
                          _%g115869115880%_))))
                 (_%g115867116057%_ _%tgt115530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont116268116269%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd115528%_)
                                                           (if (gx#underscore?
                                                                _%hd115528%_)
                                                               _%K115531%_
                                                               (if (let ((__tmp116335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g115560115562%_)
                                    (gx#bound-identifier=?
                                     _%g115560115562%_
                                     _%hd115528%_))))
                             (declare (not safe))
                             (__find __tmp116335 _%kws115127%_))
                           (let* ((_%g115568115583%_
                                   (lambda (_%g115569115579%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115569115579%_)))
                                  (_%g115567115636%_
                                   (lambda (_%g115569115587%_)
                                     (if (gx#stx-pair? _%g115569115587%_)
                                         (let ((_%e115572115590%_
                                                (gx#syntax-e
                                                 _%g115569115587%_)))
                                           (let ((_%hd115573115594%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e115572115590%_)))
                                                 (_%tl115574115597%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e115572115590%_))))
                                             (if (gx#stx-pair?
                                                  _%tl115574115597%_)
                                                 (let ((_%e115575115600%_
                                                        (gx#syntax-e
                                                         _%tl115574115597%_)))
                                                   (let ((_%hd115576115604%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e115575115600%_)))
                                                         (_%tl115577115607%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e115575115600%_))))
                                                     (if (gx#stx-null?
                                                          _%tl115577115607%_)
                                                         ((lambda (_%L115610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L115612%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L115612%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L115612%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L115610%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K115531%_ (cons _%E115523%_ '())))))
                  _%hd115576115604%_
                  _%hd115573115594%_)
                 (_%g115568115583%_ _%g115569115587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g115568115583%_
                                                  _%g115569115587%_))))
                                         (_%g115568115583%_
                                          _%g115569115587%_)))))
                             (_%g115567115636%_
                              (list _%tgt115530%_ _%hd115528%_)))
                           (let* ((_%g115642115657%_
                                   (lambda (_%g115643115653%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115643115653%_)))
                                  (_%g115641115702%_
                                   (lambda (_%g115643115661%_)
                                     (if (gx#stx-pair? _%g115643115661%_)
                                         (let ((_%e115646115664%_
                                                (gx#syntax-e
                                                 _%g115643115661%_)))
                                           (let ((_%hd115647115668%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e115646115664%_)))
                                                 (_%tl115648115671%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e115646115664%_))))
                                             (if (gx#stx-pair?
                                                  _%tl115648115671%_)
                                                 (let ((_%e115649115674%_
                                                        (gx#syntax-e
                                                         _%tl115648115671%_)))
                                                   (let ((_%hd115650115678%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e115649115674%_)))
                                                         (_%tl115651115681%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e115649115674%_))))
                                                     (if (gx#stx-null?
                                                          _%tl115651115681%_)
                                                         ((lambda (_%L115684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L115686%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L115684%_ (cons _%L115686%_ '()))
                                      '())
                                (cons _%K115531%_ '()))))
                  _%hd115650115678%_
                  _%hd115647115668%_)
                 (_%g115642115657%_ _%g115643115661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g115642115657%_
                                                  _%g115643115661%_))))
                                         (_%g115642115657%_
                                          _%g115643115661%_)))))
                             (_%g115641115702%_
                              (list _%tgt115530%_ _%hd115528%_)))))
                   (if (gx#stx-null? _%hd115528%_)
                       (let* ((_%g115708115716%_
                               (lambda (_%g115709115712%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g115709115712%_)))
                              (_%g115707115735%_
                               (lambda (_%g115709115720%_)
                                 ((lambda (_%L115723%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L115723%_ '()))
                                                (cons _%K115531%_
                                                      (cons _%E115523%_
                                                            '())))))
                                  _%g115709115720%_))))
                         (_%g115707115735%_ _%tgt115530%_))
                       (if (gx#stx-datum? _%hd115528%_)
                           (let* ((_%g115741115760%_
                                   (lambda (_%g115742115756%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115742115756%_)))
                                  (_%g115740115819%_
                                   (lambda (_%g115742115764%_)
                                     (if (gx#stx-pair? _%g115742115764%_)
                                         (let ((_%e115746115767%_
                                                (gx#syntax-e
                                                 _%g115742115764%_)))
                                           (let ((_%hd115747115771%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e115746115767%_)))
                                                 (_%tl115748115774%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e115746115767%_))))
                                             (if (gx#stx-pair?
                                                  _%tl115748115774%_)
                                                 (let ((_%e115749115777%_
                                                        (gx#syntax-e
                                                         _%tl115748115774%_)))
                                                   (let ((_%hd115750115781%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e115749115777%_)))
                                                         (_%tl115751115784%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e115749115777%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl115751115784%_)
                                                         (let ((_%e115752115787%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl115751115784%_)))
                   (let ((_%hd115753115791%_
                          (let ()
                            (declare (not safe))
                            (##car _%e115752115787%_)))
                         (_%tl115754115794%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e115752115787%_))))
                     (if (gx#stx-null? _%tl115754115794%_)
                         ((lambda (_%L115797%_ _%L115799%_ _%L115800%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L115797%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L115800%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L115799%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K115531%_
                                              (cons _%E115523%_ '())))))
                          _%hd115753115791%_
                          _%hd115750115781%_
                          _%hd115747115771%_)
                         (_%g115741115760%_ _%g115742115764%_))))
                 (_%g115741115760%_ _%g115742115764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g115741115760%_
                                                  _%g115742115764%_))))
                                         (_%g115741115760%_
                                          _%g115742115764%_)))))
                             (_%g115740115819%_
                              (list _%tgt115530%_
                                    _%hd115528%_
                                    (let ((_%e115823%_
                                           (gx#stx-e _%hd115528%_)))
                                      (if (or (keyword? _%e115823%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e115823%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e115823%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx114973%_
                            _%where115518%_
                            _%hd115528%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx116263116264%_)
                                                    (let ((_%e115538115845%_
                                                           (gx#syntax-e
                                                            _%__stx116263116264%_)))
                                                      (let ((_%tl115540115852%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e115538115845%_)))
                    (_%hd115539115849%_
                     (let () (declare (not safe)) (##car _%e115538115845%_))))
                (_%__kont116266116267%_
                 _%tl115540115852%_
                 _%hd115539115849%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont116268116269%_)))))))
                                  (_%recur115525%_
                                   _%hd115520%_
                                   _%tgt115125%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender115521%_
                                               (cons _%body115522%_
                                                     (cons _%E115523%_
                                                           '()))))))))
                             (_%generate-clauses115133%_
                              (lambda (_%clauses115256%_)
                                (let _%lp115259%_ ((_%rest115262%_
                                                    _%clauses115256%_)
                                                   (_%E115264%_
                                                    (gx#genident 'E))
                                                   (_%r115265%_ '()))
                                  (let* ((_%__stx116299116300%_ _%rest115262%_)
                                         (_%g115268115280%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx116299116300%_))))
                                    (let ((_%__kont116302116303%_
                                           (lambda (_%L115345%_ _%L115347%_)
                                             (let* ((_%__stx116279116280%_
                                                     _%L115347%_)
                                                    (_%g115359115370%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx116279116280%_))))
                                               (let ((_%__kont116282116283%_
                                                      (lambda (_%L115499%_)
                                                        (if (gx#stx-null?
                                                             _%L115345%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L115499%_)
                             (not (gx#stx-null? _%L115499%_)))
                        (cons (cons _%E115264%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L115499%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L115347%_))
                                          '()))
                              _%r115265%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx114973%_
                         _%L115347%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx114973%_
                     _%L115347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont116284116285%_
                                                      (lambda ()
                                                        (let* ((_%g115381115389%_
                                                                (lambda (_%g115382115385%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g115382115385%_)))
                       (_%g115380115478%_
                        (lambda (_%g115382115393%_)
                          ((lambda (_%L115396%_)
                             (let* ((_%g115412115420%_
                                     (lambda (_%g115413115416%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g115413115416%_)))
                                    (_%g115411115474%_
                                     (lambda (_%g115413115424%_)
                                       ((lambda (_%L115427%_)
                                          (let* ((_%g115440115448%_
                                                  (lambda (_%g115441115444%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g115441115444%_)))
                                                 (_%g115439115470%_
                                                  (lambda (_%g115441115452%_)
                                                    ((lambda (_%L115455%_)
                                                       (_%lp115259%_
                                                        _%L115345%_
                                                        _%L115396%_
                                                        (cons (cons _%E115264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L115455%_ '()))
                      _%r115265%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g115441115452%_))))
                                            (_%g115439115470%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L115427%_
                                                                '())))
                                              (gx#stx-source _%L115347%_)))))
                                        _%g115413115424%_))))
                               (_%g115411115474%_
                                (_%generate-clause115130%_
                                 _%L115347%_
                                 (cons _%L115396%_ '())))))
                           _%g115382115393%_))))
                  (_%g115380115478%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx116279116280%_)
                                                     (let ((_%e115362115489%_
                                                            (gx#syntax-e
                                                             _%__stx116279116280%_)))
                                                       (let ((_%tl115364115496%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e115362115489%_)))
                     (_%hd115363115493%_
                      (let () (declare (not safe)) (##car _%e115362115489%_))))
                 (if (gx#identifier? _%hd115363115493%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g116336_|
                          _%hd115363115493%_)
                         (_%__kont116282116283%_ _%tl115364115496%_)
                         (_%__kont116284116285%_))
                     (_%__kont116284116285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont116284116285%_))))))
                                          (_%__kont116304116305%_
                                           (lambda ()
                                             (let* ((_%g115291115299%_
                                                     (lambda (_%g115292115295%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g115292115295%_)))
                                                    (_%g115290115324%_
                                                     (lambda (_%g115292115303%_)
                                                       ((lambda (_%L115306%_)
                                                          (cons (cons _%E115264%_
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
                                 (cons _%L115306%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx114973%_))
                                    '()))
                        _%r115265%_))
                _%g115292115303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g115290115324%_
                                                _%tgt115125%_)))))
                                      (if (gx#stx-pair? _%__stx116299116300%_)
                                          (let ((_%e115272115335%_
                                                 (gx#syntax-e
                                                  _%__stx116299116300%_)))
                                            (let ((_%tl115274115342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e115272115335%_)))
                                                  (_%hd115273115339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e115272115335%_))))
                                              (_%__kont116302116303%_
                                               _%tl115274115342%_
                                               _%hd115273115339%_)))
                                          (_%__kont116304116305%_))))))))
                      (let* ((_%bind115135%_
                              (_%generate-clauses115133%_ _%clauses115128%_))
                             (_%g115138115155%_
                              (lambda (_%g115139115151%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g115139115151%_)))
                             (_%g115137115252%_
                              (lambda (_%g115139115159%_)
                                (if (gx#stx-pair/null? _%g115139115159%_)
                                    (let ((_g116337_
                                           (gx#syntax-split-splice
                                            _%g115139115159%_
                                            '0)))
                                      (begin
                                        (let ((_g116338_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g116337_)
                                                     (##vector-length
                                                      _g116337_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g116338_ 2)))
                                              (error "Context expects 2 values"
                                                     _g116338_)))
                                        (let ((_%target115141115162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g116337_ 0)))
                                              (_%tl115143115165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g116337_ 1))))
                                          (if (gx#stx-null? _%tl115143115165%_)
                                              (letrec ((_%loop115144115168%_
                                                        (lambda (_%hd115142115172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try115148115175%_)
                  (if (gx#stx-pair? _%hd115142115172%_)
                      (let ((_%e115145115178%_
                             (gx#syntax-e _%hd115142115172%_)))
                        (let ((_%lp-hd115146115182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115145115178%_)))
                              (_%lp-tl115147115185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115145115178%_))))
                          (_%loop115144115168%_
                           _%lp-tl115147115185%_
                           (cons _%lp-hd115146115182%_
                                 _%bind-try115148115175%_))))
                      (let ((_%bind-try115149115188%_
                             (reverse _%bind-try115148115175%_)))
                        ((lambda (_%L115192%_)
                           (let* ((_%g115210115218%_
                                   (lambda (_%g115211115214%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115211115214%_)))
                                  (_%g115209115248%_
                                   (lambda (_%g115211115222%_)
                                     ((lambda (_%L115225%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp116339
                                                           (lambda (_%g115239115242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g115240115245%_)
                     (cons _%g115239115242%_ _%g115240115245%_))))
              (declare (not safe))
              (__foldr1 __tmp116339 '() _%L115192%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L115225%_
                                                                '())
                                                          '()))))
                                      _%g115211115222%_))))
                             (_%g115209115248%_ (car (last _%bind115135%_)))))
                         _%bind-try115149115188%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop115144115168%_
                                                 _%target115141115162%_
                                                 '()))
                                              (_%g115138115155%_
                                               _%g115139115159%_)))))
                                    (_%g115138115155%_ _%g115139115159%_)))))
                        (_%g115137115252%_ _%bind115135%_))))))
          (let* ((_%g114979114998%_
                  (lambda (_%g114980114994%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g114980114994%_)))
                 (_%g114978115121%_
                  (lambda (_%g114980115002%_)
                    (if (gx#stx-pair? _%g114980115002%_)
                        (let ((_%e114984115005%_
                               (gx#syntax-e _%g114980115002%_)))
                          (let ((_%hd114985115009%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e114984115005%_)))
                                (_%tl114986115012%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e114984115005%_))))
                            (if (gx#stx-pair? _%tl114986115012%_)
                                (let ((_%e114987115015%_
                                       (gx#syntax-e _%tl114986115012%_)))
                                  (let ((_%hd114988115019%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e114987115015%_)))
                                        (_%tl114989115022%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e114987115015%_))))
                                    (if (gx#stx-pair? _%tl114989115022%_)
                                        (let ((_%e114990115025%_
                                               (gx#syntax-e
                                                _%tl114989115022%_)))
                                          (let ((_%hd114991115029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e114990115025%_)))
                                                (_%tl114992115032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e114990115025%_))))
                                            ((lambda (_%L115035%_
                                                      _%L115037%_
                                                      _%L115038%_)
                                               (if (and (gx#identifier-list?
                                                         _%L115037%_)
                                                        (gx#stx-list?
                                                         _%L115035%_))
                                                   (let* ((_%g115056115064%_
                                                           (lambda (_%g115057115060%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g115057115060%_)))
                                                          (_%g115055115117%_
                                                           (lambda (_%g115057115068%_)
                                                             ((lambda (_%L115071%_)
                                                                (let* ((_%g115083115091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g115084115087%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g115084115087%_)))
                               (_%g115082115113%_
                                (lambda (_%g115084115095%_)
                                  ((lambda (_%L115098%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L115071%_
                                                             (cons _%L115038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L115098%_ '()))))
                                   _%g115084115095%_))))
                          (_%g115082115113%_
                           (_%generate114976%_
                            _%L115071%_
                            (gx#syntax->list _%L115037%_)
                            _%L115035%_))))
                      _%g115057115068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g115055115117%_
                                                      (gx#genident 'e)))
                                                   (_%g114979114998%_
                                                    _%g114980115002%_)))
                                             _%tl114992115032%_
                                             _%hd114991115029%_
                                             _%hd114988115019%_)))
                                        (_%g114979114998%_
                                         _%g114980115002%_))))
                                (_%g114979114998%_ _%g114980115002%_))))
                        (_%g114979114998%_ _%g114980115002%_)))))
            (_%g114978115121%_ _%stx114973%_)))))))
