(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g209065_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209072_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209074_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209076_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209078_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209080_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209092_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209094_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209096_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209098_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g209100_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx202483%_)
        (let* ((_%g202487202505%_
                (lambda (_%g202488202501%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202488202501%_))))
               (_%g202486202560%_
                (lambda (_%g202488202509%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202488202509%_))
                      (let ((_%e202491202512%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202488202509%_))))
                        (let ((_%hd202492202516%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202491202512%_)))
                              (_%tl202493202519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202491202512%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202493202519%_))
                              (let ((_%e202494202522%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202493202519%_))))
                                (let ((_%hd202495202526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202494202522%_)))
                                      (_%tl202496202529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202494202522%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202496202529%_))
                                      (let ((_%e202497202532%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202496202529%_))))
                                        (let ((_%hd202498202536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202497202532%_)))
                                              (_%tl202499202539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202497202532%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202499202539%_))
                                              ((lambda (_%L202542%_
                                                        _%L202544%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202544%_))
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
                               (cons _%L202544%_ '()))
                         (cons _%L202542%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202487202505%_
                                                      _%g202488202509%_)))
                                               _%hd202498202536%_
                                               _%hd202495202526%_)
                                              (_%g202487202505%_
                                               _%g202488202509%_))))
                                      (_%g202487202505%_ _%g202488202509%_))))
                              (_%g202487202505%_ _%g202488202509%_))))
                      (_%g202487202505%_ _%g202488202509%_)))))
          (_%g202486202560%_ _%$stx202483%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx202564%_)
        (let* ((_%g202568202586%_
                (lambda (_%g202569202582%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202569202582%_))))
               (_%g202567202641%_
                (lambda (_%g202569202590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202569202590%_))
                      (let ((_%e202572202593%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202569202590%_))))
                        (let ((_%hd202573202597%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202572202593%_)))
                              (_%tl202574202600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202572202593%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202574202600%_))
                              (let ((_%e202575202603%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202574202600%_))))
                                (let ((_%hd202576202607%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202575202603%_)))
                                      (_%tl202577202610%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202575202603%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202577202610%_))
                                      (let ((_%e202578202613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202577202610%_))))
                                        (let ((_%hd202579202617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202578202613%_)))
                                              (_%tl202580202620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202578202613%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202580202620%_))
                                              ((lambda (_%L202623%_
                                                        _%L202625%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L202625%_))
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
                               (cons _%L202625%_ '()))
                         (cons _%L202623%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202568202586%_
                                                      _%g202569202590%_)))
                                               _%hd202579202617%_
                                               _%hd202576202607%_)
                                              (_%g202568202586%_
                                               _%g202569202590%_))))
                                      (_%g202568202586%_ _%g202569202590%_))))
                              (_%g202568202586%_ _%g202569202590%_))))
                      (_%g202568202586%_ _%g202569202590%_)))))
          (_%g202567202641%_ _%$stx202564%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx202645%_)
        (let* ((_%g202649202678%_
                (lambda (_%g202650202674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202650202674%_))))
               (_%g202648202778%_
                (lambda (_%g202650202682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202650202682%_))
                      (let ((_%e202653202685%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202650202682%_))))
                        (let ((_%hd202654202689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202653202685%_)))
                              (_%tl202655202692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202653202685%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202655202692%_))
                              (let ((_g209043_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202655202692%_
                                        '0))))
                                (begin
                                  (let ((_g209044_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209043_)
                                               (##vector-length _g209043_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209044_ 2)))
                                        (error "Context expects 2 values"
                                               _g209044_)))
                                  (let ((_%target202656202695%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209043_ 0)))
                                        (_%tl202658202698%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209043_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202658202698%_))
                                        (letrec ((_%loop202659202701%_
                                                  (lambda (_%hd202657202705%_
                                                           _%type202663202708%_
                                                           _%symbol202664202710%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202657202705%_))
                                                        (let ((_%e202660202713%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202657202705%_))))
                  (let ((_%lp-hd202661202717%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202660202713%_)))
                        (_%lp-tl202662202720%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202660202713%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202661202717%_))
                        (let ((_%e202667202723%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd202661202717%_))))
                          (let ((_%hd202668202727%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202667202723%_)))
                                (_%tl202669202730%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202667202723%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202669202730%_))
                                (let ((_%e202670202733%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202669202730%_))))
                                  (let ((_%hd202671202737%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202670202733%_)))
                                        (_%tl202672202740%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202670202733%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202672202740%_))
                                        (_%loop202659202701%_
                                         _%lp-tl202662202720%_
                                         (cons _%hd202671202737%_
                                               _%type202663202708%_)
                                         (cons _%hd202668202727%_
                                               _%symbol202664202710%_))
                                        (_%g202649202678%_
                                         _%g202650202682%_))))
                                (_%g202649202678%_ _%g202650202682%_))))
                        (_%g202649202678%_ _%g202650202682%_))))
                (let ((_%type202665202743%_ (reverse _%type202663202708%_))
                      (_%symbol202666202746%_
                       (reverse _%symbol202664202710%_)))
                  ((lambda (_%L202749%_ _%L202751%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L202749%_
                                _%L202751%_))
                             (let ((__tmp209045
                                    (lambda (_%g202766202770%_
                                             _%g202767202773%_
                                             _%g202768202775%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g202767202773%_
                                                        (cons _%g202766202770%_
                                                              '())))
                                            _%g202768202775%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp209045
                                '()
                                _%L202749%_
                                _%L202751%_)))))
                   _%type202665202743%_
                   _%symbol202666202746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202659202701%_
                                           _%target202656202695%_
                                           '()
                                           '()))
                                        (_%g202649202678%_
                                         _%g202650202682%_)))))
                              (_%g202649202678%_ _%g202650202682%_))))
                      (_%g202649202678%_ _%g202650202682%_)))))
          (_%g202648202778%_ _%$stx202645%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx202783%_)
        (let* ((_%__stx208354208355%_ _%$stx202783%_)
               (_%g202788202830%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208354208355%_)))))
          (let ((_%__kont208357208358%_
                 (lambda (_%L202958%_ _%L202960%_ _%L202961%_ _%L202962%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202962%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202961%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L202960%_ '()))
                                           (cons _%L202958%_ '())))))))
                (_%__kont208359208360%_
                 (lambda (_%L202877%_ _%L202879%_ _%L202880%_ _%L202881%_)
                   (cons _%L202881%_
                         (cons _%L202880%_
                               (cons _%L202879%_
                                     (cons _%L202877%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match208393208394%_
                   (lambda (_%e202794202908%_
                            _%hd202795202912%_
                            _%tl202796202915%_
                            _%e202797202918%_
                            _%hd202798202922%_
                            _%tl202799202925%_
                            _%e202800202928%_
                            _%hd202801202932%_
                            _%tl202802202935%_
                            _%e202803202938%_
                            _%hd202804202942%_
                            _%tl202805202945%_
                            _%e202806202948%_
                            _%hd202807202952%_
                            _%tl202808202955%_)
                     (let ((_%L202958%_ _%hd202807202952%_)
                           (_%L202960%_ _%hd202804202942%_)
                           (_%L202961%_ _%hd202801202932%_)
                           (_%L202962%_ _%hd202798202922%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L202962%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L202961%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L202960%_)))
                           (_%__kont208357208358%_
                            _%L202958%_
                            _%L202960%_
                            _%L202961%_
                            _%L202962%_)
                           (let ()
                             (declare (not safe))
                             (_%g202788202830%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208354208355%_))
                  (let ((_%e202794202908%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208354208355%_))))
                    (let ((_%tl202796202915%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202794202908%_)))
                          (_%hd202795202912%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202794202908%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202796202915%_))
                          (let ((_%e202797202918%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl202796202915%_))))
                            (let ((_%tl202799202925%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202797202918%_)))
                                  (_%hd202798202922%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202797202918%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202799202925%_))
                                  (let ((_%e202800202928%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl202799202925%_))))
                                    (let ((_%tl202802202935%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202800202928%_)))
                                          (_%hd202801202932%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202800202928%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202802202935%_))
                                          (let ((_%e202803202938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl202802202935%_))))
                                            (let ((_%tl202805202945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202803202938%_)))
                                                  (_%hd202804202942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202803202938%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202805202945%_))
                                                  (let ((_%e202806202948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl202805202945%_))))
                                                    (let ((_%tl202808202955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202806202948%_)))
                                                          (_%hd202807202952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202806202948%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202808202955%_))
                                                          (_%__match208393208394%_
                                                           _%e202794202908%_
                                                           _%hd202795202912%_
                                                           _%tl202796202915%_
                                                           _%e202797202918%_
                                                           _%hd202798202922%_
                                                           _%tl202799202925%_
                                                           _%e202800202928%_
                                                           _%hd202801202932%_
                                                           _%tl202802202935%_
                                                           _%e202803202938%_
                                                           _%hd202804202942%_
                                                           _%tl202805202945%_
                                                           _%e202806202948%_
                                                           _%hd202807202952%_
                                                           _%tl202808202955%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g202788202830%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202805202945%_))
                                                      (_%__kont208359208360%_
                                                       _%hd202804202942%_
                                                       _%hd202801202932%_
                                                       _%hd202798202922%_
                                                       _%hd202795202912%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g202788202830%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202788202830%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202788202830%_)))))
                          (let () (declare (not safe)) (_%g202788202830%_)))))
                  (let () (declare (not safe)) (_%g202788202830%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx202987%_)
        (let* ((_%g202991203026%_
                (lambda (_%g202992203022%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202992203022%_))))
               (_%g202990203145%_
                (lambda (_%g202992203030%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202992203030%_))
                      (let ((_%e202996203033%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202992203030%_))))
                        (let ((_%hd202997203037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202996203033%_)))
                              (_%tl202998203040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202996203033%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202998203040%_))
                              (let ((_g209046_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202998203040%_
                                        '0))))
                                (begin
                                  (let ((_g209047_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209046_)
                                               (##vector-length _g209046_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209047_ 2)))
                                        (error "Context expects 2 values"
                                               _g209047_)))
                                  (let ((_%target202999203043%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209046_ 0)))
                                        (_%tl203001203046%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209046_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203001203046%_))
                                        (letrec ((_%loop203002203049%_
                                                  (lambda (_%hd203000203053%_
                                                           _%symbol203006203056%_
                                                           _%method203007203058%_
                                                           _%type-t203008203060%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203000203053%_))
                                                        (let ((_%e203003203063%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203000203053%_))))
                  (let ((_%lp-hd203004203067%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203003203063%_)))
                        (_%lp-tl203005203070%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203003203063%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203004203067%_))
                        (let ((_%e203012203073%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203004203067%_))))
                          (let ((_%hd203013203077%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203012203073%_)))
                                (_%tl203014203080%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203012203073%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203014203080%_))
                                (let ((_%e203015203083%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203014203080%_))))
                                  (let ((_%hd203016203087%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203015203083%_)))
                                        (_%tl203017203090%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203015203083%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203017203090%_))
                                        (let ((_%e203018203093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl203017203090%_))))
                                          (let ((_%hd203019203097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203018203093%_)))
                                                (_%tl203020203100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203018203093%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203020203100%_))
                                                (_%loop203002203049%_
                                                 _%lp-tl203005203070%_
                                                 (cons _%hd203019203097%_
                                                       _%symbol203006203056%_)
                                                 (cons _%hd203016203087%_
                                                       _%method203007203058%_)
                                                 (cons _%hd203013203077%_
                                                       _%type-t203008203060%_))
                                                (_%g202991203026%_
                                                 _%g202992203030%_))))
                                        (_%g202991203026%_
                                         _%g202992203030%_))))
                                (_%g202991203026%_ _%g202992203030%_))))
                        (_%g202991203026%_ _%g202992203030%_))))
                (let ((_%symbol203009203103%_ (reverse _%symbol203006203056%_))
                      (_%method203010203106%_ (reverse _%method203007203058%_))
                      (_%type-t203011203108%_
                       (reverse _%type-t203008203060%_)))
                  ((lambda (_%L203111%_ _%L203113%_ _%L203114%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203111%_
                                _%L203113%_
                                _%L203114%_))
                             (let ((__tmp209048
                                    (lambda (_%g203130203135%_
                                             _%g203131203138%_
                                             _%g203132203140%_
                                             _%g203133203142%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g203132203140%_
                                                        (cons _%g203131203138%_
                                                              (cons _%g203130203135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g203133203142%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp209048
                                '()
                                _%L203111%_
                                _%L203113%_
                                _%L203114%_)))))
                   _%symbol203009203103%_
                   _%method203010203106%_
                   _%type-t203011203108%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203002203049%_
                                           _%target202999203043%_
                                           '()
                                           '()
                                           '()))
                                        (_%g202991203026%_
                                         _%g202992203030%_)))))
                              (_%g202991203026%_ _%g202992203030%_))))
                      (_%g202991203026%_ _%g202992203030%_)))))
          (_%g202990203145%_ _%$stx202987%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx203150%_)
        (let* ((_%g203154203187%_
                (lambda (_%g203155203183%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203155203183%_))))
               (_%g203153203301%_
                (lambda (_%g203155203191%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203155203191%_))
                      (let ((_%e203159203194%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203155203191%_))))
                        (let ((_%hd203160203198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203159203194%_)))
                              (_%tl203161203201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203159203194%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203161203201%_))
                              (let ((_%e203162203204%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203161203201%_))))
                                (let ((_%hd203163203208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203162203204%_)))
                                      (_%tl203164203211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203162203204%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203164203211%_))
                                      (let ((_g209049_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203164203211%_
                                                '0))))
                                        (begin
                                          (let ((_g209050_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209049_)
                                                       (##vector-length
                                                        _g209049_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209050_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209050_)))
                                          (let ((_%target203165203214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g209049_ 0)))
                                                (_%tl203167203217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g209049_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203167203217%_))
                                                (letrec ((_%loop203168203220%_
                                                          (lambda (_%hd203166203224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol203172203227%_
                           _%method203173203229%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203166203224%_))
                        (let ((_%e203169203232%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd203166203224%_))))
                          (let ((_%lp-hd203170203236%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203169203232%_)))
                                (_%lp-tl203171203239%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203169203232%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd203170203236%_))
                                (let ((_%e203176203242%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd203170203236%_))))
                                  (let ((_%hd203177203246%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203176203242%_)))
                                        (_%tl203178203249%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203176203242%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203178203249%_))
                                        (let ((_%e203179203252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl203178203249%_))))
                                          (let ((_%hd203180203256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203179203252%_)))
                                                (_%tl203181203259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203179203252%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203181203259%_))
                                                (_%loop203168203220%_
                                                 _%lp-tl203171203239%_
                                                 (cons _%hd203180203256%_
                                                       _%symbol203172203227%_)
                                                 (cons _%hd203177203246%_
                                                       _%method203173203229%_))
                                                (_%g203154203187%_
                                                 _%g203155203191%_))))
                                        (_%g203154203187%_
                                         _%g203155203191%_))))
                                (_%g203154203187%_ _%g203155203191%_))))
                        (let ((_%symbol203174203262%_
                               (reverse _%symbol203172203227%_))
                              (_%method203175203265%_
                               (reverse _%method203173203229%_)))
                          ((lambda (_%L203268%_ _%L203270%_ _%L203271%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L203268%_
                                        _%L203270%_))
                                     (let ((__tmp209051
                                            (lambda (_%g203289203293%_
                                                     _%g203290203296%_
                                                     _%g203291203298%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L203271%_
                                                                (cons _%g203290203296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g203289203293%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g203291203298%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp209051
                                        '()
                                        _%L203268%_
                                        _%L203270%_)))))
                           _%symbol203174203262%_
                           _%method203175203265%_
                           _%hd203163203208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop203168203220%_
                                                   _%target203165203214%_
                                                   '()
                                                   '()))
                                                (_%g203154203187%_
                                                 _%g203155203191%_)))))
                                      (_%g203154203187%_ _%g203155203191%_))))
                              (_%g203154203187%_ _%g203155203191%_))))
                      (_%g203154203187%_ _%g203155203191%_)))))
          (_%g203153203301%_ _%$stx203150%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx203306%_)
        (let* ((_%g203310203324%_
                (lambda (_%g203311203320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203311203320%_))))
               (_%g203309203365%_
                (lambda (_%g203311203328%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203311203328%_))
                      (let ((_%e203313203331%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203311203328%_))))
                        (let ((_%hd203314203335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203313203331%_)))
                              (_%tl203315203338%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203313203331%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203315203338%_))
                              (let ((_%e203316203341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203315203338%_))))
                                (let ((_%hd203317203345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203316203341%_)))
                                      (_%tl203318203348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203316203341%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203318203348%_))
                                      ((lambda (_%L203351%_)
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
                                                           (cons _%L203351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203317203345%_)
                                      (_%g203310203324%_ _%g203311203328%_))))
                              (_%g203310203324%_ _%g203311203328%_))))
                      (_%g203310203324%_ _%g203311203328%_)))))
          (_%g203309203365%_ _%$stx203306%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx203369%_)
        (let* ((_%g203373203427%_
                (lambda (_%g203374203423%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203374203423%_))))
               (_%g203372203608%_
                (lambda (_%g203374203431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203374203431%_))
                      (let ((_%e203386203434%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203374203431%_))))
                        (let ((_%hd203387203438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203386203434%_)))
                              (_%tl203388203441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203386203434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203388203441%_))
                              (let ((_%e203389203444%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203388203441%_))))
                                (let ((_%hd203390203448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203389203444%_)))
                                      (_%tl203391203451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203389203444%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203391203451%_))
                                      (let ((_%e203392203454%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203391203451%_))))
                                        (let ((_%hd203393203458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203392203454%_)))
                                              (_%tl203394203461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203392203454%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203394203461%_))
                                              (let ((_%e203395203464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203394203461%_))))
                                                (let ((_%hd203396203468%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203395203464%_)))
                                                      (_%tl203397203471%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203395203464%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203397203471%_))
                                                      (let ((_%e203398203474%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203397203471%_))))
                (let ((_%hd203399203478%_
                       (let () (declare (not safe)) (##car _%e203398203474%_)))
                      (_%tl203400203481%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e203398203474%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203400203481%_))
                      (let ((_%e203401203484%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203400203481%_))))
                        (let ((_%hd203402203488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203401203484%_)))
                              (_%tl203403203491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203401203484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203403203491%_))
                              (let ((_%e203404203494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203403203491%_))))
                                (let ((_%hd203405203498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203404203494%_)))
                                      (_%tl203406203501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203404203494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203406203501%_))
                                      (let ((_%e203407203504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203406203501%_))))
                                        (let ((_%hd203408203508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203407203504%_)))
                                              (_%tl203409203511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203407203504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203409203511%_))
                                              (let ((_%e203410203514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203409203511%_))))
                                                (let ((_%hd203411203518%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203410203514%_)))
                                                      (_%tl203412203521%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203410203514%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203412203521%_))
                                                      (let ((_%e203413203524%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203412203521%_))))
                (let ((_%hd203414203528%_
                       (let () (declare (not safe)) (##car _%e203413203524%_)))
                      (_%tl203415203531%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e203413203524%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203415203531%_))
                      (let ((_%e203416203534%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203415203531%_))))
                        (let ((_%hd203417203538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203416203534%_)))
                              (_%tl203418203541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203416203534%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203418203541%_))
                              (let ((_%e203419203544%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203418203541%_))))
                                (let ((_%hd203420203548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203419203544%_)))
                                      (_%tl203421203551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203419203544%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203421203551%_))
                                      ((lambda (_%L203554%_
                                                _%L203556%_
                                                _%L203557%_
                                                _%L203558%_
                                                _%L203559%_
                                                _%L203560%_
                                                _%L203561%_
                                                _%L203562%_
                                                _%L203563%_
                                                _%L203564%_
                                                _%L203565%_)
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
                                                           (cons _%L203565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L203564%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L203563%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203562%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203561%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L203560%_ '()))
                                           (cons _%L203559%_
                                                 (cons _%L203558%_
                                                       (cons _%L203557%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203556%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L203554%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd203420203548%_
                                       _%hd203417203538%_
                                       _%hd203414203528%_
                                       _%hd203411203518%_
                                       _%hd203408203508%_
                                       _%hd203405203498%_
                                       _%hd203402203488%_
                                       _%hd203399203478%_
                                       _%hd203396203468%_
                                       _%hd203393203458%_
                                       _%hd203390203448%_)
                                      (_%g203373203427%_ _%g203374203431%_))))
                              (_%g203373203427%_ _%g203374203431%_))))
                      (_%g203373203427%_ _%g203374203431%_))))
              (_%g203373203427%_ _%g203374203431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203373203427%_
                                               _%g203374203431%_))))
                                      (_%g203373203427%_ _%g203374203431%_))))
                              (_%g203373203427%_ _%g203374203431%_))))
                      (_%g203373203427%_ _%g203374203431%_))))
              (_%g203373203427%_ _%g203374203431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203373203427%_
                                               _%g203374203431%_))))
                                      (_%g203373203427%_ _%g203374203431%_))))
                              (_%g203373203427%_ _%g203374203431%_))))
                      (_%g203373203427%_ _%g203374203431%_)))))
          (_%g203372203608%_ _%$stx203369%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx203612%_)
        (let* ((_%g203616203630%_
                (lambda (_%g203617203626%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203617203626%_))))
               (_%g203615203671%_
                (lambda (_%g203617203634%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203617203634%_))
                      (let ((_%e203619203637%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203617203634%_))))
                        (let ((_%hd203620203641%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203619203637%_)))
                              (_%tl203621203644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203619203637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203621203644%_))
                              (let ((_%e203622203647%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203621203644%_))))
                                (let ((_%hd203623203651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203622203647%_)))
                                      (_%tl203624203654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203622203647%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203624203654%_))
                                      ((lambda (_%L203657%_)
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
                                                           (cons _%L203657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203623203651%_)
                                      (_%g203616203630%_ _%g203617203634%_))))
                              (_%g203616203630%_ _%g203617203634%_))))
                      (_%g203616203630%_ _%g203617203634%_)))))
          (_%g203615203671%_ _%$stx203612%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx203675%_)
        (let* ((_%g203679203693%_
                (lambda (_%g203680203689%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203680203689%_))))
               (_%g203678203734%_
                (lambda (_%g203680203697%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203680203697%_))
                      (let ((_%e203682203700%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203680203697%_))))
                        (let ((_%hd203683203704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203682203700%_)))
                              (_%tl203684203707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203682203700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203684203707%_))
                              (let ((_%e203685203710%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203684203707%_))))
                                (let ((_%hd203686203714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203685203710%_)))
                                      (_%tl203687203717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203685203710%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203687203717%_))
                                      ((lambda (_%L203720%_)
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
                                                           (cons _%L203720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203686203714%_)
                                      (_%g203679203693%_ _%g203680203697%_))))
                              (_%g203679203693%_ _%g203680203697%_))))
                      (_%g203679203693%_ _%g203680203697%_)))))
          (_%g203678203734%_ _%$stx203675%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx203738%_)
        (let* ((_%g203742203764%_
                (lambda (_%g203743203760%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203743203760%_))))
               (_%g203741203833%_
                (lambda (_%g203743203768%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203743203768%_))
                      (let ((_%e203747203771%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203743203768%_))))
                        (let ((_%hd203748203775%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203747203771%_)))
                              (_%tl203749203778%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203747203771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203749203778%_))
                              (let ((_%e203750203781%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203749203778%_))))
                                (let ((_%hd203751203785%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203750203781%_)))
                                      (_%tl203752203788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203750203781%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203752203788%_))
                                      (let ((_%e203753203791%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203752203788%_))))
                                        (let ((_%hd203754203795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203753203791%_)))
                                              (_%tl203755203798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203753203791%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203755203798%_))
                                              (let ((_%e203756203801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203755203798%_))))
                                                (let ((_%hd203757203805%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203756203801%_)))
                                                      (_%tl203758203808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203756203801%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203758203808%_))
                                                      ((lambda (_%L203811%_
                                                                _%L203813%_
                                                                _%L203814%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L203814%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L203813%_ '()))
                                   (cons _%L203811%_ '())))))
               _%hd203757203805%_
               _%hd203754203795%_
               _%hd203751203785%_)
              (_%g203742203764%_ _%g203743203768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203742203764%_
                                               _%g203743203768%_))))
                                      (_%g203742203764%_ _%g203743203768%_))))
                              (_%g203742203764%_ _%g203743203768%_))))
                      (_%g203742203764%_ _%g203743203768%_)))))
          (_%g203741203833%_ _%$stx203738%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx203837%_)
        (let* ((_%g203841203863%_
                (lambda (_%g203842203859%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203842203859%_))))
               (_%g203840203932%_
                (lambda (_%g203842203867%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203842203867%_))
                      (let ((_%e203846203870%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203842203867%_))))
                        (let ((_%hd203847203874%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203846203870%_)))
                              (_%tl203848203877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203846203870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203848203877%_))
                              (let ((_%e203849203880%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203848203877%_))))
                                (let ((_%hd203850203884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203849203880%_)))
                                      (_%tl203851203887%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203849203880%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203851203887%_))
                                      (let ((_%e203852203890%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203851203887%_))))
                                        (let ((_%hd203853203894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203852203890%_)))
                                              (_%tl203854203897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203852203890%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203854203897%_))
                                              (let ((_%e203855203900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203854203897%_))))
                                                (let ((_%hd203856203904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203855203900%_)))
                                                      (_%tl203857203907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203855203900%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203857203907%_))
                                                      ((lambda (_%L203910%_
                                                                _%L203912%_
                                                                _%L203913%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L203913%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L203912%_ '()))
                                   (cons _%L203910%_ '())))))
               _%hd203856203904%_
               _%hd203853203894%_
               _%hd203850203884%_)
              (_%g203841203863%_ _%g203842203867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203841203863%_
                                               _%g203842203867%_))))
                                      (_%g203841203863%_ _%g203842203867%_))))
                              (_%g203841203863%_ _%g203842203867%_))))
                      (_%g203841203863%_ _%g203842203867%_)))))
          (_%g203840203932%_ _%$stx203837%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx203936%_)
        (let* ((_%g203940203954%_
                (lambda (_%g203941203950%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203941203950%_))))
               (_%g203939203995%_
                (lambda (_%g203941203958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203941203958%_))
                      (let ((_%e203943203961%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203941203958%_))))
                        (let ((_%hd203944203965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203943203961%_)))
                              (_%tl203945203968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203943203961%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203945203968%_))
                              (let ((_%e203946203971%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203945203968%_))))
                                (let ((_%hd203947203975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203946203971%_)))
                                      (_%tl203948203978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203946203971%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203948203978%_))
                                      ((lambda (_%L203981%_)
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
                                                           (cons _%L203981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd203947203975%_)
                                      (_%g203940203954%_ _%g203941203958%_))))
                              (_%g203940203954%_ _%g203941203958%_))))
                      (_%g203940203954%_ _%g203941203958%_)))))
          (_%g203939203995%_ _%$stx203936%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx203999%_)
        (let* ((_%g204003204021%_
                (lambda (_%g204004204017%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204004204017%_))))
               (_%g204002204076%_
                (lambda (_%g204004204025%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204004204025%_))
                      (let ((_%e204007204028%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204004204025%_))))
                        (let ((_%hd204008204032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204007204028%_)))
                              (_%tl204009204035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204007204028%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204009204035%_))
                              (let ((_%e204010204038%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204009204035%_))))
                                (let ((_%hd204011204042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204010204038%_)))
                                      (_%tl204012204045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204010204038%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204012204045%_))
                                      (let ((_%e204013204048%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204012204045%_))))
                                        (let ((_%hd204014204052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204013204048%_)))
                                              (_%tl204015204055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204013204048%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204015204055%_))
                                              ((lambda (_%L204058%_
                                                        _%L204060%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204060%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204058%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204014204052%_
                                               _%hd204011204042%_)
                                              (_%g204003204021%_
                                               _%g204004204025%_))))
                                      (_%g204003204021%_ _%g204004204025%_))))
                              (_%g204003204021%_ _%g204004204025%_))))
                      (_%g204003204021%_ _%g204004204025%_)))))
          (_%g204002204076%_ _%$stx203999%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx204080%_)
        (let* ((_%__stx208422208423%_ _%$stx204080%_)
               (_%g204087204148%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208422208423%_)))))
          (let ((_%__kont208425208426%_
                 (lambda (_%L204386%_ _%L204388%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204388%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204386%_ '()))
                                     '())))))
                (_%__kont208427208428%_
                 (lambda (_%L204325%_ _%L204327%_ _%L204328%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204328%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204327%_ '()))
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
                                 (cons _%L204325%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont208429208430%_
                 (lambda (_%L204249%_ _%L204251%_)
                   (cons _%L204251%_ (cons _%L204249%_ (cons '#f '())))))
                (_%__kont208431208432%_
                 (lambda (_%L204199%_ _%L204201%_ _%L204202%_)
                   (cons _%L204202%_
                         (cons _%L204201%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L204199%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208422208423%_))
                (let ((_%e204091204356%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208422208423%_))))
                  (let ((_%tl204093204363%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204091204356%_)))
                        (_%hd204092204360%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204091204356%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204093204363%_))
                        (let ((_%e204094204366%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204093204363%_))))
                          (let ((_%tl204096204373%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204094204366%_)))
                                (_%hd204095204370%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204094204366%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204096204373%_))
                                (let ((_%e204097204376%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204096204373%_))))
                                  (let ((_%tl204099204383%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204097204376%_)))
                                        (_%hd204098204380%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204097204376%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204099204383%_))
                                        (_%__kont208425208426%_
                                         _%hd204098204380%_
                                         _%hd204095204370%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204099204383%_))
                                            (let ((_%e204112204301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204099204383%_))))
                                              (let ((_%tl204114204308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204112204301%_)))
                                                    (_%hd204113204305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204112204301%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd204113204305%_))
                                                    (let ((_%e204115204311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204113204305%_))))
                                                      (if (equal? _%e204115204311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204114204308%_))
                      (let ((_%e204116204315%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204114204308%_))))
                        (let ((_%tl204118204322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204116204315%_)))
                              (_%hd204117204319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204116204315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204118204322%_))
                              (_%__kont208427208428%_
                               _%hd204117204319%_
                               _%hd204098204380%_
                               _%hd204095204370%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd204098204380%_))
                                  (let ((_%e204139204185%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204098204380%_))))
                                    (declare (not safe))
                                    (_%g204087204148%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204087204148%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd204098204380%_))
                          (let ((_%e204139204185%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204098204380%_))))
                            (if (equal? _%e204139204185%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204114204308%_))
                                    (_%__kont208431208432%_
                                     _%hd204113204305%_
                                     _%hd204095204370%_
                                     _%hd204092204360%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g204087204148%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g204087204148%_))))
                          (let () (declare (not safe)) (_%g204087204148%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd204098204380%_))
                      (let ((_%e204139204185%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204098204380%_))))
                        (if (equal? _%e204139204185%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204114204308%_))
                                (_%__kont208431208432%_
                                 _%hd204113204305%_
                                 _%hd204095204370%_
                                 _%hd204092204360%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g204087204148%_)))
                            (let () (declare (not safe)) (_%g204087204148%_))))
                      (let () (declare (not safe)) (_%g204087204148%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd204098204380%_))
                                                        (let ((_%e204139204185%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd204098204380%_))))
                  (if (equal? _%e204139204185%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204114204308%_))
                          (_%__kont208431208432%_
                           _%hd204113204305%_
                           _%hd204095204370%_
                           _%hd204092204360%_)
                          (let () (declare (not safe)) (_%g204087204148%_)))
                      (let () (declare (not safe)) (_%g204087204148%_))))
                (let () (declare (not safe)) (_%g204087204148%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd204098204380%_))
                                                (let ((_%e204139204185%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204098204380%_))))
                                                  (declare (not safe))
                                                  (_%g204087204148%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g204087204148%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204096204373%_))
                                    (_%__kont208429208430%_
                                     _%hd204095204370%_
                                     _%hd204092204360%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g204087204148%_))))))
                        (let () (declare (not safe)) (_%g204087204148%_)))))
                (let () (declare (not safe)) (_%g204087204148%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx204407%_)
        (let* ((_%g204411204440%_
                (lambda (_%g204412204436%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204412204436%_))))
               (_%g204410204549%_
                (lambda (_%g204412204444%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204412204444%_))
                      (let ((_%e204414204447%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204412204444%_))))
                        (let ((_%hd204415204451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204414204447%_)))
                              (_%tl204416204454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204414204447%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204416204454%_))
                              (let ((_g209052_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204416204454%_
                                        '0))))
                                (begin
                                  (let ((_g209053_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209052_)
                                               (##vector-length _g209052_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209053_ 2)))
                                        (error "Context expects 2 values"
                                               _g209053_)))
                                  (let ((_%target204417204457%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209052_ 0)))
                                        (_%tl204419204460%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209052_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204419204460%_))
                                        (letrec ((_%loop204420204463%_
                                                  (lambda (_%hd204418204467%_
                                                           _%clause204424204470%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204418204467%_))
                                                        (let ((_%e204421204473%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204418204467%_))))
                  (let ((_%lp-hd204422204477%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204421204473%_)))
                        (_%lp-tl204423204480%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204421204473%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd204422204477%_))
                        (let ((_g209054_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd204422204477%_
                                  '0))))
                          (begin
                            (let ((_g209055_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g209054_)
                                         (##vector-length _g209054_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g209055_ 2)))
                                  (error "Context expects 2 values"
                                         _g209055_)))
                            (let ((_%target204426204483%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g209054_ 0)))
                                  (_%tl204428204486%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g209054_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204428204486%_))
                                  (letrec ((_%loop204429204489%_
                                            (lambda (_%hd204427204493%_
                                                     _%clause204433204496%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204427204493%_))
                                                  (let ((_%e204430204499%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd204427204493%_))))
                                                    (let ((_%lp-hd204431204503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204430204499%_)))
                                                          (_%lp-tl204432204506%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204430204499%_))))
                                                      (_%loop204429204489%_
                                                       _%lp-tl204432204506%_
                                                       (cons _%lp-hd204431204503%_
                                                             _%clause204433204496%_))))
                                                  (let ((_%clause204434204509%_
                                                         (reverse _%clause204433204496%_)))
                                                    (_%loop204420204463%_
                                                     _%lp-tl204423204480%_
                                                     (cons _%clause204434204509%_
                                                           _%clause204424204470%_)))))))
                                    (_%loop204429204489%_
                                     _%target204426204483%_
                                     '()))
                                  (_%g204411204440%_ _%g204412204444%_)))))
                        (_%g204411204440%_ _%g204412204444%_))))
                (let ((_%clause204425204513%_
                       (reverse _%clause204424204470%_)))
                  ((lambda (_%L204517%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp209056
                                              (lambda (_%g204532204537%_
                                                       _%g204533204540%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp209057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g204534204543%_ _%g204535204546%_)
                             (cons _%g204534204543%_ _%g204535204546%_))))
                      (declare (not safe))
                      (__foldr1 __tmp209057 '() _%g204532204537%_)))
              _%g204533204540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp209056
                                          '()
                                          _%L204517%_)))
                                 '())))
                   _%clause204425204513%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204420204463%_
                                           _%target204417204457%_
                                           '()))
                                        (_%g204411204440%_
                                         _%g204412204444%_)))))
                              (_%g204411204440%_ _%g204412204444%_))))
                      (_%g204411204440%_ _%g204412204444%_)))))
          (_%g204410204549%_ _%$stx204407%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx204555%_)
        (let* ((_%g204559204577%_
                (lambda (_%g204560204573%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204560204573%_))))
               (_%g204558204632%_
                (lambda (_%g204560204581%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204560204581%_))
                      (let ((_%e204563204584%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204560204581%_))))
                        (let ((_%hd204564204588%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204563204584%_)))
                              (_%tl204565204591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204563204584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204565204591%_))
                              (let ((_%e204566204594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204565204591%_))))
                                (let ((_%hd204567204598%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204566204594%_)))
                                      (_%tl204568204601%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204566204594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204568204601%_))
                                      (let ((_%e204569204604%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204568204601%_))))
                                        (let ((_%hd204570204608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204569204604%_)))
                                              (_%tl204571204611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204569204604%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204571204611%_))
                                              ((lambda (_%L204614%_
                                                        _%L204616%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204616%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204614%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204570204608%_
                                               _%hd204567204598%_)
                                              (_%g204559204577%_
                                               _%g204560204581%_))))
                                      (_%g204559204577%_ _%g204560204581%_))))
                              (_%g204559204577%_ _%g204560204581%_))))
                      (_%g204559204577%_ _%g204560204581%_)))))
          (_%g204558204632%_ _%$stx204555%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx204636%_)
        (let* ((_%g204640204658%_
                (lambda (_%g204641204654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204641204654%_))))
               (_%g204639204713%_
                (lambda (_%g204641204662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204641204662%_))
                      (let ((_%e204644204665%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204641204662%_))))
                        (let ((_%hd204645204669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204644204665%_)))
                              (_%tl204646204672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204644204665%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204646204672%_))
                              (let ((_%e204647204675%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204646204672%_))))
                                (let ((_%hd204648204679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204647204675%_)))
                                      (_%tl204649204682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204647204675%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204649204682%_))
                                      (let ((_%e204650204685%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204649204682%_))))
                                        (let ((_%hd204651204689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204650204685%_)))
                                              (_%tl204652204692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204650204685%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204652204692%_))
                                              ((lambda (_%L204695%_
                                                        _%L204697%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L204697%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204695%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204651204689%_
                                               _%hd204648204679%_)
                                              (_%g204640204658%_
                                               _%g204641204662%_))))
                                      (_%g204640204658%_ _%g204641204662%_))))
                              (_%g204640204658%_ _%g204641204662%_))))
                      (_%g204640204658%_ _%g204641204662%_)))))
          (_%g204639204713%_ _%$stx204636%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx204717%_)
        (let* ((_%g204721204750%_
                (lambda (_%g204722204746%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204722204746%_))))
               (_%g204720204850%_
                (lambda (_%g204722204754%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204722204754%_))
                      (let ((_%e204725204757%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204722204754%_))))
                        (let ((_%hd204726204761%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204725204757%_)))
                              (_%tl204727204764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204725204757%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204727204764%_))
                              (let ((_g209058_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204727204764%_
                                        '0))))
                                (begin
                                  (let ((_g209059_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209058_)
                                               (##vector-length _g209058_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209059_ 2)))
                                        (error "Context expects 2 values"
                                               _g209059_)))
                                  (let ((_%target204728204767%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209058_ 0)))
                                        (_%tl204730204770%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209058_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204730204770%_))
                                        (letrec ((_%loop204731204773%_
                                                  (lambda (_%hd204729204777%_
                                                           _%rule204735204780%_
                                                           _%proc204736204782%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204729204777%_))
                                                        (let ((_%e204732204785%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204729204777%_))))
                  (let ((_%lp-hd204733204789%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204732204785%_)))
                        (_%lp-tl204734204792%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204732204785%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204733204789%_))
                        (let ((_%e204739204795%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204733204789%_))))
                          (let ((_%hd204740204799%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204739204795%_)))
                                (_%tl204741204802%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204739204795%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204741204802%_))
                                (let ((_%e204742204805%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204741204802%_))))
                                  (let ((_%hd204743204809%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204742204805%_)))
                                        (_%tl204744204812%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204742204805%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204744204812%_))
                                        (_%loop204731204773%_
                                         _%lp-tl204734204792%_
                                         (cons _%hd204743204809%_
                                               _%rule204735204780%_)
                                         (cons _%hd204740204799%_
                                               _%proc204736204782%_))
                                        (_%g204721204750%_
                                         _%g204722204754%_))))
                                (_%g204721204750%_ _%g204722204754%_))))
                        (_%g204721204750%_ _%g204722204754%_))))
                (let ((_%rule204737204815%_ (reverse _%rule204735204780%_))
                      (_%proc204738204818%_ (reverse _%proc204736204782%_)))
                  ((lambda (_%L204821%_ _%L204823%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204821%_
                                _%L204823%_))
                             (let ((__tmp209060
                                    (lambda (_%g204838204842%_
                                             _%g204839204845%_
                                             _%g204840204847%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g204839204845%_
                                                        (cons _%g204838204842%_
                                                              '())))
                                            _%g204840204847%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp209060
                                '()
                                _%L204821%_
                                _%L204823%_)))))
                   _%rule204737204815%_
                   _%proc204738204818%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204731204773%_
                                           _%target204728204767%_
                                           '()
                                           '()))
                                        (_%g204721204750%_
                                         _%g204722204754%_)))))
                              (_%g204721204750%_ _%g204722204754%_))))
                      (_%g204721204750%_ _%g204722204754%_)))))
          (_%g204720204850%_ _%$stx204717%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx204855%_)
        (let* ((_%g204859204877%_
                (lambda (_%g204860204873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204860204873%_))))
               (_%g204858204932%_
                (lambda (_%g204860204881%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204860204881%_))
                      (let ((_%e204863204884%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204860204881%_))))
                        (let ((_%hd204864204888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204863204884%_)))
                              (_%tl204865204891%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204863204884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204865204891%_))
                              (let ((_%e204866204894%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204865204891%_))))
                                (let ((_%hd204867204898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204866204894%_)))
                                      (_%tl204868204901%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204866204894%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204868204901%_))
                                      (let ((_%e204869204904%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204868204901%_))))
                                        (let ((_%hd204870204908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204869204904%_)))
                                              (_%tl204871204911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204869204904%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204871204911%_))
                                              ((lambda (_%L204914%_
                                                        _%L204916%_)
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
                                                   (cons _%L204916%_ '()))
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
                 (cons _%L204914%_ '())))
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
                                   (cons _%L204916%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204870204908%_
                                               _%hd204867204898%_)
                                              (_%g204859204877%_
                                               _%g204860204881%_))))
                                      (_%g204859204877%_ _%g204860204881%_))))
                              (_%g204859204877%_ _%g204860204881%_))))
                      (_%g204859204877%_ _%g204860204881%_)))))
          (_%g204858204932%_ _%$stx204855%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx204936%_)
        (let* ((_%__stx208540208541%_ _%$stx204936%_)
               (_%g204941204966%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208540208541%_)))))
          (let ((_%__kont208543208544%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208545208546%_
                 (lambda (_%L205013%_ _%L205015%_ _%L205016%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L205016%_ (cons _%L205015%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L205013%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208540208541%_))
                (let ((_%e204943205042%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208540208541%_))))
                  (let ((_%tl204945205049%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204943205042%_)))
                        (_%hd204944205046%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204943205042%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl204945205049%_))
                        (_%__kont208543208544%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204945205049%_))
                            (let ((_%e204952204983%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204945205049%_))))
                              (let ((_%tl204954204990%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204952204983%_)))
                                    (_%hd204953204987%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204952204983%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd204953204987%_))
                                    (let ((_%e204955204993%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd204953204987%_))))
                                      (let ((_%tl204957205000%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e204955204993%_)))
                                            (_%hd204956204997%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e204955204993%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204957205000%_))
                                            (let ((_%e204958205003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204957205000%_))))
                                              (let ((_%tl204960205010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204958205003%_)))
                                                    (_%hd204959205007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204958205003%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl204960205010%_))
                                                    (_%__kont208545208546%_
                                                     _%tl204954204990%_
                                                     _%hd204959205007%_
                                                     _%hd204956204997%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g204941204966%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g204941204966%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g204941204966%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g204941204966%_))))))
                (let () (declare (not safe)) (_%g204941204966%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx205060%_)
        (let* ((_%__stx208584208585%_ _%$stx205060%_)
               (_%g205065205096%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208584208585%_)))))
          (let ((_%__kont208587208588%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont208589208590%_
                 (lambda (_%L205163%_ _%L205165%_ _%L205166%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L205166%_
                                           (let ((__tmp209061
                                                  (lambda (_%g205186205189%_
                                                           _%g205187205192%_)
                                                    (cons _%g205186205189%_
                                                          _%g205187205192%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp209061
                                              '()
                                              _%L205165%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L205163%_)
                                     '()))))))
            (let ((_%__match208627208628%_
                   (lambda (_%e205073205103%_
                            _%hd205074205107%_
                            _%tl205075205110%_
                            _%e205076205113%_
                            _%hd205077205117%_
                            _%tl205078205120%_
                            _%e205079205123%_
                            _%hd205080205127%_
                            _%tl205081205130%_
                            _%__splice208591208592%_
                            _%target205082205133%_
                            _%tl205084205136%_)
                     (letrec ((_%loop205085205139%_
                               (lambda (_%hd205083205143%_ _%sig205089205146%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd205083205143%_))
                                     (let ((_%e205086205149%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd205083205143%_))))
                                       (let ((_%lp-tl205088205156%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205086205149%_)))
                                             (_%lp-hd205087205153%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205086205149%_))))
                                         (_%loop205085205139%_
                                          _%lp-tl205088205156%_
                                          (cons _%lp-hd205087205153%_
                                                _%sig205089205146%_))))
                                     (let ((_%sig205090205159%_
                                            (reverse _%sig205089205146%_)))
                                       (_%__kont208589208590%_
                                        _%tl205078205120%_
                                        _%sig205090205159%_
                                        _%hd205080205127%_))))))
                       (_%loop205085205139%_ _%target205082205133%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208584208585%_))
                  (let ((_%e205067205202%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208584208585%_))))
                    (let ((_%tl205069205209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205067205202%_)))
                          (_%hd205068205206%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205067205202%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205069205209%_))
                          (_%__kont208587208588%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205069205209%_))
                              (let ((_%e205076205113%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205069205209%_))))
                                (let ((_%tl205078205120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205076205113%_)))
                                      (_%hd205077205117%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205076205113%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205077205117%_))
                                      (let ((_%e205079205123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205077205117%_))))
                                        (let ((_%tl205081205130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205079205123%_)))
                                              (_%hd205080205127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205079205123%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205081205130%_))
                                              (let ((_%__splice208591208592%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl205081205130%_
                                                        '0))))
                                                (let ((_%tl205084205136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208591208592%_
                                                          '1)))
                                                      (_%target205082205133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208591208592%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205084205136%_))
                                                      (_%__match208627208628%_
                                                       _%e205067205202%_
                                                       _%hd205068205206%_
                                                       _%tl205069205209%_
                                                       _%e205076205113%_
                                                       _%hd205077205117%_
                                                       _%tl205078205120%_
                                                       _%e205079205123%_
                                                       _%hd205080205127%_
                                                       _%tl205081205130%_
                                                       _%__splice208591208592%_
                                                       _%target205082205133%_
                                                       _%tl205084205136%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205065205096%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205065205096%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205065205096%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g205065205096%_))))))
                  (let () (declare (not safe)) (_%g205065205096%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx205221%_)
        (let* ((_%__stx208630208631%_ _%$stx205221%_)
               (_%g205226205273%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208630208631%_)))))
          (let ((_%__kont208633208634%_
                 (lambda (_%L205435%_ _%L205437%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L205437%_
                               (let ((__tmp209062
                                      (lambda (_%g205457205460%_
                                               _%g205458205463%_)
                                        (cons _%g205457205460%_
                                              _%g205458205463%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp209062 '() _%L205435%_))))))
                (_%__kont208637208638%_
                 (lambda (_%L205330%_ _%L205332%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L205332%_
                               (let ((__tmp209063
                                      (lambda (_%g205349205352%_
                                               _%g205350205355%_)
                                        (cons _%g205349205352%_
                                              _%g205350205355%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp209063 '() _%L205330%_)))))))
            (let* ((_%__match208697208698%_
                    (lambda (_%e205253205280%_
                             _%hd205254205284%_
                             _%tl205255205287%_
                             _%e205256205290%_
                             _%hd205257205294%_
                             _%tl205258205297%_
                             _%__splice208639208640%_
                             _%target205259205300%_
                             _%tl205261205303%_)
                      (letrec ((_%loop205262205306%_
                                (lambda (_%hd205260205310%_
                                         _%sig205266205313%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205260205310%_))
                                      (let ((_%e205263205316%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205260205310%_))))
                                        (let ((_%lp-tl205265205323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205263205316%_)))
                                              (_%lp-hd205264205320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205263205316%_))))
                                          (_%loop205262205306%_
                                           _%lp-tl205265205323%_
                                           (cons _%lp-hd205264205320%_
                                                 _%sig205266205313%_))))
                                      (let ((_%sig205267205326%_
                                             (reverse _%sig205266205313%_)))
                                        (_%__kont208637208638%_
                                         _%sig205267205326%_
                                         _%hd205257205294%_))))))
                        (_%loop205262205306%_ _%target205259205300%_ '()))))
                   (_%__match208689208690%_
                    (lambda (_%e205253205280%_
                             _%hd205254205284%_
                             _%tl205255205287%_
                             _%e205256205290%_
                             _%hd205257205294%_
                             _%tl205258205297%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl205258205297%_))
                          (let ((_%__splice208639208640%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl205258205297%_
                                    '0))))
                            (let ((_%tl205261205303%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice208639208640%_
                                      '1)))
                                  (_%target205259205300%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice208639208640%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205261205303%_))
                                  (_%__match208697208698%_
                                   _%e205253205280%_
                                   _%hd205254205284%_
                                   _%tl205255205287%_
                                   _%e205256205290%_
                                   _%hd205257205294%_
                                   _%tl205258205297%_
                                   _%__splice208639208640%_
                                   _%target205259205300%_
                                   _%tl205261205303%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g205226205273%_)))))
                          (let () (declare (not safe)) (_%g205226205273%_)))))
                   (_%__match208677208678%_
                    (lambda (_%e205230205365%_
                             _%hd205231205369%_
                             _%tl205232205372%_
                             _%e205233205375%_
                             _%hd205234205379%_
                             _%tl205235205382%_
                             _%e205236205385%_
                             _%hd205237205389%_
                             _%tl205238205392%_
                             _%e205239205395%_
                             _%hd205240205399%_
                             _%tl205241205402%_
                             _%__splice208635208636%_
                             _%target205242205405%_
                             _%tl205244205408%_)
                      (letrec ((_%loop205245205411%_
                                (lambda (_%hd205243205415%_
                                         _%sig205249205418%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205243205415%_))
                                      (let ((_%e205246205421%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd205243205415%_))))
                                        (let ((_%lp-tl205248205428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205246205421%_)))
                                              (_%lp-hd205247205425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205246205421%_))))
                                          (_%loop205245205411%_
                                           _%lp-tl205248205428%_
                                           (cons _%lp-hd205247205425%_
                                                 _%sig205249205418%_))))
                                      (let ((_%sig205250205431%_
                                             (reverse _%sig205249205418%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl205238205392%_))
                                            (_%__kont208633208634%_
                                             _%sig205250205431%_
                                             _%hd205234205379%_)
                                            (_%__match208689208690%_
                                             _%e205230205365%_
                                             _%hd205231205369%_
                                             _%tl205232205372%_
                                             _%e205233205375%_
                                             _%hd205234205379%_
                                             _%tl205235205382%_)))))))
                        (_%loop205245205411%_ _%target205242205405%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208630208631%_))
                  (let ((_%e205230205365%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208630208631%_))))
                    (let ((_%tl205232205372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205230205365%_)))
                          (_%hd205231205369%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205230205365%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205232205372%_))
                          (let ((_%e205233205375%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205232205372%_))))
                            (let ((_%tl205235205382%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205233205375%_)))
                                  (_%hd205234205379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205233205375%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205235205382%_))
                                  (let ((_%e205236205385%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205235205382%_))))
                                    (let ((_%tl205238205392%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205236205385%_)))
                                          (_%hd205237205389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205236205385%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd205237205389%_))
                                          (let ((_%e205239205395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd205237205389%_))))
                                            (let ((_%tl205241205402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e205239205395%_)))
                                                  (_%hd205240205399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e205239205395%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd205240205399%_))
                                                  (if (let ((__tmp209064
                                                             |gxc[1]#_g209065_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp209064
                                                         _%hd205240205399%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl205241205402%_))
                                                          (let ((_%__splice208635208636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl205241205402%_ '0))))
                    (let ((_%tl205244205408%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208635208636%_ '1)))
                          (_%target205242205405%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208635208636%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205244205408%_))
                          (_%__match208677208678%_
                           _%e205230205365%_
                           _%hd205231205369%_
                           _%tl205232205372%_
                           _%e205233205375%_
                           _%hd205234205379%_
                           _%tl205235205382%_
                           _%e205236205385%_
                           _%hd205237205389%_
                           _%tl205238205392%_
                           _%e205239205395%_
                           _%hd205240205399%_
                           _%tl205241205402%_
                           _%__splice208635208636%_
                           _%target205242205405%_
                           _%tl205244205408%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205235205382%_))
                              (let ((_%__splice208639208640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205235205382%_
                                        '0))))
                                (let ((_%tl205261205303%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice208639208640%_
                                          '1)))
                                      (_%target205259205300%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice208639208640%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205261205303%_))
                                      (_%__match208697208698%_
                                       _%e205230205365%_
                                       _%hd205231205369%_
                                       _%tl205232205372%_
                                       _%e205233205375%_
                                       _%hd205234205379%_
                                       _%tl205235205382%_
                                       _%__splice208639208640%_
                                       _%target205259205300%_
                                       _%tl205261205303%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g205226205273%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g205226205273%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl205235205382%_))
                      (let ((_%__splice208639208640%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl205235205382%_
                                '0))))
                        (let ((_%tl205261205303%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208639208640%_ '1)))
                              (_%target205259205300%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208639208640%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205261205303%_))
                              (_%__match208697208698%_
                               _%e205230205365%_
                               _%hd205231205369%_
                               _%tl205232205372%_
                               _%e205233205375%_
                               _%hd205234205379%_
                               _%tl205235205382%_
                               _%__splice208639208640%_
                               _%target205259205300%_
                               _%tl205261205303%_)
                              (let ()
                                (declare (not safe))
                                (_%g205226205273%_)))))
                      (let () (declare (not safe)) (_%g205226205273%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl205235205382%_))
                  (let ((_%__splice208639208640%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl205235205382%_ '0))))
                    (let ((_%tl205261205303%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208639208640%_ '1)))
                          (_%target205259205300%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice208639208640%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205261205303%_))
                          (_%__match208697208698%_
                           _%e205230205365%_
                           _%hd205231205369%_
                           _%tl205232205372%_
                           _%e205233205375%_
                           _%hd205234205379%_
                           _%tl205235205382%_
                           _%__splice208639208640%_
                           _%target205259205300%_
                           _%tl205261205303%_)
                          (let () (declare (not safe)) (_%g205226205273%_)))))
                  (let () (declare (not safe)) (_%g205226205273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl205235205382%_))
                                                      (let ((_%__splice208639208640%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl205235205382%_ '0))))
                (let ((_%tl205261205303%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208639208640%_ '1)))
                      (_%target205259205300%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice208639208640%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205261205303%_))
                      (_%__match208697208698%_
                       _%e205230205365%_
                       _%hd205231205369%_
                       _%tl205232205372%_
                       _%e205233205375%_
                       _%hd205234205379%_
                       _%tl205235205382%_
                       _%__splice208639208640%_
                       _%target205259205300%_
                       _%tl205261205303%_)
                      (let () (declare (not safe)) (_%g205226205273%_)))))
              (let () (declare (not safe)) (_%g205226205273%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205235205382%_))
                                              (let ((_%__splice208639208640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl205235205382%_
                                                        '0))))
                                                (let ((_%tl205261205303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208639208640%_
                                                          '1)))
                                                      (_%target205259205300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice208639208640%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205261205303%_))
                                                      (_%__match208697208698%_
                                                       _%e205230205365%_
                                                       _%hd205231205369%_
                                                       _%tl205232205372%_
                                                       _%e205233205375%_
                                                       _%hd205234205379%_
                                                       _%tl205235205382%_
                                                       _%__splice208639208640%_
                                                       _%target205259205300%_
                                                       _%tl205261205303%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205226205273%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205226205273%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205235205382%_))
                                      (let ((_%__splice208639208640%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205235205382%_
                                                '0))))
                                        (let ((_%tl205261205303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208639208640%_
                                                  '1)))
                                              (_%target205259205300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice208639208640%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205261205303%_))
                                              (_%__match208697208698%_
                                               _%e205230205365%_
                                               _%hd205231205369%_
                                               _%tl205232205372%_
                                               _%e205233205375%_
                                               _%hd205234205379%_
                                               _%tl205235205382%_
                                               _%__splice208639208640%_
                                               _%target205259205300%_
                                               _%tl205261205303%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g205226205273%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205226205273%_))))))
                          (let () (declare (not safe)) (_%g205226205273%_)))))
                  (let () (declare (not safe)) (_%g205226205273%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx206620%_ _%id206622%_)
        (let ((_%proc206626%_
               (let ((__tmp209066
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id206622%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp209066))))
          (if (procedure? _%proc206626%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx206620%_
                 _%id206622%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx206611%_ _%id206613%_)
        (let ((_%klass206617%_
               (let ((__tmp209067
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id206613%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp209067))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass206617%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx206611%_
                 _%id206613%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx205861%_ _%proc205863%_ _%sig205864%_)
        (letrec ((_%signature-arity205866%_
                  (lambda (_%args206543%_)
                    (let _%loop206546%_ ((_%rest206549%_ _%args206543%_)
                                         (_%count206551%_ '0))
                      (let* ((_%rest206552206563%_ _%rest206549%_)
                             (_%E206556206569%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest206552206563%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K206559206600%_
                               (lambda (_%rest206597%_)
                                 (_%loop206546%_
                                  _%rest206597%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count206551%_ '1)))))
                              (_%K206558206589%_ (lambda () _%count206551%_))
                              (_%K206557206577%_
                               (lambda () (cons _%count206551%_ '()))))
                          (let ((_%try-match206554206593%_
                                 (lambda ()
                                   (if (null? _%rest206552206563%_)
                                       (_%K206558206589%_)
                                       (_%K206557206577%_)))))
                            (if (pair? _%rest206552206563%_)
                                (let* ((_%tl206561206604%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest206552206563%_)))
                                       (_%rest206608%_ _%tl206561206604%_))
                                  (_%K206559206600%_ _%rest206608%_))
                                (_%try-match206554206593%_))))))))
                 (_%make-signature205868%_
                  (lambda (_%args206425%_
                           _%return206427%_
                           _%effect206428%_
                           _%unchecked206429%_)
                    (let ((__tmp209068
                           (lambda (_%g206430206432%_)
                             (|gxc[1]#verify-class!|
                              _%ctx205861%_
                              _%g206430206432%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp209068 _%args206425%_))
                    (|gxc[1]#verify-class!| _%ctx205861%_ _%return206427%_)
                    (if _%unchecked206429%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx205861%_
                         _%unchecked206429%_)
                        '#!void)
                    (let ((_%arity206436%_
                           (_%signature-arity205866%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args206425%_)))))
                      (if _%effect206428%_
                          (let ((_%effect206439%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect206428%_))))
                            (if (and (list? _%effect206439%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect206439%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx205861%_
                                   _%proc205863%_
                                   _%effect206439%_))))
                          '#!void)
                      (cons _%arity206436%_
                            (cons (let* ((_%g206442206465%_
                                          (lambda (_%g206443206461%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g206443206461%_))))
                                         (_%g206441206539%_
                                          (lambda (_%g206443206469%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g206443206469%_))
                                                (let ((_%e206448206472%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g206443206469%_))))
                                                  (let ((_%hd206449206476%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206448206472%_)))
                                                        (_%tl206450206479%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206448206472%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl206450206479%_))
                                                        (let ((_%e206451206482%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl206450206479%_))))
                  (let ((_%hd206452206486%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206451206482%_)))
                        (_%tl206453206489%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206451206482%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206453206489%_))
                        (let ((_%e206454206492%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206453206489%_))))
                          (let ((_%hd206455206496%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206454206492%_)))
                                (_%tl206456206499%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206454206492%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206456206499%_))
                                (let ((_%e206457206502%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206456206499%_))))
                                  (let ((_%hd206458206506%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206457206502%_)))
                                        (_%tl206459206509%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206457206502%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206459206509%_))
                                        ((lambda (_%L206512%_
                                                  _%L206514%_
                                                  _%L206515%_
                                                  _%L206516%_)
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
                           (cons _%L206516%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L206515%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L206514%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L206512%_ '()))
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
                                         _%hd206458206506%_
                                         _%hd206455206496%_
                                         _%hd206452206486%_
                                         _%hd206449206476%_)
                                        (_%g206442206465%_
                                         _%g206443206469%_))))
                                (_%g206442206465%_ _%g206443206469%_))))
                        (_%g206442206465%_ _%g206443206469%_))))
                (_%g206442206465%_ _%g206443206469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206442206465%_
                                                 _%g206443206469%_)))))
                                    (_%g206441206539%_
                                     (list _%args206425%_
                                           _%return206427%_
                                           _%effect206428%_
                                           _%unchecked206429%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx205861%_ _%proc205863%_)
          (let* ((_%__stx208708208709%_ _%sig205864%_)
                 (_%g205875205978%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx208708208709%_)))))
            (let ((_%__kont208711208712%_
                   (lambda (_%L206406%_ _%L206408%_)
                     (_%make-signature205868%_
                      _%L206408%_
                      _%L206406%_
                      '#f
                      '#f)))
                  (_%__kont208713208714%_
                   (lambda (_%L206357%_ _%L206359%_ _%L206360%_)
                     (_%make-signature205868%_
                      _%L206360%_
                      _%L206359%_
                      _%L206357%_
                      '#f)))
                  (_%__kont208715208716%_
                   (lambda (_%L206281%_ _%L206283%_ _%L206284%_)
                     (_%make-signature205868%_
                      _%L206284%_
                      _%L206283%_
                      _%L206281%_
                      (let ((__tmp209069
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc205863%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp209069)))))
                  (_%__kont208717208718%_
                   (lambda (_%L206187%_ _%L206189%_ _%L206190%_ _%L206191%_)
                     (_%make-signature205868%_
                      _%L206191%_
                      _%L206190%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L206187%_)))))
                  (_%__kont208719208720%_
                   (lambda (_%L206094%_ _%L206096%_)
                     (_%make-signature205868%_
                      _%L206096%_
                      _%L206094%_
                      '#f
                      (let ((__tmp209070
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc205863%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp209070)))))
                  (_%__kont208721208722%_
                   (lambda (_%L206029%_ _%L206031%_ _%L206032%_)
                     (_%make-signature205868%_
                      _%L206032%_
                      _%L206031%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L206029%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208708208709%_))
                  (let ((_%e205879206386%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx208708208709%_))))
                    (let ((_%tl205881206393%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205879206386%_)))
                          (_%hd205880206390%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205879206386%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205881206393%_))
                          (let ((_%e205882206396%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205881206393%_))))
                            (let ((_%tl205884206403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205882206396%_)))
                                  (_%hd205883206400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205882206396%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205884206403%_))
                                  (_%__kont208711208712%_
                                   _%hd205883206400%_
                                   _%hd205880206390%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205884206403%_))
                                      (let ((_%e205894206333%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205884206403%_))))
                                        (let ((_%tl205896206340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205894206333%_)))
                                              (_%hd205895206337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205894206333%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd205895206337%_))
                                              (let ((_%e205897206343%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd205895206337%_))))
                                                (if (equal? _%e205897206343%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl205896206340%_))
                                                        (let ((_%e205898206347%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl205896206340%_))))
                  (let ((_%tl205900206354%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205898206347%_)))
                        (_%hd205899206351%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205898206347%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl205900206354%_))
                        (_%__kont208713208714%_
                         _%hd205899206351%_
                         _%hd205883206400%_
                         _%hd205880206390%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205900206354%_))
                            (let ((_%e205917206267%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205900206354%_))))
                              (let ((_%tl205919206274%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205917206267%_)))
                                    (_%hd205918206271%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205917206267%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd205918206271%_))
                                    (let ((_%e205920206277%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd205918206271%_))))
                                      (if (equal? _%e205920206277%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205919206274%_))
                                              (_%__kont208715208716%_
                                               _%hd205899206351%_
                                               _%hd205883206400%_
                                               _%hd205880206390%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205919206274%_))
                                                  (let ((_%e205942206177%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205919206274%_))))
                                                    (let ((_%tl205944206184%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205942206177%_)))
                                                          (_%hd205943206181%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205942206177%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205944206184%_))
                                                          (_%__kont208717208718%_
                                                           _%hd205943206181%_
                                                           _%hd205899206351%_
                                                           _%hd205883206400%_
                                                           _%hd205880206390%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g205875205978%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205875205978%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g205875205978%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g205875205978%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g205875205978%_))))))
                (let () (declare (not safe)) (_%g205875205978%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e205897206343%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl205896206340%_))
                                                            (_%__kont208719208720%_
                                                             _%hd205883206400%_
                                                             _%hd205880206390%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl205896206340%_))
                        (let ((_%e205970206019%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205896206340%_))))
                          (let ((_%tl205972206026%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205970206019%_)))
                                (_%hd205971206023%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205970206019%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205972206026%_))
                                (_%__kont208721208722%_
                                 _%hd205971206023%_
                                 _%hd205883206400%_
                                 _%hd205880206390%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g205875205978%_)))))
                        (let () (declare (not safe)) (_%g205875205978%_))))
                (let () (declare (not safe)) (_%g205875205978%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g205875205978%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205875205978%_))))))
                          (let () (declare (not safe)) (_%g205875205978%_)))))
                  (let () (declare (not safe)) (_%g205875205978%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig205472%_)
        (let* ((_%g205475205555%_
                (lambda (_%g205476205551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205476205551%_))))
               (_%g205474205857%_
                (lambda (_%g205476205559%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205476205559%_))
                      (let ((_%e205482205562%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205476205559%_))))
                        (let ((_%hd205483205566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205482205562%_)))
                              (_%tl205484205569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205482205562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205484205569%_))
                              (let ((_%e205485205572%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205484205569%_))))
                                (let ((_%hd205486205576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205485205572%_)))
                                      (_%tl205487205579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205485205572%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd205486205576%_))
                                      (let ((_%e205488205582%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd205486205576%_))))
                                        (if (equal? _%e205488205582%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205487205579%_))
                                                (let ((_%e205489205586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205487205579%_))))
                                                  (let ((_%hd205490205590%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205489205586%_)))
                                                        (_%tl205491205593%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205489205586%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205490205590%_))
                                                        (let ((_%e205492205596%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205490205590%_))))
                  (let ((_%hd205493205600%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205492205596%_)))
                        (_%tl205494205603%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205492205596%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd205493205600%_))
                        (if (let ((__tmp209071 |gxc[1]#_g209072_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp209071
                               _%hd205493205600%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205494205603%_))
                                (let ((_%e205495205606%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205494205603%_))))
                                  (let ((_%hd205496205610%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205495205606%_)))
                                        (_%tl205497205613%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205495205606%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205497205613%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205491205593%_))
                                            (let ((_%e205498205616%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205491205593%_))))
                                              (let ((_%hd205499205620%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205498205616%_)))
                                                    (_%tl205500205623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205498205616%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205499205620%_))
                                                    (let ((_%e205501205626%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205499205620%_))))
                                                      (if (equal? _%e205501205626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205500205623%_))
                      (let ((_%e205502205630%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205500205623%_))))
                        (let ((_%hd205503205634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205502205630%_)))
                              (_%tl205504205637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205502205630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd205503205634%_))
                              (let ((_%e205505205640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd205503205634%_))))
                                (let ((_%hd205506205644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205505205640%_)))
                                      (_%tl205507205647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205505205640%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd205506205644%_))
                                      (if (let ((__tmp209073
                                                 |gxc[1]#_g209074_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp209073
                                             _%hd205506205644%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205507205647%_))
                                              (let ((_%e205508205650%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205507205647%_))))
                                                (let ((_%hd205509205654%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205508205650%_)))
                                                      (_%tl205510205657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205508205650%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205510205657%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl205504205637%_))
                                                          (let ((_%e205511205660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl205504205637%_))))
                    (let ((_%hd205512205664%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205511205660%_)))
                          (_%tl205513205667%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205511205660%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205512205664%_))
                          (let ((_%e205514205670%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205512205664%_))))
                            (if (equal? _%e205514205670%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl205513205667%_))
                                    (let ((_%e205515205674%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl205513205667%_))))
                                      (let ((_%hd205516205678%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e205515205674%_)))
                                            (_%tl205517205681%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e205515205674%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd205516205678%_))
                                            (let ((_%e205518205684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd205516205678%_))))
                                              (let ((_%hd205519205688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205518205684%_)))
                                                    (_%tl205520205691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205518205684%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd205519205688%_))
                                                    (if (let ((__tmp209075
                                                               |gxc[1]#_g209076_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp209075
                                                           _%hd205519205688%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl205520205691%_))
                                                            (let ((_%e205521205694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl205520205691%_))))
                      (let ((_%hd205522205698%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205521205694%_)))
                            (_%tl205523205701%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205521205694%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl205523205701%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205517205681%_))
                                (let ((_%e205524205704%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205517205681%_))))
                                  (let ((_%hd205525205708%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205524205704%_)))
                                        (_%tl205526205711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205524205704%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd205525205708%_))
                                        (let ((_%e205527205714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd205525205708%_))))
                                          (if (equal? _%e205527205714%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205526205711%_))
                                                  (let ((_%e205528205718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205526205711%_))))
                                                    (let ((_%hd205529205722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205528205718%_)))
                                                          (_%tl205530205725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205528205718%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd205529205722%_))
                                                          (let ((_%e205531205728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd205529205722%_))))
                    (let ((_%hd205532205732%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205531205728%_)))
                          (_%tl205533205735%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205531205728%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd205532205732%_))
                          (if (let ((__tmp209077 |gxc[1]#_g209078_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp209077
                                 _%hd205532205732%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205533205735%_))
                                  (let ((_%e205534205738%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl205533205735%_))))
                                    (let ((_%hd205535205742%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205534205738%_)))
                                          (_%tl205536205745%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205534205738%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl205536205745%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205530205725%_))
                                              (let ((_%e205537205748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205530205725%_))))
                                                (let ((_%hd205538205752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205537205748%_)))
                                                      (_%tl205539205755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205537205748%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd205538205752%_))
                                                      (let ((_%e205540205758%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd205538205752%_))))
                (if (equal? _%e205540205758%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205539205755%_))
                        (let ((_%e205541205762%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205539205755%_))))
                          (let ((_%hd205542205766%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205541205762%_)))
                                (_%tl205543205769%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205541205762%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd205542205766%_))
                                (let ((_%e205544205772%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd205542205766%_))))
                                  (let ((_%hd205545205776%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205544205772%_)))
                                        (_%tl205546205779%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205544205772%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd205545205776%_))
                                        (if (let ((__tmp209079
                                                   |gxc[1]#_g209080_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp209079
                                               _%hd205545205776%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl205546205779%_))
                                                (let ((_%e205547205782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl205546205779%_))))
                                                  (let ((_%hd205548205786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205547205782%_)))
                                                        (_%tl205549205789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205547205782%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl205549205789%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl205543205769%_))
                                                            ((lambda (_%L205792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L205794%_
                              _%L205795%_
                              _%L205796%_
                              _%L205797%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L205794%_))
                           (cons _%L205794%_
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
                       (cons _%L205796%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205792%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd205548205786%_
                     _%hd205535205742%_
                     _%hd205522205698%_
                     _%hd205509205654%_
                     _%hd205496205610%_)
                    (_%g205475205555%_ _%g205476205559%_))
                (_%g205475205555%_ _%g205476205559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205475205555%_
                                                 _%g205476205559%_))
                                            (_%g205475205555%_
                                             _%g205476205559%_))
                                        (_%g205475205555%_
                                         _%g205476205559%_))))
                                (_%g205475205555%_ _%g205476205559%_))))
                        (_%g205475205555%_ _%g205476205559%_))
                    (_%g205475205555%_ _%g205476205559%_)))
              (_%g205475205555%_ _%g205476205559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205475205555%_
                                               _%g205476205559%_))
                                          (_%g205475205555%_
                                           _%g205476205559%_))))
                                  (_%g205475205555%_ _%g205476205559%_))
                              (_%g205475205555%_ _%g205476205559%_))
                          (_%g205475205555%_ _%g205476205559%_))))
                  (_%g205475205555%_ _%g205476205559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g205475205555%_
                                                   _%g205476205559%_))
                                              (_%g205475205555%_
                                               _%g205476205559%_)))
                                        (_%g205475205555%_
                                         _%g205476205559%_))))
                                (_%g205475205555%_ _%g205476205559%_))
                            (_%g205475205555%_ _%g205476205559%_))))
                    (_%g205475205555%_ _%g205476205559%_))
                (_%g205475205555%_ _%g205476205559%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205475205555%_
                                                     _%g205476205559%_))))
                                            (_%g205475205555%_
                                             _%g205476205559%_))))
                                    (_%g205475205555%_ _%g205476205559%_))
                                (_%g205475205555%_ _%g205476205559%_)))
                          (_%g205475205555%_ _%g205476205559%_))))
                  (_%g205475205555%_ _%g205476205559%_))
              (_%g205475205555%_ _%g205476205559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205475205555%_
                                               _%g205476205559%_))
                                          (_%g205475205555%_
                                           _%g205476205559%_))
                                      (_%g205475205555%_ _%g205476205559%_))))
                              (_%g205475205555%_ _%g205476205559%_))))
                      (_%g205475205555%_ _%g205476205559%_))
                  (_%g205475205555%_ _%g205476205559%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g205475205555%_
                                                     _%g205476205559%_))))
                                            (_%g205475205555%_
                                             _%g205476205559%_))
                                        (_%g205475205555%_
                                         _%g205476205559%_))))
                                (_%g205475205555%_ _%g205476205559%_))
                            (_%g205475205555%_ _%g205476205559%_))
                        (_%g205475205555%_ _%g205476205559%_))))
                (_%g205475205555%_ _%g205476205559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205475205555%_
                                                 _%g205476205559%_))
                                            (_%g205475205555%_
                                             _%g205476205559%_)))
                                      (_%g205475205555%_ _%g205476205559%_))))
                              (_%g205475205555%_ _%g205476205559%_))))
                      (_%g205475205555%_ _%g205476205559%_)))))
          (_%g205474205857%_ _%sig205472%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx206629%_)
        (let* ((_%g206632206650%_
                (lambda (_%g206633206646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206633206646%_))))
               (_%g206631206705%_
                (lambda (_%g206633206654%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206633206654%_))
                      (let ((_%e206636206657%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206633206654%_))))
                        (let ((_%hd206637206661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206636206657%_)))
                              (_%tl206638206664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206636206657%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206638206664%_))
                              (let ((_%e206639206667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206638206664%_))))
                                (let ((_%hd206640206671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206639206667%_)))
                                      (_%tl206641206674%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206639206667%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206641206674%_))
                                      (let ((_%e206642206677%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206641206674%_))))
                                        (let ((_%hd206643206681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206642206677%_)))
                                              (_%tl206644206684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206642206677%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206644206684%_))
                                              ((lambda (_%L206687%_
                                                        _%L206689%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L206689%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L206687%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx206629%_
                                                        _%L206689%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx206629%_
                                                        _%L206687%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L206689%_
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
                                                   (cons _%L206687%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206632206650%_
                                                      _%g206633206654%_)))
                                               _%hd206643206681%_
                                               _%hd206640206671%_)
                                              (_%g206632206650%_
                                               _%g206633206654%_))))
                                      (_%g206632206650%_ _%g206633206654%_))))
                              (_%g206632206650%_ _%g206633206654%_))))
                      (_%g206632206650%_ _%g206633206654%_)))))
          (_%g206631206705%_ _%stx206629%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx206709%_)
        (let* ((_%g206712206736%_
                (lambda (_%g206713206732%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206713206732%_))))
               (_%g206711207019%_
                (lambda (_%g206713206740%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206713206740%_))
                      (let ((_%e206716206743%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206713206740%_))))
                        (let ((_%hd206717206747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206716206743%_)))
                              (_%tl206718206750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206716206743%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206718206750%_))
                              (let ((_%e206719206753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206718206750%_))))
                                (let ((_%hd206720206757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206719206753%_)))
                                      (_%tl206721206760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206719206753%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206721206760%_))
                                      (let ((_g209081_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl206721206760%_
                                                '0))))
                                        (begin
                                          (let ((_g209082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209081_)
                                                       (##vector-length
                                                        _g209081_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209082_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209082_)))
                                          (let ((_%target206722206763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g209081_ 0)))
                                                (_%tl206724206766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g209081_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl206724206766%_))
                                                (letrec ((_%loop206725206769%_
                                                          (lambda (_%hd206723206773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature206729206776%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd206723206773%_))
                        (let ((_%e206726206779%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd206723206773%_))))
                          (let ((_%lp-hd206727206783%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206726206779%_)))
                                (_%lp-tl206728206786%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206726206779%_))))
                            (_%loop206725206769%_
                             _%lp-tl206728206786%_
                             (cons _%lp-hd206727206783%_
                                   _%signature206729206776%_))))
                        (let ((_%signature206730206789%_
                               (reverse _%signature206729206776%_)))
                          ((lambda (_%L206793%_ _%L206795%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L206795%_))
                                 (let* ((_%g206813206828%_
                                         (lambda (_%g206814206824%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g206814206824%_))))
                                        (_%g206812207007%_
                                         (lambda (_%g206814206832%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g206814206832%_))
                                               (let ((_%e206817206835%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g206814206832%_))))
                                                 (let ((_%hd206818206839%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206817206835%_)))
                                                       (_%tl206819206842%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206817206835%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl206819206842%_))
                                                       (let ((_%e206820206845%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl206819206842%_))))
                 (let ((_%hd206821206849%_
                        (let ()
                          (declare (not safe))
                          (##car _%e206820206845%_)))
                       (_%tl206822206852%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e206820206845%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl206822206852%_))
                       ((lambda (_%L206855%_ _%L206857%_)
                          (let* ((_%g206873206881%_
                                  (lambda (_%g206874206877%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g206874206877%_))))
                                 (_%g206872207003%_
                                  (lambda (_%g206874206885%_)
                                    ((lambda (_%L206888%_)
                                       (let* ((_%unchecked206901%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L206855%_))
                                              (_%g206904206912%_
                                               (lambda (_%g206905206908%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g206905206908%_))))
                                              (_%g206903206935%_
                                               (lambda (_%g206905206916%_)
                                                 ((lambda (_%L206919%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L206888%_
                                                                (cons _%L206919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g206905206916%_))))
                                         (_%g206903206935%_
                                          (if _%unchecked206901%_
                                              (let* ((_%g206939206954%_
                                                      (lambda (_%g206940206950%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g206940206950%_))))
                                                     (_%g206938206999%_
                                                      (lambda (_%g206940206958%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g206940206958%_))
                                                            (let ((_%e206943206961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g206940206958%_))))
                      (let ((_%hd206944206965%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206943206961%_)))
                            (_%tl206945206968%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206943206961%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206945206968%_))
                            (let ((_%e206946206971%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206945206968%_))))
                              (let ((_%hd206947206975%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206946206971%_)))
                                    (_%tl206948206978%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206946206971%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl206948206978%_))
                                    ((lambda (_%L206981%_ _%L206983%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L206983%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L206857%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L206981%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd206947206975%_
                                     _%hd206944206965%_)
                                    (_%g206939206954%_ _%g206940206958%_))))
                            (_%g206939206954%_ _%g206940206958%_))))
                    (_%g206939206954%_ _%g206940206958%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206938206999%_
                                                 _%unchecked206901%_))
                                              '(begin)))))
                                     _%g206874206885%_))))
                            (_%g206872207003%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L206795%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L206857%_ '()))
                   (cons '#f (cons 'signature: (cons _%L206855%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd206821206849%_
                        _%hd206818206839%_)
                       (_%g206813206828%_ _%g206814206832%_))))
               (_%g206813206828%_ _%g206814206832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206813206828%_
                                                _%g206814206832%_)))))
                                   (_%g206812207007%_
                                    (|gxc[1]#parse-signature|
                                     _%stx206709%_
                                     _%L206795%_
                                     (let ((__tmp209083
                                            (lambda (_%g207010207013%_
                                                     _%g207011207016%_)
                                              (cons _%g207010207013%_
                                                    _%g207011207016%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp209083
                                        '()
                                        _%L206793%_)))))
                                 (_%g206712206736%_ _%g206713206740%_)))
                           _%signature206730206789%_
                           _%hd206720206757%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop206725206769%_
                                                   _%target206722206763%_
                                                   '()))
                                                (_%g206712206736%_
                                                 _%g206713206740%_)))))
                                      (_%g206712206736%_ _%g206713206740%_))))
                              (_%g206712206736%_ _%g206713206740%_))))
                      (_%g206712206736%_ _%g206713206740%_)))))
          (_%g206711207019%_ _%stx206709%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx207024%_)
        (let* ((_%g207027207051%_
                (lambda (_%g207028207047%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207028207047%_))))
               (_%g207026207934%_
                (lambda (_%g207028207055%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207028207055%_))
                      (let ((_%e207031207058%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207028207055%_))))
                        (let ((_%hd207032207062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207031207058%_)))
                              (_%tl207033207065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207031207058%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207033207065%_))
                              (let ((_%e207034207068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207033207065%_))))
                                (let ((_%hd207035207072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207034207068%_)))
                                      (_%tl207036207075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207034207068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207036207075%_))
                                      (let ((_g209084_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl207036207075%_
                                                '0))))
                                        (begin
                                          (let ((_g209085_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209084_)
                                                       (##vector-length
                                                        _g209084_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209085_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209085_)))
                                          (let ((_%target207037207078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g209084_ 0)))
                                                (_%tl207039207081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g209084_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207039207081%_))
                                                (letrec ((_%loop207040207084%_
                                                          (lambda (_%hd207038207088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature207044207091%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207038207088%_))
                        (let ((_%e207041207094%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd207038207088%_))))
                          (let ((_%lp-hd207042207098%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207041207094%_)))
                                (_%lp-tl207043207101%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207041207094%_))))
                            (_%loop207040207084%_
                             _%lp-tl207043207101%_
                             (cons _%lp-hd207042207098%_
                                   _%case-signature207044207091%_))))
                        (let ((_%case-signature207045207104%_
                               (reverse _%case-signature207044207091%_)))
                          ((lambda (_%L207108%_ _%L207110%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L207110%_))
                                 (let* ((_%signatures207141%_
                                         (map (lambda (_%g207127207129%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx207024%_
                                                 _%L207110%_
                                                 _%g207127207129%_))
                                              (let ((__tmp209086
                                                     (lambda (_%g207132207135%_
                                                              _%g207133207138%_)
                                                       (cons _%g207132207135%_
                                                             _%g207133207138%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp209086
                                                 '()
                                                 _%L207108%_))))
                                        (_%g207144207170%_
                                         (lambda (_%g207145207166%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207145207166%_))))
                                        (_%g207143207930%_
                                         (lambda (_%g207145207174%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g207145207174%_))
                                               (let ((_g209087_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g207145207174%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g209088_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g209087_)
                        (##vector-length _g209087_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g209088_ 2)))
                 (error "Context expects 2 values" _g209088_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target207148207177%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g209087_
                                                             0)))
                                                         (_%tl207150207180%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g209087_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207150207180%_))
                                                         (letrec ((_%loop207151207183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd207149207187%_
                                    _%sig207155207190%_
                                    _%arity207156207192%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd207149207187%_))
                                 (let ((_%e207152207195%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd207149207187%_))))
                                   (let ((_%lp-hd207153207199%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207152207195%_)))
                                         (_%lp-tl207154207202%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207152207195%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd207153207199%_))
                                         (let ((_%e207159207205%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd207153207199%_))))
                                           (let ((_%hd207160207209%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e207159207205%_)))
                                                 (_%tl207161207212%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e207159207205%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207161207212%_))
                                                 (let ((_%e207162207215%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207161207212%_))))
                                                   (let ((_%hd207163207219%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207162207215%_)))
                                                         (_%tl207164207222%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207162207215%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207164207222%_))
                                                         (_%loop207151207183%_
                                                          _%lp-tl207154207202%_
                                                          (cons _%hd207163207219%_
                                                                _%sig207155207190%_)
                                                          (cons _%hd207160207209%_
                                                                _%arity207156207192%_))
                                                         (_%g207144207170%_
                                                          _%g207145207174%_))))
                                                 (_%g207144207170%_
                                                  _%g207145207174%_))))
                                         (_%g207144207170%_
                                          _%g207145207174%_))))
                                 (let ((_%sig207157207225%_
                                        (reverse _%sig207155207190%_))
                                       (_%arity207158207228%_
                                        (reverse _%arity207156207192%_)))
                                   ((lambda (_%L207231%_ _%L207233%_)
                                      (let* ((_%g207250207258%_
                                              (lambda (_%g207251207254%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g207251207254%_))))
                                             (_%g207249207915%_
                                              (lambda (_%g207251207262%_)
                                                ((lambda (_%L207265%_)
                                                   (let* ((_%g207278207286%_
                                                           (lambda (_%g207279207282%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g207279207282%_))))
                  (_%g207277207308%_
                   (lambda (_%g207279207290%_)
                     ((lambda (_%L207293%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L207265%_ (cons _%L207293%_ '()))))
                      _%g207279207290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207277207308%_
                                                      (let ((_g209089_
                                                             (let _%loop207312%_ ((_%rest207315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures207141%_)
                                          (_%unchecked-proc207317%_ '#f)
                                          (_%unchecked-clauses207318%_ '()))
                       (let* ((_%rest207319207327%_ _%rest207315%_)
                              (_%else207321207339%_
                               (lambda ()
                                 (values _%unchecked-proc207317%_
                                         (reverse!
                                          _%unchecked-clauses207318%_))))
                              (_%K207323207780%_
                               (lambda (_%rest207343%_ _%hd207345%_)
                                 (let* ((_%g207347207434%_
                                         (lambda (_%g207348207430%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g207348207430%_))))
                                        (_%g207346207776%_
                                         (lambda (_%g207348207438%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g207348207438%_))
                                               (let ((_%e207355207441%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g207348207438%_))))
                                                 (let ((_%hd207356207445%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207355207441%_)))
                                                       (_%tl207357207448%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207355207441%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl207357207448%_))
                                                       (let ((_%e207358207451%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl207357207448%_))))
                 (let ((_%hd207359207455%_
                        (let ()
                          (declare (not safe))
                          (##car _%e207358207451%_)))
                       (_%tl207360207458%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e207358207451%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd207359207455%_))
                       (let ((_%e207361207461%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd207359207455%_))))
                         (let ((_%hd207362207465%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e207361207461%_)))
                               (_%tl207363207468%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e207361207461%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl207363207468%_))
                               (let ((_%e207364207471%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl207363207468%_))))
                                 (let ((_%hd207365207475%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e207364207471%_)))
                                       (_%tl207366207478%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e207364207471%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd207365207475%_))
                                       (let ((_%e207367207481%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd207365207475%_))))
                                         (if (equal? _%e207367207481%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207366207478%_))
                                                 (let ((_%e207368207485%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207366207478%_))))
                                                   (let ((_%hd207369207489%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207368207485%_)))
                                                         (_%tl207370207492%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207368207485%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd207369207489%_))
                                                         (let ((_%e207371207495%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd207369207489%_))))
                   (let ((_%hd207372207499%_
                          (let ()
                            (declare (not safe))
                            (##car _%e207371207495%_)))
                         (_%tl207373207502%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e207371207495%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd207372207499%_))
                         (if (let ((__tmp209091 |gxc[1]#_g209092_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp209091
                                _%hd207372207499%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl207373207502%_))
                                 (let ((_%e207374207505%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl207373207502%_))))
                                   (let ((_%hd207375207509%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207374207505%_)))
                                         (_%tl207376207512%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207374207505%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl207376207512%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl207370207492%_))
                                             (let ((_%e207377207515%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl207370207492%_))))
                                               (let ((_%hd207378207519%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207377207515%_)))
                                                     (_%tl207379207522%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207377207515%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd207378207519%_))
                                                     (let ((_%e207380207525%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd207378207519%_))))
                                                       (if (equal? _%e207380207525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl207379207522%_))
                       (let ((_%e207381207529%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl207379207522%_))))
                         (let ((_%hd207382207533%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e207381207529%_)))
                               (_%tl207383207536%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e207381207529%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd207382207533%_))
                               (let ((_%e207384207539%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd207382207533%_))))
                                 (let ((_%hd207385207543%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e207384207539%_)))
                                       (_%tl207386207546%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e207384207539%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd207385207543%_))
                                       (if (let ((__tmp209093
                                                  |gxc[1]#_g209094_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp209093
                                              _%hd207385207543%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl207386207546%_))
                                               (let ((_%e207387207549%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl207386207546%_))))
                                                 (let ((_%hd207388207553%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207387207549%_)))
                                                       (_%tl207389207556%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207387207549%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl207389207556%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl207383207536%_))
                                                           (let ((_%e207390207559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl207383207536%_))))
                     (let ((_%hd207391207563%_
                            (let ()
                              (declare (not safe))
                              (##car _%e207390207559%_)))
                           (_%tl207392207566%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e207390207559%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd207391207563%_))
                           (let ((_%e207393207569%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd207391207563%_))))
                             (if (equal? _%e207393207569%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl207392207566%_))
                                     (let ((_%e207394207573%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl207392207566%_))))
                                       (let ((_%hd207395207577%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e207394207573%_)))
                                             (_%tl207396207580%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e207394207573%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd207395207577%_))
                                             (let ((_%e207397207583%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd207395207577%_))))
                                               (let ((_%hd207398207587%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207397207583%_)))
                                                     (_%tl207399207590%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207397207583%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd207398207587%_))
                                                     (if (let ((__tmp209095
                                                                |gxc[1]#_g209096_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp209095
                                                            _%hd207398207587%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl207399207590%_))
                     (let ((_%e207400207593%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl207399207590%_))))
                       (let ((_%hd207401207597%_
                              (let ()
                                (declare (not safe))
                                (##car _%e207400207593%_)))
                             (_%tl207402207600%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e207400207593%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl207402207600%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl207396207580%_))
                                 (let ((_%e207403207603%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl207396207580%_))))
                                   (let ((_%hd207404207607%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207403207603%_)))
                                         (_%tl207405207610%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207403207603%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd207404207607%_))
                                         (let ((_%e207406207613%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd207404207607%_))))
                                           (if (equal? _%e207406207613%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl207405207610%_))
                                                   (let ((_%e207407207617%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl207405207610%_))))
                                                     (let ((_%hd207408207621%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e207407207617%_)))
                                                           (_%tl207409207624%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e207407207617%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd207408207621%_))
                                                           (let ((_%e207410207627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd207408207621%_))))
                     (let ((_%hd207411207631%_
                            (let ()
                              (declare (not safe))
                              (##car _%e207410207627%_)))
                           (_%tl207412207634%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e207410207627%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd207411207631%_))
                           (if (let ((__tmp209097 |gxc[1]#_g209098_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp209097
                                  _%hd207411207631%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl207412207634%_))
                                   (let ((_%e207413207637%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl207412207634%_))))
                                     (let ((_%hd207414207641%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e207413207637%_)))
                                           (_%tl207415207644%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e207413207637%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl207415207644%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl207409207624%_))
                                               (let ((_%e207416207647%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl207409207624%_))))
                                                 (let ((_%hd207417207651%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e207416207647%_)))
                                                       (_%tl207418207654%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e207416207647%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd207417207651%_))
                                                       (let ((_%e207419207657%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd207417207651%_))))
                 (if (equal? _%e207419207657%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl207418207654%_))
                         (let ((_%e207420207661%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl207418207654%_))))
                           (let ((_%hd207421207665%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e207420207661%_)))
                                 (_%tl207422207668%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e207420207661%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd207421207665%_))
                                 (let ((_%e207423207671%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd207421207665%_))))
                                   (let ((_%hd207424207675%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e207423207671%_)))
                                         (_%tl207425207678%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e207423207671%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd207424207675%_))
                                         (if (let ((__tmp209099
                                                    |gxc[1]#_g209100_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp209099
                                                _%hd207424207675%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl207425207678%_))
                                                 (let ((_%e207426207681%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl207425207678%_))))
                                                   (let ((_%hd207427207685%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e207426207681%_)))
                                                         (_%tl207428207688%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e207426207681%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl207428207688%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl207422207668%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl207360207458%_))
                         ((lambda (_%L207691%_
                                   _%L207693%_
                                   _%L207694%_
                                   _%L207695%_
                                   _%L207696%_
                                   _%L207697%_)
                            (let ((_%clause207768%_
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
                                                     (cons _%L207697%_ '()))
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
                                                 (cons _%L207695%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L207691%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked207770%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L207693%_))))
                              (_%loop207312%_
                               _%rest207343%_
                               (let ((_%$e207772%_ _%unchecked207770%_))
                                 (if _%$e207772%_
                                     _%$e207772%_
                                     _%unchecked-proc207317%_))
                               (cons _%clause207768%_
                                     _%unchecked-clauses207318%_))))
                          _%hd207427207685%_
                          _%hd207414207641%_
                          _%hd207401207597%_
                          _%hd207388207553%_
                          _%hd207375207509%_
                          _%hd207356207445%_)
                         (_%g207347207434%_ _%g207348207438%_))
                     (_%g207347207434%_ _%g207348207438%_))
                 (_%g207347207434%_ _%g207348207438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g207347207434%_
                                                  _%g207348207438%_))
                                             (_%g207347207434%_
                                              _%g207348207438%_))
                                         (_%g207347207434%_
                                          _%g207348207438%_))))
                                 (_%g207347207434%_ _%g207348207438%_))))
                         (_%g207347207434%_ _%g207348207438%_))
                     (_%g207347207434%_ _%g207348207438%_)))
               (_%g207347207434%_ _%g207348207438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207347207434%_
                                                _%g207348207438%_))
                                           (_%g207347207434%_
                                            _%g207348207438%_))))
                                   (_%g207347207434%_ _%g207348207438%_))
                               (_%g207347207434%_ _%g207348207438%_))
                           (_%g207347207434%_ _%g207348207438%_))))
                   (_%g207347207434%_ _%g207348207438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g207347207434%_
                                                    _%g207348207438%_))
                                               (_%g207347207434%_
                                                _%g207348207438%_)))
                                         (_%g207347207434%_
                                          _%g207348207438%_))))
                                 (_%g207347207434%_ _%g207348207438%_))
                             (_%g207347207434%_ _%g207348207438%_))))
                     (_%g207347207434%_ _%g207348207438%_))
                 (_%g207347207434%_ _%g207348207438%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207347207434%_
                                                      _%g207348207438%_))))
                                             (_%g207347207434%_
                                              _%g207348207438%_))))
                                     (_%g207347207434%_ _%g207348207438%_))
                                 (_%g207347207434%_ _%g207348207438%_)))
                           (_%g207347207434%_ _%g207348207438%_))))
                   (_%g207347207434%_ _%g207348207438%_))
               (_%g207347207434%_ _%g207348207438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207347207434%_
                                                _%g207348207438%_))
                                           (_%g207347207434%_
                                            _%g207348207438%_))
                                       (_%g207347207434%_ _%g207348207438%_))))
                               (_%g207347207434%_ _%g207348207438%_))))
                       (_%g207347207434%_ _%g207348207438%_))
                   (_%g207347207434%_ _%g207348207438%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207347207434%_
                                                      _%g207348207438%_))))
                                             (_%g207347207434%_
                                              _%g207348207438%_))
                                         (_%g207347207434%_
                                          _%g207348207438%_))))
                                 (_%g207347207434%_ _%g207348207438%_))
                             (_%g207347207434%_ _%g207348207438%_))
                         (_%g207347207434%_ _%g207348207438%_))))
                 (_%g207347207434%_ _%g207348207438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g207347207434%_
                                                  _%g207348207438%_))
                                             (_%g207347207434%_
                                              _%g207348207438%_)))
                                       (_%g207347207434%_ _%g207348207438%_))))
                               (_%g207347207434%_ _%g207348207438%_))))
                       (_%g207347207434%_ _%g207348207438%_))))
               (_%g207347207434%_ _%g207348207438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207347207434%_
                                                _%g207348207438%_)))))
                                   (_%g207346207776%_ _%hd207345%_)))))
                         (if (pair? _%rest207319207327%_)
                             (let ((_%hd207324207784%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest207319207327%_)))
                                   (_%tl207325207787%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest207319207327%_))))
                               (let* ((_%hd207790%_ _%hd207324207784%_)
                                      (_%rest207793%_ _%tl207325207787%_))
                                 (_%K207323207780%_
                                  _%rest207793%_
                                  _%hd207790%_)))
                             (_%else207321207339%_))))))
                (begin
                  (let ((_g209090_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g209089_)
                               (##vector-length _g209089_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g209090_ 2)))
                        (error "Context expects 2 values" _g209090_)))
                  (let ((_%unchecked-proc207796%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209089_ 0)))
                        (_%unchecked-clauses207798%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209089_ 1))))
                    (if _%unchecked-proc207796%_
                        (let* ((_%g207800207824%_
                                (lambda (_%g207801207820%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g207801207820%_))))
                               (_%g207799207911%_
                                (lambda (_%g207801207828%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g207801207828%_))
                                      (let ((_%e207804207831%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g207801207828%_))))
                                        (let ((_%hd207805207835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207804207831%_)))
                                              (_%tl207806207838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207804207831%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl207806207838%_))
                                              (let ((_%e207807207841%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl207806207838%_))))
                                                (let ((_%hd207808207845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207807207841%_)))
                                                      (_%tl207809207848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207807207841%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd207808207845%_))
                                                      (let ((_g209101_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd207808207845%_ '0))))
                (begin
                  (let ((_g209102_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g209101_)
                               (##vector-length _g209101_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g209102_ 2)))
                        (error "Context expects 2 values" _g209102_)))
                  (let ((_%target207810207851%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209101_ 0)))
                        (_%tl207812207854%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g209101_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl207812207854%_))
                        (letrec ((_%loop207813207857%_
                                  (lambda (_%hd207811207861%_
                                           _%clause207817207864%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd207811207861%_))
                                        (let ((_%e207814207867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd207811207861%_))))
                                          (let ((_%lp-hd207815207871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e207814207867%_)))
                                                (_%lp-tl207816207874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e207814207867%_))))
                                            (_%loop207813207857%_
                                             _%lp-tl207816207874%_
                                             (cons _%lp-hd207815207871%_
                                                   _%clause207817207864%_))))
                                        (let ((_%clause207818207877%_
                                               (reverse _%clause207817207864%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207809207848%_))
                                              ((lambda (_%L207881%_
                                                        _%L207883%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L207883%_
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
                                             (let ((__tmp209103
                                                    (lambda (_%g207902207905%_
                                                             _%g207903207908%_)
                                                      (cons _%g207902207905%_
                                                            _%g207903207908%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp209103
                                                '()
                                                _%L207881%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause207818207877%_
                                               _%hd207805207835%_)
                                              (_%g207800207824%_
                                               _%g207801207828%_)))))))
                          (_%loop207813207857%_ _%target207810207851%_ '()))
                        (_%g207800207824%_ _%g207801207828%_)))))
              (_%g207800207824%_ _%g207801207828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g207800207824%_
                                               _%g207801207828%_))))
                                      (_%g207800207824%_ _%g207801207828%_)))))
                          (_%g207799207911%_
                           (list _%unchecked-proc207796%_
                                 _%unchecked-clauses207798%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g207251207262%_))))
                                        (_%g207249207915%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L207110%_
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
                                          _%L207231%_
                                          _%L207233%_))
                                       (let ((__tmp209104
                                              (lambda (_%g207918207922%_
                                                       _%g207919207925%_
                                                       _%g207920207927%_)
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
                                (cons _%g207919207925%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g207918207922%_ '())))))
              _%g207920207927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp209104
                                          '()
                                          _%L207231%_
                                          _%L207233%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig207157207225%_
                                    _%arity207158207228%_))))))
                   (_%loop207151207183%_ _%target207148207177%_ '() '()))
                 (_%g207144207170%_ _%g207145207174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g207144207170%_
                                                _%g207145207174%_)))))
                                   (_%g207143207930%_ _%signatures207141%_))
                                 (_%g207027207051%_ _%g207028207055%_)))
                           _%case-signature207045207104%_
                           _%hd207035207072%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207040207084%_
                                                   _%target207037207078%_
                                                   '()))
                                                (_%g207027207051%_
                                                 _%g207028207055%_)))))
                                      (_%g207027207051%_ _%g207028207055%_))))
                              (_%g207027207051%_ _%g207028207055%_))))
                      (_%g207027207051%_ _%g207028207055%_)))))
          (_%g207026207934%_ _%stx207024%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx207942%_)
        (let* ((_%__stx208924208925%_ _%$stx207942%_)
               (_%g207948208008%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208924208925%_)))))
          (let ((_%__kont208927208928%_
                 (lambda (_%L208230%_ _%L208232%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208232%_ '()))
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
                                                       (cons _%L208232%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208230%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont208929208930%_
                 (lambda (_%L208155%_ _%L208157%_ _%L208158%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208158%_ '()))
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
                                                       (cons _%L208158%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208157%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208155%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont208931208932%_
                 (lambda (_%L208069%_ _%L208071%_ _%L208072%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208072%_ '()))
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
                                                       (cons _%L208072%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208071%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208069%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208924208925%_))
                (let ((_%e207952208186%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx208924208925%_))))
                  (let ((_%tl207954208193%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207952208186%_)))
                        (_%hd207953208190%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207952208186%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207954208193%_))
                        (let ((_%e207955208196%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207954208193%_))))
                          (let ((_%tl207957208203%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207955208196%_)))
                                (_%hd207956208200%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207955208196%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd207956208200%_))
                                (let ((_%e207958208206%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd207956208200%_))))
                                  (if (equal? _%e207958208206%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl207957208203%_))
                                          (let ((_%e207959208210%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl207957208203%_))))
                                            (let ((_%tl207961208217%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e207959208210%_)))
                                                  (_%hd207960208214%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e207959208210%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207961208217%_))
                                                  (let ((_%e207962208220%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207961208217%_))))
                                                    (let ((_%tl207964208227%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207962208220%_)))
                                                          (_%hd207963208224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207962208220%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207964208227%_))
                                                          (_%__kont208927208928%_
                                                           _%hd207963208224%_
                                                           _%hd207960208214%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g207948208008%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207948208008%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g207948208008%_)))
                                      (if (equal? _%e207958208206%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl207957208203%_))
                                              (let ((_%e207975208125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl207957208203%_))))
                                                (let ((_%tl207977208132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207975208125%_)))
                                                      (_%hd207976208129%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207975208125%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl207977208132%_))
                                                      (let ((_%e207978208135%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl207977208132%_))))
                (let ((_%tl207980208142%_
                       (let () (declare (not safe)) (##cdr _%e207978208135%_)))
                      (_%hd207979208139%_
                       (let ()
                         (declare (not safe))
                         (##car _%e207978208135%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl207980208142%_))
                      (let ((_%e207981208145%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl207980208142%_))))
                        (let ((_%tl207983208152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207981208145%_)))
                              (_%hd207982208149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207981208145%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl207983208152%_))
                              (_%__kont208929208930%_
                               _%hd207982208149%_
                               _%hd207979208139%_
                               _%hd207976208129%_)
                              (let ()
                                (declare (not safe))
                                (_%g207948208008%_)))))
                      (let () (declare (not safe)) (_%g207948208008%_)))))
              (let () (declare (not safe)) (_%g207948208008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g207948208008%_)))
                                          (if (equal? _%e207958208206%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207957208203%_))
                                                  (let ((_%e207994208039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207957208203%_))))
                                                    (let ((_%tl207996208046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207994208039%_)))
                                                          (_%hd207995208043%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207994208039%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl207996208046%_))
                                                          (let ((_%e207997208049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl207996208046%_))))
                    (let ((_%tl207999208056%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207997208049%_)))
                          (_%hd207998208053%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207997208049%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207999208056%_))
                          (let ((_%e208000208059%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207999208056%_))))
                            (let ((_%tl208002208066%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208000208059%_)))
                                  (_%hd208001208063%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208000208059%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl208002208066%_))
                                  (_%__kont208931208932%_
                                   _%hd208001208063%_
                                   _%hd207998208053%_
                                   _%hd207995208043%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g207948208008%_)))))
                          (let () (declare (not safe)) (_%g207948208008%_)))))
                  (let () (declare (not safe)) (_%g207948208008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207948208008%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g207948208008%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g207948208008%_)))))
                        (let () (declare (not safe)) (_%g207948208008%_)))))
                (let () (declare (not safe)) (_%g207948208008%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx208254%_)
        (let* ((_%g208258208278%_
                (lambda (_%g208259208274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208259208274%_))))
               (_%g208257208349%_
                (lambda (_%g208259208282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208259208282%_))
                      (let ((_%e208261208285%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208259208282%_))))
                        (let ((_%hd208262208289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208261208285%_)))
                              (_%tl208263208292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208261208285%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl208263208292%_))
                              (let ((_g209105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl208263208292%_
                                        '0))))
                                (begin
                                  (let ((_g209106_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209105_)
                                               (##vector-length _g209105_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209106_ 2)))
                                        (error "Context expects 2 values"
                                               _g209106_)))
                                  (let ((_%target208264208295%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209105_ 0)))
                                        (_%tl208266208298%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g209105_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl208266208298%_))
                                        (letrec ((_%loop208267208301%_
                                                  (lambda (_%hd208265208305%_
                                                           _%decl208271208308%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd208265208305%_))
                                                        (let ((_%e208268208311%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd208265208305%_))))
                  (let ((_%lp-hd208269208315%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208268208311%_)))
                        (_%lp-tl208270208318%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208268208311%_))))
                    (_%loop208267208301%_
                     _%lp-tl208270208318%_
                     (cons _%lp-hd208269208315%_ _%decl208271208308%_))))
                (let ((_%decl208272208321%_ (reverse _%decl208271208308%_)))
                  ((lambda (_%L208325%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp209107
                                  (lambda (_%g208340208343%_ _%g208341208346%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g208340208343%_)
                                          _%g208341208346%_))))
                             (declare (not safe))
                             (__foldr1 __tmp209107 '() _%L208325%_))))
                   _%decl208272208321%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop208267208301%_
                                           _%target208264208295%_
                                           '()))
                                        (_%g208258208278%_
                                         _%g208259208282%_)))))
                              (_%g208258208278%_ _%g208259208282%_))))
                      (_%g208258208278%_ _%g208259208282%_)))))
          (_%g208257208349%_ _%$stx208254%_))))))
