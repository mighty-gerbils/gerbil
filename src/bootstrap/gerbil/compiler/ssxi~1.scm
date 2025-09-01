(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g218000_|
    (##structure
     gx#syntax-quote::t
     '@list
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
  (define |gxc[1]#_g218015_|
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
  (define |gxc[1]#_g218035_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx211418%_)
        (let* ((_%g211422211440%_
                (lambda (_%g211423211436%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211423211436%_))))
               (_%g211421211495%_
                (lambda (_%g211423211444%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211423211444%_))
                      (let ((_%e211426211447%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211423211444%_))))
                        (let ((_%hd211427211451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211426211447%_)))
                              (_%tl211428211454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211426211447%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211428211454%_))
                              (let ((_%e211429211457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211428211454%_))))
                                (let ((_%hd211430211461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211429211457%_)))
                                      (_%tl211431211464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211429211457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211431211464%_))
                                      (let ((_%e211432211467%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211431211464%_))))
                                        (let ((_%hd211433211471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211432211467%_)))
                                              (_%tl211434211474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211432211467%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211434211474%_))
                                              ((lambda (_%L211477%_
                                                        _%L211479%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L211479%_))
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
                               (cons _%L211479%_ '()))
                         (cons _%L211477%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g211422211440%_
                                                      _%g211423211444%_)))
                                               _%hd211433211471%_
                                               _%hd211430211461%_)
                                              (_%g211422211440%_
                                               _%g211423211444%_))))
                                      (_%g211422211440%_ _%g211423211444%_))))
                              (_%g211422211440%_ _%g211423211444%_))))
                      (_%g211422211440%_ _%g211423211444%_)))))
          (_%g211421211495%_ _%$stx211418%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx211499%_)
        (let* ((_%g211503211521%_
                (lambda (_%g211504211517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211504211517%_))))
               (_%g211502211576%_
                (lambda (_%g211504211525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211504211525%_))
                      (let ((_%e211507211528%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211504211525%_))))
                        (let ((_%hd211508211532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211507211528%_)))
                              (_%tl211509211535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211507211528%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211509211535%_))
                              (let ((_%e211510211538%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211509211535%_))))
                                (let ((_%hd211511211542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211510211538%_)))
                                      (_%tl211512211545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211510211538%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211512211545%_))
                                      (let ((_%e211513211548%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211512211545%_))))
                                        (let ((_%hd211514211552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211513211548%_)))
                                              (_%tl211515211555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211513211548%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211515211555%_))
                                              ((lambda (_%L211558%_
                                                        _%L211560%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L211560%_))
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
                               (cons _%L211560%_ '()))
                         (cons _%L211558%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g211503211521%_
                                                      _%g211504211525%_)))
                                               _%hd211514211552%_
                                               _%hd211511211542%_)
                                              (_%g211503211521%_
                                               _%g211504211525%_))))
                                      (_%g211503211521%_ _%g211504211525%_))))
                              (_%g211503211521%_ _%g211504211525%_))))
                      (_%g211503211521%_ _%g211504211525%_)))))
          (_%g211502211576%_ _%$stx211499%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx211580%_)
        (let* ((_%g211584211613%_
                (lambda (_%g211585211609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211585211609%_))))
               (_%g211583211713%_
                (lambda (_%g211585211617%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211585211617%_))
                      (let ((_%e211588211620%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211585211617%_))))
                        (let ((_%hd211589211624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211588211620%_)))
                              (_%tl211590211627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211588211620%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211590211627%_))
                              (let ((_g217978_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211590211627%_
                                        '0))))
                                (begin
                                  (let ((_g217979_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217978_)
                                               (##values-length _g217978_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217979_ 2)))
                                        (error "Context expects 2 values"
                                               _g217979_)))
                                  (let ((_%target211591211630%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217978_ 0)))
                                        (_%tl211593211633%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217978_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211593211633%_))
                                        (letrec ((_%loop211594211636%_
                                                  (lambda (_%hd211592211640%_
                                                           _%type211598211643%_
                                                           _%symbol211599211645%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211592211640%_))
                                                        (let ((_%e211595211648%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd211592211640%_))))
                  (let ((_%lp-hd211596211652%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211595211648%_)))
                        (_%lp-tl211597211655%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211595211648%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd211596211652%_))
                        (let ((_%e211602211658%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd211596211652%_))))
                          (let ((_%hd211603211662%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211602211658%_)))
                                (_%tl211604211665%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211602211658%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl211604211665%_))
                                (let ((_%e211605211668%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl211604211665%_))))
                                  (let ((_%hd211606211672%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211605211668%_)))
                                        (_%tl211607211675%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211605211668%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211607211675%_))
                                        (_%loop211594211636%_
                                         _%lp-tl211597211655%_
                                         (cons _%hd211606211672%_
                                               _%type211598211643%_)
                                         (cons _%hd211603211662%_
                                               _%symbol211599211645%_))
                                        (_%g211584211613%_
                                         _%g211585211617%_))))
                                (_%g211584211613%_ _%g211585211617%_))))
                        (_%g211584211613%_ _%g211585211617%_))))
                (let ((_%type211600211678%_ (reverse _%type211598211643%_))
                      (_%symbol211601211681%_
                       (reverse _%symbol211599211645%_)))
                  ((lambda (_%L211684%_ _%L211686%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L211684%_
                                _%L211686%_))
                             (let ((__tmp217980
                                    (lambda (_%g211701211705%_
                                             _%g211702211708%_
                                             _%g211703211710%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g211702211708%_
                                                        (cons _%g211701211705%_
                                                              '())))
                                            _%g211703211710%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp217980
                                '()
                                _%L211684%_
                                _%L211686%_)))))
                   _%type211600211678%_
                   _%symbol211601211681%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211594211636%_
                                           _%target211591211630%_
                                           '()
                                           '()))
                                        (_%g211584211613%_
                                         _%g211585211617%_)))))
                              (_%g211584211613%_ _%g211585211617%_))))
                      (_%g211584211613%_ _%g211585211617%_)))))
          (_%g211583211713%_ _%$stx211580%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx211718%_)
        (let* ((_%__stx217289217290%_ _%$stx211718%_)
               (_%g211723211765%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217289217290%_)))))
          (let ((_%__kont217292217293%_
                 (lambda (_%L211893%_ _%L211895%_ _%L211896%_ _%L211897%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L211897%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L211896%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L211895%_ '()))
                                           (cons _%L211893%_ '())))))))
                (_%__kont217294217295%_
                 (lambda (_%L211812%_ _%L211814%_ _%L211815%_ _%L211816%_)
                   (cons _%L211816%_
                         (cons _%L211815%_
                               (cons _%L211814%_
                                     (cons _%L211812%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match217328217329%_
                   (lambda (_%e211729211843%_
                            _%hd211730211847%_
                            _%tl211731211850%_
                            _%e211732211853%_
                            _%hd211733211857%_
                            _%tl211734211860%_
                            _%e211735211863%_
                            _%hd211736211867%_
                            _%tl211737211870%_
                            _%e211738211873%_
                            _%hd211739211877%_
                            _%tl211740211880%_
                            _%e211741211883%_
                            _%hd211742211887%_
                            _%tl211743211890%_)
                     (let ((_%L211893%_ _%hd211742211887%_)
                           (_%L211895%_ _%hd211739211877%_)
                           (_%L211896%_ _%hd211736211867%_)
                           (_%L211897%_ _%hd211733211857%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211897%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211896%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L211895%_)))
                           (_%__kont217292217293%_
                            _%L211893%_
                            _%L211895%_
                            _%L211896%_
                            _%L211897%_)
                           (let ()
                             (declare (not safe))
                             (_%g211723211765%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217289217290%_))
                  (let ((_%e211729211843%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217289217290%_))))
                    (let ((_%tl211731211850%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211729211843%_)))
                          (_%hd211730211847%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211729211843%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl211731211850%_))
                          (let ((_%e211732211853%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl211731211850%_))))
                            (let ((_%tl211734211860%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211732211853%_)))
                                  (_%hd211733211857%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211732211853%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl211734211860%_))
                                  (let ((_%e211735211863%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl211734211860%_))))
                                    (let ((_%tl211737211870%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211735211863%_)))
                                          (_%hd211736211867%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211735211863%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211737211870%_))
                                          (let ((_%e211738211873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl211737211870%_))))
                                            (let ((_%tl211740211880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211738211873%_)))
                                                  (_%hd211739211877%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211738211873%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211740211880%_))
                                                  (let ((_%e211741211883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl211740211880%_))))
                                                    (let ((_%tl211743211890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211741211883%_)))
                                                          (_%hd211742211887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211741211883%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211743211890%_))
                                                          (_%__match217328217329%_
                                                           _%e211729211843%_
                                                           _%hd211730211847%_
                                                           _%tl211731211850%_
                                                           _%e211732211853%_
                                                           _%hd211733211857%_
                                                           _%tl211734211860%_
                                                           _%e211735211863%_
                                                           _%hd211736211867%_
                                                           _%tl211737211870%_
                                                           _%e211738211873%_
                                                           _%hd211739211877%_
                                                           _%tl211740211880%_
                                                           _%e211741211883%_
                                                           _%hd211742211887%_
                                                           _%tl211743211890%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g211723211765%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211740211880%_))
                                                      (_%__kont217294217295%_
                                                       _%hd211739211877%_
                                                       _%hd211736211867%_
                                                       _%hd211733211857%_
                                                       _%hd211730211847%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g211723211765%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g211723211765%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g211723211765%_)))))
                          (let () (declare (not safe)) (_%g211723211765%_)))))
                  (let () (declare (not safe)) (_%g211723211765%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx211922%_)
        (let* ((_%g211926211961%_
                (lambda (_%g211927211957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211927211957%_))))
               (_%g211925212080%_
                (lambda (_%g211927211965%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211927211965%_))
                      (let ((_%e211931211968%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211927211965%_))))
                        (let ((_%hd211932211972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211931211968%_)))
                              (_%tl211933211975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211931211968%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211933211975%_))
                              (let ((_g217981_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211933211975%_
                                        '0))))
                                (begin
                                  (let ((_g217982_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217981_)
                                               (##values-length _g217981_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217982_ 2)))
                                        (error "Context expects 2 values"
                                               _g217982_)))
                                  (let ((_%target211934211978%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217981_ 0)))
                                        (_%tl211936211981%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217981_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211936211981%_))
                                        (letrec ((_%loop211937211984%_
                                                  (lambda (_%hd211935211988%_
                                                           _%symbol211941211991%_
                                                           _%method211942211993%_
                                                           _%type-t211943211995%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211935211988%_))
                                                        (let ((_%e211938211998%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd211935211988%_))))
                  (let ((_%lp-hd211939212002%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211938211998%_)))
                        (_%lp-tl211940212005%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211938211998%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd211939212002%_))
                        (let ((_%e211947212008%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd211939212002%_))))
                          (let ((_%hd211948212012%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211947212008%_)))
                                (_%tl211949212015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211947212008%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl211949212015%_))
                                (let ((_%e211950212018%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl211949212015%_))))
                                  (let ((_%hd211951212022%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211950212018%_)))
                                        (_%tl211952212025%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211950212018%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211952212025%_))
                                        (let ((_%e211953212028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl211952212025%_))))
                                          (let ((_%hd211954212032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211953212028%_)))
                                                (_%tl211955212035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211953212028%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211955212035%_))
                                                (_%loop211937211984%_
                                                 _%lp-tl211940212005%_
                                                 (cons _%hd211954212032%_
                                                       _%symbol211941211991%_)
                                                 (cons _%hd211951212022%_
                                                       _%method211942211993%_)
                                                 (cons _%hd211948212012%_
                                                       _%type-t211943211995%_))
                                                (_%g211926211961%_
                                                 _%g211927211965%_))))
                                        (_%g211926211961%_
                                         _%g211927211965%_))))
                                (_%g211926211961%_ _%g211927211965%_))))
                        (_%g211926211961%_ _%g211927211965%_))))
                (let ((_%symbol211944212038%_ (reverse _%symbol211941211991%_))
                      (_%method211945212041%_ (reverse _%method211942211993%_))
                      (_%type-t211946212043%_
                       (reverse _%type-t211943211995%_)))
                  ((lambda (_%L212046%_ _%L212048%_ _%L212049%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L212046%_
                                _%L212048%_
                                _%L212049%_))
                             (let ((__tmp217983
                                    (lambda (_%g212065212070%_
                                             _%g212066212073%_
                                             _%g212067212075%_
                                             _%g212068212077%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g212067212075%_
                                                        (cons _%g212066212073%_
                                                              (cons _%g212065212070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g212068212077%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp217983
                                '()
                                _%L212046%_
                                _%L212048%_
                                _%L212049%_)))))
                   _%symbol211944212038%_
                   _%method211945212041%_
                   _%type-t211946212043%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211937211984%_
                                           _%target211934211978%_
                                           '()
                                           '()
                                           '()))
                                        (_%g211926211961%_
                                         _%g211927211965%_)))))
                              (_%g211926211961%_ _%g211927211965%_))))
                      (_%g211926211961%_ _%g211927211965%_)))))
          (_%g211925212080%_ _%$stx211922%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx212085%_)
        (let* ((_%g212089212122%_
                (lambda (_%g212090212118%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212090212118%_))))
               (_%g212088212236%_
                (lambda (_%g212090212126%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212090212126%_))
                      (let ((_%e212094212129%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212090212126%_))))
                        (let ((_%hd212095212133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212094212129%_)))
                              (_%tl212096212136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212094212129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212096212136%_))
                              (let ((_%e212097212139%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212096212136%_))))
                                (let ((_%hd212098212143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212097212139%_)))
                                      (_%tl212099212146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212097212139%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl212099212146%_))
                                      (let ((_g217984_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl212099212146%_
                                                '0))))
                                        (begin
                                          (let ((_g217985_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g217984_)
                                                       (##values-length
                                                        _g217984_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g217985_ 2)))
                                                (error "Context expects 2 values"
                                                       _g217985_)))
                                          (let ((_%target212100212149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g217984_ 0)))
                                                (_%tl212102212152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g217984_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl212102212152%_))
                                                (letrec ((_%loop212103212155%_
                                                          (lambda (_%hd212101212159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol212107212162%_
                           _%method212108212164%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd212101212159%_))
                        (let ((_%e212104212167%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd212101212159%_))))
                          (let ((_%lp-hd212105212171%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e212104212167%_)))
                                (_%lp-tl212106212174%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e212104212167%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd212105212171%_))
                                (let ((_%e212111212177%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd212105212171%_))))
                                  (let ((_%hd212112212181%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212111212177%_)))
                                        (_%tl212113212184%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212111212177%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl212113212184%_))
                                        (let ((_%e212114212187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl212113212184%_))))
                                          (let ((_%hd212115212191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e212114212187%_)))
                                                (_%tl212116212194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e212114212187%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl212116212194%_))
                                                (_%loop212103212155%_
                                                 _%lp-tl212106212174%_
                                                 (cons _%hd212115212191%_
                                                       _%symbol212107212162%_)
                                                 (cons _%hd212112212181%_
                                                       _%method212108212164%_))
                                                (_%g212089212122%_
                                                 _%g212090212126%_))))
                                        (_%g212089212122%_
                                         _%g212090212126%_))))
                                (_%g212089212122%_ _%g212090212126%_))))
                        (let ((_%symbol212109212197%_
                               (reverse _%symbol212107212162%_))
                              (_%method212110212200%_
                               (reverse _%method212108212164%_)))
                          ((lambda (_%L212203%_ _%L212205%_ _%L212206%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L212203%_
                                        _%L212205%_))
                                     (let ((__tmp217986
                                            (lambda (_%g212224212228%_
                                                     _%g212225212231%_
                                                     _%g212226212233%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L212206%_
                                                                (cons _%g212225212231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g212224212228%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g212226212233%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp217986
                                        '()
                                        _%L212203%_
                                        _%L212205%_)))))
                           _%symbol212109212197%_
                           _%method212110212200%_
                           _%hd212098212143%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop212103212155%_
                                                   _%target212100212149%_
                                                   '()
                                                   '()))
                                                (_%g212089212122%_
                                                 _%g212090212126%_)))))
                                      (_%g212089212122%_ _%g212090212126%_))))
                              (_%g212089212122%_ _%g212090212126%_))))
                      (_%g212089212122%_ _%g212090212126%_)))))
          (_%g212088212236%_ _%$stx212085%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx212241%_)
        (let* ((_%g212245212259%_
                (lambda (_%g212246212255%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212246212255%_))))
               (_%g212244212300%_
                (lambda (_%g212246212263%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212246212263%_))
                      (let ((_%e212248212266%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212246212263%_))))
                        (let ((_%hd212249212270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212248212266%_)))
                              (_%tl212250212273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212248212266%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212250212273%_))
                              (let ((_%e212251212276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212250212273%_))))
                                (let ((_%hd212252212280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212251212276%_)))
                                      (_%tl212253212283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212251212276%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212253212283%_))
                                      ((lambda (_%L212286%_)
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
                                                           (cons _%L212286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212252212280%_)
                                      (_%g212245212259%_ _%g212246212263%_))))
                              (_%g212245212259%_ _%g212246212263%_))))
                      (_%g212245212259%_ _%g212246212263%_)))))
          (_%g212244212300%_ _%$stx212241%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx212304%_)
        (let* ((_%g212308212362%_
                (lambda (_%g212309212358%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212309212358%_))))
               (_%g212307212543%_
                (lambda (_%g212309212366%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212309212366%_))
                      (let ((_%e212321212369%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212309212366%_))))
                        (let ((_%hd212322212373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212321212369%_)))
                              (_%tl212323212376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212321212369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212323212376%_))
                              (let ((_%e212324212379%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212323212376%_))))
                                (let ((_%hd212325212383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212324212379%_)))
                                      (_%tl212326212386%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212324212379%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212326212386%_))
                                      (let ((_%e212327212389%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212326212386%_))))
                                        (let ((_%hd212328212393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212327212389%_)))
                                              (_%tl212329212396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212327212389%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212329212396%_))
                                              (let ((_%e212330212399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212329212396%_))))
                                                (let ((_%hd212331212403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212330212399%_)))
                                                      (_%tl212332212406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212330212399%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl212332212406%_))
                                                      (let ((_%e212333212409%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl212332212406%_))))
                (let ((_%hd212334212413%_
                       (let () (declare (not safe)) (##car _%e212333212409%_)))
                      (_%tl212335212416%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e212333212409%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl212335212416%_))
                      (let ((_%e212336212419%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl212335212416%_))))
                        (let ((_%hd212337212423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212336212419%_)))
                              (_%tl212338212426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212336212419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212338212426%_))
                              (let ((_%e212339212429%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212338212426%_))))
                                (let ((_%hd212340212433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212339212429%_)))
                                      (_%tl212341212436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212339212429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212341212436%_))
                                      (let ((_%e212342212439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212341212436%_))))
                                        (let ((_%hd212343212443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212342212439%_)))
                                              (_%tl212344212446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212342212439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212344212446%_))
                                              (let ((_%e212345212449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212344212446%_))))
                                                (let ((_%hd212346212453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212345212449%_)))
                                                      (_%tl212347212456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212345212449%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl212347212456%_))
                                                      (let ((_%e212348212459%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl212347212456%_))))
                (let ((_%hd212349212463%_
                       (let () (declare (not safe)) (##car _%e212348212459%_)))
                      (_%tl212350212466%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e212348212459%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl212350212466%_))
                      (let ((_%e212351212469%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl212350212466%_))))
                        (let ((_%hd212352212473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212351212469%_)))
                              (_%tl212353212476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212351212469%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212353212476%_))
                              (let ((_%e212354212479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212353212476%_))))
                                (let ((_%hd212355212483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212354212479%_)))
                                      (_%tl212356212486%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212354212479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212356212486%_))
                                      ((lambda (_%L212489%_
                                                _%L212491%_
                                                _%L212492%_
                                                _%L212493%_
                                                _%L212494%_
                                                _%L212495%_
                                                _%L212496%_
                                                _%L212497%_
                                                _%L212498%_
                                                _%L212499%_
                                                _%L212500%_)
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
                                                           (cons _%L212500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L212499%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L212498%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L212497%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L212496%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L212495%_ '()))
                                           (cons _%L212494%_
                                                 (cons _%L212493%_
                                                       (cons _%L212492%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L212491%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L212489%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd212355212483%_
                                       _%hd212352212473%_
                                       _%hd212349212463%_
                                       _%hd212346212453%_
                                       _%hd212343212443%_
                                       _%hd212340212433%_
                                       _%hd212337212423%_
                                       _%hd212334212413%_
                                       _%hd212331212403%_
                                       _%hd212328212393%_
                                       _%hd212325212383%_)
                                      (_%g212308212362%_ _%g212309212366%_))))
                              (_%g212308212362%_ _%g212309212366%_))))
                      (_%g212308212362%_ _%g212309212366%_))))
              (_%g212308212362%_ _%g212309212366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212308212362%_
                                               _%g212309212366%_))))
                                      (_%g212308212362%_ _%g212309212366%_))))
                              (_%g212308212362%_ _%g212309212366%_))))
                      (_%g212308212362%_ _%g212309212366%_))))
              (_%g212308212362%_ _%g212309212366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212308212362%_
                                               _%g212309212366%_))))
                                      (_%g212308212362%_ _%g212309212366%_))))
                              (_%g212308212362%_ _%g212309212366%_))))
                      (_%g212308212362%_ _%g212309212366%_)))))
          (_%g212307212543%_ _%$stx212304%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx212547%_)
        (let* ((_%g212551212565%_
                (lambda (_%g212552212561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212552212561%_))))
               (_%g212550212606%_
                (lambda (_%g212552212569%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212552212569%_))
                      (let ((_%e212554212572%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212552212569%_))))
                        (let ((_%hd212555212576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212554212572%_)))
                              (_%tl212556212579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212554212572%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212556212579%_))
                              (let ((_%e212557212582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212556212579%_))))
                                (let ((_%hd212558212586%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212557212582%_)))
                                      (_%tl212559212589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212557212582%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212559212589%_))
                                      ((lambda (_%L212592%_)
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
                                                           (cons _%L212592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212558212586%_)
                                      (_%g212551212565%_ _%g212552212569%_))))
                              (_%g212551212565%_ _%g212552212569%_))))
                      (_%g212551212565%_ _%g212552212569%_)))))
          (_%g212550212606%_ _%$stx212547%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx212610%_)
        (let* ((_%g212614212628%_
                (lambda (_%g212615212624%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212615212624%_))))
               (_%g212613212669%_
                (lambda (_%g212615212632%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212615212632%_))
                      (let ((_%e212617212635%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212615212632%_))))
                        (let ((_%hd212618212639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212617212635%_)))
                              (_%tl212619212642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212617212635%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212619212642%_))
                              (let ((_%e212620212645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212619212642%_))))
                                (let ((_%hd212621212649%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212620212645%_)))
                                      (_%tl212622212652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212620212645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212622212652%_))
                                      ((lambda (_%L212655%_)
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
                                                           (cons _%L212655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212621212649%_)
                                      (_%g212614212628%_ _%g212615212632%_))))
                              (_%g212614212628%_ _%g212615212632%_))))
                      (_%g212614212628%_ _%g212615212632%_)))))
          (_%g212613212669%_ _%$stx212610%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx212673%_)
        (let* ((_%g212677212699%_
                (lambda (_%g212678212695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212678212695%_))))
               (_%g212676212768%_
                (lambda (_%g212678212703%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212678212703%_))
                      (let ((_%e212682212706%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212678212703%_))))
                        (let ((_%hd212683212710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212682212706%_)))
                              (_%tl212684212713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212682212706%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212684212713%_))
                              (let ((_%e212685212716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212684212713%_))))
                                (let ((_%hd212686212720%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212685212716%_)))
                                      (_%tl212687212723%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212685212716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212687212723%_))
                                      (let ((_%e212688212726%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212687212723%_))))
                                        (let ((_%hd212689212730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212688212726%_)))
                                              (_%tl212690212733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212688212726%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212690212733%_))
                                              (let ((_%e212691212736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212690212733%_))))
                                                (let ((_%hd212692212740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212691212736%_)))
                                                      (_%tl212693212743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212691212736%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212693212743%_))
                                                      ((lambda (_%L212746%_
                                                                _%L212748%_
                                                                _%L212749%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L212749%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L212748%_ '()))
                                   (cons _%L212746%_ '())))))
               _%hd212692212740%_
               _%hd212689212730%_
               _%hd212686212720%_)
              (_%g212677212699%_ _%g212678212703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212677212699%_
                                               _%g212678212703%_))))
                                      (_%g212677212699%_ _%g212678212703%_))))
                              (_%g212677212699%_ _%g212678212703%_))))
                      (_%g212677212699%_ _%g212678212703%_)))))
          (_%g212676212768%_ _%$stx212673%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx212772%_)
        (let* ((_%g212776212798%_
                (lambda (_%g212777212794%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212777212794%_))))
               (_%g212775212867%_
                (lambda (_%g212777212802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212777212802%_))
                      (let ((_%e212781212805%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212777212802%_))))
                        (let ((_%hd212782212809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212781212805%_)))
                              (_%tl212783212812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212781212805%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212783212812%_))
                              (let ((_%e212784212815%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212783212812%_))))
                                (let ((_%hd212785212819%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212784212815%_)))
                                      (_%tl212786212822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212784212815%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212786212822%_))
                                      (let ((_%e212787212825%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212786212822%_))))
                                        (let ((_%hd212788212829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212787212825%_)))
                                              (_%tl212789212832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212787212825%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212789212832%_))
                                              (let ((_%e212790212835%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212789212832%_))))
                                                (let ((_%hd212791212839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212790212835%_)))
                                                      (_%tl212792212842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212790212835%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212792212842%_))
                                                      ((lambda (_%L212845%_
                                                                _%L212847%_
                                                                _%L212848%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L212848%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L212847%_ '()))
                                   (cons _%L212845%_ '())))))
               _%hd212791212839%_
               _%hd212788212829%_
               _%hd212785212819%_)
              (_%g212776212798%_ _%g212777212802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212776212798%_
                                               _%g212777212802%_))))
                                      (_%g212776212798%_ _%g212777212802%_))))
                              (_%g212776212798%_ _%g212777212802%_))))
                      (_%g212776212798%_ _%g212777212802%_)))))
          (_%g212775212867%_ _%$stx212772%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx212871%_)
        (let* ((_%g212875212889%_
                (lambda (_%g212876212885%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212876212885%_))))
               (_%g212874212930%_
                (lambda (_%g212876212893%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212876212893%_))
                      (let ((_%e212878212896%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212876212893%_))))
                        (let ((_%hd212879212900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212878212896%_)))
                              (_%tl212880212903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212878212896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212880212903%_))
                              (let ((_%e212881212906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212880212903%_))))
                                (let ((_%hd212882212910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212881212906%_)))
                                      (_%tl212883212913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212881212906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212883212913%_))
                                      ((lambda (_%L212916%_)
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
                                                           (cons _%L212916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd212882212910%_)
                                      (_%g212875212889%_ _%g212876212893%_))))
                              (_%g212875212889%_ _%g212876212893%_))))
                      (_%g212875212889%_ _%g212876212893%_)))))
          (_%g212874212930%_ _%$stx212871%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx212934%_)
        (let* ((_%g212938212956%_
                (lambda (_%g212939212952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212939212952%_))))
               (_%g212937213011%_
                (lambda (_%g212939212960%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212939212960%_))
                      (let ((_%e212942212963%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212939212960%_))))
                        (let ((_%hd212943212967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212942212963%_)))
                              (_%tl212944212970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212942212963%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212944212970%_))
                              (let ((_%e212945212973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212944212970%_))))
                                (let ((_%hd212946212977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212945212973%_)))
                                      (_%tl212947212980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212945212973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212947212980%_))
                                      (let ((_%e212948212983%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212947212980%_))))
                                        (let ((_%hd212949212987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212948212983%_)))
                                              (_%tl212950212990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212948212983%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212950212990%_))
                                              ((lambda (_%L212993%_
                                                        _%L212995%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L212995%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L212993%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd212949212987%_
                                               _%hd212946212977%_)
                                              (_%g212938212956%_
                                               _%g212939212960%_))))
                                      (_%g212938212956%_ _%g212939212960%_))))
                              (_%g212938212956%_ _%g212939212960%_))))
                      (_%g212938212956%_ _%g212939212960%_)))))
          (_%g212937213011%_ _%$stx212934%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx213015%_)
        (let* ((_%__stx217357217358%_ _%$stx213015%_)
               (_%g213022213083%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217357217358%_)))))
          (let ((_%__kont217360217361%_
                 (lambda (_%L213321%_ _%L213323%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L213323%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L213321%_ '()))
                                     '())))))
                (_%__kont217362217363%_
                 (lambda (_%L213260%_ _%L213262%_ _%L213263%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L213263%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L213262%_ '()))
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
                                 (cons _%L213260%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont217364217365%_
                 (lambda (_%L213184%_ _%L213186%_)
                   (cons _%L213186%_ (cons _%L213184%_ (cons '#f '())))))
                (_%__kont217366217367%_
                 (lambda (_%L213134%_ _%L213136%_ _%L213137%_)
                   (cons _%L213137%_
                         (cons _%L213136%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L213134%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx217357217358%_))
                (let ((_%e213026213291%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx217357217358%_))))
                  (let ((_%tl213028213298%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213026213291%_)))
                        (_%hd213027213295%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213026213291%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl213028213298%_))
                        (let ((_%e213029213301%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl213028213298%_))))
                          (let ((_%tl213031213308%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e213029213301%_)))
                                (_%hd213030213305%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e213029213301%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl213031213308%_))
                                (let ((_%e213032213311%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl213031213308%_))))
                                  (let ((_%tl213034213318%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e213032213311%_)))
                                        (_%hd213033213315%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e213032213311%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213034213318%_))
                                        (_%__kont217360217361%_
                                         _%hd213033213315%_
                                         _%hd213030213305%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl213034213318%_))
                                            (let ((_%e213047213236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl213034213318%_))))
                                              (let ((_%tl213049213243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e213047213236%_)))
                                                    (_%hd213048213240%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e213047213236%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd213048213240%_))
                                                    (let ((_%e213050213246%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd213048213240%_))))
                                                      (if (equal? _%e213050213246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl213049213243%_))
                      (let ((_%e213051213250%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl213049213243%_))))
                        (let ((_%tl213053213257%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213051213250%_)))
                              (_%hd213052213254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213051213250%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl213053213257%_))
                              (_%__kont217362217363%_
                               _%hd213052213254%_
                               _%hd213033213315%_
                               _%hd213030213305%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd213033213315%_))
                                  (let ((_%e213074213120%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd213033213315%_))))
                                    (declare (not safe))
                                    (_%g213022213083%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g213022213083%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd213033213315%_))
                          (let ((_%e213074213120%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd213033213315%_))))
                            (if (equal? _%e213074213120%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl213049213243%_))
                                    (_%__kont217366217367%_
                                     _%hd213048213240%_
                                     _%hd213030213305%_
                                     _%hd213027213295%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g213022213083%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g213022213083%_))))
                          (let () (declare (not safe)) (_%g213022213083%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd213033213315%_))
                      (let ((_%e213074213120%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd213033213315%_))))
                        (if (equal? _%e213074213120%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl213049213243%_))
                                (_%__kont217366217367%_
                                 _%hd213048213240%_
                                 _%hd213030213305%_
                                 _%hd213027213295%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g213022213083%_)))
                            (let () (declare (not safe)) (_%g213022213083%_))))
                      (let () (declare (not safe)) (_%g213022213083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd213033213315%_))
                                                        (let ((_%e213074213120%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd213033213315%_))))
                  (if (equal? _%e213074213120%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl213049213243%_))
                          (_%__kont217366217367%_
                           _%hd213048213240%_
                           _%hd213030213305%_
                           _%hd213027213295%_)
                          (let () (declare (not safe)) (_%g213022213083%_)))
                      (let () (declare (not safe)) (_%g213022213083%_))))
                (let () (declare (not safe)) (_%g213022213083%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd213033213315%_))
                                                (let ((_%e213074213120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd213033213315%_))))
                                                  (declare (not safe))
                                                  (_%g213022213083%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g213022213083%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl213031213308%_))
                                    (_%__kont217364217365%_
                                     _%hd213030213305%_
                                     _%hd213027213295%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g213022213083%_))))))
                        (let () (declare (not safe)) (_%g213022213083%_)))))
                (let () (declare (not safe)) (_%g213022213083%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx213342%_)
        (let* ((_%g213346213375%_
                (lambda (_%g213347213371%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213347213371%_))))
               (_%g213345213484%_
                (lambda (_%g213347213379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213347213379%_))
                      (let ((_%e213349213382%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213347213379%_))))
                        (let ((_%hd213350213386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213349213382%_)))
                              (_%tl213351213389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213349213382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl213351213389%_))
                              (let ((_g217987_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl213351213389%_
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
                                  (let ((_%target213352213392%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217987_ 0)))
                                        (_%tl213354213395%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217987_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213354213395%_))
                                        (letrec ((_%loop213355213398%_
                                                  (lambda (_%hd213353213402%_
                                                           _%clause213359213405%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd213353213402%_))
                                                        (let ((_%e213356213408%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd213353213402%_))))
                  (let ((_%lp-hd213357213412%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213356213408%_)))
                        (_%lp-tl213358213415%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213356213408%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd213357213412%_))
                        (let ((_g217989_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd213357213412%_
                                  '0))))
                          (begin
                            (let ((_g217990_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g217989_)
                                         (##values-length _g217989_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g217990_ 2)))
                                  (error "Context expects 2 values"
                                         _g217990_)))
                            (let ((_%target213361213418%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g217989_ 0)))
                                  (_%tl213363213421%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g217989_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl213363213421%_))
                                  (letrec ((_%loop213364213424%_
                                            (lambda (_%hd213362213428%_
                                                     _%clause213368213431%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd213362213428%_))
                                                  (let ((_%e213365213434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd213362213428%_))))
                                                    (let ((_%lp-hd213366213438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e213365213434%_)))
                                                          (_%lp-tl213367213441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e213365213434%_))))
                                                      (_%loop213364213424%_
                                                       _%lp-tl213367213441%_
                                                       (cons _%lp-hd213366213438%_
                                                             _%clause213368213431%_))))
                                                  (let ((_%clause213369213444%_
                                                         (reverse _%clause213368213431%_)))
                                                    (_%loop213355213398%_
                                                     _%lp-tl213358213415%_
                                                     (cons _%clause213369213444%_
                                                           _%clause213359213405%_)))))))
                                    (_%loop213364213424%_
                                     _%target213361213418%_
                                     '()))
                                  (_%g213346213375%_ _%g213347213379%_)))))
                        (_%g213346213375%_ _%g213347213379%_))))
                (let ((_%clause213360213448%_
                       (reverse _%clause213359213405%_)))
                  ((lambda (_%L213452%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp217991
                                              (lambda (_%g213467213472%_
                                                       _%g213468213475%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp217992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g213469213478%_ _%g213470213481%_)
                             (cons _%g213469213478%_ _%g213470213481%_))))
                      (declare (not safe))
                      (__foldr1 __tmp217992 '() _%g213467213472%_)))
              _%g213468213475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp217991
                                          '()
                                          _%L213452%_)))
                                 '())))
                   _%clause213360213448%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop213355213398%_
                                           _%target213352213392%_
                                           '()))
                                        (_%g213346213375%_
                                         _%g213347213379%_)))))
                              (_%g213346213375%_ _%g213347213379%_))))
                      (_%g213346213375%_ _%g213347213379%_)))))
          (_%g213345213484%_ _%$stx213342%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx213490%_)
        (let* ((_%g213494213512%_
                (lambda (_%g213495213508%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213495213508%_))))
               (_%g213493213567%_
                (lambda (_%g213495213516%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213495213516%_))
                      (let ((_%e213498213519%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213495213516%_))))
                        (let ((_%hd213499213523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213498213519%_)))
                              (_%tl213500213526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213498213519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213500213526%_))
                              (let ((_%e213501213529%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213500213526%_))))
                                (let ((_%hd213502213533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213501213529%_)))
                                      (_%tl213503213536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213501213529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213503213536%_))
                                      (let ((_%e213504213539%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213503213536%_))))
                                        (let ((_%hd213505213543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213504213539%_)))
                                              (_%tl213506213546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213504213539%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213506213546%_))
                                              ((lambda (_%L213549%_
                                                        _%L213551%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L213551%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L213549%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213505213543%_
                                               _%hd213502213533%_)
                                              (_%g213494213512%_
                                               _%g213495213516%_))))
                                      (_%g213494213512%_ _%g213495213516%_))))
                              (_%g213494213512%_ _%g213495213516%_))))
                      (_%g213494213512%_ _%g213495213516%_)))))
          (_%g213493213567%_ _%$stx213490%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx213571%_)
        (let* ((_%g213575213593%_
                (lambda (_%g213576213589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213576213589%_))))
               (_%g213574213648%_
                (lambda (_%g213576213597%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213576213597%_))
                      (let ((_%e213579213600%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213576213597%_))))
                        (let ((_%hd213580213604%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213579213600%_)))
                              (_%tl213581213607%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213579213600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213581213607%_))
                              (let ((_%e213582213610%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213581213607%_))))
                                (let ((_%hd213583213614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213582213610%_)))
                                      (_%tl213584213617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213582213610%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213584213617%_))
                                      (let ((_%e213585213620%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213584213617%_))))
                                        (let ((_%hd213586213624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213585213620%_)))
                                              (_%tl213587213627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213585213620%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213587213627%_))
                                              ((lambda (_%L213630%_
                                                        _%L213632%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L213632%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L213630%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213586213624%_
                                               _%hd213583213614%_)
                                              (_%g213575213593%_
                                               _%g213576213597%_))))
                                      (_%g213575213593%_ _%g213576213597%_))))
                              (_%g213575213593%_ _%g213576213597%_))))
                      (_%g213575213593%_ _%g213576213597%_)))))
          (_%g213574213648%_ _%$stx213571%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx213652%_)
        (let* ((_%g213656213685%_
                (lambda (_%g213657213681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213657213681%_))))
               (_%g213655213785%_
                (lambda (_%g213657213689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213657213689%_))
                      (let ((_%e213660213692%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213657213689%_))))
                        (let ((_%hd213661213696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213660213692%_)))
                              (_%tl213662213699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213660213692%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl213662213699%_))
                              (let ((_g217993_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl213662213699%_
                                        '0))))
                                (begin
                                  (let ((_g217994_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217993_)
                                               (##values-length _g217993_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217994_ 2)))
                                        (error "Context expects 2 values"
                                               _g217994_)))
                                  (let ((_%target213663213702%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217993_ 0)))
                                        (_%tl213665213705%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g217993_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213665213705%_))
                                        (letrec ((_%loop213666213708%_
                                                  (lambda (_%hd213664213712%_
                                                           _%rule213670213715%_
                                                           _%proc213671213717%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd213664213712%_))
                                                        (let ((_%e213667213720%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd213664213712%_))))
                  (let ((_%lp-hd213668213724%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213667213720%_)))
                        (_%lp-tl213669213727%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213667213720%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd213668213724%_))
                        (let ((_%e213674213730%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd213668213724%_))))
                          (let ((_%hd213675213734%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e213674213730%_)))
                                (_%tl213676213737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e213674213730%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl213676213737%_))
                                (let ((_%e213677213740%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl213676213737%_))))
                                  (let ((_%hd213678213744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e213677213740%_)))
                                        (_%tl213679213747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e213677213740%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213679213747%_))
                                        (_%loop213666213708%_
                                         _%lp-tl213669213727%_
                                         (cons _%hd213678213744%_
                                               _%rule213670213715%_)
                                         (cons _%hd213675213734%_
                                               _%proc213671213717%_))
                                        (_%g213656213685%_
                                         _%g213657213689%_))))
                                (_%g213656213685%_ _%g213657213689%_))))
                        (_%g213656213685%_ _%g213657213689%_))))
                (let ((_%rule213672213750%_ (reverse _%rule213670213715%_))
                      (_%proc213673213753%_ (reverse _%proc213671213717%_)))
                  ((lambda (_%L213756%_ _%L213758%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L213756%_
                                _%L213758%_))
                             (let ((__tmp217995
                                    (lambda (_%g213773213777%_
                                             _%g213774213780%_
                                             _%g213775213782%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g213774213780%_
                                                        (cons _%g213773213777%_
                                                              '())))
                                            _%g213775213782%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp217995
                                '()
                                _%L213756%_
                                _%L213758%_)))))
                   _%rule213672213750%_
                   _%proc213673213753%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop213666213708%_
                                           _%target213663213702%_
                                           '()
                                           '()))
                                        (_%g213656213685%_
                                         _%g213657213689%_)))))
                              (_%g213656213685%_ _%g213657213689%_))))
                      (_%g213656213685%_ _%g213657213689%_)))))
          (_%g213655213785%_ _%$stx213652%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx213790%_)
        (let* ((_%g213794213812%_
                (lambda (_%g213795213808%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213795213808%_))))
               (_%g213793213867%_
                (lambda (_%g213795213816%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213795213816%_))
                      (let ((_%e213798213819%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213795213816%_))))
                        (let ((_%hd213799213823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213798213819%_)))
                              (_%tl213800213826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213798213819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl213800213826%_))
                              (let ((_%e213801213829%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl213800213826%_))))
                                (let ((_%hd213802213833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213801213829%_)))
                                      (_%tl213803213836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213801213829%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213803213836%_))
                                      (let ((_%e213804213839%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213803213836%_))))
                                        (let ((_%hd213805213843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213804213839%_)))
                                              (_%tl213806213846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213804213839%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213806213846%_))
                                              ((lambda (_%L213849%_
                                                        _%L213851%_)
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
                                                   (cons _%L213851%_ '()))
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
                 (cons _%L213849%_ '())))
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
                                   (cons _%L213851%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd213805213843%_
                                               _%hd213802213833%_)
                                              (_%g213794213812%_
                                               _%g213795213816%_))))
                                      (_%g213794213812%_ _%g213795213816%_))))
                              (_%g213794213812%_ _%g213795213816%_))))
                      (_%g213794213812%_ _%g213795213816%_)))))
          (_%g213793213867%_ _%$stx213790%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx213871%_)
        (let* ((_%__stx217475217476%_ _%$stx213871%_)
               (_%g213876213901%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217475217476%_)))))
          (let ((_%__kont217478217479%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont217480217481%_
                 (lambda (_%L213948%_ _%L213950%_ _%L213951%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L213951%_ (cons _%L213950%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L213948%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx217475217476%_))
                (let ((_%e213878213977%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx217475217476%_))))
                  (let ((_%tl213880213984%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213878213977%_)))
                        (_%hd213879213981%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213878213977%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl213880213984%_))
                        (_%__kont217478217479%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl213880213984%_))
                            (let ((_%e213887213918%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl213880213984%_))))
                              (let ((_%tl213889213925%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e213887213918%_)))
                                    (_%hd213888213922%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e213887213918%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd213888213922%_))
                                    (let ((_%e213890213928%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd213888213922%_))))
                                      (let ((_%tl213892213935%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e213890213928%_)))
                                            (_%hd213891213932%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e213890213928%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl213892213935%_))
                                            (let ((_%e213893213938%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl213892213935%_))))
                                              (let ((_%tl213895213945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e213893213938%_)))
                                                    (_%hd213894213942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e213893213938%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl213895213945%_))
                                                    (_%__kont217480217481%_
                                                     _%tl213889213925%_
                                                     _%hd213894213942%_
                                                     _%hd213891213932%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g213876213901%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g213876213901%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g213876213901%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g213876213901%_))))))
                (let () (declare (not safe)) (_%g213876213901%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx213995%_)
        (let* ((_%__stx217519217520%_ _%$stx213995%_)
               (_%g214000214031%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217519217520%_)))))
          (let ((_%__kont217522217523%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont217524217525%_
                 (lambda (_%L214098%_ _%L214100%_ _%L214101%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L214101%_
                                           (let ((__tmp217996
                                                  (lambda (_%g214121214124%_
                                                           _%g214122214127%_)
                                                    (cons _%g214121214124%_
                                                          _%g214122214127%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp217996
                                              '()
                                              _%L214100%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L214098%_)
                                     '()))))))
            (let ((_%__match217562217563%_
                   (lambda (_%e214008214038%_
                            _%hd214009214042%_
                            _%tl214010214045%_
                            _%e214011214048%_
                            _%hd214012214052%_
                            _%tl214013214055%_
                            _%e214014214058%_
                            _%hd214015214062%_
                            _%tl214016214065%_
                            _%__splice217526217527%_
                            _%target214017214068%_
                            _%tl214019214071%_)
                     (letrec ((_%loop214020214074%_
                               (lambda (_%hd214018214078%_ _%sig214024214081%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd214018214078%_))
                                     (let ((_%e214021214084%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd214018214078%_))))
                                       (let ((_%lp-tl214023214091%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e214021214084%_)))
                                             (_%lp-hd214022214088%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e214021214084%_))))
                                         (_%loop214020214074%_
                                          _%lp-tl214023214091%_
                                          (cons _%lp-hd214022214088%_
                                                _%sig214024214081%_))))
                                     (let ((_%sig214025214094%_
                                            (reverse _%sig214024214081%_)))
                                       (_%__kont217524217525%_
                                        _%tl214013214055%_
                                        _%sig214025214094%_
                                        _%hd214015214062%_))))))
                       (_%loop214020214074%_ _%target214017214068%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217519217520%_))
                  (let ((_%e214002214137%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217519217520%_))))
                    (let ((_%tl214004214144%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214002214137%_)))
                          (_%hd214003214141%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214002214137%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214004214144%_))
                          (_%__kont217522217523%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214004214144%_))
                              (let ((_%e214011214048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214004214144%_))))
                                (let ((_%tl214013214055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214011214048%_)))
                                      (_%hd214012214052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214011214048%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd214012214052%_))
                                      (let ((_%e214014214058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd214012214052%_))))
                                        (let ((_%tl214016214065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214014214058%_)))
                                              (_%hd214015214062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214014214058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl214016214065%_))
                                              (let ((_%__splice217526217527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl214016214065%_
                                                        '0))))
                                                (let ((_%tl214019214071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217526217527%_
                                                          '1)))
                                                      (_%target214017214068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217526217527%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214019214071%_))
                                                      (_%__match217562217563%_
                                                       _%e214002214137%_
                                                       _%hd214003214141%_
                                                       _%tl214004214144%_
                                                       _%e214011214048%_
                                                       _%hd214012214052%_
                                                       _%tl214013214055%_
                                                       _%e214014214058%_
                                                       _%hd214015214062%_
                                                       _%tl214016214065%_
                                                       _%__splice217526217527%_
                                                       _%target214017214068%_
                                                       _%tl214019214071%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g214000214031%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g214000214031%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214000214031%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g214000214031%_))))))
                  (let () (declare (not safe)) (_%g214000214031%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx214156%_)
        (let* ((_%__stx217565217566%_ _%$stx214156%_)
               (_%g214161214208%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217565217566%_)))))
          (let ((_%__kont217568217569%_
                 (lambda (_%L214370%_ _%L214372%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L214372%_
                               (let ((__tmp217997
                                      (lambda (_%g214392214395%_
                                               _%g214393214398%_)
                                        (cons _%g214392214395%_
                                              _%g214393214398%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp217997 '() _%L214370%_))))))
                (_%__kont217572217573%_
                 (lambda (_%L214265%_ _%L214267%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L214267%_
                               (let ((__tmp217998
                                      (lambda (_%g214284214287%_
                                               _%g214285214290%_)
                                        (cons _%g214284214287%_
                                              _%g214285214290%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp217998 '() _%L214265%_)))))))
            (let* ((_%__match217632217633%_
                    (lambda (_%e214188214215%_
                             _%hd214189214219%_
                             _%tl214190214222%_
                             _%e214191214225%_
                             _%hd214192214229%_
                             _%tl214193214232%_
                             _%__splice217574217575%_
                             _%target214194214235%_
                             _%tl214196214238%_)
                      (letrec ((_%loop214197214241%_
                                (lambda (_%hd214195214245%_
                                         _%sig214201214248%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd214195214245%_))
                                      (let ((_%e214198214251%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd214195214245%_))))
                                        (let ((_%lp-tl214200214258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214198214251%_)))
                                              (_%lp-hd214199214255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214198214251%_))))
                                          (_%loop214197214241%_
                                           _%lp-tl214200214258%_
                                           (cons _%lp-hd214199214255%_
                                                 _%sig214201214248%_))))
                                      (let ((_%sig214202214261%_
                                             (reverse _%sig214201214248%_)))
                                        (_%__kont217572217573%_
                                         _%sig214202214261%_
                                         _%hd214192214229%_))))))
                        (_%loop214197214241%_ _%target214194214235%_ '()))))
                   (_%__match217624217625%_
                    (lambda (_%e214188214215%_
                             _%hd214189214219%_
                             _%tl214190214222%_
                             _%e214191214225%_
                             _%hd214192214229%_
                             _%tl214193214232%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl214193214232%_))
                          (let ((_%__splice217574217575%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl214193214232%_
                                    '0))))
                            (let ((_%tl214196214238%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice217574217575%_
                                      '1)))
                                  (_%target214194214235%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice217574217575%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl214196214238%_))
                                  (_%__match217632217633%_
                                   _%e214188214215%_
                                   _%hd214189214219%_
                                   _%tl214190214222%_
                                   _%e214191214225%_
                                   _%hd214192214229%_
                                   _%tl214193214232%_
                                   _%__splice217574217575%_
                                   _%target214194214235%_
                                   _%tl214196214238%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g214161214208%_)))))
                          (let () (declare (not safe)) (_%g214161214208%_)))))
                   (_%__match217612217613%_
                    (lambda (_%e214165214300%_
                             _%hd214166214304%_
                             _%tl214167214307%_
                             _%e214168214310%_
                             _%hd214169214314%_
                             _%tl214170214317%_
                             _%e214171214320%_
                             _%hd214172214324%_
                             _%tl214173214327%_
                             _%e214174214330%_
                             _%hd214175214334%_
                             _%tl214176214337%_
                             _%__splice217570217571%_
                             _%target214177214340%_
                             _%tl214179214343%_)
                      (letrec ((_%loop214180214346%_
                                (lambda (_%hd214178214350%_
                                         _%sig214184214353%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd214178214350%_))
                                      (let ((_%e214181214356%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd214178214350%_))))
                                        (let ((_%lp-tl214183214363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214181214356%_)))
                                              (_%lp-hd214182214360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214181214356%_))))
                                          (_%loop214180214346%_
                                           _%lp-tl214183214363%_
                                           (cons _%lp-hd214182214360%_
                                                 _%sig214184214353%_))))
                                      (let ((_%sig214185214366%_
                                             (reverse _%sig214184214353%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl214173214327%_))
                                            (_%__kont217568217569%_
                                             _%sig214185214366%_
                                             _%hd214169214314%_)
                                            (_%__match217624217625%_
                                             _%e214165214300%_
                                             _%hd214166214304%_
                                             _%tl214167214307%_
                                             _%e214168214310%_
                                             _%hd214169214314%_
                                             _%tl214170214317%_)))))))
                        (_%loop214180214346%_ _%target214177214340%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217565217566%_))
                  (let ((_%e214165214300%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217565217566%_))))
                    (let ((_%tl214167214307%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214165214300%_)))
                          (_%hd214166214304%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214165214300%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214167214307%_))
                          (let ((_%e214168214310%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl214167214307%_))))
                            (let ((_%tl214170214317%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214168214310%_)))
                                  (_%hd214169214314%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214168214310%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214170214317%_))
                                  (let ((_%e214171214320%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl214170214317%_))))
                                    (let ((_%tl214173214327%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214171214320%_)))
                                          (_%hd214172214324%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214171214320%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd214172214324%_))
                                          (let ((_%e214174214330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd214172214324%_))))
                                            (let ((_%tl214176214337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e214174214330%_)))
                                                  (_%hd214175214334%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e214174214330%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd214175214334%_))
                                                  (if (let ((__tmp217999
                                                             |gxc[1]#_g218000_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp217999
                                                         _%hd214175214334%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl214176214337%_))
                                                          (let ((_%__splice217570217571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl214176214337%_
                            '0))))
                    (let ((_%tl214179214343%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217570217571%_ '1)))
                          (_%target214177214340%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217570217571%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214179214343%_))
                          (_%__match217612217613%_
                           _%e214165214300%_
                           _%hd214166214304%_
                           _%tl214167214307%_
                           _%e214168214310%_
                           _%hd214169214314%_
                           _%tl214170214317%_
                           _%e214171214320%_
                           _%hd214172214324%_
                           _%tl214173214327%_
                           _%e214174214330%_
                           _%hd214175214334%_
                           _%tl214176214337%_
                           _%__splice217570217571%_
                           _%target214177214340%_
                           _%tl214179214343%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl214170214317%_))
                              (let ((_%__splice217574217575%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl214170214317%_
                                        '0))))
                                (let ((_%tl214196214238%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice217574217575%_
                                          '1)))
                                      (_%target214194214235%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice217574217575%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl214196214238%_))
                                      (_%__match217632217633%_
                                       _%e214165214300%_
                                       _%hd214166214304%_
                                       _%tl214167214307%_
                                       _%e214168214310%_
                                       _%hd214169214314%_
                                       _%tl214170214317%_
                                       _%__splice217574217575%_
                                       _%target214194214235%_
                                       _%tl214196214238%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g214161214208%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g214161214208%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl214170214317%_))
                      (let ((_%__splice217574217575%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl214170214317%_
                                '0))))
                        (let ((_%tl214196214238%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217574217575%_ '1)))
                              (_%target214194214235%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice217574217575%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl214196214238%_))
                              (_%__match217632217633%_
                               _%e214165214300%_
                               _%hd214166214304%_
                               _%tl214167214307%_
                               _%e214168214310%_
                               _%hd214169214314%_
                               _%tl214170214317%_
                               _%__splice217574217575%_
                               _%target214194214235%_
                               _%tl214196214238%_)
                              (let ()
                                (declare (not safe))
                                (_%g214161214208%_)))))
                      (let () (declare (not safe)) (_%g214161214208%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl214170214317%_))
                  (let ((_%__splice217574217575%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl214170214317%_
                            '0))))
                    (let ((_%tl214196214238%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217574217575%_ '1)))
                          (_%target214194214235%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice217574217575%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl214196214238%_))
                          (_%__match217632217633%_
                           _%e214165214300%_
                           _%hd214166214304%_
                           _%tl214167214307%_
                           _%e214168214310%_
                           _%hd214169214314%_
                           _%tl214170214317%_
                           _%__splice217574217575%_
                           _%target214194214235%_
                           _%tl214196214238%_)
                          (let () (declare (not safe)) (_%g214161214208%_)))))
                  (let () (declare (not safe)) (_%g214161214208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl214170214317%_))
                                                      (let ((_%__splice217574217575%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl214170214317%_
                        '0))))
                (let ((_%tl214196214238%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice217574217575%_ '1)))
                      (_%target214194214235%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice217574217575%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl214196214238%_))
                      (_%__match217632217633%_
                       _%e214165214300%_
                       _%hd214166214304%_
                       _%tl214167214307%_
                       _%e214168214310%_
                       _%hd214169214314%_
                       _%tl214170214317%_
                       _%__splice217574217575%_
                       _%target214194214235%_
                       _%tl214196214238%_)
                      (let () (declare (not safe)) (_%g214161214208%_)))))
              (let () (declare (not safe)) (_%g214161214208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl214170214317%_))
                                              (let ((_%__splice217574217575%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl214170214317%_
                                                        '0))))
                                                (let ((_%tl214196214238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217574217575%_
                                                          '1)))
                                                      (_%target214194214235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice217574217575%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214196214238%_))
                                                      (_%__match217632217633%_
                                                       _%e214165214300%_
                                                       _%hd214166214304%_
                                                       _%tl214167214307%_
                                                       _%e214168214310%_
                                                       _%hd214169214314%_
                                                       _%tl214170214317%_
                                                       _%__splice217574217575%_
                                                       _%target214194214235%_
                                                       _%tl214196214238%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g214161214208%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g214161214208%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl214170214317%_))
                                      (let ((_%__splice217574217575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl214170214317%_
                                                '0))))
                                        (let ((_%tl214196214238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice217574217575%_
                                                  '1)))
                                              (_%target214194214235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice217574217575%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214196214238%_))
                                              (_%__match217632217633%_
                                               _%e214165214300%_
                                               _%hd214166214304%_
                                               _%tl214167214307%_
                                               _%e214168214310%_
                                               _%hd214169214314%_
                                               _%tl214170214317%_
                                               _%__splice217574217575%_
                                               _%target214194214235%_
                                               _%tl214196214238%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g214161214208%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214161214208%_))))))
                          (let () (declare (not safe)) (_%g214161214208%_)))))
                  (let () (declare (not safe)) (_%g214161214208%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx215555%_ _%id215557%_)
        (let ((_%proc215561%_
               (let ((__tmp218001
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id215557%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp218001))))
          (if (procedure? _%proc215561%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx215555%_
                 _%id215557%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx215546%_ _%id215548%_)
        (let ((_%klass215552%_
               (let ((__tmp218002
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id215548%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp218002))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass215552%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx215546%_
                 _%id215548%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx214796%_ _%proc214798%_ _%sig214799%_)
        (letrec ((_%signature-arity214801%_
                  (lambda (_%args215478%_)
                    (let _%loop215481%_ ((_%rest215484%_ _%args215478%_)
                                         (_%count215486%_ '0))
                      (let* ((_%rest215487215498%_ _%rest215484%_)
                             (_%E215491215504%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest215487215498%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K215494215535%_
                               (lambda (_%rest215532%_)
                                 (_%loop215481%_
                                  _%rest215532%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count215486%_ '1)))))
                              (_%K215493215524%_ (lambda () _%count215486%_))
                              (_%K215492215512%_
                               (lambda () (cons _%count215486%_ '()))))
                          (let ((_%try-match215489215528%_
                                 (lambda ()
                                   (if (null? _%rest215487215498%_)
                                       (_%K215493215524%_)
                                       (_%K215492215512%_)))))
                            (if (pair? _%rest215487215498%_)
                                (let* ((_%tl215496215539%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest215487215498%_)))
                                       (_%rest215543%_ _%tl215496215539%_))
                                  (_%K215494215535%_ _%rest215543%_))
                                (_%try-match215489215528%_))))))))
                 (_%make-signature214803%_
                  (lambda (_%args215360%_
                           _%return215362%_
                           _%effect215363%_
                           _%unchecked215364%_)
                    (let ((__tmp218003
                           (lambda (_%g215365215367%_)
                             (|gxc[1]#verify-class!|
                              _%ctx214796%_
                              _%g215365215367%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp218003 _%args215360%_))
                    (|gxc[1]#verify-class!| _%ctx214796%_ _%return215362%_)
                    (if _%unchecked215364%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx214796%_
                         _%unchecked215364%_)
                        '#!void)
                    (let ((_%arity215371%_
                           (_%signature-arity214801%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args215360%_)))))
                      (if _%effect215363%_
                          (let ((_%effect215374%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect215363%_))))
                            (if (and (list? _%effect215374%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect215374%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx214796%_
                                   _%proc214798%_
                                   _%effect215374%_))))
                          '#!void)
                      (cons _%arity215371%_
                            (cons (let* ((_%g215377215400%_
                                          (lambda (_%g215378215396%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g215378215396%_))))
                                         (_%g215376215474%_
                                          (lambda (_%g215378215404%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g215378215404%_))
                                                (let ((_%e215383215407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g215378215404%_))))
                                                  (let ((_%hd215384215411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e215383215407%_)))
                                                        (_%tl215385215414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e215383215407%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl215385215414%_))
                                                        (let ((_%e215386215417%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl215385215414%_))))
                  (let ((_%hd215387215421%_
                         (let ()
                           (declare (not safe))
                           (##car _%e215386215417%_)))
                        (_%tl215388215424%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e215386215417%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl215388215424%_))
                        (let ((_%e215389215427%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl215388215424%_))))
                          (let ((_%hd215390215431%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215389215427%_)))
                                (_%tl215391215434%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215389215427%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl215391215434%_))
                                (let ((_%e215392215437%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl215391215434%_))))
                                  (let ((_%hd215393215441%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215392215437%_)))
                                        (_%tl215394215444%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215392215437%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl215394215444%_))
                                        ((lambda (_%L215447%_
                                                  _%L215449%_
                                                  _%L215450%_
                                                  _%L215451%_)
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
                           (cons _%L215451%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L215450%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L215449%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L215447%_ '()))
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
                                         _%hd215393215441%_
                                         _%hd215390215431%_
                                         _%hd215387215421%_
                                         _%hd215384215411%_)
                                        (_%g215377215400%_
                                         _%g215378215404%_))))
                                (_%g215377215400%_ _%g215378215404%_))))
                        (_%g215377215400%_ _%g215378215404%_))))
                (_%g215377215400%_ _%g215378215404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g215377215400%_
                                                 _%g215378215404%_)))))
                                    (_%g215376215474%_
                                     (list _%args215360%_
                                           _%return215362%_
                                           _%effect215363%_
                                           _%unchecked215364%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx214796%_ _%proc214798%_)
          (let* ((_%__stx217643217644%_ _%sig214799%_)
                 (_%g214810214913%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx217643217644%_)))))
            (let ((_%__kont217646217647%_
                   (lambda (_%L215341%_ _%L215343%_)
                     (_%make-signature214803%_
                      _%L215343%_
                      _%L215341%_
                      '#f
                      '#f)))
                  (_%__kont217648217649%_
                   (lambda (_%L215292%_ _%L215294%_ _%L215295%_)
                     (_%make-signature214803%_
                      _%L215295%_
                      _%L215294%_
                      _%L215292%_
                      '#f)))
                  (_%__kont217650217651%_
                   (lambda (_%L215216%_ _%L215218%_ _%L215219%_)
                     (_%make-signature214803%_
                      _%L215219%_
                      _%L215218%_
                      _%L215216%_
                      (let ((__tmp218004
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc214798%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp218004)))))
                  (_%__kont217652217653%_
                   (lambda (_%L215122%_ _%L215124%_ _%L215125%_ _%L215126%_)
                     (_%make-signature214803%_
                      _%L215126%_
                      _%L215125%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L215122%_)))))
                  (_%__kont217654217655%_
                   (lambda (_%L215029%_ _%L215031%_)
                     (_%make-signature214803%_
                      _%L215031%_
                      _%L215029%_
                      '#f
                      (let ((__tmp218005
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc214798%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp218005)))))
                  (_%__kont217656217657%_
                   (lambda (_%L214964%_ _%L214966%_ _%L214967%_)
                     (_%make-signature214803%_
                      _%L214967%_
                      _%L214966%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L214964%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx217643217644%_))
                  (let ((_%e214814215321%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx217643217644%_))))
                    (let ((_%tl214816215328%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214814215321%_)))
                          (_%hd214815215325%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214814215321%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl214816215328%_))
                          (let ((_%e214817215331%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl214816215328%_))))
                            (let ((_%tl214819215338%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e214817215331%_)))
                                  (_%hd214818215335%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e214817215331%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl214819215338%_))
                                  (_%__kont217646217647%_
                                   _%hd214818215335%_
                                   _%hd214815215325%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214819215338%_))
                                      (let ((_%e214829215268%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214819215338%_))))
                                        (let ((_%tl214831215275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214829215268%_)))
                                              (_%hd214830215272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214829215268%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd214830215272%_))
                                              (let ((_%e214832215278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd214830215272%_))))
                                                (if (equal? _%e214832215278%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl214831215275%_))
                                                        (let ((_%e214833215282%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl214831215275%_))))
                  (let ((_%tl214835215289%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214833215282%_)))
                        (_%hd214834215286%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214833215282%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl214835215289%_))
                        (_%__kont217648217649%_
                         _%hd214834215286%_
                         _%hd214818215335%_
                         _%hd214815215325%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl214835215289%_))
                            (let ((_%e214852215202%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl214835215289%_))))
                              (let ((_%tl214854215209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e214852215202%_)))
                                    (_%hd214853215206%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e214852215202%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd214853215206%_))
                                    (let ((_%e214855215212%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd214853215206%_))))
                                      (if (equal? _%e214855215212%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214854215209%_))
                                              (_%__kont217650217651%_
                                               _%hd214834215286%_
                                               _%hd214818215335%_
                                               _%hd214815215325%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214854215209%_))
                                                  (let ((_%e214877215112%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl214854215209%_))))
                                                    (let ((_%tl214879215119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214877215112%_)))
                                                          (_%hd214878215116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214877215112%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl214879215119%_))
                                                          (_%__kont217652217653%_
                                                           _%hd214878215116%_
                                                           _%hd214834215286%_
                                                           _%hd214818215335%_
                                                           _%hd214815215325%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g214810214913%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g214810214913%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g214810214913%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g214810214913%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g214810214913%_))))))
                (let () (declare (not safe)) (_%g214810214913%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e214832215278%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl214831215275%_))
                                                            (_%__kont217654217655%_
                                                             _%hd214818215335%_
                                                             _%hd214815215325%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl214831215275%_))
                        (let ((_%e214905214954%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl214831215275%_))))
                          (let ((_%tl214907214961%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214905214954%_)))
                                (_%hd214906214958%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214905214954%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl214907214961%_))
                                (_%__kont217656217657%_
                                 _%hd214906214958%_
                                 _%hd214818215335%_
                                 _%hd214815215325%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g214810214913%_)))))
                        (let () (declare (not safe)) (_%g214810214913%_))))
                (let () (declare (not safe)) (_%g214810214913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g214810214913%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g214810214913%_))))))
                          (let () (declare (not safe)) (_%g214810214913%_)))))
                  (let () (declare (not safe)) (_%g214810214913%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig214407%_)
        (let* ((_%g214410214490%_
                (lambda (_%g214411214486%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214411214486%_))))
               (_%g214409214792%_
                (lambda (_%g214411214494%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214411214494%_))
                      (let ((_%e214417214497%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214411214494%_))))
                        (let ((_%hd214418214501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214417214497%_)))
                              (_%tl214419214504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214417214497%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214419214504%_))
                              (let ((_%e214420214507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214419214504%_))))
                                (let ((_%hd214421214511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214420214507%_)))
                                      (_%tl214422214514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214420214507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd214421214511%_))
                                      (let ((_%e214423214517%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd214421214511%_))))
                                        (if (equal? _%e214423214517%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl214422214514%_))
                                                (let ((_%e214424214521%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl214422214514%_))))
                                                  (let ((_%hd214425214525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e214424214521%_)))
                                                        (_%tl214426214528%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e214424214521%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd214425214525%_))
                                                        (let ((_%e214427214531%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd214425214525%_))))
                  (let ((_%hd214428214535%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214427214531%_)))
                        (_%tl214429214538%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214427214531%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd214428214535%_))
                        (if (let ((__tmp218006 |gxc[1]#_g218007_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp218006
                               _%hd214428214535%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214429214538%_))
                                (let ((_%e214430214541%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214429214538%_))))
                                  (let ((_%hd214431214545%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214430214541%_)))
                                        (_%tl214432214548%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214430214541%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214432214548%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl214426214528%_))
                                            (let ((_%e214433214551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl214426214528%_))))
                                              (let ((_%hd214434214555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e214433214551%_)))
                                                    (_%tl214435214558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e214433214551%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd214434214555%_))
                                                    (let ((_%e214436214561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd214434214555%_))))
                                                      (if (equal? _%e214436214561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl214435214558%_))
                      (let ((_%e214437214565%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl214435214558%_))))
                        (let ((_%hd214438214569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214437214565%_)))
                              (_%tl214439214572%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214437214565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd214438214569%_))
                              (let ((_%e214440214575%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd214438214569%_))))
                                (let ((_%hd214441214579%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214440214575%_)))
                                      (_%tl214442214582%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214440214575%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd214441214579%_))
                                      (if (let ((__tmp218008
                                                 |gxc[1]#_g218009_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp218008
                                             _%hd214441214579%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214442214582%_))
                                              (let ((_%e214443214585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl214442214582%_))))
                                                (let ((_%hd214444214589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214443214585%_)))
                                                      (_%tl214445214592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214443214585%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl214445214592%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl214439214572%_))
                                                          (let ((_%e214446214595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl214439214572%_))))
                    (let ((_%hd214447214599%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214446214595%_)))
                          (_%tl214448214602%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214446214595%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd214447214599%_))
                          (let ((_%e214449214605%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd214447214599%_))))
                            (if (equal? _%e214449214605%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl214448214602%_))
                                    (let ((_%e214450214609%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl214448214602%_))))
                                      (let ((_%hd214451214613%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e214450214609%_)))
                                            (_%tl214452214616%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e214450214609%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd214451214613%_))
                                            (let ((_%e214453214619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd214451214613%_))))
                                              (let ((_%hd214454214623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e214453214619%_)))
                                                    (_%tl214455214626%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e214453214619%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd214454214623%_))
                                                    (if (let ((__tmp218010
                                                               |gxc[1]#_g218011_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp218010
                                                           _%hd214454214623%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl214455214626%_))
                                                            (let ((_%e214456214629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl214455214626%_))))
                      (let ((_%hd214457214633%_
                             (let ()
                               (declare (not safe))
                               (##car _%e214456214629%_)))
                            (_%tl214458214636%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e214456214629%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl214458214636%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214452214616%_))
                                (let ((_%e214459214639%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214452214616%_))))
                                  (let ((_%hd214460214643%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214459214639%_)))
                                        (_%tl214461214646%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214459214639%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd214460214643%_))
                                        (let ((_%e214462214649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd214460214643%_))))
                                          (if (equal? _%e214462214649%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl214461214646%_))
                                                  (let ((_%e214463214653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl214461214646%_))))
                                                    (let ((_%hd214464214657%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e214463214653%_)))
                                                          (_%tl214465214660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e214463214653%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd214464214657%_))
                                                          (let ((_%e214466214663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd214464214657%_))))
                    (let ((_%hd214467214667%_
                           (let ()
                             (declare (not safe))
                             (##car _%e214466214663%_)))
                          (_%tl214468214670%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e214466214663%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd214467214667%_))
                          (if (let ((__tmp218012 |gxc[1]#_g218013_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp218012
                                 _%hd214467214667%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl214468214670%_))
                                  (let ((_%e214469214673%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl214468214670%_))))
                                    (let ((_%hd214470214677%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214469214673%_)))
                                          (_%tl214471214680%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214469214673%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl214471214680%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl214465214660%_))
                                              (let ((_%e214472214683%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl214465214660%_))))
                                                (let ((_%hd214473214687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e214472214683%_)))
                                                      (_%tl214474214690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e214472214683%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd214473214687%_))
                                                      (let ((_%e214475214693%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd214473214687%_))))
                (if (equal? _%e214475214693%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl214474214690%_))
                        (let ((_%e214476214697%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl214474214690%_))))
                          (let ((_%hd214477214701%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214476214697%_)))
                                (_%tl214478214704%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214476214697%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd214477214701%_))
                                (let ((_%e214479214707%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd214477214701%_))))
                                  (let ((_%hd214480214711%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214479214707%_)))
                                        (_%tl214481214714%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214479214707%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd214480214711%_))
                                        (if (let ((__tmp218014
                                                   |gxc[1]#_g218015_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp218014
                                               _%hd214480214711%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl214481214714%_))
                                                (let ((_%e214482214717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl214481214714%_))))
                                                  (let ((_%hd214483214721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e214482214717%_)))
                                                        (_%tl214484214724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e214482214717%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl214484214724%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl214478214704%_))
                                                            ((lambda (_%L214727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L214729%_
                              _%L214730%_
                              _%L214731%_
                              _%L214732%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L214729%_))
                           (cons _%L214729%_
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
                       (cons _%L214731%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L214727%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd214483214721%_
                     _%hd214470214677%_
                     _%hd214457214633%_
                     _%hd214444214589%_
                     _%hd214431214545%_)
                    (_%g214410214490%_ _%g214411214494%_))
                (_%g214410214490%_ _%g214411214494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g214410214490%_
                                                 _%g214411214494%_))
                                            (_%g214410214490%_
                                             _%g214411214494%_))
                                        (_%g214410214490%_
                                         _%g214411214494%_))))
                                (_%g214410214490%_ _%g214411214494%_))))
                        (_%g214410214490%_ _%g214411214494%_))
                    (_%g214410214490%_ _%g214411214494%_)))
              (_%g214410214490%_ _%g214411214494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g214410214490%_
                                               _%g214411214494%_))
                                          (_%g214410214490%_
                                           _%g214411214494%_))))
                                  (_%g214410214490%_ _%g214411214494%_))
                              (_%g214410214490%_ _%g214411214494%_))
                          (_%g214410214490%_ _%g214411214494%_))))
                  (_%g214410214490%_ _%g214411214494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g214410214490%_
                                                   _%g214411214494%_))
                                              (_%g214410214490%_
                                               _%g214411214494%_)))
                                        (_%g214410214490%_
                                         _%g214411214494%_))))
                                (_%g214410214490%_ _%g214411214494%_))
                            (_%g214410214490%_ _%g214411214494%_))))
                    (_%g214410214490%_ _%g214411214494%_))
                (_%g214410214490%_ _%g214411214494%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g214410214490%_
                                                     _%g214411214494%_))))
                                            (_%g214410214490%_
                                             _%g214411214494%_))))
                                    (_%g214410214490%_ _%g214411214494%_))
                                (_%g214410214490%_ _%g214411214494%_)))
                          (_%g214410214490%_ _%g214411214494%_))))
                  (_%g214410214490%_ _%g214411214494%_))
              (_%g214410214490%_ _%g214411214494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g214410214490%_
                                               _%g214411214494%_))
                                          (_%g214410214490%_
                                           _%g214411214494%_))
                                      (_%g214410214490%_ _%g214411214494%_))))
                              (_%g214410214490%_ _%g214411214494%_))))
                      (_%g214410214490%_ _%g214411214494%_))
                  (_%g214410214490%_ _%g214411214494%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g214410214490%_
                                                     _%g214411214494%_))))
                                            (_%g214410214490%_
                                             _%g214411214494%_))
                                        (_%g214410214490%_
                                         _%g214411214494%_))))
                                (_%g214410214490%_ _%g214411214494%_))
                            (_%g214410214490%_ _%g214411214494%_))
                        (_%g214410214490%_ _%g214411214494%_))))
                (_%g214410214490%_ _%g214411214494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g214410214490%_
                                                 _%g214411214494%_))
                                            (_%g214410214490%_
                                             _%g214411214494%_)))
                                      (_%g214410214490%_ _%g214411214494%_))))
                              (_%g214410214490%_ _%g214411214494%_))))
                      (_%g214410214490%_ _%g214411214494%_)))))
          (_%g214409214792%_ _%sig214407%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx215564%_)
        (let* ((_%g215567215585%_
                (lambda (_%g215568215581%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215568215581%_))))
               (_%g215566215640%_
                (lambda (_%g215568215589%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215568215589%_))
                      (let ((_%e215571215592%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215568215589%_))))
                        (let ((_%hd215572215596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215571215592%_)))
                              (_%tl215573215599%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215571215592%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215573215599%_))
                              (let ((_%e215574215602%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215573215599%_))))
                                (let ((_%hd215575215606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215574215602%_)))
                                      (_%tl215576215609%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215574215602%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215576215609%_))
                                      (let ((_%e215577215612%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215576215609%_))))
                                        (let ((_%hd215578215616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215577215612%_)))
                                              (_%tl215579215619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215577215612%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl215579215619%_))
                                              ((lambda (_%L215622%_
                                                        _%L215624%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L215624%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L215622%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx215564%_
                                                        _%L215624%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx215564%_
                                                        _%L215622%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L215624%_
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
                                                   (cons _%L215622%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g215567215585%_
                                                      _%g215568215589%_)))
                                               _%hd215578215616%_
                                               _%hd215575215606%_)
                                              (_%g215567215585%_
                                               _%g215568215589%_))))
                                      (_%g215567215585%_ _%g215568215589%_))))
                              (_%g215567215585%_ _%g215568215589%_))))
                      (_%g215567215585%_ _%g215568215589%_)))))
          (_%g215566215640%_ _%stx215564%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx215644%_)
        (let* ((_%g215647215671%_
                (lambda (_%g215648215667%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215648215667%_))))
               (_%g215646215954%_
                (lambda (_%g215648215675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215648215675%_))
                      (let ((_%e215651215678%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215648215675%_))))
                        (let ((_%hd215652215682%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215651215678%_)))
                              (_%tl215653215685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215651215678%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215653215685%_))
                              (let ((_%e215654215688%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215653215685%_))))
                                (let ((_%hd215655215692%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215654215688%_)))
                                      (_%tl215656215695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215654215688%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215656215695%_))
                                      (let ((_g218016_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215656215695%_
                                                '0))))
                                        (begin
                                          (let ((_g218017_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218016_)
                                                       (##values-length
                                                        _g218016_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218017_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218017_)))
                                          (let ((_%target215657215698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g218016_ 0)))
                                                (_%tl215659215701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g218016_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215659215701%_))
                                                (letrec ((_%loop215660215704%_
                                                          (lambda (_%hd215658215708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature215664215711%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215658215708%_))
                        (let ((_%e215661215714%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215658215708%_))))
                          (let ((_%lp-hd215662215718%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215661215714%_)))
                                (_%lp-tl215663215721%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215661215714%_))))
                            (_%loop215660215704%_
                             _%lp-tl215663215721%_
                             (cons _%lp-hd215662215718%_
                                   _%signature215664215711%_))))
                        (let ((_%signature215665215724%_
                               (reverse _%signature215664215711%_)))
                          ((lambda (_%L215728%_ _%L215730%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L215730%_))
                                 (let* ((_%g215748215763%_
                                         (lambda (_%g215749215759%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g215749215759%_))))
                                        (_%g215747215942%_
                                         (lambda (_%g215749215767%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g215749215767%_))
                                               (let ((_%e215752215770%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g215749215767%_))))
                                                 (let ((_%hd215753215774%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215752215770%_)))
                                                       (_%tl215754215777%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215752215770%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl215754215777%_))
                                                       (let ((_%e215755215780%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl215754215777%_))))
                 (let ((_%hd215756215784%_
                        (let ()
                          (declare (not safe))
                          (##car _%e215755215780%_)))
                       (_%tl215757215787%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e215755215780%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl215757215787%_))
                       ((lambda (_%L215790%_ _%L215792%_)
                          (let* ((_%g215808215816%_
                                  (lambda (_%g215809215812%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g215809215812%_))))
                                 (_%g215807215938%_
                                  (lambda (_%g215809215820%_)
                                    ((lambda (_%L215823%_)
                                       (let* ((_%unchecked215836%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L215790%_))
                                              (_%g215839215847%_
                                               (lambda (_%g215840215843%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g215840215843%_))))
                                              (_%g215838215870%_
                                               (lambda (_%g215840215851%_)
                                                 ((lambda (_%L215854%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L215823%_
                                                                (cons _%L215854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g215840215851%_))))
                                         (_%g215838215870%_
                                          (if _%unchecked215836%_
                                              (let* ((_%g215874215889%_
                                                      (lambda (_%g215875215885%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g215875215885%_))))
                                                     (_%g215873215934%_
                                                      (lambda (_%g215875215893%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g215875215893%_))
                                                            (let ((_%e215878215896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g215875215893%_))))
                      (let ((_%hd215879215900%_
                             (let ()
                               (declare (not safe))
                               (##car _%e215878215896%_)))
                            (_%tl215880215903%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e215878215896%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl215880215903%_))
                            (let ((_%e215881215906%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl215880215903%_))))
                              (let ((_%hd215882215910%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e215881215906%_)))
                                    (_%tl215883215913%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e215881215906%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl215883215913%_))
                                    ((lambda (_%L215916%_ _%L215918%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L215918%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L215792%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L215916%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd215882215910%_
                                     _%hd215879215900%_)
                                    (_%g215874215889%_ _%g215875215893%_))))
                            (_%g215874215889%_ _%g215875215893%_))))
                    (_%g215874215889%_ _%g215875215893%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g215873215934%_
                                                 _%unchecked215836%_))
                                              '(begin)))))
                                     _%g215809215820%_))))
                            (_%g215807215938%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L215730%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L215792%_ '()))
                   (cons '#f (cons 'signature: (cons _%L215790%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd215756215784%_
                        _%hd215753215774%_)
                       (_%g215748215763%_ _%g215749215767%_))))
               (_%g215748215763%_ _%g215749215767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g215748215763%_
                                                _%g215749215767%_)))))
                                   (_%g215747215942%_
                                    (|gxc[1]#parse-signature|
                                     _%stx215644%_
                                     _%L215730%_
                                     (let ((__tmp218018
                                            (lambda (_%g215945215948%_
                                                     _%g215946215951%_)
                                              (cons _%g215945215948%_
                                                    _%g215946215951%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp218018
                                        '()
                                        _%L215728%_)))))
                                 (_%g215647215671%_ _%g215648215675%_)))
                           _%signature215665215724%_
                           _%hd215655215692%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215660215704%_
                                                   _%target215657215698%_
                                                   '()))
                                                (_%g215647215671%_
                                                 _%g215648215675%_)))))
                                      (_%g215647215671%_ _%g215648215675%_))))
                              (_%g215647215671%_ _%g215648215675%_))))
                      (_%g215647215671%_ _%g215648215675%_)))))
          (_%g215646215954%_ _%stx215644%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx215959%_)
        (let* ((_%g215962215986%_
                (lambda (_%g215963215982%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215963215982%_))))
               (_%g215961216869%_
                (lambda (_%g215963215990%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215963215990%_))
                      (let ((_%e215966215993%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215963215990%_))))
                        (let ((_%hd215967215997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215966215993%_)))
                              (_%tl215968216000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215966215993%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215968216000%_))
                              (let ((_%e215969216003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215968216000%_))))
                                (let ((_%hd215970216007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215969216003%_)))
                                      (_%tl215971216010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215969216003%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215971216010%_))
                                      (let ((_g218019_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215971216010%_
                                                '0))))
                                        (begin
                                          (let ((_g218020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218019_)
                                                       (##values-length
                                                        _g218019_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218020_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218020_)))
                                          (let ((_%target215972216013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g218019_ 0)))
                                                (_%tl215974216016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g218019_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215974216016%_))
                                                (letrec ((_%loop215975216019%_
                                                          (lambda (_%hd215973216023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature215979216026%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215973216023%_))
                        (let ((_%e215976216029%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215973216023%_))))
                          (let ((_%lp-hd215977216033%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215976216029%_)))
                                (_%lp-tl215978216036%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215976216029%_))))
                            (_%loop215975216019%_
                             _%lp-tl215978216036%_
                             (cons _%lp-hd215977216033%_
                                   _%case-signature215979216026%_))))
                        (let ((_%case-signature215980216039%_
                               (reverse _%case-signature215979216026%_)))
                          ((lambda (_%L216043%_ _%L216045%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L216045%_))
                                 (let* ((_%signatures216076%_
                                         (map (lambda (_%g216062216064%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx215959%_
                                                 _%L216045%_
                                                 _%g216062216064%_))
                                              (let ((__tmp218021
                                                     (lambda (_%g216067216070%_
                                                              _%g216068216073%_)
                                                       (cons _%g216067216070%_
                                                             _%g216068216073%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp218021
                                                 '()
                                                 _%L216043%_))))
                                        (_%g216079216105%_
                                         (lambda (_%g216080216101%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g216080216101%_))))
                                        (_%g216078216865%_
                                         (lambda (_%g216080216109%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g216080216109%_))
                                               (let ((_g218022_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g216080216109%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g218023_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g218022_)
                        (##values-length _g218022_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g218023_ 2)))
                 (error "Context expects 2 values" _g218023_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target216083216112%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g218022_
                                                             0)))
                                                         (_%tl216085216115%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g218022_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl216085216115%_))
                                                         (letrec ((_%loop216086216118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd216084216122%_
                                    _%sig216090216125%_
                                    _%arity216091216127%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd216084216122%_))
                                 (let ((_%e216087216130%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd216084216122%_))))
                                   (let ((_%lp-hd216088216134%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e216087216130%_)))
                                         (_%lp-tl216089216137%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e216087216130%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd216088216134%_))
                                         (let ((_%e216094216140%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd216088216134%_))))
                                           (let ((_%hd216095216144%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e216094216140%_)))
                                                 (_%tl216096216147%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e216094216140%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl216096216147%_))
                                                 (let ((_%e216097216150%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl216096216147%_))))
                                                   (let ((_%hd216098216154%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e216097216150%_)))
                                                         (_%tl216099216157%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e216097216150%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl216099216157%_))
                                                         (_%loop216086216118%_
                                                          _%lp-tl216089216137%_
                                                          (cons _%hd216098216154%_
                                                                _%sig216090216125%_)
                                                          (cons _%hd216095216144%_
                                                                _%arity216091216127%_))
                                                         (_%g216079216105%_
                                                          _%g216080216109%_))))
                                                 (_%g216079216105%_
                                                  _%g216080216109%_))))
                                         (_%g216079216105%_
                                          _%g216080216109%_))))
                                 (let ((_%sig216092216160%_
                                        (reverse _%sig216090216125%_))
                                       (_%arity216093216163%_
                                        (reverse _%arity216091216127%_)))
                                   ((lambda (_%L216166%_ _%L216168%_)
                                      (let* ((_%g216185216193%_
                                              (lambda (_%g216186216189%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g216186216189%_))))
                                             (_%g216184216850%_
                                              (lambda (_%g216186216197%_)
                                                ((lambda (_%L216200%_)
                                                   (let* ((_%g216213216221%_
                                                           (lambda (_%g216214216217%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g216214216217%_))))
                  (_%g216212216243%_
                   (lambda (_%g216214216225%_)
                     ((lambda (_%L216228%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L216200%_ (cons _%L216228%_ '()))))
                      _%g216214216225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g216212216243%_
                                                      (let ((_g218024_
                                                             (let _%loop216247%_ ((_%rest216250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures216076%_)
                                          (_%unchecked-proc216252%_ '#f)
                                          (_%unchecked-clauses216253%_ '()))
                       (let* ((_%rest216254216262%_ _%rest216250%_)
                              (_%else216256216274%_
                               (lambda ()
                                 (values _%unchecked-proc216252%_
                                         (reverse!
                                          _%unchecked-clauses216253%_))))
                              (_%K216258216715%_
                               (lambda (_%rest216278%_ _%hd216280%_)
                                 (let* ((_%g216282216369%_
                                         (lambda (_%g216283216365%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g216283216365%_))))
                                        (_%g216281216711%_
                                         (lambda (_%g216283216373%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g216283216373%_))
                                               (let ((_%e216290216376%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g216283216373%_))))
                                                 (let ((_%hd216291216380%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e216290216376%_)))
                                                       (_%tl216292216383%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e216290216376%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl216292216383%_))
                                                       (let ((_%e216293216386%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl216292216383%_))))
                 (let ((_%hd216294216390%_
                        (let ()
                          (declare (not safe))
                          (##car _%e216293216386%_)))
                       (_%tl216295216393%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e216293216386%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd216294216390%_))
                       (let ((_%e216296216396%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd216294216390%_))))
                         (let ((_%hd216297216400%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e216296216396%_)))
                               (_%tl216298216403%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e216296216396%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl216298216403%_))
                               (let ((_%e216299216406%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl216298216403%_))))
                                 (let ((_%hd216300216410%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e216299216406%_)))
                                       (_%tl216301216413%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e216299216406%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd216300216410%_))
                                       (let ((_%e216302216416%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd216300216410%_))))
                                         (if (equal? _%e216302216416%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl216301216413%_))
                                                 (let ((_%e216303216420%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl216301216413%_))))
                                                   (let ((_%hd216304216424%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e216303216420%_)))
                                                         (_%tl216305216427%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e216303216420%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd216304216424%_))
                                                         (let ((_%e216306216430%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd216304216424%_))))
                   (let ((_%hd216307216434%_
                          (let ()
                            (declare (not safe))
                            (##car _%e216306216430%_)))
                         (_%tl216308216437%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e216306216430%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd216307216434%_))
                         (if (let ((__tmp218026 |gxc[1]#_g218027_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp218026
                                _%hd216307216434%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl216308216437%_))
                                 (let ((_%e216309216440%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl216308216437%_))))
                                   (let ((_%hd216310216444%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e216309216440%_)))
                                         (_%tl216311216447%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e216309216440%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl216311216447%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl216305216427%_))
                                             (let ((_%e216312216450%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl216305216427%_))))
                                               (let ((_%hd216313216454%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e216312216450%_)))
                                                     (_%tl216314216457%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e216312216450%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd216313216454%_))
                                                     (let ((_%e216315216460%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd216313216454%_))))
                                                       (if (equal? _%e216315216460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl216314216457%_))
                       (let ((_%e216316216464%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl216314216457%_))))
                         (let ((_%hd216317216468%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e216316216464%_)))
                               (_%tl216318216471%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e216316216464%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd216317216468%_))
                               (let ((_%e216319216474%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd216317216468%_))))
                                 (let ((_%hd216320216478%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e216319216474%_)))
                                       (_%tl216321216481%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e216319216474%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd216320216478%_))
                                       (if (let ((__tmp218028
                                                  |gxc[1]#_g218029_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp218028
                                              _%hd216320216478%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl216321216481%_))
                                               (let ((_%e216322216484%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl216321216481%_))))
                                                 (let ((_%hd216323216488%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e216322216484%_)))
                                                       (_%tl216324216491%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e216322216484%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl216324216491%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl216318216471%_))
                                                           (let ((_%e216325216494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl216318216471%_))))
                     (let ((_%hd216326216498%_
                            (let ()
                              (declare (not safe))
                              (##car _%e216325216494%_)))
                           (_%tl216327216501%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e216325216494%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd216326216498%_))
                           (let ((_%e216328216504%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd216326216498%_))))
                             (if (equal? _%e216328216504%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl216327216501%_))
                                     (let ((_%e216329216508%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl216327216501%_))))
                                       (let ((_%hd216330216512%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e216329216508%_)))
                                             (_%tl216331216515%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e216329216508%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd216330216512%_))
                                             (let ((_%e216332216518%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd216330216512%_))))
                                               (let ((_%hd216333216522%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e216332216518%_)))
                                                     (_%tl216334216525%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e216332216518%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd216333216522%_))
                                                     (if (let ((__tmp218030
                                                                |gxc[1]#_g218031_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp218030
                                                            _%hd216333216522%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl216334216525%_))
                     (let ((_%e216335216528%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl216334216525%_))))
                       (let ((_%hd216336216532%_
                              (let ()
                                (declare (not safe))
                                (##car _%e216335216528%_)))
                             (_%tl216337216535%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e216335216528%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl216337216535%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl216331216515%_))
                                 (let ((_%e216338216538%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl216331216515%_))))
                                   (let ((_%hd216339216542%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e216338216538%_)))
                                         (_%tl216340216545%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e216338216538%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd216339216542%_))
                                         (let ((_%e216341216548%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd216339216542%_))))
                                           (if (equal? _%e216341216548%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl216340216545%_))
                                                   (let ((_%e216342216552%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl216340216545%_))))
                                                     (let ((_%hd216343216556%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e216342216552%_)))
                                                           (_%tl216344216559%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e216342216552%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd216343216556%_))
                                                           (let ((_%e216345216562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd216343216556%_))))
                     (let ((_%hd216346216566%_
                            (let ()
                              (declare (not safe))
                              (##car _%e216345216562%_)))
                           (_%tl216347216569%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e216345216562%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd216346216566%_))
                           (if (let ((__tmp218032 |gxc[1]#_g218033_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp218032
                                  _%hd216346216566%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl216347216569%_))
                                   (let ((_%e216348216572%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl216347216569%_))))
                                     (let ((_%hd216349216576%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e216348216572%_)))
                                           (_%tl216350216579%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e216348216572%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl216350216579%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl216344216559%_))
                                               (let ((_%e216351216582%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl216344216559%_))))
                                                 (let ((_%hd216352216586%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e216351216582%_)))
                                                       (_%tl216353216589%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e216351216582%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd216352216586%_))
                                                       (let ((_%e216354216592%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd216352216586%_))))
                 (if (equal? _%e216354216592%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl216353216589%_))
                         (let ((_%e216355216596%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl216353216589%_))))
                           (let ((_%hd216356216600%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e216355216596%_)))
                                 (_%tl216357216603%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e216355216596%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd216356216600%_))
                                 (let ((_%e216358216606%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd216356216600%_))))
                                   (let ((_%hd216359216610%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e216358216606%_)))
                                         (_%tl216360216613%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e216358216606%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd216359216610%_))
                                         (if (let ((__tmp218034
                                                    |gxc[1]#_g218035_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp218034
                                                _%hd216359216610%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl216360216613%_))
                                                 (let ((_%e216361216616%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl216360216613%_))))
                                                   (let ((_%hd216362216620%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e216361216616%_)))
                                                         (_%tl216363216623%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e216361216616%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl216363216623%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl216357216603%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl216295216393%_))
                         ((lambda (_%L216626%_
                                   _%L216628%_
                                   _%L216629%_
                                   _%L216630%_
                                   _%L216631%_
                                   _%L216632%_)
                            (let ((_%clause216703%_
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
                                                     (cons _%L216632%_ '()))
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
                                                 (cons _%L216630%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L216626%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked216705%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L216628%_))))
                              (_%loop216247%_
                               _%rest216278%_
                               (let ((_%$e216707%_ _%unchecked216705%_))
                                 (if _%$e216707%_
                                     _%$e216707%_
                                     _%unchecked-proc216252%_))
                               (cons _%clause216703%_
                                     _%unchecked-clauses216253%_))))
                          _%hd216362216620%_
                          _%hd216349216576%_
                          _%hd216336216532%_
                          _%hd216323216488%_
                          _%hd216310216444%_
                          _%hd216291216380%_)
                         (_%g216282216369%_ _%g216283216373%_))
                     (_%g216282216369%_ _%g216283216373%_))
                 (_%g216282216369%_ _%g216283216373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g216282216369%_
                                                  _%g216283216373%_))
                                             (_%g216282216369%_
                                              _%g216283216373%_))
                                         (_%g216282216369%_
                                          _%g216283216373%_))))
                                 (_%g216282216369%_ _%g216283216373%_))))
                         (_%g216282216369%_ _%g216283216373%_))
                     (_%g216282216369%_ _%g216283216373%_)))
               (_%g216282216369%_ _%g216283216373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g216282216369%_
                                                _%g216283216373%_))
                                           (_%g216282216369%_
                                            _%g216283216373%_))))
                                   (_%g216282216369%_ _%g216283216373%_))
                               (_%g216282216369%_ _%g216283216373%_))
                           (_%g216282216369%_ _%g216283216373%_))))
                   (_%g216282216369%_ _%g216283216373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g216282216369%_
                                                    _%g216283216373%_))
                                               (_%g216282216369%_
                                                _%g216283216373%_)))
                                         (_%g216282216369%_
                                          _%g216283216373%_))))
                                 (_%g216282216369%_ _%g216283216373%_))
                             (_%g216282216369%_ _%g216283216373%_))))
                     (_%g216282216369%_ _%g216283216373%_))
                 (_%g216282216369%_ _%g216283216373%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g216282216369%_
                                                      _%g216283216373%_))))
                                             (_%g216282216369%_
                                              _%g216283216373%_))))
                                     (_%g216282216369%_ _%g216283216373%_))
                                 (_%g216282216369%_ _%g216283216373%_)))
                           (_%g216282216369%_ _%g216283216373%_))))
                   (_%g216282216369%_ _%g216283216373%_))
               (_%g216282216369%_ _%g216283216373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g216282216369%_
                                                _%g216283216373%_))
                                           (_%g216282216369%_
                                            _%g216283216373%_))
                                       (_%g216282216369%_ _%g216283216373%_))))
                               (_%g216282216369%_ _%g216283216373%_))))
                       (_%g216282216369%_ _%g216283216373%_))
                   (_%g216282216369%_ _%g216283216373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g216282216369%_
                                                      _%g216283216373%_))))
                                             (_%g216282216369%_
                                              _%g216283216373%_))
                                         (_%g216282216369%_
                                          _%g216283216373%_))))
                                 (_%g216282216369%_ _%g216283216373%_))
                             (_%g216282216369%_ _%g216283216373%_))
                         (_%g216282216369%_ _%g216283216373%_))))
                 (_%g216282216369%_ _%g216283216373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g216282216369%_
                                                  _%g216283216373%_))
                                             (_%g216282216369%_
                                              _%g216283216373%_)))
                                       (_%g216282216369%_ _%g216283216373%_))))
                               (_%g216282216369%_ _%g216283216373%_))))
                       (_%g216282216369%_ _%g216283216373%_))))
               (_%g216282216369%_ _%g216283216373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g216282216369%_
                                                _%g216283216373%_)))))
                                   (_%g216281216711%_ _%hd216280%_)))))
                         (if (pair? _%rest216254216262%_)
                             (let ((_%hd216259216719%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest216254216262%_)))
                                   (_%tl216260216722%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest216254216262%_))))
                               (let* ((_%hd216725%_ _%hd216259216719%_)
                                      (_%rest216728%_ _%tl216260216722%_))
                                 (_%K216258216715%_
                                  _%rest216728%_
                                  _%hd216725%_)))
                             (_%else216256216274%_))))))
                (begin
                  (let ((_g218025_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g218024_)
                               (##values-length _g218024_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g218025_ 2)))
                        (error "Context expects 2 values" _g218025_)))
                  (let ((_%unchecked-proc216731%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g218024_ 0)))
                        (_%unchecked-clauses216733%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g218024_ 1))))
                    (if _%unchecked-proc216731%_
                        (let* ((_%g216735216759%_
                                (lambda (_%g216736216755%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g216736216755%_))))
                               (_%g216734216846%_
                                (lambda (_%g216736216763%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g216736216763%_))
                                      (let ((_%e216739216766%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g216736216763%_))))
                                        (let ((_%hd216740216770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216739216766%_)))
                                              (_%tl216741216773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216739216766%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216741216773%_))
                                              (let ((_%e216742216776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216741216773%_))))
                                                (let ((_%hd216743216780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216742216776%_)))
                                                      (_%tl216744216783%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216742216776%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd216743216780%_))
                                                      (let ((_g218036_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd216743216780%_ '0))))
                (begin
                  (let ((_g218037_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g218036_)
                               (##values-length _g218036_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g218037_ 2)))
                        (error "Context expects 2 values" _g218037_)))
                  (let ((_%target216745216786%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g218036_ 0)))
                        (_%tl216747216789%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g218036_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl216747216789%_))
                        (letrec ((_%loop216748216792%_
                                  (lambda (_%hd216746216796%_
                                           _%clause216752216799%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd216746216796%_))
                                        (let ((_%e216749216802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd216746216796%_))))
                                          (let ((_%lp-hd216750216806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216749216802%_)))
                                                (_%lp-tl216751216809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216749216802%_))))
                                            (_%loop216748216792%_
                                             _%lp-tl216751216809%_
                                             (cons _%lp-hd216750216806%_
                                                   _%clause216752216799%_))))
                                        (let ((_%clause216753216812%_
                                               (reverse _%clause216752216799%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216744216783%_))
                                              ((lambda (_%L216816%_
                                                        _%L216818%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L216818%_
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
                                             (let ((__tmp218038
                                                    (lambda (_%g216837216840%_
                                                             _%g216838216843%_)
                                                      (cons _%g216837216840%_
                                                            _%g216838216843%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp218038
                                                '()
                                                _%L216816%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause216753216812%_
                                               _%hd216740216770%_)
                                              (_%g216735216759%_
                                               _%g216736216763%_)))))))
                          (_%loop216748216792%_ _%target216745216786%_ '()))
                        (_%g216735216759%_ _%g216736216763%_)))))
              (_%g216735216759%_ _%g216736216763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216735216759%_
                                               _%g216736216763%_))))
                                      (_%g216735216759%_ _%g216736216763%_)))))
                          (_%g216734216846%_
                           (list _%unchecked-proc216731%_
                                 _%unchecked-clauses216733%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g216186216197%_))))
                                        (_%g216184216850%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L216045%_
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
                                          _%L216166%_
                                          _%L216168%_))
                                       (let ((__tmp218039
                                              (lambda (_%g216853216857%_
                                                       _%g216854216860%_
                                                       _%g216855216862%_)
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
                                (cons _%g216854216860%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g216853216857%_ '())))))
              _%g216855216862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp218039
                                          '()
                                          _%L216166%_
                                          _%L216168%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig216092216160%_
                                    _%arity216093216163%_))))))
                   (_%loop216086216118%_ _%target216083216112%_ '() '()))
                 (_%g216079216105%_ _%g216080216109%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g216079216105%_
                                                _%g216080216109%_)))))
                                   (_%g216078216865%_ _%signatures216076%_))
                                 (_%g215962215986%_ _%g215963215990%_)))
                           _%case-signature215980216039%_
                           _%hd215970216007%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215975216019%_
                                                   _%target215972216013%_
                                                   '()))
                                                (_%g215962215986%_
                                                 _%g215963215990%_)))))
                                      (_%g215962215986%_ _%g215963215990%_))))
                              (_%g215962215986%_ _%g215963215990%_))))
                      (_%g215962215986%_ _%g215963215990%_)))))
          (_%g215961216869%_ _%stx215959%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx216877%_)
        (let* ((_%__stx217859217860%_ _%$stx216877%_)
               (_%g216883216943%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx217859217860%_)))))
          (let ((_%__kont217862217863%_
                 (lambda (_%L217165%_ _%L217167%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L217167%_ '()))
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
                                                       (cons _%L217167%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L217165%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont217864217865%_
                 (lambda (_%L217090%_ _%L217092%_ _%L217093%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L217093%_ '()))
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
                                                       (cons _%L217093%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L217092%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L217090%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont217866217867%_
                 (lambda (_%L217004%_ _%L217006%_ _%L217007%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L217007%_ '()))
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
                                                       (cons _%L217007%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L217006%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L217004%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx217859217860%_))
                (let ((_%e216887217121%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx217859217860%_))))
                  (let ((_%tl216889217128%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216887217121%_)))
                        (_%hd216888217125%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216887217121%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl216889217128%_))
                        (let ((_%e216890217131%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl216889217128%_))))
                          (let ((_%tl216892217138%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216890217131%_)))
                                (_%hd216891217135%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216890217131%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd216891217135%_))
                                (let ((_%e216893217141%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd216891217135%_))))
                                  (if (equal? _%e216893217141%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216892217138%_))
                                          (let ((_%e216894217145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl216892217138%_))))
                                            (let ((_%tl216896217152%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216894217145%_)))
                                                  (_%hd216895217149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216894217145%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216896217152%_))
                                                  (let ((_%e216897217155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl216896217152%_))))
                                                    (let ((_%tl216899217162%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216897217155%_)))
                                                          (_%hd216898217159%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216897217155%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216899217162%_))
                                                          (_%__kont217862217863%_
                                                           _%hd216898217159%_
                                                           _%hd216895217149%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216883216943%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216883216943%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216883216943%_)))
                                      (if (equal? _%e216893217141%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216892217138%_))
                                              (let ((_%e216910217060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216892217138%_))))
                                                (let ((_%tl216912217067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216910217060%_)))
                                                      (_%hd216911217064%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216910217060%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216912217067%_))
                                                      (let ((_%e216913217070%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl216912217067%_))))
                (let ((_%tl216915217077%_
                       (let () (declare (not safe)) (##cdr _%e216913217070%_)))
                      (_%hd216914217074%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216913217070%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216915217077%_))
                      (let ((_%e216916217080%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl216915217077%_))))
                        (let ((_%tl216918217087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216916217080%_)))
                              (_%hd216917217084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216916217080%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216918217087%_))
                              (_%__kont217864217865%_
                               _%hd216917217084%_
                               _%hd216914217074%_
                               _%hd216911217064%_)
                              (let ()
                                (declare (not safe))
                                (_%g216883216943%_)))))
                      (let () (declare (not safe)) (_%g216883216943%_)))))
              (let () (declare (not safe)) (_%g216883216943%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216883216943%_)))
                                          (if (equal? _%e216893217141%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216892217138%_))
                                                  (let ((_%e216929216974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl216892217138%_))))
                                                    (let ((_%tl216931216981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216929216974%_)))
                                                          (_%hd216930216978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216929216974%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216931216981%_))
                                                          (let ((_%e216932216984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl216931216981%_))))
                    (let ((_%tl216934216991%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216932216984%_)))
                          (_%hd216933216988%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216932216984%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216934216991%_))
                          (let ((_%e216935216994%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl216934216991%_))))
                            (let ((_%tl216937217001%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216935216994%_)))
                                  (_%hd216936216998%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216935216994%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216937217001%_))
                                  (_%__kont217866217867%_
                                   _%hd216936216998%_
                                   _%hd216933216988%_
                                   _%hd216930216978%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216883216943%_)))))
                          (let () (declare (not safe)) (_%g216883216943%_)))))
                  (let () (declare (not safe)) (_%g216883216943%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216883216943%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216883216943%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g216883216943%_)))))
                        (let () (declare (not safe)) (_%g216883216943%_)))))
                (let () (declare (not safe)) (_%g216883216943%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx217189%_)
        (let* ((_%g217193217213%_
                (lambda (_%g217194217209%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217194217209%_))))
               (_%g217192217284%_
                (lambda (_%g217194217217%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217194217217%_))
                      (let ((_%e217196217220%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217194217217%_))))
                        (let ((_%hd217197217224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217196217220%_)))
                              (_%tl217198217227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217196217220%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl217198217227%_))
                              (let ((_g218040_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl217198217227%_
                                        '0))))
                                (begin
                                  (let ((_g218041_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g218040_)
                                               (##values-length _g218040_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g218041_ 2)))
                                        (error "Context expects 2 values"
                                               _g218041_)))
                                  (let ((_%target217199217230%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g218040_ 0)))
                                        (_%tl217201217233%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g218040_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217201217233%_))
                                        (letrec ((_%loop217202217236%_
                                                  (lambda (_%hd217200217240%_
                                                           _%decl217206217243%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd217200217240%_))
                                                        (let ((_%e217203217246%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd217200217240%_))))
                  (let ((_%lp-hd217204217250%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217203217246%_)))
                        (_%lp-tl217205217253%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217203217246%_))))
                    (_%loop217202217236%_
                     _%lp-tl217205217253%_
                     (cons _%lp-hd217204217250%_ _%decl217206217243%_))))
                (let ((_%decl217207217256%_ (reverse _%decl217206217243%_)))
                  ((lambda (_%L217260%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp218042
                                  (lambda (_%g217275217278%_ _%g217276217281%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g217275217278%_)
                                          _%g217276217281%_))))
                             (declare (not safe))
                             (__foldr1 __tmp218042 '() _%L217260%_))))
                   _%decl217207217256%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop217202217236%_
                                           _%target217199217230%_
                                           '()))
                                        (_%g217193217213%_
                                         _%g217194217217%_)))))
                              (_%g217193217213%_ _%g217194217217%_))))
                      (_%g217193217213%_ _%g217194217217%_)))))
          (_%g217192217284%_ _%$stx217189%_))))))
