(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g217998_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g218005_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g218007_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g218009_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g218011_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g218013_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g218025_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g218027_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g218029_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g218031_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g218033_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx211416%_)
        (let* ((_%g211420211438%_
                (lambda (_%g211421211434%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211421211434%_))))
               (_%g211419211493%_
                (lambda (_%g211421211442%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211421211442%_))
                      (let ((_%e211424211445%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211421211442%_))))
                        (let ((_%hd211425211449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211424211445%_)))
                              (_%tl211426211452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211424211445%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211426211452%_))
                              (let ((_%e211427211455%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211426211452%_))))
                                (let ((_%hd211428211459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211427211455%_)))
                                      (_%tl211429211462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211427211455%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211429211462%_))
                                      (let ((_%e211430211465%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211429211462%_))))
                                        (let ((_%hd211431211469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211430211465%_)))
                                              (_%tl211432211472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211430211465%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211432211472%_))
                                              ((lambda (_%L211475%_
                                                        _%L211477%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L211477%_))
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
                               (cons _%L211477%_ '()))
                         (cons _%L211475%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g211420211438%_
                                                      _%g211421211442%_)))
                                               _%hd211431211469%_
                                               _%hd211428211459%_)
                                              (_%g211420211438%_
                                               _%g211421211442%_))))
                                      (_%g211420211438%_ _%g211421211442%_))))
                              (_%g211420211438%_ _%g211421211442%_))))
                      (_%g211420211438%_ _%g211421211442%_)))))
          (_%g211419211493%_ _%$stx211416%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx211497%_)
        (let* ((_%g211501211519%_
                (lambda (_%g211502211515%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211502211515%_))))
               (_%g211500211574%_
                (lambda (_%g211502211523%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211502211523%_))
                      (let ((_%e211505211526%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211502211523%_))))
                        (let ((_%hd211506211530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211505211526%_)))
                              (_%tl211507211533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211505211526%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211507211533%_))
                              (let ((_%e211508211536%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211507211533%_))))
                                (let ((_%hd211509211540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211508211536%_)))
                                      (_%tl211510211543%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211508211536%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211510211543%_))
                                      (let ((_%e211511211546%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211510211543%_))))
                                        (let ((_%hd211512211550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211511211546%_)))
                                              (_%tl211513211553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211511211546%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211513211553%_))
                                              ((lambda (_%L211556%_
                                                        _%L211558%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L211558%_))
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
                               (cons _%L211558%_ '()))
                         (cons _%L211556%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g211501211519%_
                                                      _%g211502211523%_)))
                                               _%hd211512211550%_
                                               _%hd211509211540%_)
                                              (_%g211501211519%_
                                               _%g211502211523%_))))
                                      (_%g211501211519%_ _%g211502211523%_))))
                              (_%g211501211519%_ _%g211502211523%_))))
                      (_%g211501211519%_ _%g211502211523%_)))))
          (_%g211500211574%_ _%$stx211497%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx211578%_)
        (let* ((_%g211582211611%_
                (lambda (_%g211583211607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211583211607%_))))
               (_%g211581211711%_
                (lambda (_%g211583211615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211583211615%_))
                      (let ((_%e211586211618%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211583211615%_))))
                        (let ((_%hd211587211622%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211586211618%_)))
                              (_%tl211588211625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211586211618%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211588211625%_))
                              (let ((_g217976_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211588211625%_
                                        '0))))
                                (begin
                                  (let ((_g217977_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217976_)
                                               (##values-length _g217976_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217977_ 2)))
                                        (error "Context expects 2 values"
                                               _g217977_)))
                                  (let ((_%target211589211628%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217976_ 0)))
                                        (_%tl211591211631%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217976_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211591211631%_))
                                        (letrec ((_%loop211592211634%_
                                                  (lambda (_%hd211590211638%_
                                                           _%type211596211641%_
                                                           _%symbol211597211643%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211590211638%_))
                                                        (let ((_%e211593211646%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd211590211638%_))))
                  (let ((_%lp-hd211594211650%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211593211646%_)))
                        (_%lp-tl211595211653%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211593211646%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd211594211650%_))
                        (let ((_%e211600211656%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd211594211650%_))))
                          (let ((_%hd211601211660%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211600211656%_)))
                                (_%tl211602211663%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211600211656%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl211602211663%_))
                                (let ((_%e211603211666%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl211602211663%_))))
                                  (let ((_%hd211604211670%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211603211666%_)))
                                        (_%tl211605211673%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211603211666%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211605211673%_))
                                        (_%loop211592211634%_
                                         _%lp-tl211595211653%_
                                         (cons _%hd211604211670%_
                                               _%type211596211641%_)
                                         (cons _%hd211601211660%_
                                               _%symbol211597211643%_))
                                        (_%g211582211611%_
                                         _%g211583211615%_))))
                                (_%g211582211611%_ _%g211583211615%_))))
                        (_%g211582211611%_ _%g211583211615%_))))
                (let ((_%type211598211676%_ (reverse _%type211596211641%_))
                      (_%symbol211599211679%_
                       (reverse _%symbol211597211643%_)))
                  ((lambda (_%L211682%_ _%L211684%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L211682%_
                                _%L211684%_))
                             (let ((__tmp217978
                                    (lambda (_%g211699211703%_
                                             _%g211700211706%_
                                             _%g211701211708%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g211700211706%_
                                                        (cons _%g211699211703%_
                                                              '())))
                                            _%g211701211708%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp217978
                                '()
                                _%L211682%_
                                _%L211684%_)))))
                   _%type211598211676%_
                   _%symbol211599211679%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211592211634%_
                                           _%target211589211628%_
                                           '()
                                           '()))
                                        (_%g211582211611%_
                                         _%g211583211615%_)))))
                              (_%g211582211611%_ _%g211583211615%_))))
                      (_%g211582211611%_ _%g211583211615%_)))))
          (_%g211581211711%_ _%$stx211578%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx211716%_)
        (let* ((_%__stx217287217288%_ _%$stx211716%_)
               (_%g211721211763%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217287217288%_)))))
          (let ((_%__kont217290217291%_
                 (lambda (_%L211891%_ _%L211893%_ _%L211894%_ _%L211895%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L211895%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L211894%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L211893%_ '()))
                                           (cons _%L211891%_ '())))))))
                (_%__kont217292217293%_
                 (lambda (_%L211810%_ _%L211812%_ _%L211813%_ _%L211814%_)
                   (cons _%L211814%_
                         (cons _%L211813%_
                               (cons _%L211812%_
                                     (cons _%L211810%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match217326217327%_
                   (lambda (_%e211727211841%_
                            _%hd211728211845%_
                            _%tl211729211848%_
                            _%e211730211851%_
                            _%hd211731211855%_
                            _%tl211732211858%_
                            _%e211733211861%_
                            _%hd211734211865%_
                            _%tl211735211868%_
                            _%e211736211871%_
                            _%hd211737211875%_
                            _%tl211738211878%_
                            _%e211739211881%_
                            _%hd211740211885%_
                            _%tl211741211888%_)
                     (let ((_%L211891%_ _%hd211740211885%_)
                           (_%L211893%_ _%hd211737211875%_)
                           (_%L211894%_ _%hd211734211865%_)
                           (_%L211895%_ _%hd211731211855%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211895%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211894%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211893%_)))
                           (_%__kont217290217291%_
                            _%L211891%_
                            _%L211893%_
                            _%L211894%_
                            _%L211895%_)
                           (let ()
                             (declare (not safe))
                             (_%g211721211763%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217287217288%_))
                  (let ((_%e211727211841%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217287217288%_))))
                    (let ((_%tl211729211848%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211727211841%_)))
                          (_%hd211728211845%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211727211841%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl211729211848%_))
                          (let ((_%e211730211851%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl211729211848%_))))
                            (let ((_%tl211732211858%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211730211851%_)))
                                  (_%hd211731211855%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211730211851%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl211732211858%_))
                                  (let ((_%e211733211861%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl211732211858%_))))
                                    (let ((_%tl211735211868%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211733211861%_)))
                                          (_%hd211734211865%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211733211861%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211735211868%_))
                                          (let ((_%e211736211871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl211735211868%_))))
                                            (let ((_%tl211738211878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211736211871%_)))
                                                  (_%hd211737211875%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211736211871%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211738211878%_))
                                                  (let ((_%e211739211881%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl211738211878%_))))
                                                    (let ((_%tl211741211888%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211739211881%_)))
                                                          (_%hd211740211885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211739211881%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211741211888%_))
                                                          (_%__match217326217327%_
                                                           _%e211727211841%_
                                                           _%hd211728211845%_
                                                           _%tl211729211848%_
                                                           _%e211730211851%_
                                                           _%hd211731211855%_
                                                           _%tl211732211858%_
                                                           _%e211733211861%_
                                                           _%hd211734211865%_
                                                           _%tl211735211868%_
                                                           _%e211736211871%_
                                                           _%hd211737211875%_
                                                           _%tl211738211878%_
                                                           _%e211739211881%_
                                                           _%hd211740211885%_
                                                           _%tl211741211888%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g211721211763%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211738211878%_))
                                                      (_%__kont217292217293%_
                                                       _%hd211737211875%_
                                                       _%hd211734211865%_
                                                       _%hd211731211855%_
                                                       _%hd211728211845%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g211721211763%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g211721211763%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g211721211763%_)))))
                          (let () (declare (not safe)) (_%g211721211763%_)))))
                  (let () (declare (not safe)) (_%g211721211763%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx211920%_)
        (let* ((_%g211924211959%_
                (lambda (_%g211925211955%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211925211955%_))))
               (_%g211923212078%_
                (lambda (_%g211925211963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211925211963%_))
                      (let ((_%e211929211966%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211925211963%_))))
                        (let ((_%hd211930211970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211929211966%_)))
                              (_%tl211931211973%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211929211966%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211931211973%_))
                              (let ((_g217979_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211931211973%_
                                        '0))))
                                (begin
                                  (let ((_g217980_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217979_)
                                               (##values-length _g217979_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217980_ 2)))
                                        (error "Context expects 2 values"
                                               _g217980_)))
                                  (let ((_%target211932211976%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217979_ 0)))
                                        (_%tl211934211979%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217979_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211934211979%_))
                                        (letrec ((_%loop211935211982%_
                                                  (lambda (_%hd211933211986%_
                                                           _%symbol211939211989%_
                                                           _%method211940211991%_
                                                           _%type-t211941211993%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211933211986%_))
                                                        (let ((_%e211936211996%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd211933211986%_))))
                  (let ((_%lp-hd211937212000%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211936211996%_)))
                        (_%lp-tl211938212003%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211936211996%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd211937212000%_))
                        (let ((_%e211945212006%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd211937212000%_))))
                          (let ((_%hd211946212010%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211945212006%_)))
                                (_%tl211947212013%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211945212006%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl211947212013%_))
                                (let ((_%e211948212016%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl211947212013%_))))
                                  (let ((_%hd211949212020%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211948212016%_)))
                                        (_%tl211950212023%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211948212016%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211950212023%_))
                                        (let ((_%e211951212026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl211950212023%_))))
                                          (let ((_%hd211952212030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211951212026%_)))
                                                (_%tl211953212033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211951212026%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211953212033%_))
                                                (_%loop211935211982%_
                                                 _%lp-tl211938212003%_
                                                 (cons _%hd211952212030%_
                                                       _%symbol211939211989%_)
                                                 (cons _%hd211949212020%_
                                                       _%method211940211991%_)
                                                 (cons _%hd211946212010%_
                                                       _%type-t211941211993%_))
                                                (_%g211924211959%_
                                                 _%g211925211963%_))))
                                        (_%g211924211959%_
                                         _%g211925211963%_))))
                                (_%g211924211959%_ _%g211925211963%_))))
                        (_%g211924211959%_ _%g211925211963%_))))
                (let ((_%symbol211942212036%_ (reverse _%symbol211939211989%_))
                      (_%method211943212039%_ (reverse _%method211940211991%_))
                      (_%type-t211944212041%_
                       (reverse _%type-t211941211993%_)))
                  ((lambda (_%L212044%_ _%L212046%_ _%L212047%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L212044%_
                                _%L212046%_
                                _%L212047%_))
                             (let ((__tmp217981
                                    (lambda (_%g212063212068%_
                                             _%g212064212071%_
                                             _%g212065212073%_
                                             _%g212066212075%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g212065212073%_
                                                        (cons _%g212064212071%_
                                                              (cons _%g212063212068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g212066212075%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp217981
                                '()
                                _%L212044%_
                                _%L212046%_
                                _%L212047%_)))))
                   _%symbol211942212036%_
                   _%method211943212039%_
                   _%type-t211944212041%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211935211982%_
                                           _%target211932211976%_
                                           '()
                                           '()
                                           '()))
                                        (_%g211924211959%_
                                         _%g211925211963%_)))))
                              (_%g211924211959%_ _%g211925211963%_))))
                      (_%g211924211959%_ _%g211925211963%_)))))
          (_%g211923212078%_ _%$stx211920%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx212083%_)
        (let* ((_%g212087212120%_
                (lambda (_%g212088212116%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212088212116%_))))
               (_%g212086212234%_
                (lambda (_%g212088212124%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212088212124%_))
                      (let ((_%e212092212127%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212088212124%_))))
                        (let ((_%hd212093212131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212092212127%_)))
                              (_%tl212094212134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212092212127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212094212134%_))
                              (let ((_%e212095212137%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212094212134%_))))
                                (let ((_%hd212096212141%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212095212137%_)))
                                      (_%tl212097212144%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212095212137%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl212097212144%_))
                                      (let ((_g217982_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl212097212144%_
                                                '0))))
                                        (begin
                                          (let ((_g217983_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g217982_)
                                                       (##values-length
                                                        _g217982_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g217983_ 2)))
                                                (error "Context expects 2 values"
                                                       _g217983_)))
                                          (let ((_%target212098212147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g217982_ 0)))
                                                (_%tl212100212150%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g217982_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl212100212150%_))
                                                (letrec ((_%loop212101212153%_
                                                          (lambda (_%hd212099212157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol212105212160%_
                           _%method212106212162%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd212099212157%_))
                        (let ((_%e212102212165%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd212099212157%_))))
                          (let ((_%lp-hd212103212169%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e212102212165%_)))
                                (_%lp-tl212104212172%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e212102212165%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd212103212169%_))
                                (let ((_%e212109212175%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd212103212169%_))))
                                  (let ((_%hd212110212179%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212109212175%_)))
                                        (_%tl212111212182%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212109212175%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl212111212182%_))
                                        (let ((_%e212112212185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl212111212182%_))))
                                          (let ((_%hd212113212189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e212112212185%_)))
                                                (_%tl212114212192%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e212112212185%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl212114212192%_))
                                                (_%loop212101212153%_
                                                 _%lp-tl212104212172%_
                                                 (cons _%hd212113212189%_
                                                       _%symbol212105212160%_)
                                                 (cons _%hd212110212179%_
                                                       _%method212106212162%_))
                                                (_%g212087212120%_
                                                 _%g212088212124%_))))
                                        (_%g212087212120%_
                                         _%g212088212124%_))))
                                (_%g212087212120%_ _%g212088212124%_))))
                        (let ((_%symbol212107212195%_
                               (reverse _%symbol212105212160%_))
                              (_%method212108212198%_
                               (reverse _%method212106212162%_)))
                          ((lambda (_%L212201%_ _%L212203%_ _%L212204%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L212201%_
                                        _%L212203%_))
                                     (let ((__tmp217984
                                            (lambda (_%g212222212226%_
                                                     _%g212223212229%_
                                                     _%g212224212231%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L212204%_
                                                                (cons _%g212223212229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g212222212226%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g212224212231%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp217984
                                        '()
                                        _%L212201%_
                                        _%L212203%_)))))
                           _%symbol212107212195%_
                           _%method212108212198%_
                           _%hd212096212141%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop212101212153%_
                                                   _%target212098212147%_
                                                   '()
                                                   '()))
                                                (_%g212087212120%_
                                                 _%g212088212124%_)))))
                                      (_%g212087212120%_ _%g212088212124%_))))
                              (_%g212087212120%_ _%g212088212124%_))))
                      (_%g212087212120%_ _%g212088212124%_)))))
          (_%g212086212234%_ _%$stx212083%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx212239%_)
        (let* ((_%g212243212257%_
                (lambda (_%g212244212253%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212244212253%_))))
               (_%g212242212298%_
                (lambda (_%g212244212261%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212244212261%_))
                      (let ((_%e212246212264%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212244212261%_))))
                        (let ((_%hd212247212268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212246212264%_)))
                              (_%tl212248212271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212246212264%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212248212271%_))
                              (let ((_%e212249212274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212248212271%_))))
                                (let ((_%hd212250212278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212249212274%_)))
                                      (_%tl212251212281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212249212274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212251212281%_))
                                      ((lambda (_%L212284%_)
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
                                                           (cons _%L212284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212250212278%_)
                                      (_%g212243212257%_ _%g212244212261%_))))
                              (_%g212243212257%_ _%g212244212261%_))))
                      (_%g212243212257%_ _%g212244212261%_)))))
          (_%g212242212298%_ _%$stx212239%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx212302%_)
        (let* ((_%g212306212360%_
                (lambda (_%g212307212356%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212307212356%_))))
               (_%g212305212541%_
                (lambda (_%g212307212364%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212307212364%_))
                      (let ((_%e212319212367%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212307212364%_))))
                        (let ((_%hd212320212371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212319212367%_)))
                              (_%tl212321212374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212319212367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212321212374%_))
                              (let ((_%e212322212377%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212321212374%_))))
                                (let ((_%hd212323212381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212322212377%_)))
                                      (_%tl212324212384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212322212377%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212324212384%_))
                                      (let ((_%e212325212387%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212324212384%_))))
                                        (let ((_%hd212326212391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212325212387%_)))
                                              (_%tl212327212394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212325212387%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212327212394%_))
                                              (let ((_%e212328212397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212327212394%_))))
                                                (let ((_%hd212329212401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212328212397%_)))
                                                      (_%tl212330212404%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212328212397%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl212330212404%_))
                                                      (let ((_%e212331212407%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl212330212404%_))))
                (let ((_%hd212332212411%_
                       (let () (declare (not safe)) (##car _%e212331212407%_)))
                      (_%tl212333212414%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e212331212407%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl212333212414%_))
                      (let ((_%e212334212417%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl212333212414%_))))
                        (let ((_%hd212335212421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212334212417%_)))
                              (_%tl212336212424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212334212417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212336212424%_))
                              (let ((_%e212337212427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212336212424%_))))
                                (let ((_%hd212338212431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212337212427%_)))
                                      (_%tl212339212434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212337212427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212339212434%_))
                                      (let ((_%e212340212437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212339212434%_))))
                                        (let ((_%hd212341212441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212340212437%_)))
                                              (_%tl212342212444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212340212437%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212342212444%_))
                                              (let ((_%e212343212447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212342212444%_))))
                                                (let ((_%hd212344212451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212343212447%_)))
                                                      (_%tl212345212454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212343212447%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl212345212454%_))
                                                      (let ((_%e212346212457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl212345212454%_))))
                (let ((_%hd212347212461%_
                       (let () (declare (not safe)) (##car _%e212346212457%_)))
                      (_%tl212348212464%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e212346212457%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl212348212464%_))
                      (let ((_%e212349212467%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl212348212464%_))))
                        (let ((_%hd212350212471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212349212467%_)))
                              (_%tl212351212474%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212349212467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212351212474%_))
                              (let ((_%e212352212477%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212351212474%_))))
                                (let ((_%hd212353212481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212352212477%_)))
                                      (_%tl212354212484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212352212477%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212354212484%_))
                                      ((lambda (_%L212487%_
                                                _%L212489%_
                                                _%L212490%_
                                                _%L212491%_
                                                _%L212492%_
                                                _%L212493%_
                                                _%L212494%_
                                                _%L212495%_
                                                _%L212496%_
                                                _%L212497%_
                                                _%L212498%_)
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
                                                           (cons _%L212498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L212497%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L212496%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L212495%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L212494%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L212493%_ '()))
                                           (cons _%L212492%_
                                                 (cons _%L212491%_
                                                       (cons _%L212490%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L212489%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L212487%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd212353212481%_
                                       _%hd212350212471%_
                                       _%hd212347212461%_
                                       _%hd212344212451%_
                                       _%hd212341212441%_
                                       _%hd212338212431%_
                                       _%hd212335212421%_
                                       _%hd212332212411%_
                                       _%hd212329212401%_
                                       _%hd212326212391%_
                                       _%hd212323212381%_)
                                      (_%g212306212360%_ _%g212307212364%_))))
                              (_%g212306212360%_ _%g212307212364%_))))
                      (_%g212306212360%_ _%g212307212364%_))))
              (_%g212306212360%_ _%g212307212364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212306212360%_
                                               _%g212307212364%_))))
                                      (_%g212306212360%_ _%g212307212364%_))))
                              (_%g212306212360%_ _%g212307212364%_))))
                      (_%g212306212360%_ _%g212307212364%_))))
              (_%g212306212360%_ _%g212307212364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212306212360%_
                                               _%g212307212364%_))))
                                      (_%g212306212360%_ _%g212307212364%_))))
                              (_%g212306212360%_ _%g212307212364%_))))
                      (_%g212306212360%_ _%g212307212364%_)))))
          (_%g212305212541%_ _%$stx212302%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx212545%_)
        (let* ((_%g212549212563%_
                (lambda (_%g212550212559%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212550212559%_))))
               (_%g212548212604%_
                (lambda (_%g212550212567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212550212567%_))
                      (let ((_%e212552212570%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212550212567%_))))
                        (let ((_%hd212553212574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212552212570%_)))
                              (_%tl212554212577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212552212570%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212554212577%_))
                              (let ((_%e212555212580%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212554212577%_))))
                                (let ((_%hd212556212584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212555212580%_)))
                                      (_%tl212557212587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212555212580%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212557212587%_))
                                      ((lambda (_%L212590%_)
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
                                                           (cons _%L212590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212556212584%_)
                                      (_%g212549212563%_ _%g212550212567%_))))
                              (_%g212549212563%_ _%g212550212567%_))))
                      (_%g212549212563%_ _%g212550212567%_)))))
          (_%g212548212604%_ _%$stx212545%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx212608%_)
        (let* ((_%g212612212626%_
                (lambda (_%g212613212622%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212613212622%_))))
               (_%g212611212667%_
                (lambda (_%g212613212630%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212613212630%_))
                      (let ((_%e212615212633%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212613212630%_))))
                        (let ((_%hd212616212637%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212615212633%_)))
                              (_%tl212617212640%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212615212633%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212617212640%_))
                              (let ((_%e212618212643%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212617212640%_))))
                                (let ((_%hd212619212647%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212618212643%_)))
                                      (_%tl212620212650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212618212643%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212620212650%_))
                                      ((lambda (_%L212653%_)
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
                                                           (cons _%L212653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212619212647%_)
                                      (_%g212612212626%_ _%g212613212630%_))))
                              (_%g212612212626%_ _%g212613212630%_))))
                      (_%g212612212626%_ _%g212613212630%_)))))
          (_%g212611212667%_ _%$stx212608%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx212671%_)
        (let* ((_%g212675212697%_
                (lambda (_%g212676212693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212676212693%_))))
               (_%g212674212766%_
                (lambda (_%g212676212701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212676212701%_))
                      (let ((_%e212680212704%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212676212701%_))))
                        (let ((_%hd212681212708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212680212704%_)))
                              (_%tl212682212711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212680212704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212682212711%_))
                              (let ((_%e212683212714%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212682212711%_))))
                                (let ((_%hd212684212718%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212683212714%_)))
                                      (_%tl212685212721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212683212714%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212685212721%_))
                                      (let ((_%e212686212724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212685212721%_))))
                                        (let ((_%hd212687212728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212686212724%_)))
                                              (_%tl212688212731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212686212724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212688212731%_))
                                              (let ((_%e212689212734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212688212731%_))))
                                                (let ((_%hd212690212738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212689212734%_)))
                                                      (_%tl212691212741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212689212734%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212691212741%_))
                                                      ((lambda (_%L212744%_
                                                                _%L212746%_
                                                                _%L212747%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L212747%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L212746%_ '()))
                                   (cons _%L212744%_ '())))))
               _%hd212690212738%_
               _%hd212687212728%_
               _%hd212684212718%_)
              (_%g212675212697%_ _%g212676212701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212675212697%_
                                               _%g212676212701%_))))
                                      (_%g212675212697%_ _%g212676212701%_))))
                              (_%g212675212697%_ _%g212676212701%_))))
                      (_%g212675212697%_ _%g212676212701%_)))))
          (_%g212674212766%_ _%$stx212671%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx212770%_)
        (let* ((_%g212774212796%_
                (lambda (_%g212775212792%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212775212792%_))))
               (_%g212773212865%_
                (lambda (_%g212775212800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212775212800%_))
                      (let ((_%e212779212803%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212775212800%_))))
                        (let ((_%hd212780212807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212779212803%_)))
                              (_%tl212781212810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212779212803%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212781212810%_))
                              (let ((_%e212782212813%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212781212810%_))))
                                (let ((_%hd212783212817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212782212813%_)))
                                      (_%tl212784212820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212782212813%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212784212820%_))
                                      (let ((_%e212785212823%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212784212820%_))))
                                        (let ((_%hd212786212827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212785212823%_)))
                                              (_%tl212787212830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212785212823%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212787212830%_))
                                              (let ((_%e212788212833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212787212830%_))))
                                                (let ((_%hd212789212837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212788212833%_)))
                                                      (_%tl212790212840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212788212833%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212790212840%_))
                                                      ((lambda (_%L212843%_
                                                                _%L212845%_
                                                                _%L212846%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L212846%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L212845%_ '()))
                                   (cons _%L212843%_ '())))))
               _%hd212789212837%_
               _%hd212786212827%_
               _%hd212783212817%_)
              (_%g212774212796%_ _%g212775212800%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212774212796%_
                                               _%g212775212800%_))))
                                      (_%g212774212796%_ _%g212775212800%_))))
                              (_%g212774212796%_ _%g212775212800%_))))
                      (_%g212774212796%_ _%g212775212800%_)))))
          (_%g212773212865%_ _%$stx212770%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx212869%_)
        (let* ((_%g212873212887%_
                (lambda (_%g212874212883%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212874212883%_))))
               (_%g212872212928%_
                (lambda (_%g212874212891%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212874212891%_))
                      (let ((_%e212876212894%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212874212891%_))))
                        (let ((_%hd212877212898%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212876212894%_)))
                              (_%tl212878212901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212876212894%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212878212901%_))
                              (let ((_%e212879212904%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212878212901%_))))
                                (let ((_%hd212880212908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212879212904%_)))
                                      (_%tl212881212911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212879212904%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212881212911%_))
                                      ((lambda (_%L212914%_)
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
                                                           (cons _%L212914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212880212908%_)
                                      (_%g212873212887%_ _%g212874212891%_))))
                              (_%g212873212887%_ _%g212874212891%_))))
                      (_%g212873212887%_ _%g212874212891%_)))))
          (_%g212872212928%_ _%$stx212869%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx212932%_)
        (let* ((_%g212936212954%_
                (lambda (_%g212937212950%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212937212950%_))))
               (_%g212935213009%_
                (lambda (_%g212937212958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212937212958%_))
                      (let ((_%e212940212961%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212937212958%_))))
                        (let ((_%hd212941212965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212940212961%_)))
                              (_%tl212942212968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212940212961%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212942212968%_))
                              (let ((_%e212943212971%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212942212968%_))))
                                (let ((_%hd212944212975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212943212971%_)))
                                      (_%tl212945212978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212943212971%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212945212978%_))
                                      (let ((_%e212946212981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212945212978%_))))
                                        (let ((_%hd212947212985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212946212981%_)))
                                              (_%tl212948212988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212946212981%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212948212988%_))
                                              ((lambda (_%L212991%_
                                                        _%L212993%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L212993%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L212991%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd212947212985%_
                                               _%hd212944212975%_)
                                              (_%g212936212954%_
                                               _%g212937212958%_))))
                                      (_%g212936212954%_ _%g212937212958%_))))
                              (_%g212936212954%_ _%g212937212958%_))))
                      (_%g212936212954%_ _%g212937212958%_)))))
          (_%g212935213009%_ _%$stx212932%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx213013%_)
        (let* ((_%__stx217355217356%_ _%$stx213013%_)
               (_%g213020213081%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217355217356%_)))))
          (let ((_%__kont217358217359%_
                 (lambda (_%L213319%_ _%L213321%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L213321%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L213319%_ '()))
                                     '())))))
                (_%__kont217360217361%_
                 (lambda (_%L213258%_ _%L213260%_ _%L213261%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L213261%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L213260%_ '()))
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
                                 (cons _%L213258%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont217362217363%_
                 (lambda (_%L213182%_ _%L213184%_)
                   (cons _%L213184%_ (cons _%L213182%_ (cons '#f '())))))
                (_%__kont217364217365%_
                 (lambda (_%L213132%_ _%L213134%_ _%L213135%_)
                   (cons _%L213135%_
                         (cons _%L213134%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L213132%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx217355217356%_))
                (let ((_%e213024213289%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx217355217356%_))))
                  (let ((_%tl213026213296%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213024213289%_)))
                        (_%hd213025213293%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213024213289%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl213026213296%_))
                        (let ((_%e213027213299%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl213026213296%_))))
                          (let ((_%tl213029213306%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e213027213299%_)))
                                (_%hd213028213303%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e213027213299%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl213029213306%_))
                                (let ((_%e213030213309%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl213029213306%_))))
                                  (let ((_%tl213032213316%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e213030213309%_)))
                                        (_%hd213031213313%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e213030213309%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213032213316%_))
                                        (_%__kont217358217359%_
                                         _%hd213031213313%_
                                         _%hd213028213303%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl213032213316%_))
                                            (let ((_%e213045213234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl213032213316%_))))
                                              (let ((_%tl213047213241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e213045213234%_)))
                                                    (_%hd213046213238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e213045213234%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd213046213238%_))
                                                    (let ((_%e213048213244%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd213046213238%_))))
                                                      (if (equal? _%e213048213244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl213047213241%_))
                      (let ((_%e213049213248%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl213047213241%_))))
                        (let ((_%tl213051213255%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213049213248%_)))
                              (_%hd213050213252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213049213248%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl213051213255%_))
                              (_%__kont217360217361%_
                               _%hd213050213252%_
                               _%hd213031213313%_
                               _%hd213028213303%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd213031213313%_))
                                  (let ((_%e213072213118%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd213031213313%_))))
                                    (declare (not safe))
                                    (_%g213020213081%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g213020213081%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd213031213313%_))
                          (let ((_%e213072213118%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd213031213313%_))))
                            (if (equal? _%e213072213118%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl213047213241%_))
                                    (_%__kont217364217365%_
                                     _%hd213046213238%_
                                     _%hd213028213303%_
                                     _%hd213025213293%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g213020213081%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g213020213081%_))))
                          (let () (declare (not safe)) (_%g213020213081%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd213031213313%_))
                      (let ((_%e213072213118%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd213031213313%_))))
                        (if (equal? _%e213072213118%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl213047213241%_))
                                (_%__kont217364217365%_
                                 _%hd213046213238%_
                                 _%hd213028213303%_
                                 _%hd213025213293%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g213020213081%_)))
                            (let () (declare (not safe)) (_%g213020213081%_))))
                      (let () (declare (not safe)) (_%g213020213081%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd213031213313%_))
                                                        (let ((_%e213072213118%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd213031213313%_))))
                  (if (equal? _%e213072213118%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl213047213241%_))
                          (_%__kont217364217365%_
                           _%hd213046213238%_
                           _%hd213028213303%_
                           _%hd213025213293%_)
                          (let () (declare (not safe)) (_%g213020213081%_)))
                      (let () (declare (not safe)) (_%g213020213081%_))))
                (let () (declare (not safe)) (_%g213020213081%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd213031213313%_))
                                                (let ((_%e213072213118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd213031213313%_))))
                                                  (declare (not safe))
                                                  (_%g213020213081%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g213020213081%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl213029213306%_))
                                    (_%__kont217362217363%_
                                     _%hd213028213303%_
                                     _%hd213025213293%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g213020213081%_))))))
                        (let () (declare (not safe)) (_%g213020213081%_)))))
                (let () (declare (not safe)) (_%g213020213081%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx213340%_)
        (let* ((_%g213344213373%_
                (lambda (_%g213345213369%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213345213369%_))))
               (_%g213343213482%_
                (lambda (_%g213345213377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213345213377%_))
                      (let ((_%e213347213380%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213345213377%_))))
                        (let ((_%hd213348213384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213347213380%_)))
                              (_%tl213349213387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213347213380%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl213349213387%_))
                              (let ((_g217985_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl213349213387%_
                                        '0))))
                                (begin
                                  (let ((_g217986_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217985_)
                                               (##values-length _g217985_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217986_ 2)))
                                        (error "Context expects 2 values"
                                               _g217986_)))
                                  (let ((_%target213350213390%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217985_ 0)))
                                        (_%tl213352213393%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217985_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213352213393%_))
                                        (letrec ((_%loop213353213396%_
                                                  (lambda (_%hd213351213400%_
                                                           _%clause213357213403%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd213351213400%_))
                                                        (let ((_%e213354213406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd213351213400%_))))
                  (let ((_%lp-hd213355213410%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213354213406%_)))
                        (_%lp-tl213356213413%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213354213406%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd213355213410%_))
                        (let ((_g217987_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd213355213410%_
                                  '0))))
                          (begin
                            (let ((_g217988_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g217987_)
                                         (##values-length _g217987_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g217988_ 2)))
                                  (error "Context expects 2 values"
                                         _g217988_)))
                            (let ((_%target213359213416%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g217987_ 0)))
                                  (_%tl213361213419%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g217987_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl213361213419%_))
                                  (letrec ((_%loop213362213422%_
                                            (lambda (_%hd213360213426%_
                                                     _%clause213366213429%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd213360213426%_))
                                                  (let ((_%e213363213432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd213360213426%_))))
                                                    (let ((_%lp-hd213364213436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e213363213432%_)))
                                                          (_%lp-tl213365213439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e213363213432%_))))
                                                      (_%loop213362213422%_
                                                       _%lp-tl213365213439%_
                                                       (cons _%lp-hd213364213436%_
                                                             _%clause213366213429%_))))
                                                  (let ((_%clause213367213442%_
                                                         (reverse _%clause213366213429%_)))
                                                    (_%loop213353213396%_
                                                     _%lp-tl213356213413%_
                                                     (cons _%clause213367213442%_
                                                           _%clause213357213403%_)))))))
                                    (_%loop213362213422%_
                                     _%target213359213416%_
                                     '()))
                                  (_%g213344213373%_ _%g213345213377%_)))))
                        (_%g213344213373%_ _%g213345213377%_))))
                (let ((_%clause213358213446%_
                       (reverse _%clause213357213403%_)))
                  ((lambda (_%L213450%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp217989
                                              (lambda (_%g213465213470%_
                                                       _%g213466213473%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp217990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g213467213476%_ _%g213468213479%_)
                             (cons _%g213467213476%_ _%g213468213479%_))))
                      (declare (not safe))
                      (__foldr1 __tmp217990 '() _%g213465213470%_)))
              _%g213466213473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp217989
                                          '()
                                          _%L213450%_)))
                                 '())))
                   _%clause213358213446%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop213353213396%_
                                           _%target213350213390%_
                                           '()))
                                        (_%g213344213373%_
                                         _%g213345213377%_)))))
                              (_%g213344213373%_ _%g213345213377%_))))
                      (_%g213344213373%_ _%g213345213377%_)))))
          (_%g213343213482%_ _%$stx213340%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx213488%_)
        (let* ((_%g213492213510%_
                (lambda (_%g213493213506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213493213506%_))))
               (_%g213491213565%_
                (lambda (_%g213493213514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213493213514%_))
                      (let ((_%e213496213517%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213493213514%_))))
                        (let ((_%hd213497213521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213496213517%_)))
                              (_%tl213498213524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213496213517%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213498213524%_))
                              (let ((_%e213499213527%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213498213524%_))))
                                (let ((_%hd213500213531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213499213527%_)))
                                      (_%tl213501213534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213499213527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213501213534%_))
                                      (let ((_%e213502213537%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213501213534%_))))
                                        (let ((_%hd213503213541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213502213537%_)))
                                              (_%tl213504213544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213502213537%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213504213544%_))
                                              ((lambda (_%L213547%_
                                                        _%L213549%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L213549%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L213547%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213503213541%_
                                               _%hd213500213531%_)
                                              (_%g213492213510%_
                                               _%g213493213514%_))))
                                      (_%g213492213510%_ _%g213493213514%_))))
                              (_%g213492213510%_ _%g213493213514%_))))
                      (_%g213492213510%_ _%g213493213514%_)))))
          (_%g213491213565%_ _%$stx213488%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx213569%_)
        (let* ((_%g213573213591%_
                (lambda (_%g213574213587%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213574213587%_))))
               (_%g213572213646%_
                (lambda (_%g213574213595%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213574213595%_))
                      (let ((_%e213577213598%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213574213595%_))))
                        (let ((_%hd213578213602%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213577213598%_)))
                              (_%tl213579213605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213577213598%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213579213605%_))
                              (let ((_%e213580213608%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213579213605%_))))
                                (let ((_%hd213581213612%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213580213608%_)))
                                      (_%tl213582213615%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213580213608%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213582213615%_))
                                      (let ((_%e213583213618%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213582213615%_))))
                                        (let ((_%hd213584213622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213583213618%_)))
                                              (_%tl213585213625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213583213618%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213585213625%_))
                                              ((lambda (_%L213628%_
                                                        _%L213630%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L213630%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L213628%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213584213622%_
                                               _%hd213581213612%_)
                                              (_%g213573213591%_
                                               _%g213574213595%_))))
                                      (_%g213573213591%_ _%g213574213595%_))))
                              (_%g213573213591%_ _%g213574213595%_))))
                      (_%g213573213591%_ _%g213574213595%_)))))
          (_%g213572213646%_ _%$stx213569%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx213650%_)
        (let* ((_%g213654213683%_
                (lambda (_%g213655213679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213655213679%_))))
               (_%g213653213783%_
                (lambda (_%g213655213687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213655213687%_))
                      (let ((_%e213658213690%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213655213687%_))))
                        (let ((_%hd213659213694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213658213690%_)))
                              (_%tl213660213697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213658213690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl213660213697%_))
                              (let ((_g217991_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl213660213697%_
                                        '0))))
                                (begin
                                  (let ((_g217992_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217991_)
                                               (##values-length _g217991_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217992_ 2)))
                                        (error "Context expects 2 values"
                                               _g217992_)))
                                  (let ((_%target213661213700%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217991_ 0)))
                                        (_%tl213663213703%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217991_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213663213703%_))
                                        (letrec ((_%loop213664213706%_
                                                  (lambda (_%hd213662213710%_
                                                           _%rule213668213713%_
                                                           _%proc213669213715%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd213662213710%_))
                                                        (let ((_%e213665213718%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd213662213710%_))))
                  (let ((_%lp-hd213666213722%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213665213718%_)))
                        (_%lp-tl213667213725%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213665213718%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd213666213722%_))
                        (let ((_%e213672213728%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd213666213722%_))))
                          (let ((_%hd213673213732%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e213672213728%_)))
                                (_%tl213674213735%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e213672213728%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl213674213735%_))
                                (let ((_%e213675213738%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl213674213735%_))))
                                  (let ((_%hd213676213742%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e213675213738%_)))
                                        (_%tl213677213745%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e213675213738%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213677213745%_))
                                        (_%loop213664213706%_
                                         _%lp-tl213667213725%_
                                         (cons _%hd213676213742%_
                                               _%rule213668213713%_)
                                         (cons _%hd213673213732%_
                                               _%proc213669213715%_))
                                        (_%g213654213683%_
                                         _%g213655213687%_))))
                                (_%g213654213683%_ _%g213655213687%_))))
                        (_%g213654213683%_ _%g213655213687%_))))
                (let ((_%rule213670213748%_ (reverse _%rule213668213713%_))
                      (_%proc213671213751%_ (reverse _%proc213669213715%_)))
                  ((lambda (_%L213754%_ _%L213756%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L213754%_
                                _%L213756%_))
                             (let ((__tmp217993
                                    (lambda (_%g213771213775%_
                                             _%g213772213778%_
                                             _%g213773213780%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g213772213778%_
                                                        (cons _%g213771213775%_
                                                              '())))
                                            _%g213773213780%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp217993
                                '()
                                _%L213754%_
                                _%L213756%_)))))
                   _%rule213670213748%_
                   _%proc213671213751%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop213664213706%_
                                           _%target213661213700%_
                                           '()
                                           '()))
                                        (_%g213654213683%_
                                         _%g213655213687%_)))))
                              (_%g213654213683%_ _%g213655213687%_))))
                      (_%g213654213683%_ _%g213655213687%_)))))
          (_%g213653213783%_ _%$stx213650%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx213788%_)
        (let* ((_%g213792213810%_
                (lambda (_%g213793213806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213793213806%_))))
               (_%g213791213865%_
                (lambda (_%g213793213814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213793213814%_))
                      (let ((_%e213796213817%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213793213814%_))))
                        (let ((_%hd213797213821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213796213817%_)))
                              (_%tl213798213824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213796213817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213798213824%_))
                              (let ((_%e213799213827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213798213824%_))))
                                (let ((_%hd213800213831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213799213827%_)))
                                      (_%tl213801213834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213799213827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213801213834%_))
                                      (let ((_%e213802213837%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213801213834%_))))
                                        (let ((_%hd213803213841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213802213837%_)))
                                              (_%tl213804213844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213802213837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213804213844%_))
                                              ((lambda (_%L213847%_
                                                        _%L213849%_)
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
                                                   (cons _%L213849%_ '()))
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
                 (cons _%L213847%_ '())))
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
                                   (cons _%L213849%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213803213841%_
                                               _%hd213800213831%_)
                                              (_%g213792213810%_
                                               _%g213793213814%_))))
                                      (_%g213792213810%_ _%g213793213814%_))))
                              (_%g213792213810%_ _%g213793213814%_))))
                      (_%g213792213810%_ _%g213793213814%_)))))
          (_%g213791213865%_ _%$stx213788%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx213869%_)
        (let* ((_%__stx217473217474%_ _%$stx213869%_)
               (_%g213874213899%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217473217474%_)))))
          (let ((_%__kont217476217477%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont217478217479%_
                 (lambda (_%L213946%_ _%L213948%_ _%L213949%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L213949%_ (cons _%L213948%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L213946%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx217473217474%_))
                (let ((_%e213876213975%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx217473217474%_))))
                  (let ((_%tl213878213982%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213876213975%_)))
                        (_%hd213877213979%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213876213975%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl213878213982%_))
                        (_%__kont217476217477%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl213878213982%_))
                            (let ((_%e213885213916%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl213878213982%_))))
                              (let ((_%tl213887213923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e213885213916%_)))
                                    (_%hd213886213920%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e213885213916%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd213886213920%_))
                                    (let ((_%e213888213926%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd213886213920%_))))
                                      (let ((_%tl213890213933%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e213888213926%_)))
                                            (_%hd213889213930%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e213888213926%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl213890213933%_))
                                            (let ((_%e213891213936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl213890213933%_))))
                                              (let ((_%tl213893213943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e213891213936%_)))
                                                    (_%hd213892213940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e213891213936%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl213893213943%_))
                                                    (_%__kont217478217479%_
                                                     _%tl213887213923%_
                                                     _%hd213892213940%_
                                                     _%hd213889213930%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g213874213899%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g213874213899%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g213874213899%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g213874213899%_))))))
                (let () (declare (not safe)) (_%g213874213899%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx213993%_)
        (let* ((_%__stx217517217518%_ _%$stx213993%_)
               (_%g213998214029%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217517217518%_)))))
          (let ((_%__kont217520217521%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont217522217523%_
                 (lambda (_%L214096%_ _%L214098%_ _%L214099%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L214099%_
                                           (let ((__tmp217994
                                                  (lambda (_%g214119214122%_
                                                           _%g214120214125%_)
                                                    (cons _%g214119214122%_
                                                          _%g214120214125%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp217994
                                              '()
                                              _%L214098%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L214096%_)
                                     '()))))))
            (let ((_%__match217560217561%_
                   (lambda (_%e214006214036%_
                            _%hd214007214040%_
                            _%tl214008214043%_
                            _%e214009214046%_
                            _%hd214010214050%_
                            _%tl214011214053%_
                            _%e214012214056%_
                            _%hd214013214060%_
                            _%tl214014214063%_
                            _%__splice217524217525%_
                            _%target214015214066%_
                            _%tl214017214069%_)
                     (letrec ((_%loop214018214072%_
                               (lambda (_%hd214016214076%_ _%sig214022214079%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd214016214076%_))
                                     (let ((_%e214019214082%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd214016214076%_))))
                                       (let ((_%lp-tl214021214089%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e214019214082%_)))
                                             (_%lp-hd214020214086%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e214019214082%_))))
                                         (_%loop214018214072%_
                                          _%lp-tl214021214089%_
                                          (cons _%lp-hd214020214086%_
                                                _%sig214022214079%_))))
                                     (let ((_%sig214023214092%_
                                            (reverse _%sig214022214079%_)))
                                       (_%__kont217522217523%_
                                        _%tl214011214053%_
                                        _%sig214023214092%_
                                        _%hd214013214060%_))))))
                       (_%loop214018214072%_ _%target214015214066%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217517217518%_))
                  (let ((_%e214000214135%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217517217518%_))))
                    (let ((_%tl214002214142%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214000214135%_)))
                          (_%hd214001214139%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214000214135%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214002214142%_))
                          (_%__kont217520217521%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214002214142%_))
                              (let ((_%e214009214046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214002214142%_))))
                                (let ((_%tl214011214053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214009214046%_)))
                                      (_%hd214010214050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214009214046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd214010214050%_))
                                      (let ((_%e214012214056%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd214010214050%_))))
                                        (let ((_%tl214014214063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214012214056%_)))
                                              (_%hd214013214060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214012214056%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl214014214063%_))
                                              (let ((_%__splice217524217525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl214014214063%_
                                                        '0))))
                                                (let ((_%tl214017214069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217524217525%_
                                                          '1)))
                                                      (_%target214015214066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217524217525%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214017214069%_))
                                                      (_%__match217560217561%_
                                                       _%e214000214135%_
                                                       _%hd214001214139%_
                                                       _%tl214002214142%_
                                                       _%e214009214046%_
                                                       _%hd214010214050%_
                                                       _%tl214011214053%_
                                                       _%e214012214056%_
                                                       _%hd214013214060%_
                                                       _%tl214014214063%_
                                                       _%__splice217524217525%_
                                                       _%target214015214066%_
                                                       _%tl214017214069%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g213998214029%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g213998214029%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g213998214029%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g213998214029%_))))))
                  (let () (declare (not safe)) (_%g213998214029%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx214154%_)
        (let* ((_%__stx217563217564%_ _%$stx214154%_)
               (_%g214159214206%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217563217564%_)))))
          (let ((_%__kont217566217567%_
                 (lambda (_%L214368%_ _%L214370%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L214370%_
                               (let ((__tmp217995
                                      (lambda (_%g214390214393%_
                                               _%g214391214396%_)
                                        (cons _%g214390214393%_
                                              _%g214391214396%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp217995 '() _%L214368%_))))))
                (_%__kont217570217571%_
                 (lambda (_%L214263%_ _%L214265%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L214265%_
                               (let ((__tmp217996
                                      (lambda (_%g214282214285%_
                                               _%g214283214288%_)
                                        (cons _%g214282214285%_
                                              _%g214283214288%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp217996 '() _%L214263%_)))))))
            (let* ((_%__match217630217631%_
                    (lambda (_%e214186214213%_
                             _%hd214187214217%_
                             _%tl214188214220%_
                             _%e214189214223%_
                             _%hd214190214227%_
                             _%tl214191214230%_
                             _%__splice217572217573%_
                             _%target214192214233%_
                             _%tl214194214236%_)
                      (letrec ((_%loop214195214239%_
                                (lambda (_%hd214193214243%_
                                         _%sig214199214246%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd214193214243%_))
                                      (let ((_%e214196214249%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd214193214243%_))))
                                        (let ((_%lp-tl214198214256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214196214249%_)))
                                              (_%lp-hd214197214253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214196214249%_))))
                                          (_%loop214195214239%_
                                           _%lp-tl214198214256%_
                                           (cons _%lp-hd214197214253%_
                                                 _%sig214199214246%_))))
                                      (let ((_%sig214200214259%_
                                             (reverse _%sig214199214246%_)))
                                        (_%__kont217570217571%_
                                         _%sig214200214259%_
                                         _%hd214190214227%_))))))
                        (_%loop214195214239%_ _%target214192214233%_ '()))))
                   (_%__match217622217623%_
                    (lambda (_%e214186214213%_
                             _%hd214187214217%_
                             _%tl214188214220%_
                             _%e214189214223%_
                             _%hd214190214227%_
                             _%tl214191214230%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl214191214230%_))
                          (let ((_%__splice217572217573%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl214191214230%_
                                    '0))))
                            (let ((_%tl214194214236%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice217572217573%_
                                      '1)))
                                  (_%target214192214233%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice217572217573%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl214194214236%_))
                                  (_%__match217630217631%_
                                   _%e214186214213%_
                                   _%hd214187214217%_
                                   _%tl214188214220%_
                                   _%e214189214223%_
                                   _%hd214190214227%_
                                   _%tl214191214230%_
                                   _%__splice217572217573%_
                                   _%target214192214233%_
                                   _%tl214194214236%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g214159214206%_)))))
                          (let () (declare (not safe)) (_%g214159214206%_)))))
                   (_%__match217610217611%_
                    (lambda (_%e214163214298%_
                             _%hd214164214302%_
                             _%tl214165214305%_
                             _%e214166214308%_
                             _%hd214167214312%_
                             _%tl214168214315%_
                             _%e214169214318%_
                             _%hd214170214322%_
                             _%tl214171214325%_
                             _%e214172214328%_
                             _%hd214173214332%_
                             _%tl214174214335%_
                             _%__splice217568217569%_
                             _%target214175214338%_
                             _%tl214177214341%_)
                      (letrec ((_%loop214178214344%_
                                (lambda (_%hd214176214348%_
                                         _%sig214182214351%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd214176214348%_))
                                      (let ((_%e214179214354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd214176214348%_))))
                                        (let ((_%lp-tl214181214361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214179214354%_)))
                                              (_%lp-hd214180214358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214179214354%_))))
                                          (_%loop214178214344%_
                                           _%lp-tl214181214361%_
                                           (cons _%lp-hd214180214358%_
                                                 _%sig214182214351%_))))
                                      (let ((_%sig214183214364%_
                                             (reverse _%sig214182214351%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl214171214325%_))
                                            (_%__kont217566217567%_
                                             _%sig214183214364%_
                                             _%hd214167214312%_)
                                            (_%__match217622217623%_
                                             _%e214163214298%_
                                             _%hd214164214302%_
                                             _%tl214165214305%_
                                             _%e214166214308%_
                                             _%hd214167214312%_
                                             _%tl214168214315%_)))))))
                        (_%loop214178214344%_ _%target214175214338%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217563217564%_))
                  (let ((_%e214163214298%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217563217564%_))))
                    (let ((_%tl214165214305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214163214298%_)))
                          (_%hd214164214302%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214163214298%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214165214305%_))
                          (let ((_%e214166214308%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl214165214305%_))))
                            (let ((_%tl214168214315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214166214308%_)))
                                  (_%hd214167214312%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214166214308%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214168214315%_))
                                  (let ((_%e214169214318%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl214168214315%_))))
                                    (let ((_%tl214171214325%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214169214318%_)))
                                          (_%hd214170214322%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214169214318%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd214170214322%_))
                                          (let ((_%e214172214328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd214170214322%_))))
                                            (let ((_%tl214174214335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e214172214328%_)))
                                                  (_%hd214173214332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e214172214328%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd214173214332%_))
                                                  (if (let ((__tmp217997
                                                             |gxc[1]#_g217998_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp217997
                                                         _%hd214173214332%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl214174214335%_))
                                                          (let ((_%__splice217568217569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl214174214335%_
                            '0))))
                    (let ((_%tl214177214341%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217568217569%_ '1)))
                          (_%target214175214338%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217568217569%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214177214341%_))
                          (_%__match217610217611%_
                           _%e214163214298%_
                           _%hd214164214302%_
                           _%tl214165214305%_
                           _%e214166214308%_
                           _%hd214167214312%_
                           _%tl214168214315%_
                           _%e214169214318%_
                           _%hd214170214322%_
                           _%tl214171214325%_
                           _%e214172214328%_
                           _%hd214173214332%_
                           _%tl214174214335%_
                           _%__splice217568217569%_
                           _%target214175214338%_
                           _%tl214177214341%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl214168214315%_))
                              (let ((_%__splice217572217573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl214168214315%_
                                        '0))))
                                (let ((_%tl214194214236%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice217572217573%_
                                          '1)))
                                      (_%target214192214233%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice217572217573%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl214194214236%_))
                                      (_%__match217630217631%_
                                       _%e214163214298%_
                                       _%hd214164214302%_
                                       _%tl214165214305%_
                                       _%e214166214308%_
                                       _%hd214167214312%_
                                       _%tl214168214315%_
                                       _%__splice217572217573%_
                                       _%target214192214233%_
                                       _%tl214194214236%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g214159214206%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g214159214206%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl214168214315%_))
                      (let ((_%__splice217572217573%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl214168214315%_
                                '0))))
                        (let ((_%tl214194214236%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217572217573%_ '1)))
                              (_%target214192214233%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217572217573%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl214194214236%_))
                              (_%__match217630217631%_
                               _%e214163214298%_
                               _%hd214164214302%_
                               _%tl214165214305%_
                               _%e214166214308%_
                               _%hd214167214312%_
                               _%tl214168214315%_
                               _%__splice217572217573%_
                               _%target214192214233%_
                               _%tl214194214236%_)
                              (let ()
                                (declare (not safe))
                                (_%g214159214206%_)))))
                      (let () (declare (not safe)) (_%g214159214206%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl214168214315%_))
                  (let ((_%__splice217572217573%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl214168214315%_
                            '0))))
                    (let ((_%tl214194214236%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217572217573%_ '1)))
                          (_%target214192214233%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217572217573%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214194214236%_))
                          (_%__match217630217631%_
                           _%e214163214298%_
                           _%hd214164214302%_
                           _%tl214165214305%_
                           _%e214166214308%_
                           _%hd214167214312%_
                           _%tl214168214315%_
                           _%__splice217572217573%_
                           _%target214192214233%_
                           _%tl214194214236%_)
                          (let () (declare (not safe)) (_%g214159214206%_)))))
                  (let () (declare (not safe)) (_%g214159214206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl214168214315%_))
                                                      (let ((_%__splice217572217573%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl214168214315%_
                        '0))))
                (let ((_%tl214194214236%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice217572217573%_ '1)))
                      (_%target214192214233%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice217572217573%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl214194214236%_))
                      (_%__match217630217631%_
                       _%e214163214298%_
                       _%hd214164214302%_
                       _%tl214165214305%_
                       _%e214166214308%_
                       _%hd214167214312%_
                       _%tl214168214315%_
                       _%__splice217572217573%_
                       _%target214192214233%_
                       _%tl214194214236%_)
                      (let () (declare (not safe)) (_%g214159214206%_)))))
              (let () (declare (not safe)) (_%g214159214206%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl214168214315%_))
                                              (let ((_%__splice217572217573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl214168214315%_
                                                        '0))))
                                                (let ((_%tl214194214236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217572217573%_
                                                          '1)))
                                                      (_%target214192214233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217572217573%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214194214236%_))
                                                      (_%__match217630217631%_
                                                       _%e214163214298%_
                                                       _%hd214164214302%_
                                                       _%tl214165214305%_
                                                       _%e214166214308%_
                                                       _%hd214167214312%_
                                                       _%tl214168214315%_
                                                       _%__splice217572217573%_
                                                       _%target214192214233%_
                                                       _%tl214194214236%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g214159214206%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g214159214206%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl214168214315%_))
                                      (let ((_%__splice217572217573%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl214168214315%_
                                                '0))))
                                        (let ((_%tl214194214236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice217572217573%_
                                                  '1)))
                                              (_%target214192214233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice217572217573%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214194214236%_))
                                              (_%__match217630217631%_
                                               _%e214163214298%_
                                               _%hd214164214302%_
                                               _%tl214165214305%_
                                               _%e214166214308%_
                                               _%hd214167214312%_
                                               _%tl214168214315%_
                                               _%__splice217572217573%_
                                               _%target214192214233%_
                                               _%tl214194214236%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g214159214206%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214159214206%_))))))
                          (let () (declare (not safe)) (_%g214159214206%_)))))
                  (let () (declare (not safe)) (_%g214159214206%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx215553%_ _%id215555%_)
        (let ((_%proc215559%_
               (let ((__tmp217999
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id215555%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp217999))))
          (if (procedure? _%proc215559%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx215553%_
                 _%id215555%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx215544%_ _%id215546%_)
        (let ((_%klass215550%_
               (let ((__tmp218000
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id215546%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp218000))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass215550%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx215544%_
                 _%id215546%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx214794%_ _%proc214796%_ _%sig214797%_)
        (letrec ((_%signature-arity214799%_
                  (lambda (_%args215476%_)
                    (let _%loop215479%_ ((_%rest215482%_ _%args215476%_)
                                         (_%count215484%_ '0))
                      (let* ((_%rest215485215496%_ _%rest215482%_)
                             (_%E215489215502%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest215485215496%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K215492215533%_
                               (lambda (_%rest215530%_)
                                 (_%loop215479%_
                                  _%rest215530%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count215484%_ '1)))))
                              (_%K215491215522%_ (lambda () _%count215484%_))
                              (_%K215490215510%_
                               (lambda () (cons _%count215484%_ '()))))
                          (let ((_%try-match215487215526%_
                                 (lambda ()
                                   (if (null? _%rest215485215496%_)
                                       (_%K215491215522%_)
                                       (_%K215490215510%_)))))
                            (if (pair? _%rest215485215496%_)
                                (let* ((_%tl215494215537%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest215485215496%_)))
                                       (_%rest215541%_ _%tl215494215537%_))
                                  (_%K215492215533%_ _%rest215541%_))
                                (_%try-match215487215526%_))))))))
                 (_%make-signature214801%_
                  (lambda (_%args215358%_
                           _%return215360%_
                           _%effect215361%_
                           _%unchecked215362%_)
                    (let ((__tmp218001
                           (lambda (_%g215363215365%_)
                             (|gxc[1]#verify-class!|
                              _%ctx214794%_
                              _%g215363215365%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp218001 _%args215358%_))
                    (|gxc[1]#verify-class!| _%ctx214794%_ _%return215360%_)
                    (if _%unchecked215362%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx214794%_
                         _%unchecked215362%_)
                        '#!void)
                    (let ((_%arity215369%_
                           (_%signature-arity214799%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args215358%_)))))
                      (if _%effect215361%_
                          (let ((_%effect215372%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect215361%_))))
                            (if (and (list? _%effect215372%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect215372%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx214794%_
                                   _%proc214796%_
                                   _%effect215372%_))))
                          '#!void)
                      (cons _%arity215369%_
                            (cons (let* ((_%g215375215398%_
                                          (lambda (_%g215376215394%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g215376215394%_))))
                                         (_%g215374215472%_
                                          (lambda (_%g215376215402%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g215376215402%_))
                                                (let ((_%e215381215405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g215376215402%_))))
                                                  (let ((_%hd215382215409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e215381215405%_)))
                                                        (_%tl215383215412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e215381215405%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl215383215412%_))
                                                        (let ((_%e215384215415%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl215383215412%_))))
                  (let ((_%hd215385215419%_
                         (let ()
                           (declare (not safe))
                           (##car _%e215384215415%_)))
                        (_%tl215386215422%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e215384215415%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl215386215422%_))
                        (let ((_%e215387215425%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl215386215422%_))))
                          (let ((_%hd215388215429%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215387215425%_)))
                                (_%tl215389215432%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215387215425%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl215389215432%_))
                                (let ((_%e215390215435%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl215389215432%_))))
                                  (let ((_%hd215391215439%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215390215435%_)))
                                        (_%tl215392215442%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215390215435%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl215392215442%_))
                                        ((lambda (_%L215445%_
                                                  _%L215447%_
                                                  _%L215448%_
                                                  _%L215449%_)
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
                           (cons _%L215449%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L215448%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L215447%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L215445%_ '()))
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
                                         _%hd215391215439%_
                                         _%hd215388215429%_
                                         _%hd215385215419%_
                                         _%hd215382215409%_)
                                        (_%g215375215398%_
                                         _%g215376215402%_))))
                                (_%g215375215398%_ _%g215376215402%_))))
                        (_%g215375215398%_ _%g215376215402%_))))
                (_%g215375215398%_ _%g215376215402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g215375215398%_
                                                 _%g215376215402%_)))))
                                    (_%g215374215472%_
                                     (list _%args215358%_
                                           _%return215360%_
                                           _%effect215361%_
                                           _%unchecked215362%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx214794%_ _%proc214796%_)
          (let* ((_%__stx217641217642%_ _%sig214797%_)
                 (_%g214808214911%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx217641217642%_)))))
            (let ((_%__kont217644217645%_
                   (lambda (_%L215339%_ _%L215341%_)
                     (_%make-signature214801%_
                      _%L215341%_
                      _%L215339%_
                      '#f
                      '#f)))
                  (_%__kont217646217647%_
                   (lambda (_%L215290%_ _%L215292%_ _%L215293%_)
                     (_%make-signature214801%_
                      _%L215293%_
                      _%L215292%_
                      _%L215290%_
                      '#f)))
                  (_%__kont217648217649%_
                   (lambda (_%L215214%_ _%L215216%_ _%L215217%_)
                     (_%make-signature214801%_
                      _%L215217%_
                      _%L215216%_
                      _%L215214%_
                      (let ((__tmp218002
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc214796%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp218002)))))
                  (_%__kont217650217651%_
                   (lambda (_%L215120%_ _%L215122%_ _%L215123%_ _%L215124%_)
                     (_%make-signature214801%_
                      _%L215124%_
                      _%L215123%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L215120%_)))))
                  (_%__kont217652217653%_
                   (lambda (_%L215027%_ _%L215029%_)
                     (_%make-signature214801%_
                      _%L215029%_
                      _%L215027%_
                      '#f
                      (let ((__tmp218003
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc214796%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp218003)))))
                  (_%__kont217654217655%_
                   (lambda (_%L214962%_ _%L214964%_ _%L214965%_)
                     (_%make-signature214801%_
                      _%L214965%_
                      _%L214964%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L214962%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217641217642%_))
                  (let ((_%e214812215319%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217641217642%_))))
                    (let ((_%tl214814215326%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214812215319%_)))
                          (_%hd214813215323%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214812215319%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214814215326%_))
                          (let ((_%e214815215329%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl214814215326%_))))
                            (let ((_%tl214817215336%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214815215329%_)))
                                  (_%hd214816215333%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214815215329%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl214817215336%_))
                                  (_%__kont217644217645%_
                                   _%hd214816215333%_
                                   _%hd214813215323%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214817215336%_))
                                      (let ((_%e214827215266%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214817215336%_))))
                                        (let ((_%tl214829215273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214827215266%_)))
                                              (_%hd214828215270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214827215266%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd214828215270%_))
                                              (let ((_%e214830215276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd214828215270%_))))
                                                (if (equal? _%e214830215276%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl214829215273%_))
                                                        (let ((_%e214831215280%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl214829215273%_))))
                  (let ((_%tl214833215287%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214831215280%_)))
                        (_%hd214832215284%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214831215280%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl214833215287%_))
                        (_%__kont217646217647%_
                         _%hd214832215284%_
                         _%hd214816215333%_
                         _%hd214813215323%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl214833215287%_))
                            (let ((_%e214850215200%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl214833215287%_))))
                              (let ((_%tl214852215207%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e214850215200%_)))
                                    (_%hd214851215204%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e214850215200%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd214851215204%_))
                                    (let ((_%e214853215210%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd214851215204%_))))
                                      (if (equal? _%e214853215210%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214852215207%_))
                                              (_%__kont217648217649%_
                                               _%hd214832215284%_
                                               _%hd214816215333%_
                                               _%hd214813215323%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214852215207%_))
                                                  (let ((_%e214875215110%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl214852215207%_))))
                                                    (let ((_%tl214877215117%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214875215110%_)))
                                                          (_%hd214876215114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214875215110%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl214877215117%_))
                                                          (_%__kont217650217651%_
                                                           _%hd214876215114%_
                                                           _%hd214832215284%_
                                                           _%hd214816215333%_
                                                           _%hd214813215323%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g214808214911%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214808214911%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214808214911%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g214808214911%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g214808214911%_))))))
                (let () (declare (not safe)) (_%g214808214911%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e214830215276%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl214829215273%_))
                                                            (_%__kont217652217653%_
                                                             _%hd214816215333%_
                                                             _%hd214813215323%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl214829215273%_))
                        (let ((_%e214903214952%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl214829215273%_))))
                          (let ((_%tl214905214959%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214903214952%_)))
                                (_%hd214904214956%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214903214952%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl214905214959%_))
                                (_%__kont217654217655%_
                                 _%hd214904214956%_
                                 _%hd214816215333%_
                                 _%hd214813215323%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g214808214911%_)))))
                        (let () (declare (not safe)) (_%g214808214911%_))))
                (let () (declare (not safe)) (_%g214808214911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g214808214911%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214808214911%_))))))
                          (let () (declare (not safe)) (_%g214808214911%_)))))
                  (let () (declare (not safe)) (_%g214808214911%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig214405%_)
        (let* ((_%g214408214488%_
                (lambda (_%g214409214484%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214409214484%_))))
               (_%g214407214790%_
                (lambda (_%g214409214492%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214409214492%_))
                      (let ((_%e214415214495%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214409214492%_))))
                        (let ((_%hd214416214499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214415214495%_)))
                              (_%tl214417214502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214415214495%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214417214502%_))
                              (let ((_%e214418214505%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214417214502%_))))
                                (let ((_%hd214419214509%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214418214505%_)))
                                      (_%tl214420214512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214418214505%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd214419214509%_))
                                      (let ((_%e214421214515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd214419214509%_))))
                                        (if (equal? _%e214421214515%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl214420214512%_))
                                                (let ((_%e214422214519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl214420214512%_))))
                                                  (let ((_%hd214423214523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e214422214519%_)))
                                                        (_%tl214424214526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e214422214519%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd214423214523%_))
                                                        (let ((_%e214425214529%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd214423214523%_))))
                  (let ((_%hd214426214533%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214425214529%_)))
                        (_%tl214427214536%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214425214529%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd214426214533%_))
                        (if (let ((__tmp218004 |gxc[1]#_g218005_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp218004
                               _%hd214426214533%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214427214536%_))
                                (let ((_%e214428214539%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214427214536%_))))
                                  (let ((_%hd214429214543%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214428214539%_)))
                                        (_%tl214430214546%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214428214539%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214430214546%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl214424214526%_))
                                            (let ((_%e214431214549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl214424214526%_))))
                                              (let ((_%hd214432214553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e214431214549%_)))
                                                    (_%tl214433214556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e214431214549%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd214432214553%_))
                                                    (let ((_%e214434214559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd214432214553%_))))
                                                      (if (equal? _%e214434214559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl214433214556%_))
                      (let ((_%e214435214563%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl214433214556%_))))
                        (let ((_%hd214436214567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214435214563%_)))
                              (_%tl214437214570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214435214563%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd214436214567%_))
                              (let ((_%e214438214573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd214436214567%_))))
                                (let ((_%hd214439214577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214438214573%_)))
                                      (_%tl214440214580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214438214573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd214439214577%_))
                                      (if (let ((__tmp218006
                                                 |gxc[1]#_g218007_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp218006
                                             _%hd214439214577%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214440214580%_))
                                              (let ((_%e214441214583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl214440214580%_))))
                                                (let ((_%hd214442214587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214441214583%_)))
                                                      (_%tl214443214590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214441214583%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214443214590%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl214437214570%_))
                                                          (let ((_%e214444214593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl214437214570%_))))
                    (let ((_%hd214445214597%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214444214593%_)))
                          (_%tl214446214600%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214444214593%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd214445214597%_))
                          (let ((_%e214447214603%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd214445214597%_))))
                            (if (equal? _%e214447214603%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl214446214600%_))
                                    (let ((_%e214448214607%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl214446214600%_))))
                                      (let ((_%hd214449214611%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e214448214607%_)))
                                            (_%tl214450214614%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e214448214607%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd214449214611%_))
                                            (let ((_%e214451214617%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd214449214611%_))))
                                              (let ((_%hd214452214621%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e214451214617%_)))
                                                    (_%tl214453214624%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e214451214617%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd214452214621%_))
                                                    (if (let ((__tmp218008
                                                               |gxc[1]#_g218009_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp218008
                                                           _%hd214452214621%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl214453214624%_))
                                                            (let ((_%e214454214627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl214453214624%_))))
                      (let ((_%hd214455214631%_
                             (let ()
                               (declare (not safe))
                               (##car _%e214454214627%_)))
                            (_%tl214456214634%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e214454214627%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl214456214634%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214450214614%_))
                                (let ((_%e214457214637%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214450214614%_))))
                                  (let ((_%hd214458214641%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214457214637%_)))
                                        (_%tl214459214644%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214457214637%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd214458214641%_))
                                        (let ((_%e214460214647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd214458214641%_))))
                                          (if (equal? _%e214460214647%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214459214644%_))
                                                  (let ((_%e214461214651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl214459214644%_))))
                                                    (let ((_%hd214462214655%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214461214651%_)))
                                                          (_%tl214463214658%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214461214651%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd214462214655%_))
                                                          (let ((_%e214464214661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd214462214655%_))))
                    (let ((_%hd214465214665%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214464214661%_)))
                          (_%tl214466214668%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214464214661%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd214465214665%_))
                          (if (let ((__tmp218010 |gxc[1]#_g218011_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp218010
                                 _%hd214465214665%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214466214668%_))
                                  (let ((_%e214467214671%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl214466214668%_))))
                                    (let ((_%hd214468214675%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214467214671%_)))
                                          (_%tl214469214678%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214467214671%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl214469214678%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214463214658%_))
                                              (let ((_%e214470214681%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl214463214658%_))))
                                                (let ((_%hd214471214685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214470214681%_)))
                                                      (_%tl214472214688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214470214681%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd214471214685%_))
                                                      (let ((_%e214473214691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd214471214685%_))))
                (if (equal? _%e214473214691%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl214472214688%_))
                        (let ((_%e214474214695%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl214472214688%_))))
                          (let ((_%hd214475214699%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214474214695%_)))
                                (_%tl214476214702%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214474214695%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd214475214699%_))
                                (let ((_%e214477214705%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd214475214699%_))))
                                  (let ((_%hd214478214709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214477214705%_)))
                                        (_%tl214479214712%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214477214705%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd214478214709%_))
                                        (if (let ((__tmp218012
                                                   |gxc[1]#_g218013_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp218012
                                               _%hd214478214709%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl214479214712%_))
                                                (let ((_%e214480214715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl214479214712%_))))
                                                  (let ((_%hd214481214719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e214480214715%_)))
                                                        (_%tl214482214722%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e214480214715%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl214482214722%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl214476214702%_))
                                                            ((lambda (_%L214725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L214727%_
                              _%L214728%_
                              _%L214729%_
                              _%L214730%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L214727%_))
                           (cons _%L214727%_
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
                       (cons _%L214729%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L214725%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd214481214719%_
                     _%hd214468214675%_
                     _%hd214455214631%_
                     _%hd214442214587%_
                     _%hd214429214543%_)
                    (_%g214408214488%_ _%g214409214492%_))
                (_%g214408214488%_ _%g214409214492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g214408214488%_
                                                 _%g214409214492%_))
                                            (_%g214408214488%_
                                             _%g214409214492%_))
                                        (_%g214408214488%_
                                         _%g214409214492%_))))
                                (_%g214408214488%_ _%g214409214492%_))))
                        (_%g214408214488%_ _%g214409214492%_))
                    (_%g214408214488%_ _%g214409214492%_)))
              (_%g214408214488%_ _%g214409214492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g214408214488%_
                                               _%g214409214492%_))
                                          (_%g214408214488%_
                                           _%g214409214492%_))))
                                  (_%g214408214488%_ _%g214409214492%_))
                              (_%g214408214488%_ _%g214409214492%_))
                          (_%g214408214488%_ _%g214409214492%_))))
                  (_%g214408214488%_ _%g214409214492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g214408214488%_
                                                   _%g214409214492%_))
                                              (_%g214408214488%_
                                               _%g214409214492%_)))
                                        (_%g214408214488%_
                                         _%g214409214492%_))))
                                (_%g214408214488%_ _%g214409214492%_))
                            (_%g214408214488%_ _%g214409214492%_))))
                    (_%g214408214488%_ _%g214409214492%_))
                (_%g214408214488%_ _%g214409214492%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g214408214488%_
                                                     _%g214409214492%_))))
                                            (_%g214408214488%_
                                             _%g214409214492%_))))
                                    (_%g214408214488%_ _%g214409214492%_))
                                (_%g214408214488%_ _%g214409214492%_)))
                          (_%g214408214488%_ _%g214409214492%_))))
                  (_%g214408214488%_ _%g214409214492%_))
              (_%g214408214488%_ _%g214409214492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g214408214488%_
                                               _%g214409214492%_))
                                          (_%g214408214488%_
                                           _%g214409214492%_))
                                      (_%g214408214488%_ _%g214409214492%_))))
                              (_%g214408214488%_ _%g214409214492%_))))
                      (_%g214408214488%_ _%g214409214492%_))
                  (_%g214408214488%_ _%g214409214492%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g214408214488%_
                                                     _%g214409214492%_))))
                                            (_%g214408214488%_
                                             _%g214409214492%_))
                                        (_%g214408214488%_
                                         _%g214409214492%_))))
                                (_%g214408214488%_ _%g214409214492%_))
                            (_%g214408214488%_ _%g214409214492%_))
                        (_%g214408214488%_ _%g214409214492%_))))
                (_%g214408214488%_ _%g214409214492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g214408214488%_
                                                 _%g214409214492%_))
                                            (_%g214408214488%_
                                             _%g214409214492%_)))
                                      (_%g214408214488%_ _%g214409214492%_))))
                              (_%g214408214488%_ _%g214409214492%_))))
                      (_%g214408214488%_ _%g214409214492%_)))))
          (_%g214407214790%_ _%sig214405%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx215562%_)
        (let* ((_%g215565215583%_
                (lambda (_%g215566215579%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215566215579%_))))
               (_%g215564215638%_
                (lambda (_%g215566215587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215566215587%_))
                      (let ((_%e215569215590%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215566215587%_))))
                        (let ((_%hd215570215594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215569215590%_)))
                              (_%tl215571215597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215569215590%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215571215597%_))
                              (let ((_%e215572215600%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215571215597%_))))
                                (let ((_%hd215573215604%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215572215600%_)))
                                      (_%tl215574215607%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215572215600%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215574215607%_))
                                      (let ((_%e215575215610%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215574215607%_))))
                                        (let ((_%hd215576215614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215575215610%_)))
                                              (_%tl215577215617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215575215610%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl215577215617%_))
                                              ((lambda (_%L215620%_
                                                        _%L215622%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L215622%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L215620%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx215562%_
                                                        _%L215622%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx215562%_
                                                        _%L215620%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L215622%_
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
                                                   (cons _%L215620%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g215565215583%_
                                                      _%g215566215587%_)))
                                               _%hd215576215614%_
                                               _%hd215573215604%_)
                                              (_%g215565215583%_
                                               _%g215566215587%_))))
                                      (_%g215565215583%_ _%g215566215587%_))))
                              (_%g215565215583%_ _%g215566215587%_))))
                      (_%g215565215583%_ _%g215566215587%_)))))
          (_%g215564215638%_ _%stx215562%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx215642%_)
        (let* ((_%g215645215669%_
                (lambda (_%g215646215665%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215646215665%_))))
               (_%g215644215952%_
                (lambda (_%g215646215673%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215646215673%_))
                      (let ((_%e215649215676%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215646215673%_))))
                        (let ((_%hd215650215680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215649215676%_)))
                              (_%tl215651215683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215649215676%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215651215683%_))
                              (let ((_%e215652215686%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215651215683%_))))
                                (let ((_%hd215653215690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215652215686%_)))
                                      (_%tl215654215693%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215652215686%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215654215693%_))
                                      (let ((_g218014_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215654215693%_
                                                '0))))
                                        (begin
                                          (let ((_g218015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218014_)
                                                       (##values-length
                                                        _g218014_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218015_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218015_)))
                                          (let ((_%target215655215696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g218014_ 0)))
                                                (_%tl215657215699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g218014_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215657215699%_))
                                                (letrec ((_%loop215658215702%_
                                                          (lambda (_%hd215656215706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature215662215709%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215656215706%_))
                        (let ((_%e215659215712%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215656215706%_))))
                          (let ((_%lp-hd215660215716%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215659215712%_)))
                                (_%lp-tl215661215719%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215659215712%_))))
                            (_%loop215658215702%_
                             _%lp-tl215661215719%_
                             (cons _%lp-hd215660215716%_
                                   _%signature215662215709%_))))
                        (let ((_%signature215663215722%_
                               (reverse _%signature215662215709%_)))
                          ((lambda (_%L215726%_ _%L215728%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L215728%_))
                                 (let* ((_%g215746215761%_
                                         (lambda (_%g215747215757%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g215747215757%_))))
                                        (_%g215745215940%_
                                         (lambda (_%g215747215765%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g215747215765%_))
                                               (let ((_%e215750215768%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g215747215765%_))))
                                                 (let ((_%hd215751215772%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215750215768%_)))
                                                       (_%tl215752215775%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215750215768%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl215752215775%_))
                                                       (let ((_%e215753215778%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl215752215775%_))))
                 (let ((_%hd215754215782%_
                        (let ()
                          (declare (not safe))
                          (##car _%e215753215778%_)))
                       (_%tl215755215785%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e215753215778%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl215755215785%_))
                       ((lambda (_%L215788%_ _%L215790%_)
                          (let* ((_%g215806215814%_
                                  (lambda (_%g215807215810%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g215807215810%_))))
                                 (_%g215805215936%_
                                  (lambda (_%g215807215818%_)
                                    ((lambda (_%L215821%_)
                                       (let* ((_%unchecked215834%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L215788%_))
                                              (_%g215837215845%_
                                               (lambda (_%g215838215841%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g215838215841%_))))
                                              (_%g215836215868%_
                                               (lambda (_%g215838215849%_)
                                                 ((lambda (_%L215852%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L215821%_
                                                                (cons _%L215852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g215838215849%_))))
                                         (_%g215836215868%_
                                          (if _%unchecked215834%_
                                              (let* ((_%g215872215887%_
                                                      (lambda (_%g215873215883%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g215873215883%_))))
                                                     (_%g215871215932%_
                                                      (lambda (_%g215873215891%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g215873215891%_))
                                                            (let ((_%e215876215894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g215873215891%_))))
                      (let ((_%hd215877215898%_
                             (let ()
                               (declare (not safe))
                               (##car _%e215876215894%_)))
                            (_%tl215878215901%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e215876215894%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl215878215901%_))
                            (let ((_%e215879215904%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl215878215901%_))))
                              (let ((_%hd215880215908%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e215879215904%_)))
                                    (_%tl215881215911%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e215879215904%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl215881215911%_))
                                    ((lambda (_%L215914%_ _%L215916%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L215916%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L215790%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L215914%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd215880215908%_
                                     _%hd215877215898%_)
                                    (_%g215872215887%_ _%g215873215891%_))))
                            (_%g215872215887%_ _%g215873215891%_))))
                    (_%g215872215887%_ _%g215873215891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g215871215932%_
                                                 _%unchecked215834%_))
                                              '(begin)))))
                                     _%g215807215818%_))))
                            (_%g215805215936%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L215728%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L215790%_ '()))
                   (cons '#f (cons 'signature: (cons _%L215788%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd215754215782%_
                        _%hd215751215772%_)
                       (_%g215746215761%_ _%g215747215765%_))))
               (_%g215746215761%_ _%g215747215765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215746215761%_
                                                _%g215747215765%_)))))
                                   (_%g215745215940%_
                                    (|gxc[1]#parse-signature|
                                     _%stx215642%_
                                     _%L215728%_
                                     (let ((__tmp218016
                                            (lambda (_%g215943215946%_
                                                     _%g215944215949%_)
                                              (cons _%g215943215946%_
                                                    _%g215944215949%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp218016
                                        '()
                                        _%L215726%_)))))
                                 (_%g215645215669%_ _%g215646215673%_)))
                           _%signature215663215722%_
                           _%hd215653215690%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215658215702%_
                                                   _%target215655215696%_
                                                   '()))
                                                (_%g215645215669%_
                                                 _%g215646215673%_)))))
                                      (_%g215645215669%_ _%g215646215673%_))))
                              (_%g215645215669%_ _%g215646215673%_))))
                      (_%g215645215669%_ _%g215646215673%_)))))
          (_%g215644215952%_ _%stx215642%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx215957%_)
        (let* ((_%g215960215984%_
                (lambda (_%g215961215980%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215961215980%_))))
               (_%g215959216867%_
                (lambda (_%g215961215988%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215961215988%_))
                      (let ((_%e215964215991%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215961215988%_))))
                        (let ((_%hd215965215995%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215964215991%_)))
                              (_%tl215966215998%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215964215991%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215966215998%_))
                              (let ((_%e215967216001%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215966215998%_))))
                                (let ((_%hd215968216005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215967216001%_)))
                                      (_%tl215969216008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215967216001%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215969216008%_))
                                      (let ((_g218017_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215969216008%_
                                                '0))))
                                        (begin
                                          (let ((_g218018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218017_)
                                                       (##values-length
                                                        _g218017_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218018_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218018_)))
                                          (let ((_%target215970216011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g218017_ 0)))
                                                (_%tl215972216014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g218017_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215972216014%_))
                                                (letrec ((_%loop215973216017%_
                                                          (lambda (_%hd215971216021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature215977216024%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215971216021%_))
                        (let ((_%e215974216027%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215971216021%_))))
                          (let ((_%lp-hd215975216031%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215974216027%_)))
                                (_%lp-tl215976216034%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215974216027%_))))
                            (_%loop215973216017%_
                             _%lp-tl215976216034%_
                             (cons _%lp-hd215975216031%_
                                   _%case-signature215977216024%_))))
                        (let ((_%case-signature215978216037%_
                               (reverse _%case-signature215977216024%_)))
                          ((lambda (_%L216041%_ _%L216043%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L216043%_))
                                 (let* ((_%signatures216074%_
                                         (map (lambda (_%g216060216062%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx215957%_
                                                 _%L216043%_
                                                 _%g216060216062%_))
                                              (let ((__tmp218019
                                                     (lambda (_%g216065216068%_
                                                              _%g216066216071%_)
                                                       (cons _%g216065216068%_
                                                             _%g216066216071%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp218019
                                                 '()
                                                 _%L216041%_))))
                                        (_%g216077216103%_
                                         (lambda (_%g216078216099%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g216078216099%_))))
                                        (_%g216076216863%_
                                         (lambda (_%g216078216107%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g216078216107%_))
                                               (let ((_g218020_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g216078216107%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g218021_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g218020_)
                        (##values-length _g218020_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g218021_ 2)))
                 (error "Context expects 2 values" _g218021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target216081216110%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g218020_
                                                             0)))
                                                         (_%tl216083216113%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g218020_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl216083216113%_))
                                                         (letrec ((_%loop216084216116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd216082216120%_
                                    _%sig216088216123%_
                                    _%arity216089216125%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd216082216120%_))
                                 (let ((_%e216085216128%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd216082216120%_))))
                                   (let ((_%lp-hd216086216132%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e216085216128%_)))
                                         (_%lp-tl216087216135%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e216085216128%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd216086216132%_))
                                         (let ((_%e216092216138%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd216086216132%_))))
                                           (let ((_%hd216093216142%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e216092216138%_)))
                                                 (_%tl216094216145%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e216092216138%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl216094216145%_))
                                                 (let ((_%e216095216148%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl216094216145%_))))
                                                   (let ((_%hd216096216152%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e216095216148%_)))
                                                         (_%tl216097216155%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e216095216148%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl216097216155%_))
                                                         (_%loop216084216116%_
                                                          _%lp-tl216087216135%_
                                                          (cons _%hd216096216152%_
                                                                _%sig216088216123%_)
                                                          (cons _%hd216093216142%_
                                                                _%arity216089216125%_))
                                                         (_%g216077216103%_
                                                          _%g216078216107%_))))
                                                 (_%g216077216103%_
                                                  _%g216078216107%_))))
                                         (_%g216077216103%_
                                          _%g216078216107%_))))
                                 (let ((_%sig216090216158%_
                                        (reverse _%sig216088216123%_))
                                       (_%arity216091216161%_
                                        (reverse _%arity216089216125%_)))
                                   ((lambda (_%L216164%_ _%L216166%_)
                                      (let* ((_%g216183216191%_
                                              (lambda (_%g216184216187%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g216184216187%_))))
                                             (_%g216182216848%_
                                              (lambda (_%g216184216195%_)
                                                ((lambda (_%L216198%_)
                                                   (let* ((_%g216211216219%_
                                                           (lambda (_%g216212216215%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g216212216215%_))))
                  (_%g216210216241%_
                   (lambda (_%g216212216223%_)
                     ((lambda (_%L216226%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L216198%_ (cons _%L216226%_ '()))))
                      _%g216212216223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g216210216241%_
                                                      (let ((_g218022_
                                                             (let _%loop216245%_ ((_%rest216248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures216074%_)
                                          (_%unchecked-proc216250%_ '#f)
                                          (_%unchecked-clauses216251%_ '()))
                       (let* ((_%rest216252216260%_ _%rest216248%_)
                              (_%else216254216272%_
                               (lambda ()
                                 (values _%unchecked-proc216250%_
                                         (reverse!
                                          _%unchecked-clauses216251%_))))
                              (_%K216256216713%_
                               (lambda (_%rest216276%_ _%hd216278%_)
                                 (let* ((_%g216280216367%_
                                         (lambda (_%g216281216363%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g216281216363%_))))
                                        (_%g216279216709%_
                                         (lambda (_%g216281216371%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g216281216371%_))
                                               (let ((_%e216288216374%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g216281216371%_))))
                                                 (let ((_%hd216289216378%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e216288216374%_)))
                                                       (_%tl216290216381%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e216288216374%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl216290216381%_))
                                                       (let ((_%e216291216384%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl216290216381%_))))
                 (let ((_%hd216292216388%_
                        (let ()
                          (declare (not safe))
                          (##car _%e216291216384%_)))
                       (_%tl216293216391%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e216291216384%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd216292216388%_))
                       (let ((_%e216294216394%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd216292216388%_))))
                         (let ((_%hd216295216398%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e216294216394%_)))
                               (_%tl216296216401%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e216294216394%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl216296216401%_))
                               (let ((_%e216297216404%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl216296216401%_))))
                                 (let ((_%hd216298216408%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e216297216404%_)))
                                       (_%tl216299216411%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e216297216404%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd216298216408%_))
                                       (let ((_%e216300216414%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd216298216408%_))))
                                         (if (equal? _%e216300216414%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl216299216411%_))
                                                 (let ((_%e216301216418%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl216299216411%_))))
                                                   (let ((_%hd216302216422%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e216301216418%_)))
                                                         (_%tl216303216425%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e216301216418%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd216302216422%_))
                                                         (let ((_%e216304216428%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd216302216422%_))))
                   (let ((_%hd216305216432%_
                          (let ()
                            (declare (not safe))
                            (##car _%e216304216428%_)))
                         (_%tl216306216435%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e216304216428%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd216305216432%_))
                         (if (let ((__tmp218024 |gxc[1]#_g218025_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp218024
                                _%hd216305216432%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl216306216435%_))
                                 (let ((_%e216307216438%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl216306216435%_))))
                                   (let ((_%hd216308216442%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e216307216438%_)))
                                         (_%tl216309216445%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e216307216438%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl216309216445%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl216303216425%_))
                                             (let ((_%e216310216448%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl216303216425%_))))
                                               (let ((_%hd216311216452%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e216310216448%_)))
                                                     (_%tl216312216455%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e216310216448%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd216311216452%_))
                                                     (let ((_%e216313216458%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd216311216452%_))))
                                                       (if (equal? _%e216313216458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl216312216455%_))
                       (let ((_%e216314216462%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl216312216455%_))))
                         (let ((_%hd216315216466%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e216314216462%_)))
                               (_%tl216316216469%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e216314216462%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd216315216466%_))
                               (let ((_%e216317216472%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd216315216466%_))))
                                 (let ((_%hd216318216476%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e216317216472%_)))
                                       (_%tl216319216479%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e216317216472%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd216318216476%_))
                                       (if (let ((__tmp218026
                                                  |gxc[1]#_g218027_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp218026
                                              _%hd216318216476%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl216319216479%_))
                                               (let ((_%e216320216482%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl216319216479%_))))
                                                 (let ((_%hd216321216486%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e216320216482%_)))
                                                       (_%tl216322216489%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e216320216482%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl216322216489%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl216316216469%_))
                                                           (let ((_%e216323216492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl216316216469%_))))
                     (let ((_%hd216324216496%_
                            (let ()
                              (declare (not safe))
                              (##car _%e216323216492%_)))
                           (_%tl216325216499%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e216323216492%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd216324216496%_))
                           (let ((_%e216326216502%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd216324216496%_))))
                             (if (equal? _%e216326216502%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl216325216499%_))
                                     (let ((_%e216327216506%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl216325216499%_))))
                                       (let ((_%hd216328216510%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e216327216506%_)))
                                             (_%tl216329216513%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e216327216506%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd216328216510%_))
                                             (let ((_%e216330216516%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd216328216510%_))))
                                               (let ((_%hd216331216520%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e216330216516%_)))
                                                     (_%tl216332216523%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e216330216516%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd216331216520%_))
                                                     (if (let ((__tmp218028
                                                                |gxc[1]#_g218029_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp218028
                                                            _%hd216331216520%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl216332216523%_))
                     (let ((_%e216333216526%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl216332216523%_))))
                       (let ((_%hd216334216530%_
                              (let ()
                                (declare (not safe))
                                (##car _%e216333216526%_)))
                             (_%tl216335216533%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e216333216526%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl216335216533%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl216329216513%_))
                                 (let ((_%e216336216536%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl216329216513%_))))
                                   (let ((_%hd216337216540%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e216336216536%_)))
                                         (_%tl216338216543%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e216336216536%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd216337216540%_))
                                         (let ((_%e216339216546%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd216337216540%_))))
                                           (if (equal? _%e216339216546%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl216338216543%_))
                                                   (let ((_%e216340216550%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl216338216543%_))))
                                                     (let ((_%hd216341216554%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e216340216550%_)))
                                                           (_%tl216342216557%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e216340216550%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd216341216554%_))
                                                           (let ((_%e216343216560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd216341216554%_))))
                     (let ((_%hd216344216564%_
                            (let ()
                              (declare (not safe))
                              (##car _%e216343216560%_)))
                           (_%tl216345216567%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e216343216560%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd216344216564%_))
                           (if (let ((__tmp218030 |gxc[1]#_g218031_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp218030
                                  _%hd216344216564%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl216345216567%_))
                                   (let ((_%e216346216570%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl216345216567%_))))
                                     (let ((_%hd216347216574%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e216346216570%_)))
                                           (_%tl216348216577%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e216346216570%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl216348216577%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl216342216557%_))
                                               (let ((_%e216349216580%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl216342216557%_))))
                                                 (let ((_%hd216350216584%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e216349216580%_)))
                                                       (_%tl216351216587%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e216349216580%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd216350216584%_))
                                                       (let ((_%e216352216590%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd216350216584%_))))
                 (if (equal? _%e216352216590%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl216351216587%_))
                         (let ((_%e216353216594%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl216351216587%_))))
                           (let ((_%hd216354216598%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e216353216594%_)))
                                 (_%tl216355216601%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e216353216594%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd216354216598%_))
                                 (let ((_%e216356216604%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd216354216598%_))))
                                   (let ((_%hd216357216608%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e216356216604%_)))
                                         (_%tl216358216611%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e216356216604%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd216357216608%_))
                                         (if (let ((__tmp218032
                                                    |gxc[1]#_g218033_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp218032
                                                _%hd216357216608%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl216358216611%_))
                                                 (let ((_%e216359216614%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl216358216611%_))))
                                                   (let ((_%hd216360216618%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e216359216614%_)))
                                                         (_%tl216361216621%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e216359216614%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl216361216621%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl216355216601%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl216293216391%_))
                         ((lambda (_%L216624%_
                                   _%L216626%_
                                   _%L216627%_
                                   _%L216628%_
                                   _%L216629%_
                                   _%L216630%_)
                            (let ((_%clause216701%_
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
                                                     (cons _%L216630%_ '()))
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
                                                 (cons _%L216628%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L216624%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked216703%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L216626%_))))
                              (_%loop216245%_
                               _%rest216276%_
                               (let ((_%$e216705%_ _%unchecked216703%_))
                                 (if _%$e216705%_
                                     _%$e216705%_
                                     _%unchecked-proc216250%_))
                               (cons _%clause216701%_
                                     _%unchecked-clauses216251%_))))
                          _%hd216360216618%_
                          _%hd216347216574%_
                          _%hd216334216530%_
                          _%hd216321216486%_
                          _%hd216308216442%_
                          _%hd216289216378%_)
                         (_%g216280216367%_ _%g216281216371%_))
                     (_%g216280216367%_ _%g216281216371%_))
                 (_%g216280216367%_ _%g216281216371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g216280216367%_
                                                  _%g216281216371%_))
                                             (_%g216280216367%_
                                              _%g216281216371%_))
                                         (_%g216280216367%_
                                          _%g216281216371%_))))
                                 (_%g216280216367%_ _%g216281216371%_))))
                         (_%g216280216367%_ _%g216281216371%_))
                     (_%g216280216367%_ _%g216281216371%_)))
               (_%g216280216367%_ _%g216281216371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g216280216367%_
                                                _%g216281216371%_))
                                           (_%g216280216367%_
                                            _%g216281216371%_))))
                                   (_%g216280216367%_ _%g216281216371%_))
                               (_%g216280216367%_ _%g216281216371%_))
                           (_%g216280216367%_ _%g216281216371%_))))
                   (_%g216280216367%_ _%g216281216371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g216280216367%_
                                                    _%g216281216371%_))
                                               (_%g216280216367%_
                                                _%g216281216371%_)))
                                         (_%g216280216367%_
                                          _%g216281216371%_))))
                                 (_%g216280216367%_ _%g216281216371%_))
                             (_%g216280216367%_ _%g216281216371%_))))
                     (_%g216280216367%_ _%g216281216371%_))
                 (_%g216280216367%_ _%g216281216371%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g216280216367%_
                                                      _%g216281216371%_))))
                                             (_%g216280216367%_
                                              _%g216281216371%_))))
                                     (_%g216280216367%_ _%g216281216371%_))
                                 (_%g216280216367%_ _%g216281216371%_)))
                           (_%g216280216367%_ _%g216281216371%_))))
                   (_%g216280216367%_ _%g216281216371%_))
               (_%g216280216367%_ _%g216281216371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g216280216367%_
                                                _%g216281216371%_))
                                           (_%g216280216367%_
                                            _%g216281216371%_))
                                       (_%g216280216367%_ _%g216281216371%_))))
                               (_%g216280216367%_ _%g216281216371%_))))
                       (_%g216280216367%_ _%g216281216371%_))
                   (_%g216280216367%_ _%g216281216371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g216280216367%_
                                                      _%g216281216371%_))))
                                             (_%g216280216367%_
                                              _%g216281216371%_))
                                         (_%g216280216367%_
                                          _%g216281216371%_))))
                                 (_%g216280216367%_ _%g216281216371%_))
                             (_%g216280216367%_ _%g216281216371%_))
                         (_%g216280216367%_ _%g216281216371%_))))
                 (_%g216280216367%_ _%g216281216371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g216280216367%_
                                                  _%g216281216371%_))
                                             (_%g216280216367%_
                                              _%g216281216371%_)))
                                       (_%g216280216367%_ _%g216281216371%_))))
                               (_%g216280216367%_ _%g216281216371%_))))
                       (_%g216280216367%_ _%g216281216371%_))))
               (_%g216280216367%_ _%g216281216371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g216280216367%_
                                                _%g216281216371%_)))))
                                   (_%g216279216709%_ _%hd216278%_)))))
                         (if (pair? _%rest216252216260%_)
                             (let ((_%hd216257216717%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest216252216260%_)))
                                   (_%tl216258216720%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest216252216260%_))))
                               (let* ((_%hd216723%_ _%hd216257216717%_)
                                      (_%rest216726%_ _%tl216258216720%_))
                                 (_%K216256216713%_
                                  _%rest216726%_
                                  _%hd216723%_)))
                             (_%else216254216272%_))))))
                (begin
                  (let ((_g218023_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g218022_)
                               (##values-length _g218022_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g218023_ 2)))
                        (error "Context expects 2 values" _g218023_)))
                  (let ((_%unchecked-proc216729%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g218022_ 0)))
                        (_%unchecked-clauses216731%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g218022_ 1))))
                    (if _%unchecked-proc216729%_
                        (let* ((_%g216733216757%_
                                (lambda (_%g216734216753%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g216734216753%_))))
                               (_%g216732216844%_
                                (lambda (_%g216734216761%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g216734216761%_))
                                      (let ((_%e216737216764%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g216734216761%_))))
                                        (let ((_%hd216738216768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216737216764%_)))
                                              (_%tl216739216771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216737216764%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216739216771%_))
                                              (let ((_%e216740216774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216739216771%_))))
                                                (let ((_%hd216741216778%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216740216774%_)))
                                                      (_%tl216742216781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216740216774%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd216741216778%_))
                                                      (let ((_g218034_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd216741216778%_ '0))))
                (begin
                  (let ((_g218035_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g218034_)
                               (##values-length _g218034_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g218035_ 2)))
                        (error "Context expects 2 values" _g218035_)))
                  (let ((_%target216743216784%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g218034_ 0)))
                        (_%tl216745216787%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g218034_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl216745216787%_))
                        (letrec ((_%loop216746216790%_
                                  (lambda (_%hd216744216794%_
                                           _%clause216750216797%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd216744216794%_))
                                        (let ((_%e216747216800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd216744216794%_))))
                                          (let ((_%lp-hd216748216804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216747216800%_)))
                                                (_%lp-tl216749216807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216747216800%_))))
                                            (_%loop216746216790%_
                                             _%lp-tl216749216807%_
                                             (cons _%lp-hd216748216804%_
                                                   _%clause216750216797%_))))
                                        (let ((_%clause216751216810%_
                                               (reverse _%clause216750216797%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216742216781%_))
                                              ((lambda (_%L216814%_
                                                        _%L216816%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L216816%_
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
                                             (let ((__tmp218036
                                                    (lambda (_%g216835216838%_
                                                             _%g216836216841%_)
                                                      (cons _%g216835216838%_
                                                            _%g216836216841%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp218036
                                                '()
                                                _%L216814%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause216751216810%_
                                               _%hd216738216768%_)
                                              (_%g216733216757%_
                                               _%g216734216761%_)))))))
                          (_%loop216746216790%_ _%target216743216784%_ '()))
                        (_%g216733216757%_ _%g216734216761%_)))))
              (_%g216733216757%_ _%g216734216761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216733216757%_
                                               _%g216734216761%_))))
                                      (_%g216733216757%_ _%g216734216761%_)))))
                          (_%g216732216844%_
                           (list _%unchecked-proc216729%_
                                 _%unchecked-clauses216731%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g216184216195%_))))
                                        (_%g216182216848%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L216043%_
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
                                          _%L216164%_
                                          _%L216166%_))
                                       (let ((__tmp218037
                                              (lambda (_%g216851216855%_
                                                       _%g216852216858%_
                                                       _%g216853216860%_)
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
                                (cons _%g216852216858%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g216851216855%_ '())))))
              _%g216853216860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp218037
                                          '()
                                          _%L216164%_
                                          _%L216166%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig216090216158%_
                                    _%arity216091216161%_))))))
                   (_%loop216084216116%_ _%target216081216110%_ '() '()))
                 (_%g216077216103%_ _%g216078216107%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g216077216103%_
                                                _%g216078216107%_)))))
                                   (_%g216076216863%_ _%signatures216074%_))
                                 (_%g215960215984%_ _%g215961215988%_)))
                           _%case-signature215978216037%_
                           _%hd215968216005%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215973216017%_
                                                   _%target215970216011%_
                                                   '()))
                                                (_%g215960215984%_
                                                 _%g215961215988%_)))))
                                      (_%g215960215984%_ _%g215961215988%_))))
                              (_%g215960215984%_ _%g215961215988%_))))
                      (_%g215960215984%_ _%g215961215988%_)))))
          (_%g215959216867%_ _%stx215957%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx216875%_)
        (let* ((_%__stx217857217858%_ _%$stx216875%_)
               (_%g216881216941%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217857217858%_)))))
          (let ((_%__kont217860217861%_
                 (lambda (_%L217163%_ _%L217165%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L217165%_ '()))
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
                                                       (cons _%L217165%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L217163%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont217862217863%_
                 (lambda (_%L217088%_ _%L217090%_ _%L217091%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L217091%_ '()))
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
                                                       (cons _%L217091%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L217090%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L217088%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont217864217865%_
                 (lambda (_%L217002%_ _%L217004%_ _%L217005%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L217005%_ '()))
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
                                                       (cons _%L217005%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L217004%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L217002%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx217857217858%_))
                (let ((_%e216885217119%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx217857217858%_))))
                  (let ((_%tl216887217126%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216885217119%_)))
                        (_%hd216886217123%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216885217119%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl216887217126%_))
                        (let ((_%e216888217129%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl216887217126%_))))
                          (let ((_%tl216890217136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216888217129%_)))
                                (_%hd216889217133%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216888217129%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd216889217133%_))
                                (let ((_%e216891217139%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd216889217133%_))))
                                  (if (equal? _%e216891217139%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216890217136%_))
                                          (let ((_%e216892217143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl216890217136%_))))
                                            (let ((_%tl216894217150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216892217143%_)))
                                                  (_%hd216893217147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216892217143%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216894217150%_))
                                                  (let ((_%e216895217153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl216894217150%_))))
                                                    (let ((_%tl216897217160%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216895217153%_)))
                                                          (_%hd216896217157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216895217153%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216897217160%_))
                                                          (_%__kont217860217861%_
                                                           _%hd216896217157%_
                                                           _%hd216893217147%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216881216941%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216881216941%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216881216941%_)))
                                      (if (equal? _%e216891217139%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216890217136%_))
                                              (let ((_%e216908217058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216890217136%_))))
                                                (let ((_%tl216910217065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216908217058%_)))
                                                      (_%hd216909217062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216908217058%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216910217065%_))
                                                      (let ((_%e216911217068%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl216910217065%_))))
                (let ((_%tl216913217075%_
                       (let () (declare (not safe)) (##cdr _%e216911217068%_)))
                      (_%hd216912217072%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216911217068%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216913217075%_))
                      (let ((_%e216914217078%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl216913217075%_))))
                        (let ((_%tl216916217085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216914217078%_)))
                              (_%hd216915217082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216914217078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216916217085%_))
                              (_%__kont217862217863%_
                               _%hd216915217082%_
                               _%hd216912217072%_
                               _%hd216909217062%_)
                              (let ()
                                (declare (not safe))
                                (_%g216881216941%_)))))
                      (let () (declare (not safe)) (_%g216881216941%_)))))
              (let () (declare (not safe)) (_%g216881216941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216881216941%_)))
                                          (if (equal? _%e216891217139%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216890217136%_))
                                                  (let ((_%e216927216972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl216890217136%_))))
                                                    (let ((_%tl216929216979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216927216972%_)))
                                                          (_%hd216928216976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216927216972%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216929216979%_))
                                                          (let ((_%e216930216982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl216929216979%_))))
                    (let ((_%tl216932216989%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216930216982%_)))
                          (_%hd216931216986%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216930216982%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216932216989%_))
                          (let ((_%e216933216992%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl216932216989%_))))
                            (let ((_%tl216935216999%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216933216992%_)))
                                  (_%hd216934216996%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216933216992%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216935216999%_))
                                  (_%__kont217864217865%_
                                   _%hd216934216996%_
                                   _%hd216931216986%_
                                   _%hd216928216976%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216881216941%_)))))
                          (let () (declare (not safe)) (_%g216881216941%_)))))
                  (let () (declare (not safe)) (_%g216881216941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216881216941%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216881216941%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g216881216941%_)))))
                        (let () (declare (not safe)) (_%g216881216941%_)))))
                (let () (declare (not safe)) (_%g216881216941%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx217187%_)
        (let* ((_%g217191217211%_
                (lambda (_%g217192217207%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217192217207%_))))
               (_%g217190217282%_
                (lambda (_%g217192217215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217192217215%_))
                      (let ((_%e217194217218%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217192217215%_))))
                        (let ((_%hd217195217222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217194217218%_)))
                              (_%tl217196217225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217194217218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl217196217225%_))
                              (let ((_g218038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl217196217225%_
                                        '0))))
                                (begin
                                  (let ((_g218039_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g218038_)
                                               (##values-length _g218038_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g218039_ 2)))
                                        (error "Context expects 2 values"
                                               _g218039_)))
                                  (let ((_%target217197217228%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g218038_ 0)))
                                        (_%tl217199217231%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g218038_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217199217231%_))
                                        (letrec ((_%loop217200217234%_
                                                  (lambda (_%hd217198217238%_
                                                           _%decl217204217241%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd217198217238%_))
                                                        (let ((_%e217201217244%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd217198217238%_))))
                  (let ((_%lp-hd217202217248%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217201217244%_)))
                        (_%lp-tl217203217251%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217201217244%_))))
                    (_%loop217200217234%_
                     _%lp-tl217203217251%_
                     (cons _%lp-hd217202217248%_ _%decl217204217241%_))))
                (let ((_%decl217205217254%_ (reverse _%decl217204217241%_)))
                  ((lambda (_%L217258%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp218040
                                  (lambda (_%g217273217276%_ _%g217274217279%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g217273217276%_)
                                          _%g217274217279%_))))
                             (declare (not safe))
                             (__foldr1 __tmp218040 '() _%L217258%_))))
                   _%decl217205217254%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop217200217234%_
                                           _%target217197217228%_
                                           '()))
                                        (_%g217191217211%_
                                         _%g217192217215%_)))))
                              (_%g217191217211%_ _%g217192217215%_))))
                      (_%g217191217211%_ _%g217192217215%_)))))
          (_%g217190217282%_ _%$stx217187%_))))))
