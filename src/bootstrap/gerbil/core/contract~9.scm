(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82710_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82717_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82720_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82721_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82729_|
    (##structure
     gx#syntax-quote::t
     'lambda/c
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82730_|
    (##structure
     gx#syntax-quote::t
     'case-lambda/c
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82731_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82733_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82734_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82735_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82737_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82738_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82739_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82741_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82742_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82743_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82744_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82745_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82746_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82747_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82748_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82749_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82750_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82751_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82752_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82753_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82754_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82755_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82756_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82757_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82758_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypedDefinitions[1]#is-signature?|
      (lambda (_%formals64095%_)
        (let _%lp64098%_ ((_%rest64101%_ _%formals64095%_))
          (let* ((_%__stx8074380744%_ _%rest64101%_)
                 (_%g6411064179%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8074380744%_))))
            (let ((_%__kont8074680747%_
                   (lambda (_%L64480%_ _%L64482%_) (_%lp64098%_ _%L64480%_)))
                  (_%__kont8074880749%_
                   (lambda (_%L64446%_ _%L64448%_) (_%lp64098%_ _%L64446%_)))
                  (_%__kont8075080751%_
                   (lambda (_%L64392%_ _%L64394%_ _%L64395%_) '#t))
                  (_%__kont8075280753%_
                   (lambda (_%L64348%_ _%L64350%_ _%L64351%_)
                     (_%lp64098%_ _%L64348%_)))
                  (_%__kont8075480755%_
                   (lambda (_%L64300%_ _%L64302%_ _%L64303%_)
                     (_%lp64098%_ _%L64300%_)))
                  (_%__kont8075680757%_
                   (lambda (_%L64227%_ _%L64229%_ _%L64230%_ _%L64231%_) '#t))
                  (_%__kont8075880759%_ (lambda () '#f)))
              (let* ((_%__match8085480855%_
                      (lambda (_%e6416564197%_
                               _%hd6416664201%_
                               _%tl6416764204%_
                               _%e6416864207%_
                               _%hd6416964211%_
                               _%tl6417064214%_
                               _%e6417164217%_
                               _%hd6417264221%_
                               _%tl6417364224%_)
                        (let ((_%L64227%_ _%tl6417064214%_)
                              (_%L64229%_ _%tl6417364224%_)
                              (_%L64230%_ _%hd6417264221%_)
                              (_%L64231%_ _%hd6416664201%_))
                          (if (and (gx#stx-keyword? _%L64231%_)
                                   (gx#identifier? _%L64230%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Interface[1]#signature-contract?|
                                      _%L64229%_)))
                              (_%__kont8075680757%_
                               _%L64227%_
                               _%L64229%_
                               _%L64230%_
                               _%L64231%_)
                              (_%__kont8075880759%_)))))
                     (_%__match8083680837%_
                      (lambda (_%e6414964260%_
                               _%hd6415064264%_
                               _%tl6415164267%_
                               _%e6415264270%_
                               _%hd6415364274%_
                               _%tl6415464277%_
                               _%e6415564280%_
                               _%hd6415664284%_
                               _%tl6415764287%_
                               _%e6415864290%_
                               _%hd6415964294%_
                               _%tl6416064297%_)
                        (let ((_%L64300%_ _%tl6415464277%_)
                              (_%L64302%_ _%hd6415664284%_)
                              (_%L64303%_ _%hd6415064264%_))
                          (if (and (gx#stx-keyword? _%L64303%_)
                                   (gx#identifier? _%L64302%_))
                              (_%__kont8075480755%_
                               _%L64300%_
                               _%L64302%_
                               _%L64303%_)
                              (_%__match8085480855%_
                               _%e6414964260%_
                               _%hd6415064264%_
                               _%tl6415164267%_
                               _%e6415264270%_
                               _%hd6415364274%_
                               _%tl6415464277%_
                               _%e6415564280%_
                               _%hd6415664284%_
                               _%tl6415764287%_)))))
                     (_%__match8081080811%_
                      (lambda (_%e6414064328%_
                               _%hd6414164332%_
                               _%tl6414264335%_
                               _%e6414364338%_
                               _%hd6414464342%_
                               _%tl6414564345%_)
                        (let ((_%L64348%_ _%tl6414564345%_)
                              (_%L64350%_ _%hd6414464342%_)
                              (_%L64351%_ _%hd6414164332%_))
                          (if (and (gx#stx-keyword? _%L64351%_)
                                   (gx#identifier? _%L64350%_))
                              (_%__kont8075280753%_
                               _%L64348%_
                               _%L64350%_
                               _%L64351%_)
                              (if (gx#stx-pair? _%hd6414464342%_)
                                  (let ((_%e6415564280%_
                                         (gx#syntax-e _%hd6414464342%_)))
                                    (let ((_%tl6415764287%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6415564280%_)))
                                          (_%hd6415664284%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6415564280%_))))
                                      (if (gx#stx-pair? _%tl6415764287%_)
                                          (let ((_%e6415864290%_
                                                 (gx#syntax-e
                                                  _%tl6415764287%_)))
                                            (let ((_%tl6416064297%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6415864290%_)))
                                                  (_%hd6415964294%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6415864290%_))))
                                              (if (gx#stx-null?
                                                   _%tl6416064297%_)
                                                  (_%__match8083680837%_
                                                   _%e6414064328%_
                                                   _%hd6414164332%_
                                                   _%tl6414264335%_
                                                   _%e6414364338%_
                                                   _%hd6414464342%_
                                                   _%tl6414564345%_
                                                   _%e6415564280%_
                                                   _%hd6415664284%_
                                                   _%tl6415764287%_
                                                   _%e6415864290%_
                                                   _%hd6415964294%_
                                                   _%tl6416064297%_)
                                                  (_%__match8085480855%_
                                                   _%e6414064328%_
                                                   _%hd6414164332%_
                                                   _%tl6414264335%_
                                                   _%e6414364338%_
                                                   _%hd6414464342%_
                                                   _%tl6414564345%_
                                                   _%e6415564280%_
                                                   _%hd6415664284%_
                                                   _%tl6415764287%_))))
                                          (_%__match8085480855%_
                                           _%e6414064328%_
                                           _%hd6414164332%_
                                           _%tl6414264335%_
                                           _%e6414364338%_
                                           _%hd6414464342%_
                                           _%tl6414564345%_
                                           _%e6415564280%_
                                           _%hd6415664284%_
                                           _%tl6415764287%_))))
                                  (_%__kont8075880759%_))))))
                     (_%__match8079880799%_
                      (lambda (_%e6413164372%_
                               _%hd6413264376%_
                               _%tl6413364379%_
                               _%e6413464382%_
                               _%hd6413564386%_
                               _%tl6413664389%_)
                        (let ((_%L64392%_ _%tl6413364379%_)
                              (_%L64394%_ _%tl6413664389%_)
                              (_%L64395%_ _%hd6413564386%_))
                          (if (and (gx#identifier? _%L64395%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Interface[1]#signature-contract?|
                                      _%L64394%_)))
                              (_%__kont8075080751%_
                               _%L64392%_
                               _%L64394%_
                               _%L64395%_)
                              (if (gx#stx-pair? _%tl6413364379%_)
                                  (let ((_%e6414364338%_
                                         (gx#syntax-e _%tl6413364379%_)))
                                    (let ((_%tl6414564345%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6414364338%_)))
                                          (_%hd6414464342%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6414364338%_))))
                                      (_%__match8081080811%_
                                       _%e6413164372%_
                                       _%hd6413264376%_
                                       _%tl6413364379%_
                                       _%e6414364338%_
                                       _%hd6414464342%_
                                       _%tl6414564345%_)))
                                  (_%__kont8075880759%_))))))
                     (_%__match8076680767%_
                      (lambda (_%e6411464470%_
                               _%hd6411564474%_
                               _%tl6411664477%_)
                        (let ((_%L64480%_ _%tl6411664477%_)
                              (_%L64482%_ _%hd6411564474%_))
                          (if (gx#identifier? _%L64482%_)
                              (_%__kont8074680747%_ _%L64480%_ _%L64482%_)
                              (if (gx#stx-pair? _%hd6411564474%_)
                                  (let ((_%e6412264426%_
                                         (gx#syntax-e _%hd6411564474%_)))
                                    (let ((_%tl6412464433%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6412264426%_)))
                                          (_%hd6412364430%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6412264426%_))))
                                      (if (gx#stx-pair? _%tl6412464433%_)
                                          (let ((_%e6412564436%_
                                                 (gx#syntax-e
                                                  _%tl6412464433%_)))
                                            (let ((_%tl6412764443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6412564436%_)))
                                                  (_%hd6412664440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6412564436%_))))
                                              (if (gx#stx-null?
                                                   _%tl6412764443%_)
                                                  (_%__kont8074880749%_
                                                   _%tl6411664477%_
                                                   _%hd6412364430%_)
                                                  (_%__match8079880799%_
                                                   _%e6411464470%_
                                                   _%hd6411564474%_
                                                   _%tl6411664477%_
                                                   _%e6412264426%_
                                                   _%hd6412364430%_
                                                   _%tl6412464433%_))))
                                          (_%__match8079880799%_
                                           _%e6411464470%_
                                           _%hd6411564474%_
                                           _%tl6411664477%_
                                           _%e6412264426%_
                                           _%hd6412364430%_
                                           _%tl6412464433%_))))
                                  (if (gx#stx-pair? _%tl6411664477%_)
                                      (let ((_%e6414364338%_
                                             (gx#syntax-e _%tl6411664477%_)))
                                        (let ((_%tl6414564345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6414364338%_)))
                                              (_%hd6414464342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6414364338%_))))
                                          (_%__match8081080811%_
                                           _%e6411464470%_
                                           _%hd6411564474%_
                                           _%tl6411664477%_
                                           _%e6414364338%_
                                           _%hd6414464342%_
                                           _%tl6414564345%_)))
                                      (_%__kont8075880759%_))))))))
                (if (gx#stx-pair? _%__stx8074380744%_)
                    (let ((_%e6411464470%_ (gx#syntax-e _%__stx8074380744%_)))
                      (let ((_%tl6411664477%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6411464470%_)))
                            (_%hd6411564474%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6411464470%_))))
                        (_%__match8076680767%_
                         _%e6411464470%_
                         _%hd6411564474%_
                         _%tl6411664477%_)))
                    (_%__kont8075880759%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#def/c|
      (lambda (_%stx64497%_)
        (letrec ((_%make-definition64500%_
                  (lambda (_%id65598%_
                           _%args65600%_
                           _%return65601%_
                           _%body65602%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~Interface[1]#check-signature!__%|
                       '#f
                       absent-value
                       absent-value
                       _%stx64497%_
                       _%args65600%_
                       _%return65601%_))
                    (if (let ()
                          (declare (not safe))
                          (|gerbil/core/contract~Interface[1]#signature-has-keywords?|
                           _%args65600%_))
                        (_%make-keyword-def64502%_
                         _%id65598%_
                         _%args65600%_
                         _%return65601%_
                         _%body65602%_)
                        (let* ((_%unchecked-id65604%_
                                (gx#stx-identifier
                                 _%id65598%_
                                 '"__"
                                 _%id65598%_))
                               (_%g6560765622%_
                                (lambda (_%g6560865618%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g6560865618%_)))
                               (_%g6560665668%_
                                (lambda (_%g6560865626%_)
                                  (if (gx#stx-pair? _%g6560865626%_)
                                      (let ((_%e6561165629%_
                                             (gx#syntax-e _%g6560865626%_)))
                                        (let ((_%hd6561265633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6561165629%_)))
                                              (_%tl6561365636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6561165629%_))))
                                          (if (gx#stx-pair? _%tl6561365636%_)
                                              (let ((_%e6561465639%_
                                                     (gx#syntax-e
                                                      _%tl6561365636%_)))
                                                (let ((_%hd6561565643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6561465639%_)))
                                                      (_%tl6561665646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6561465639%_))))
                                                  (if (gx#stx-null?
                                                       _%tl6561665646%_)
                                                      ((lambda (_%L65649%_
                                                                _%L65651%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _%L65651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L65649%_ '()))))
               _%hd6561565643%_
               _%hd6561265633%_)
              (_%g6560765622%_ _%g6560865626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g6560765622%_
                                               _%g6560865626%_))))
                                      (_%g6560765622%_ _%g6560865626%_)))))
                          (_%g6560665668%_
                           (list (_%make-checked-def64503%_
                                  _%id65598%_
                                  _%unchecked-id65604%_
                                  _%args65600%_
                                  _%return65601%_)
                                 (_%make-unchecked-def64504%_
                                  _%unchecked-id65604%_
                                  _%args65600%_
                                  _%return65601%_
                                  _%body65602%_)))))))
                 (_%make-keyword-def64502%_
                  (lambda (_%id65405%_
                           _%signature65407%_
                           _%return65408%_
                           _%body65409%_)
                    (let* ((_%g6541165451%_
                            (lambda (_%g6541265447%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6541265447%_)))
                           (_%g6541065594%_
                            (lambda (_%g6541265455%_)
                              (if (gx#stx-pair? _%g6541265455%_)
                                  (let ((_%e6541965458%_
                                         (gx#syntax-e _%g6541265455%_)))
                                    (let ((_%hd6542065462%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6541965458%_)))
                                          (_%tl6542165465%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6541965458%_))))
                                      (if (gx#stx-pair? _%tl6542165465%_)
                                          (let ((_%e6542265468%_
                                                 (gx#syntax-e
                                                  _%tl6542165465%_)))
                                            (let ((_%hd6542365472%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6542265468%_)))
                                                  (_%tl6542465475%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6542265468%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6542465475%_)
                                                  (let ((_%e6542565478%_
                                                         (gx#syntax-e
                                                          _%tl6542465475%_)))
                                                    (let ((_%hd6542665482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6542565478%_)))
                                                          (_%tl6542765485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6542565478%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6542765485%_)
                                                          (let ((_%e6542865488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6542765485%_)))
                    (let ((_%hd6542965492%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6542865488%_)))
                          (_%tl6543065495%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6542865488%_))))
                      (if (gx#stx-pair? _%tl6543065495%_)
                          (let ((_%e6543165498%_
                                 (gx#syntax-e _%tl6543065495%_)))
                            (let ((_%hd6543265502%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6543165498%_)))
                                  (_%tl6543365505%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6543165498%_))))
                              (if (gx#stx-pair? _%tl6543365505%_)
                                  (let ((_%e6543465508%_
                                         (gx#syntax-e _%tl6543365505%_)))
                                    (let ((_%hd6543565512%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6543465508%_)))
                                          (_%tl6543665515%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6543465508%_))))
                                      (if (gx#stx-pair/null? _%hd6543565512%_)
                                          (let ((_g82704_
                                                 (gx#syntax-split-splice
                                                  _%hd6543565512%_
                                                  '0)))
                                            (begin
                                              (let ((_g82705_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g82704_)
                                                           (##vector-length
                                                            _g82704_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g82705_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g82705_)))
                                              (let ((_%target6543765518%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g82704_
                                                        0)))
                                                    (_%tl6543965521%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g82704_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl6543965521%_)
                                                    (letrec ((_%loop6544065524%_
                                                              (lambda (_%hd6543865528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body6544465531%_)
                        (if (gx#stx-pair? _%hd6543865528%_)
                            (let ((_%e6544165534%_
                                   (gx#syntax-e _%hd6543865528%_)))
                              (let ((_%lp-hd6544265538%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6544165534%_)))
                                    (_%lp-tl6544365541%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6544165534%_))))
                                (_%loop6544065524%_
                                 _%lp-tl6544365541%_
                                 (cons _%lp-hd6544265538%_
                                       _%body6544465531%_))))
                            (let ((_%body6544565544%_
                                   (reverse _%body6544465531%_)))
                              (if (gx#stx-null? _%tl6543665515%_)
                                  ((lambda (_%L65548%_
                                            _%L65550%_
                                            _%L65551%_
                                            _%L65552%_
                                            _%L65553%_
                                            _%L65554%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons (cons _%L65554%_ _%L65553%_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'with-procedure-signature)
                                                              (cons (cons _%L65552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L65551%_ (cons '#f '())))
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@type)
                                                    (cons _%L65550%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'with-procedure-contract)
                                                          (cons _%L65552%_
                                                                (foldr (lambda (_%g6558565588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%g6558665591%_)
                                 (cons _%g6558565588%_ _%g6558665591%_))
                               '()
                               _%L65548%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (gx#stx-source _%stx64497%_)))
                                   _%body6544565544%_
                                   _%hd6543265502%_
                                   _%hd6542965492%_
                                   _%hd6542665482%_
                                   _%hd6542365472%_
                                   _%hd6542065462%_)
                                  (_%g6541165451%_ _%g6541265455%_)))))))
              (_%loop6544065524%_ _%target6543765518%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g6541165451%_
                                                     _%g6541265455%_)))))
                                          (_%g6541165451%_ _%g6541265455%_))))
                                  (_%g6541165451%_ _%g6541265455%_))))
                          (_%g6541165451%_ _%g6541265455%_))))
                  (_%g6541165451%_ _%g6541265455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6541165451%_
                                                   _%g6541265455%_))))
                                          (_%g6541165451%_ _%g6541265455%_))))
                                  (_%g6541165451%_ _%g6541265455%_)))))
                      (_%g6541065594%_
                       (list _%id65405%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65407%_))
                             _%signature65407%_
                             _%return65408%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                _%stx64497%_
                                _%return65408%_))
                             _%body65409%_)))))
                 (_%make-checked-def64503%_
                  (lambda (_%id65186%_
                           _%unchecked-id65188%_
                           _%signature65189%_
                           _%return65190%_)
                    (let* ((_%g6519265236%_
                            (lambda (_%g6519365232%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6519365232%_)))
                           (_%g6519165401%_
                            (lambda (_%g6519365240%_)
                              (if (gx#stx-pair? _%g6519365240%_)
                                  (let ((_%e6520165243%_
                                         (gx#syntax-e _%g6519365240%_)))
                                    (let ((_%hd6520265247%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6520165243%_)))
                                          (_%tl6520365250%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6520165243%_))))
                                      (if (gx#stx-pair? _%tl6520365250%_)
                                          (let ((_%e6520465253%_
                                                 (gx#syntax-e
                                                  _%tl6520365250%_)))
                                            (let ((_%hd6520565257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6520465253%_)))
                                                  (_%tl6520665260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6520465253%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6520665260%_)
                                                  (let ((_%e6520765263%_
                                                         (gx#syntax-e
                                                          _%tl6520665260%_)))
                                                    (let ((_%hd6520865267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6520765263%_)))
                                                          (_%tl6520965270%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6520765263%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6520965270%_)
                                                          (let ((_%e6521065273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6520965270%_)))
                    (let ((_%hd6521165277%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6521065273%_)))
                          (_%tl6521265280%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6521065273%_))))
                      (if (gx#stx-pair/null? _%hd6521165277%_)
                          (let ((_g82706_
                                 (gx#syntax-split-splice _%hd6521165277%_ '0)))
                            (begin
                              (let ((_g82707_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g82706_)
                                           (##vector-length _g82706_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g82707_ 2)))
                                    (error "Context expects 2 values"
                                           _g82707_)))
                              (let ((_%target6521365283%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g82706_ 0)))
                                    (_%tl6521565286%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g82706_ 1))))
                                (if (gx#stx-null? _%tl6521565286%_)
                                    (letrec ((_%loop6521665289%_
                                              (lambda (_%hd6521465293%_
                                                       _%out6522065296%_)
                                                (if (gx#stx-pair?
                                                     _%hd6521465293%_)
                                                    (let ((_%e6521765299%_
                                                           (gx#syntax-e
                                                            _%hd6521465293%_)))
                                                      (let ((_%lp-hd6521865303%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6521765299%_)))
                    (_%lp-tl6521965306%_
                     (let () (declare (not safe)) (##cdr _%e6521765299%_))))
                (_%loop6521665289%_
                 _%lp-tl6521965306%_
                 (cons _%lp-hd6521865303%_ _%out6522065296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%out6522165309%_
                                                           (reverse _%out6522065296%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl6521265280%_)
                                                          (let ((_%e6522265313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6521265280%_)))
                    (let ((_%hd6522365317%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6522265313%_)))
                          (_%tl6522465320%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6522265313%_))))
                      (if (gx#stx-pair? _%tl6522465320%_)
                          (let ((_%e6522565323%_
                                 (gx#syntax-e _%tl6522465320%_)))
                            (let ((_%hd6522665327%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6522565323%_)))
                                  (_%tl6522765330%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6522565323%_))))
                              (if (gx#stx-pair? _%tl6522765330%_)
                                  (let ((_%e6522865333%_
                                         (gx#syntax-e _%tl6522765330%_)))
                                    (let ((_%hd6522965337%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6522865333%_)))
                                          (_%tl6523065340%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6522865333%_))))
                                      (if (gx#stx-null? _%tl6523065340%_)
                                          ((lambda (_%L65343%_
                                                    _%L65345%_
                                                    _%L65346%_
                                                    _%L65347%_
                                                    _%L65348%_
                                                    _%L65349%_
                                                    _%L65350%_)
                                             (if (gx#stx-list? _%L65346%_)
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%L65350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L65348%_)
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'with-procedure-signature)
                                  (cons (cons _%L65346%_
                                              (cons _%L65345%_
                                                    (cons _%L65349%_ '())))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L65343%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'with-procedure-contract)
                              (cons _%L65346%_
                                    (cons (cons _%L65349%_
                                                (foldr (lambda (_%g6538465387%_
                                                                _%g6538565390%_)
                                                         (cons _%g6538465387%_
                                                               _%g6538565390%_))
                                                       '()
                                                       _%L65347%_))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _%stx64497%_))
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%L65350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L65348%_)
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'with-procedure-signature)
                                  (cons (cons _%L65346%_
                                              (cons _%L65345%_
                                                    (cons _%L65349%_ '())))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L65343%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'with-procedure-contract)
                              (cons _%L65346%_
                                    (cons (cons (gx#datum->syntax '#f '##apply)
                                                (cons _%L65349%_
                                                      (foldr (lambda (_%g6539265395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6539365398%_)
                       (cons _%g6539265395%_ _%g6539365398%_))
                     '()
                     _%L65347%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%stx64497%_))))
                                           _%hd6522965337%_
                                           _%hd6522665327%_
                                           _%hd6522365317%_
                                           _%out6522165309%_
                                           _%hd6520865267%_
                                           _%hd6520565257%_
                                           _%hd6520265247%_)
                                          (_%g6519265236%_ _%g6519365240%_))))
                                  (_%g6519265236%_ _%g6519365240%_))))
                          (_%g6519265236%_ _%g6519365240%_))))
                  (_%g6519265236%_ _%g6519365240%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop6521665289%_
                                       _%target6521365283%_
                                       '()))
                                    (_%g6519265236%_ _%g6519365240%_)))))
                          (_%g6519265236%_ _%g6519365240%_))))
                  (_%g6519265236%_ _%g6519365240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6519265236%_
                                                   _%g6519365240%_))))
                                          (_%g6519265236%_ _%g6519365240%_))))
                                  (_%g6519265236%_ _%g6519365240%_)))))
                      (_%g6519165401%_
                       (list _%id65186%_
                             _%unchecked-id65188%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65189%_))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-out|
                                _%signature65189%_))
                             _%signature65189%_
                             _%return65190%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                _%stx64497%_
                                _%return65190%_)))))))
                 (_%make-unchecked-def64504%_
                  (lambda (_%unchecked-id65011%_
                           _%signature65013%_
                           _%return65014%_
                           _%body65015%_)
                    (let* ((_%g6501765053%_
                            (lambda (_%g6501865049%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6501865049%_)))
                           (_%g6501665182%_
                            (lambda (_%g6501865057%_)
                              (if (gx#stx-pair? _%g6501865057%_)
                                  (let ((_%e6502465060%_
                                         (gx#syntax-e _%g6501865057%_)))
                                    (let ((_%hd6502565064%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6502465060%_)))
                                          (_%tl6502665067%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6502465060%_))))
                                      (if (gx#stx-pair? _%tl6502665067%_)
                                          (let ((_%e6502765070%_
                                                 (gx#syntax-e
                                                  _%tl6502665067%_)))
                                            (let ((_%hd6502865074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6502765070%_)))
                                                  (_%tl6502965077%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6502765070%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6502965077%_)
                                                  (let ((_%e6503065080%_
                                                         (gx#syntax-e
                                                          _%tl6502965077%_)))
                                                    (let ((_%hd6503165084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6503065080%_)))
                                                          (_%tl6503265087%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6503065080%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6503265087%_)
                                                          (let ((_%e6503365090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6503265087%_)))
                    (let ((_%hd6503465094%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6503365090%_)))
                          (_%tl6503565097%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6503365090%_))))
                      (if (gx#stx-pair? _%tl6503565097%_)
                          (let ((_%e6503665100%_
                                 (gx#syntax-e _%tl6503565097%_)))
                            (let ((_%hd6503765104%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6503665100%_)))
                                  (_%tl6503865107%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6503665100%_))))
                              (if (gx#stx-pair/null? _%hd6503765104%_)
                                  (let ((_g82708_
                                         (gx#syntax-split-splice
                                          _%hd6503765104%_
                                          '0)))
                                    (begin
                                      (let ((_g82709_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82708_)
                                                   (##vector-length _g82708_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82709_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82709_)))
                                      (let ((_%target6503965110%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82708_ 0)))
                                            (_%tl6504165113%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82708_ 1))))
                                        (if (gx#stx-null? _%tl6504165113%_)
                                            (letrec ((_%loop6504265116%_
                                                      (lambda (_%hd6504065120%_
                                                               _%body6504665123%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6504065120%_)
                                                            (let ((_%e6504365126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6504065120%_)))
                      (let ((_%lp-hd6504465130%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6504365126%_)))
                            (_%lp-tl6504565133%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6504365126%_))))
                        (_%loop6504265116%_
                         _%lp-tl6504565133%_
                         (cons _%lp-hd6504465130%_ _%body6504665123%_))))
                    (let ((_%body6504765136%_ (reverse _%body6504665123%_)))
                      (if (gx#stx-null? _%tl6503865107%_)
                          ((lambda (_%L65140%_
                                    _%L65142%_
                                    _%L65143%_
                                    _%L65144%_
                                    _%L65145%_)
                             (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _%L65145%_ _%L65144%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'with-procedure-signature)
                                                      (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L65142%_ (cons '#f '())))
                    (cons (cons (gx#datum->syntax
                                 '#f
                                 'with-procedure-unchecked-contract)
                                (cons _%L65143%_
                                      (foldr (lambda (_%g6517365176%_
                                                      _%g6517465179%_)
                                               (cons _%g6517365176%_
                                                     _%g6517465179%_))
                                             '()
                                             _%L65140%_)))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (gx#stx-source _%stx64497%_)))
                           _%body6504765136%_
                           _%hd6503465094%_
                           _%hd6503165084%_
                           _%hd6502865074%_
                           _%hd6502565064%_)
                          (_%g6501765053%_ _%g6501865057%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop6504265116%_
                                               _%target6503965110%_
                                               '()))
                                            (_%g6501765053%_
                                             _%g6501865057%_)))))
                                  (_%g6501765053%_ _%g6501865057%_))))
                          (_%g6501765053%_ _%g6501865057%_))))
                  (_%g6501765053%_ _%g6501865057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6501765053%_
                                                   _%g6501865057%_))))
                                          (_%g6501765053%_ _%g6501865057%_))))
                                  (_%g6501765053%_ _%g6501865057%_)))))
                      (_%g6501665182%_
                       (list _%unchecked-id65011%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65013%_))
                             _%signature65013%_
                             _%return65014%_
                             _%body65015%_))))))
          (let* ((_%__stx8085780858%_ _%stx64497%_)
                 (_%g6450964601%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8085780858%_))))
            (let ((_%__kont8086080861%_
                   (lambda (_%L64962%_ _%L64964%_ _%L64965%_ _%L64966%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L64965%_)
                         (_%make-definition64500%_
                          _%L64966%_
                          _%L64965%_
                          _%L64964%_
                          (foldr (lambda (_%g6499064993%_ _%g6499164996%_)
                                   (cons _%g6499064993%_ _%g6499164996%_))
                                 '()
                                 _%L64962%_))
                         (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L64966%_ _%L64965%_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-procedure-signature)
                                                 (cons (cons '#f
                                                             (cons _%L64964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '())))
               (foldr (lambda (_%g6499865001%_ _%g6499965004%_)
                        (cons _%g6499865001%_ _%g6499965004%_))
                      '()
                      _%L64962%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                  (_%__kont8086480865%_
                   (lambda (_%L64836%_ _%L64838%_ _%L64839%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L64838%_)
                         (cons (gx#datum->syntax '#f 'def/c)
                               (cons (cons _%L64839%_ _%L64838%_)
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6485864861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6485964864%_)
                  (cons _%g6485864861%_ _%g6485964864%_))
                '()
                _%L64836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L64839%_ _%L64838%_)
                                     (foldr (lambda (_%g6486664869%_
                                                     _%g6486764872%_)
                                              (cons _%g6486664869%_
                                                    _%g6486764872%_))
                                            '()
                                            _%L64836%_))))))
                  (_%__kont8086880869%_
                   (lambda (_%L64734%_ _%L64736%_ _%L64737%_ _%L64738%_)
                     (cons (gx#datum->syntax '#f 'def/c)
                           (cons (cons _%L64738%_ _%L64737%_)
                                 (cons (cons (gx#datum->syntax '#f 'lambda/c)
                                             (cons _%L64736%_
                                                   (foldr (lambda (_%g6476064763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g6476164766%_)
                    (cons _%g6476064763%_ _%g6476164766%_))
                  '()
                  _%L64734%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont8087280873%_
                   (lambda (_%L64638%_ _%L64640%_)
                     (cons (gx#datum->syntax '#f 'def)
                           (cons _%L64640%_ (cons _%L64638%_ '()))))))
              (let* ((_%__match8099480995%_
                      (lambda (_%e6458764608%_
                               _%hd6458864612%_
                               _%tl6458964615%_
                               _%e6459064618%_
                               _%hd6459164622%_
                               _%tl6459264625%_
                               _%e6459364628%_
                               _%hd6459464632%_
                               _%tl6459564635%_)
                        (let ((_%L64638%_ _%hd6459464632%_)
                              (_%L64640%_ _%hd6459164622%_))
                          (if (gx#identifier? _%L64640%_)
                              (_%__kont8087280873%_ _%L64638%_ _%L64640%_)
                              (let ()
                                (declare (not safe))
                                (_%g6450964601%_))))))
                     (_%__match8097480975%_
                      (lambda (_%e6456464664%_
                               _%hd6456564668%_
                               _%tl6456664671%_
                               _%e6456764674%_
                               _%hd6456864678%_
                               _%tl6456964681%_
                               _%e6457064684%_
                               _%hd6457164688%_
                               _%tl6457264691%_
                               _%e6457364694%_
                               _%hd6457464698%_
                               _%tl6457564701%_
                               _%__splice8087080871%_
                               _%target6457664704%_
                               _%tl6457864707%_)
                        (letrec ((_%loop6457964710%_
                                  (lambda (_%hd6457764714%_ _%body6458364717%_)
                                    (if (gx#stx-pair? _%hd6457764714%_)
                                        (let ((_%e6458064720%_
                                               (gx#syntax-e _%hd6457764714%_)))
                                          (let ((_%lp-tl6458264727%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6458064720%_)))
                                                (_%lp-hd6458164724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6458064720%_))))
                                            (_%loop6457964710%_
                                             _%lp-tl6458264727%_
                                             (cons _%lp-hd6458164724%_
                                                   _%body6458364717%_))))
                                        (let ((_%body6458464730%_
                                               (reverse _%body6458364717%_)))
                                          (_%__kont8086880869%_
                                           _%body6458464730%_
                                           _%tl6457264691%_
                                           _%tl6457564701%_
                                           _%hd6457464698%_))))))
                          (_%loop6457964710%_ _%target6457664704%_ '()))))
                     (_%__match8096080961%_
                      (lambda (_%e6456464664%_
                               _%hd6456564668%_
                               _%tl6456664671%_
                               _%e6456764674%_
                               _%hd6456864678%_
                               _%tl6456964681%_
                               _%e6457064684%_
                               _%hd6457164688%_
                               _%tl6457264691%_)
                        (if (gx#stx-pair? _%hd6457164688%_)
                            (let ((_%e6457364694%_
                                   (gx#syntax-e _%hd6457164688%_)))
                              (let ((_%tl6457564701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6457364694%_)))
                                    (_%hd6457464698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6457364694%_))))
                                (if (gx#stx-pair/null? _%tl6456964681%_)
                                    (let ((_%__splice8087080871%_
                                           (gx#syntax-split-splice
                                            _%tl6456964681%_
                                            '0)))
                                      (let ((_%tl6457864707%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8087080871%_
                                                '1)))
                                            (_%target6457664704%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8087080871%_
                                                '0))))
                                        (if (gx#stx-null? _%tl6457864707%_)
                                            (_%__match8097480975%_
                                             _%e6456464664%_
                                             _%hd6456564668%_
                                             _%tl6456664671%_
                                             _%e6456764674%_
                                             _%hd6456864678%_
                                             _%tl6456964681%_
                                             _%e6457064684%_
                                             _%hd6457164688%_
                                             _%tl6457264691%_
                                             _%e6457364694%_
                                             _%hd6457464698%_
                                             _%tl6457564701%_
                                             _%__splice8087080871%_
                                             _%target6457664704%_
                                             _%tl6457864707%_)
                                            (if (gx#stx-pair? _%tl6456964681%_)
                                                (let ((_%e6459364628%_
                                                       (gx#syntax-e
                                                        _%tl6456964681%_)))
                                                  (let ((_%tl6459564635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6459364628%_)))
                                                        (_%hd6459464632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6459364628%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6459564635%_)
                                                        (_%__match8099480995%_
                                                         _%e6456464664%_
                                                         _%hd6456564668%_
                                                         _%tl6456664671%_
                                                         _%e6456764674%_
                                                         _%hd6456864678%_
                                                         _%tl6456964681%_
                                                         _%e6459364628%_
                                                         _%hd6459464632%_
                                                         _%tl6459564635%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6450964601%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6450964601%_))))))
                                    (if (gx#stx-pair? _%tl6456964681%_)
                                        (let ((_%e6459364628%_
                                               (gx#syntax-e _%tl6456964681%_)))
                                          (let ((_%tl6459564635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6459364628%_)))
                                                (_%hd6459464632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6459364628%_))))
                                            (if (gx#stx-null? _%tl6459564635%_)
                                                (_%__match8099480995%_
                                                 _%e6456464664%_
                                                 _%hd6456564668%_
                                                 _%tl6456664671%_
                                                 _%e6456764674%_
                                                 _%hd6456864678%_
                                                 _%tl6456964681%_
                                                 _%e6459364628%_
                                                 _%hd6459464632%_
                                                 _%tl6459564635%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6450964601%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6450964601%_))))))
                            (if (gx#stx-pair? _%tl6456964681%_)
                                (let ((_%e6459364628%_
                                       (gx#syntax-e _%tl6456964681%_)))
                                  (let ((_%tl6459564635%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6459364628%_)))
                                        (_%hd6459464632%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6459364628%_))))
                                    (if (gx#stx-null? _%tl6459564635%_)
                                        (_%__match8099480995%_
                                         _%e6456464664%_
                                         _%hd6456564668%_
                                         _%tl6456664671%_
                                         _%e6456764674%_
                                         _%hd6456864678%_
                                         _%tl6456964681%_
                                         _%e6459364628%_
                                         _%hd6459464632%_
                                         _%tl6459564635%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6450964601%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6450964601%_))))))
                     (_%__match8094280943%_
                      (lambda (_%e6454264776%_
                               _%hd6454364780%_
                               _%tl6454464783%_
                               _%e6454564786%_
                               _%hd6454664790%_
                               _%tl6454764793%_
                               _%e6454864796%_
                               _%hd6454964800%_
                               _%tl6455064803%_
                               _%__splice8086680867%_
                               _%target6455164806%_
                               _%tl6455364809%_)
                        (letrec ((_%loop6455464812%_
                                  (lambda (_%hd6455264816%_ _%body6455864819%_)
                                    (if (gx#stx-pair? _%hd6455264816%_)
                                        (let ((_%e6455564822%_
                                               (gx#syntax-e _%hd6455264816%_)))
                                          (let ((_%lp-tl6455764829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6455564822%_)))
                                                (_%lp-hd6455664826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6455564822%_))))
                                            (_%loop6455464812%_
                                             _%lp-tl6455764829%_
                                             (cons _%lp-hd6455664826%_
                                                   _%body6455864819%_))))
                                        (let ((_%body6455964832%_
                                               (reverse _%body6455864819%_)))
                                          (let ((_%L64836%_ _%body6455964832%_)
                                                (_%L64838%_ _%tl6455064803%_)
                                                (_%L64839%_ _%hd6454964800%_))
                                            (if (gx#identifier? _%L64839%_)
                                                (_%__kont8086480865%_
                                                 _%L64836%_
                                                 _%L64838%_
                                                 _%L64839%_)
                                                (_%__match8096080961%_
                                                 _%e6454264776%_
                                                 _%hd6454364780%_
                                                 _%tl6454464783%_
                                                 _%e6454564786%_
                                                 _%hd6454664790%_
                                                 _%tl6454764793%_
                                                 _%e6454864796%_
                                                 _%hd6454964800%_
                                                 _%tl6455064803%_))))))))
                          (_%loop6455464812%_ _%target6455164806%_ '()))))
                     (_%__match8093480935%_
                      (lambda (_%e6454264776%_
                               _%hd6454364780%_
                               _%tl6454464783%_
                               _%e6454564786%_
                               _%hd6454664790%_
                               _%tl6454764793%_
                               _%e6454864796%_
                               _%hd6454964800%_
                               _%tl6455064803%_)
                        (if (gx#stx-pair/null? _%tl6454764793%_)
                            (let ((_%__splice8086680867%_
                                   (gx#syntax-split-splice
                                    _%tl6454764793%_
                                    '0)))
                              (let ((_%tl6455364809%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8086680867%_
                                        '1)))
                                    (_%target6455164806%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8086680867%_
                                        '0))))
                                (if (gx#stx-null? _%tl6455364809%_)
                                    (_%__match8094280943%_
                                     _%e6454264776%_
                                     _%hd6454364780%_
                                     _%tl6454464783%_
                                     _%e6454564786%_
                                     _%hd6454664790%_
                                     _%tl6454764793%_
                                     _%e6454864796%_
                                     _%hd6454964800%_
                                     _%tl6455064803%_
                                     _%__splice8086680867%_
                                     _%target6455164806%_
                                     _%tl6455364809%_)
                                    (if (gx#stx-pair? _%hd6454964800%_)
                                        (let ((_%e6457364694%_
                                               (gx#syntax-e _%hd6454964800%_)))
                                          (let ((_%tl6457564701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6457364694%_)))
                                                (_%hd6457464698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6457364694%_))))
                                            (if (gx#stx-pair? _%tl6454764793%_)
                                                (let ((_%e6459364628%_
                                                       (gx#syntax-e
                                                        _%tl6454764793%_)))
                                                  (let ((_%tl6459564635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6459364628%_)))
                                                        (_%hd6459464632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6459364628%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6459564635%_)
                                                        (_%__match8099480995%_
                                                         _%e6454264776%_
                                                         _%hd6454364780%_
                                                         _%tl6454464783%_
                                                         _%e6454564786%_
                                                         _%hd6454664790%_
                                                         _%tl6454764793%_
                                                         _%e6459364628%_
                                                         _%hd6459464632%_
                                                         _%tl6459564635%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6450964601%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6450964601%_)))))
                                        (if (gx#stx-pair? _%tl6454764793%_)
                                            (let ((_%e6459364628%_
                                                   (gx#syntax-e
                                                    _%tl6454764793%_)))
                                              (let ((_%tl6459564635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6459364628%_)))
                                                    (_%hd6459464632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6459364628%_))))
                                                (if (gx#stx-null?
                                                     _%tl6459564635%_)
                                                    (_%__match8099480995%_
                                                     _%e6454264776%_
                                                     _%hd6454364780%_
                                                     _%tl6454464783%_
                                                     _%e6454564786%_
                                                     _%hd6454664790%_
                                                     _%tl6454764793%_
                                                     _%e6459364628%_
                                                     _%hd6459464632%_
                                                     _%tl6459564635%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6450964601%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6450964601%_)))))))
                            (if (gx#stx-pair? _%hd6454964800%_)
                                (let ((_%e6457364694%_
                                       (gx#syntax-e _%hd6454964800%_)))
                                  (let ((_%tl6457564701%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6457364694%_)))
                                        (_%hd6457464698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6457364694%_))))
                                    (if (gx#stx-pair? _%tl6454764793%_)
                                        (let ((_%e6459364628%_
                                               (gx#syntax-e _%tl6454764793%_)))
                                          (let ((_%tl6459564635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6459364628%_)))
                                                (_%hd6459464632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6459364628%_))))
                                            (if (gx#stx-null? _%tl6459564635%_)
                                                (_%__match8099480995%_
                                                 _%e6454264776%_
                                                 _%hd6454364780%_
                                                 _%tl6454464783%_
                                                 _%e6454564786%_
                                                 _%hd6454664790%_
                                                 _%tl6454764793%_
                                                 _%e6459364628%_
                                                 _%hd6459464632%_
                                                 _%tl6459564635%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6450964601%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6450964601%_)))))
                                (if (gx#stx-pair? _%tl6454764793%_)
                                    (let ((_%e6459364628%_
                                           (gx#syntax-e _%tl6454764793%_)))
                                      (let ((_%tl6459564635%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6459364628%_)))
                                            (_%hd6459464632%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6459364628%_))))
                                        (if (gx#stx-null? _%tl6459564635%_)
                                            (_%__match8099480995%_
                                             _%e6454264776%_
                                             _%hd6454364780%_
                                             _%tl6454464783%_
                                             _%e6454564786%_
                                             _%hd6454664790%_
                                             _%tl6454764793%_
                                             _%e6459364628%_
                                             _%hd6459464632%_
                                             _%tl6459564635%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6450964601%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6450964601%_)))))))
                     (_%__match8091680917%_
                      (lambda (_%e6451564882%_
                               _%hd6451664886%_
                               _%tl6451764889%_
                               _%e6451864892%_
                               _%hd6451964896%_
                               _%tl6452064899%_
                               _%e6452164902%_
                               _%hd6452264906%_
                               _%tl6452364909%_
                               _%e6452464912%_
                               _%hd6452564916%_
                               _%tl6452664919%_
                               _%e6452764922%_
                               _%hd6452864926%_
                               _%tl6452964929%_
                               _%__splice8086280863%_
                               _%target6453064932%_
                               _%tl6453264935%_)
                        (letrec ((_%loop6453364938%_
                                  (lambda (_%hd6453164942%_ _%body6453764945%_)
                                    (if (gx#stx-pair? _%hd6453164942%_)
                                        (let ((_%e6453464948%_
                                               (gx#syntax-e _%hd6453164942%_)))
                                          (let ((_%lp-tl6453664955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6453464948%_)))
                                                (_%lp-hd6453564952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6453464948%_))))
                                            (_%loop6453364938%_
                                             _%lp-tl6453664955%_
                                             (cons _%lp-hd6453564952%_
                                                   _%body6453764945%_))))
                                        (let ((_%body6453864958%_
                                               (reverse _%body6453764945%_)))
                                          (let ((_%L64962%_ _%body6453864958%_)
                                                (_%L64964%_ _%hd6452864926%_)
                                                (_%L64965%_ _%tl6452364909%_)
                                                (_%L64966%_ _%hd6452264906%_))
                                            (if (gx#identifier? _%L64966%_)
                                                (_%__kont8086080861%_
                                                 _%L64962%_
                                                 _%L64964%_
                                                 _%L64965%_
                                                 _%L64966%_)
                                                (_%__match8093480935%_
                                                 _%e6451564882%_
                                                 _%hd6451664886%_
                                                 _%tl6451764889%_
                                                 _%e6451864892%_
                                                 _%hd6451964896%_
                                                 _%tl6452064899%_
                                                 _%e6452164902%_
                                                 _%hd6452264906%_
                                                 _%tl6452364909%_))))))))
                          (_%loop6453364938%_ _%target6453064932%_ '())))))
                (if (gx#stx-pair? _%__stx8085780858%_)
                    (let ((_%e6451564882%_ (gx#syntax-e _%__stx8085780858%_)))
                      (let ((_%tl6451764889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6451564882%_)))
                            (_%hd6451664886%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6451564882%_))))
                        (if (gx#stx-pair? _%tl6451764889%_)
                            (let ((_%e6451864892%_
                                   (gx#syntax-e _%tl6451764889%_)))
                              (let ((_%tl6452064899%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6451864892%_)))
                                    (_%hd6451964896%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6451864892%_))))
                                (if (gx#stx-pair? _%hd6451964896%_)
                                    (let ((_%e6452164902%_
                                           (gx#syntax-e _%hd6451964896%_)))
                                      (let ((_%tl6452364909%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6452164902%_)))
                                            (_%hd6452264906%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6452164902%_))))
                                        (if (gx#stx-pair? _%tl6452064899%_)
                                            (let ((_%e6452464912%_
                                                   (gx#syntax-e
                                                    _%tl6452064899%_)))
                                              (let ((_%tl6452664919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6452464912%_)))
                                                    (_%hd6452564916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6452464912%_))))
                                                (if (gx#identifier?
                                                     _%hd6452564916%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g82710_|
                                                         _%hd6452564916%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6452664919%_)
                                                            (let ((_%e6452764922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6452664919%_)))
                      (let ((_%tl6452964929%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6452764922%_)))
                            (_%hd6452864926%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6452764922%_))))
                        (if (gx#stx-pair/null? _%tl6452964929%_)
                            (let ((_%__splice8086280863%_
                                   (gx#syntax-split-splice
                                    _%tl6452964929%_
                                    '0)))
                              (let ((_%tl6453264935%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8086280863%_
                                        '1)))
                                    (_%target6453064932%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8086280863%_
                                        '0))))
                                (if (gx#stx-null? _%tl6453264935%_)
                                    (_%__match8091680917%_
                                     _%e6451564882%_
                                     _%hd6451664886%_
                                     _%tl6451764889%_
                                     _%e6451864892%_
                                     _%hd6451964896%_
                                     _%tl6452064899%_
                                     _%e6452164902%_
                                     _%hd6452264906%_
                                     _%tl6452364909%_
                                     _%e6452464912%_
                                     _%hd6452564916%_
                                     _%tl6452664919%_
                                     _%e6452764922%_
                                     _%hd6452864926%_
                                     _%tl6452964929%_
                                     _%__splice8086280863%_
                                     _%target6453064932%_
                                     _%tl6453264935%_)
                                    (if (gx#stx-pair/null? _%tl6452064899%_)
                                        (let ((_%__splice8086680867%_
                                               (gx#syntax-split-splice
                                                _%tl6452064899%_
                                                '0)))
                                          (let ((_%tl6455364809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8086680867%_
                                                    '1)))
                                                (_%target6455164806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8086680867%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl6455364809%_)
                                                (_%__match8094280943%_
                                                 _%e6451564882%_
                                                 _%hd6451664886%_
                                                 _%tl6451764889%_
                                                 _%e6451864892%_
                                                 _%hd6451964896%_
                                                 _%tl6452064899%_
                                                 _%e6452164902%_
                                                 _%hd6452264906%_
                                                 _%tl6452364909%_
                                                 _%__splice8086680867%_
                                                 _%target6455164806%_
                                                 _%tl6455364809%_)
                                                (if (gx#stx-pair?
                                                     _%hd6452264906%_)
                                                    (let ((_%e6457364694%_
                                                           (gx#syntax-e
                                                            _%hd6452264906%_)))
                                                      (let ((_%tl6457564701%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6457364694%_)))
                    (_%hd6457464698%_
                     (let () (declare (not safe)) (##car _%e6457364694%_))))
                (let () (declare (not safe)) (_%g6450964601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6450964601%_))))))
                                        (if (gx#stx-pair? _%hd6452264906%_)
                                            (let ((_%e6457364694%_
                                                   (gx#syntax-e
                                                    _%hd6452264906%_)))
                                              (let ((_%tl6457564701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6457364694%_)))
                                                    (_%hd6457464698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6457364694%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6450964601%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6450964601%_)))))))
                            (if (gx#stx-pair/null? _%tl6452064899%_)
                                (let ((_%__splice8086680867%_
                                       (gx#syntax-split-splice
                                        _%tl6452064899%_
                                        '0)))
                                  (let ((_%tl6455364809%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8086680867%_
                                            '1)))
                                        (_%target6455164806%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8086680867%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6455364809%_)
                                        (_%__match8094280943%_
                                         _%e6451564882%_
                                         _%hd6451664886%_
                                         _%tl6451764889%_
                                         _%e6451864892%_
                                         _%hd6451964896%_
                                         _%tl6452064899%_
                                         _%e6452164902%_
                                         _%hd6452264906%_
                                         _%tl6452364909%_
                                         _%__splice8086680867%_
                                         _%target6455164806%_
                                         _%tl6455364809%_)
                                        (if (gx#stx-pair? _%hd6452264906%_)
                                            (let ((_%e6457364694%_
                                                   (gx#syntax-e
                                                    _%hd6452264906%_)))
                                              (let ((_%tl6457564701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6457364694%_)))
                                                    (_%hd6457464698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6457364694%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6450964601%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6450964601%_))))))
                                (if (gx#stx-pair? _%hd6452264906%_)
                                    (let ((_%e6457364694%_
                                           (gx#syntax-e _%hd6452264906%_)))
                                      (let ((_%tl6457564701%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6457364694%_)))
                                            (_%hd6457464698%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6457364694%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6450964601%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6450964601%_)))))))
                    (if (gx#stx-pair/null? _%tl6452064899%_)
                        (let ((_%__splice8086680867%_
                               (gx#syntax-split-splice _%tl6452064899%_ '0)))
                          (let ((_%tl6455364809%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8086680867%_ '1)))
                                (_%target6455164806%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8086680867%_ '0))))
                            (if (gx#stx-null? _%tl6455364809%_)
                                (_%__match8094280943%_
                                 _%e6451564882%_
                                 _%hd6451664886%_
                                 _%tl6451764889%_
                                 _%e6451864892%_
                                 _%hd6451964896%_
                                 _%tl6452064899%_
                                 _%e6452164902%_
                                 _%hd6452264906%_
                                 _%tl6452364909%_
                                 _%__splice8086680867%_
                                 _%target6455164806%_
                                 _%tl6455364809%_)
                                (if (gx#stx-pair? _%hd6452264906%_)
                                    (let ((_%e6457364694%_
                                           (gx#syntax-e _%hd6452264906%_)))
                                      (let ((_%tl6457564701%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6457364694%_)))
                                            (_%hd6457464698%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6457364694%_))))
                                        (if (gx#stx-null? _%tl6452664919%_)
                                            (_%__match8099480995%_
                                             _%e6451564882%_
                                             _%hd6451664886%_
                                             _%tl6451764889%_
                                             _%e6451864892%_
                                             _%hd6451964896%_
                                             _%tl6452064899%_
                                             _%e6452464912%_
                                             _%hd6452564916%_
                                             _%tl6452664919%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6450964601%_)))))
                                    (if (gx#stx-null? _%tl6452664919%_)
                                        (_%__match8099480995%_
                                         _%e6451564882%_
                                         _%hd6451664886%_
                                         _%tl6451764889%_
                                         _%e6451864892%_
                                         _%hd6451964896%_
                                         _%tl6452064899%_
                                         _%e6452464912%_
                                         _%hd6452564916%_
                                         _%tl6452664919%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6450964601%_)))))))
                        (if (gx#stx-pair? _%hd6452264906%_)
                            (let ((_%e6457364694%_
                                   (gx#syntax-e _%hd6452264906%_)))
                              (let ((_%tl6457564701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6457364694%_)))
                                    (_%hd6457464698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6457364694%_))))
                                (if (gx#stx-null? _%tl6452664919%_)
                                    (_%__match8099480995%_
                                     _%e6451564882%_
                                     _%hd6451664886%_
                                     _%tl6451764889%_
                                     _%e6451864892%_
                                     _%hd6451964896%_
                                     _%tl6452064899%_
                                     _%e6452464912%_
                                     _%hd6452564916%_
                                     _%tl6452664919%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6450964601%_)))))
                            (if (gx#stx-null? _%tl6452664919%_)
                                (_%__match8099480995%_
                                 _%e6451564882%_
                                 _%hd6451664886%_
                                 _%tl6451764889%_
                                 _%e6451864892%_
                                 _%hd6451964896%_
                                 _%tl6452064899%_
                                 _%e6452464912%_
                                 _%hd6452564916%_
                                 _%tl6452664919%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6450964601%_))))))
                (if (gx#stx-pair/null? _%tl6452064899%_)
                    (let ((_%__splice8086680867%_
                           (gx#syntax-split-splice _%tl6452064899%_ '0)))
                      (let ((_%tl6455364809%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8086680867%_ '1)))
                            (_%target6455164806%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8086680867%_ '0))))
                        (if (gx#stx-null? _%tl6455364809%_)
                            (_%__match8094280943%_
                             _%e6451564882%_
                             _%hd6451664886%_
                             _%tl6451764889%_
                             _%e6451864892%_
                             _%hd6451964896%_
                             _%tl6452064899%_
                             _%e6452164902%_
                             _%hd6452264906%_
                             _%tl6452364909%_
                             _%__splice8086680867%_
                             _%target6455164806%_
                             _%tl6455364809%_)
                            (if (gx#stx-pair? _%hd6452264906%_)
                                (let ((_%e6457364694%_
                                       (gx#syntax-e _%hd6452264906%_)))
                                  (let ((_%tl6457564701%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6457364694%_)))
                                        (_%hd6457464698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6457364694%_))))
                                    (if (gx#stx-null? _%tl6452664919%_)
                                        (_%__match8099480995%_
                                         _%e6451564882%_
                                         _%hd6451664886%_
                                         _%tl6451764889%_
                                         _%e6451864892%_
                                         _%hd6451964896%_
                                         _%tl6452064899%_
                                         _%e6452464912%_
                                         _%hd6452564916%_
                                         _%tl6452664919%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6450964601%_)))))
                                (if (gx#stx-null? _%tl6452664919%_)
                                    (_%__match8099480995%_
                                     _%e6451564882%_
                                     _%hd6451664886%_
                                     _%tl6451764889%_
                                     _%e6451864892%_
                                     _%hd6451964896%_
                                     _%tl6452064899%_
                                     _%e6452464912%_
                                     _%hd6452564916%_
                                     _%tl6452664919%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6450964601%_)))))))
                    (if (gx#stx-pair? _%hd6452264906%_)
                        (let ((_%e6457364694%_ (gx#syntax-e _%hd6452264906%_)))
                          (let ((_%tl6457564701%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6457364694%_)))
                                (_%hd6457464698%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6457364694%_))))
                            (if (gx#stx-null? _%tl6452664919%_)
                                (_%__match8099480995%_
                                 _%e6451564882%_
                                 _%hd6451664886%_
                                 _%tl6451764889%_
                                 _%e6451864892%_
                                 _%hd6451964896%_
                                 _%tl6452064899%_
                                 _%e6452464912%_
                                 _%hd6452564916%_
                                 _%tl6452664919%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6450964601%_)))))
                        (if (gx#stx-null? _%tl6452664919%_)
                            (_%__match8099480995%_
                             _%e6451564882%_
                             _%hd6451664886%_
                             _%tl6451764889%_
                             _%e6451864892%_
                             _%hd6451964896%_
                             _%tl6452064899%_
                             _%e6452464912%_
                             _%hd6452564916%_
                             _%tl6452664919%_)
                            (let () (declare (not safe)) (_%g6450964601%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl6452064899%_)
                                                        (let ((_%__splice8086680867%_
                                                               (gx#syntax-split-splice
                                                                _%tl6452064899%_
                                                                '0)))
                                                          (let ((_%tl6455364809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8086680867%_ '1)))
                        (_%target6455164806%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8086680867%_ '0))))
                    (if (gx#stx-null? _%tl6455364809%_)
                        (_%__match8094280943%_
                         _%e6451564882%_
                         _%hd6451664886%_
                         _%tl6451764889%_
                         _%e6451864892%_
                         _%hd6451964896%_
                         _%tl6452064899%_
                         _%e6452164902%_
                         _%hd6452264906%_
                         _%tl6452364909%_
                         _%__splice8086680867%_
                         _%target6455164806%_
                         _%tl6455364809%_)
                        (if (gx#stx-pair? _%hd6452264906%_)
                            (let ((_%e6457364694%_
                                   (gx#syntax-e _%hd6452264906%_)))
                              (let ((_%tl6457564701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6457364694%_)))
                                    (_%hd6457464698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6457364694%_))))
                                (if (gx#stx-null? _%tl6452664919%_)
                                    (_%__match8099480995%_
                                     _%e6451564882%_
                                     _%hd6451664886%_
                                     _%tl6451764889%_
                                     _%e6451864892%_
                                     _%hd6451964896%_
                                     _%tl6452064899%_
                                     _%e6452464912%_
                                     _%hd6452564916%_
                                     _%tl6452664919%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6450964601%_)))))
                            (if (gx#stx-null? _%tl6452664919%_)
                                (_%__match8099480995%_
                                 _%e6451564882%_
                                 _%hd6451664886%_
                                 _%tl6451764889%_
                                 _%e6451864892%_
                                 _%hd6451964896%_
                                 _%tl6452064899%_
                                 _%e6452464912%_
                                 _%hd6452564916%_
                                 _%tl6452664919%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6450964601%_)))))))
                (if (gx#stx-pair? _%hd6452264906%_)
                    (let ((_%e6457364694%_ (gx#syntax-e _%hd6452264906%_)))
                      (let ((_%tl6457564701%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6457364694%_)))
                            (_%hd6457464698%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6457364694%_))))
                        (if (gx#stx-null? _%tl6452664919%_)
                            (_%__match8099480995%_
                             _%e6451564882%_
                             _%hd6451664886%_
                             _%tl6451764889%_
                             _%e6451864892%_
                             _%hd6451964896%_
                             _%tl6452064899%_
                             _%e6452464912%_
                             _%hd6452564916%_
                             _%tl6452664919%_)
                            (let () (declare (not safe)) (_%g6450964601%_)))))
                    (if (gx#stx-null? _%tl6452664919%_)
                        (_%__match8099480995%_
                         _%e6451564882%_
                         _%hd6451664886%_
                         _%tl6451764889%_
                         _%e6451864892%_
                         _%hd6451964896%_
                         _%tl6452064899%_
                         _%e6452464912%_
                         _%hd6452564916%_
                         _%tl6452664919%_)
                        (let () (declare (not safe)) (_%g6450964601%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%tl6452064899%_)
                                                (let ((_%__splice8086680867%_
                                                       (gx#syntax-split-splice
                                                        _%tl6452064899%_
                                                        '0)))
                                                  (let ((_%tl6455364809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8086680867%_
                                                            '1)))
                                                        (_%target6455164806%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8086680867%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6455364809%_)
                                                        (_%__match8094280943%_
                                                         _%e6451564882%_
                                                         _%hd6451664886%_
                                                         _%tl6451764889%_
                                                         _%e6451864892%_
                                                         _%hd6451964896%_
                                                         _%tl6452064899%_
                                                         _%e6452164902%_
                                                         _%hd6452264906%_
                                                         _%tl6452364909%_
                                                         _%__splice8086680867%_
                                                         _%target6455164806%_
                                                         _%tl6455364809%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6452264906%_)
                                                            (let ((_%e6457364694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6452264906%_)))
                      (let ((_%tl6457564701%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6457364694%_)))
                            (_%hd6457464698%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6457364694%_))))
                        (let () (declare (not safe)) (_%g6450964601%_))))
                    (let () (declare (not safe)) (_%g6450964601%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%hd6452264906%_)
                                                    (let ((_%e6457364694%_
                                                           (gx#syntax-e
                                                            _%hd6452264906%_)))
                                                      (let ((_%tl6457564701%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6457364694%_)))
                    (_%hd6457464698%_
                     (let () (declare (not safe)) (##car _%e6457364694%_))))
                (let () (declare (not safe)) (_%g6450964601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6450964601%_)))))))
                                    (if (gx#stx-pair? _%tl6452064899%_)
                                        (let ((_%e6459364628%_
                                               (gx#syntax-e _%tl6452064899%_)))
                                          (let ((_%tl6459564635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6459364628%_)))
                                                (_%hd6459464632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6459364628%_))))
                                            (if (gx#stx-null? _%tl6459564635%_)
                                                (_%__match8099480995%_
                                                 _%e6451564882%_
                                                 _%hd6451664886%_
                                                 _%tl6451764889%_
                                                 _%e6451864892%_
                                                 _%hd6451964896%_
                                                 _%tl6452064899%_
                                                 _%e6459364628%_
                                                 _%hd6459464632%_
                                                 _%tl6459564635%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6450964601%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6450964601%_))))))
                            (let () (declare (not safe)) (_%g6450964601%_)))))
                    (let () (declare (not safe)) (_%g6450964601%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-signature|
      (lambda (_%stx65678%_)
        (let* ((_%__stx8099780998%_ _%stx65678%_)
               (_%g6568265745%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8099780998%_))))
          (let ((_%__kont8100081001%_
                 (lambda (_%L65996%_ _%L65998%_)
                   (let* ((_%g6602366031%_
                           (lambda (_%g6602466027%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6602466027%_)))
                          (_%g6602266058%_
                           (lambda (_%g6602466035%_)
                             ((lambda (_%L66038%_)
                                (cons (gx#datum->syntax '#f 'begin-annotation)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '@type.signature)
                                                  (cons 'return:
                                                        (cons _%L66038%_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6604966052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6605066055%_)
                               (cons _%g6604966052%_ _%g6605066055%_))
                             '()
                             _%L65996%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g6602466035%_))))
                     (_%g6602266058%_
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                         _%stx65678%_
                         _%L65998%_))))))
                (_%__kont8100481005%_
                 (lambda (_%L65832%_ _%L65834%_ _%L65835%_ _%L65836%_)
                   (let* ((_%g6586265870%_
                           (lambda (_%g6586365866%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6586365866%_)))
                          (_%g6586165897%_
                           (lambda (_%g6586365874%_)
                             ((lambda (_%L65877%_)
                                (cons (gx#datum->syntax '#f 'begin-annotation)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '@type.signature)
                                                  _%L65877%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6588865891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6588965894%_)
                               (cons _%g6588865891%_ _%g6588965894%_))
                             '()
                             _%L65832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g6586365874%_))))
                     (_%g6586165897%_
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~Interface[1]#make-procedure-lambda-signature|
                         _%stx65678%_
                         _%L65836%_
                         _%L65835%_
                         _%L65834%_)))))))
            (let* ((_%__match8110081101%_
                    (lambda (_%e6571665752%_
                             _%hd6571765756%_
                             _%tl6571865759%_
                             _%e6571965762%_
                             _%hd6572065766%_
                             _%tl6572165769%_
                             _%e6572265772%_
                             _%hd6572365776%_
                             _%tl6572465779%_
                             _%e6572565782%_
                             _%hd6572665786%_
                             _%tl6572765789%_
                             _%e6572865792%_
                             _%hd6572965796%_
                             _%tl6573065799%_
                             _%__splice8100681007%_
                             _%target6573165802%_
                             _%tl6573365805%_)
                      (letrec ((_%loop6573465808%_
                                (lambda (_%hd6573265812%_ _%body6573865815%_)
                                  (if (gx#stx-pair? _%hd6573265812%_)
                                      (let ((_%e6573565818%_
                                             (gx#syntax-e _%hd6573265812%_)))
                                        (let ((_%lp-tl6573765825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6573565818%_)))
                                              (_%lp-hd6573665822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6573565818%_))))
                                          (_%loop6573465808%_
                                           _%lp-tl6573765825%_
                                           (cons _%lp-hd6573665822%_
                                                 _%body6573865815%_))))
                                      (let ((_%body6573965828%_
                                             (reverse _%body6573865815%_)))
                                        (_%__kont8100481005%_
                                         _%body6573965828%_
                                         _%hd6572965796%_
                                         _%hd6572665786%_
                                         _%hd6572365776%_))))))
                        (_%loop6573465808%_ _%target6573165802%_ '()))))
                   (_%__match8106081061%_
                    (lambda (_%e6568665908%_
                             _%hd6568765912%_
                             _%tl6568865915%_
                             _%e6568965918%_
                             _%hd6569065922%_
                             _%tl6569165925%_
                             _%e6569265928%_
                             _%hd6569365932%_
                             _%tl6569465935%_
                             _%e6569565938%_
                             _%e6569665942%_
                             _%hd6569765946%_
                             _%tl6569865949%_
                             _%e6569965952%_
                             _%hd6570065956%_
                             _%tl6570165959%_
                             _%e6570265962%_
                             _%__splice8100281003%_
                             _%target6570365966%_
                             _%tl6570565969%_)
                      (letrec ((_%loop6570665972%_
                                (lambda (_%hd6570465976%_ _%body6571065979%_)
                                  (if (gx#stx-pair? _%hd6570465976%_)
                                      (let ((_%e6570765982%_
                                             (gx#syntax-e _%hd6570465976%_)))
                                        (let ((_%lp-tl6570965989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6570765982%_)))
                                              (_%lp-hd6570865986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6570765982%_))))
                                          (_%loop6570665972%_
                                           _%lp-tl6570965989%_
                                           (cons _%lp-hd6570865986%_
                                                 _%body6571065979%_))))
                                      (let ((_%body6571165992%_
                                             (reverse _%body6571065979%_)))
                                        (_%__kont8100081001%_
                                         _%body6571165992%_
                                         _%hd6569765946%_))))))
                        (_%loop6570665972%_ _%target6570365966%_ '())))))
              (if (gx#stx-pair? _%__stx8099780998%_)
                  (let ((_%e6568665908%_ (gx#syntax-e _%__stx8099780998%_)))
                    (let ((_%tl6568865915%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6568665908%_)))
                          (_%hd6568765912%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6568665908%_))))
                      (if (gx#stx-pair? _%tl6568865915%_)
                          (let ((_%e6568965918%_
                                 (gx#syntax-e _%tl6568865915%_)))
                            (let ((_%tl6569165925%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6568965918%_)))
                                  (_%hd6569065922%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6568965918%_))))
                              (if (gx#stx-pair? _%hd6569065922%_)
                                  (let ((_%e6569265928%_
                                         (gx#syntax-e _%hd6569065922%_)))
                                    (let ((_%tl6569465935%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6569265928%_)))
                                          (_%hd6569365932%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6569265928%_))))
                                      (if (gx#stx-datum? _%hd6569365932%_)
                                          (let ((_%e6569565938%_
                                                 (gx#stx-e _%hd6569365932%_)))
                                            (if (equal? _%e6569565938%_ '#f)
                                                (if (gx#stx-pair?
                                                     _%tl6569465935%_)
                                                    (let ((_%e6569665942%_
                                                           (gx#syntax-e
                                                            _%tl6569465935%_)))
                                                      (let ((_%tl6569865949%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6569665942%_)))
                    (_%hd6569765946%_
                     (let () (declare (not safe)) (##car _%e6569665942%_))))
                (if (gx#stx-pair? _%tl6569865949%_)
                    (let ((_%e6569965952%_ (gx#syntax-e _%tl6569865949%_)))
                      (let ((_%tl6570165959%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6569965952%_)))
                            (_%hd6570065956%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6569965952%_))))
                        (if (gx#stx-datum? _%hd6570065956%_)
                            (let ((_%e6570265962%_
                                   (gx#stx-e _%hd6570065956%_)))
                              (if (equal? _%e6570265962%_ '#f)
                                  (if (gx#stx-null? _%tl6570165959%_)
                                      (if (gx#stx-pair/null? _%tl6569165925%_)
                                          (let ((_%__splice8100281003%_
                                                 (gx#syntax-split-splice
                                                  _%tl6569165925%_
                                                  '0)))
                                            (let ((_%tl6570565969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8100281003%_
                                                      '1)))
                                                  (_%target6570365966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8100281003%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6570565969%_)
                                                  (_%__match8106081061%_
                                                   _%e6568665908%_
                                                   _%hd6568765912%_
                                                   _%tl6568865915%_
                                                   _%e6568965918%_
                                                   _%hd6569065922%_
                                                   _%tl6569165925%_
                                                   _%e6569265928%_
                                                   _%hd6569365932%_
                                                   _%tl6569465935%_
                                                   _%e6569565938%_
                                                   _%e6569665942%_
                                                   _%hd6569765946%_
                                                   _%tl6569865949%_
                                                   _%e6569965952%_
                                                   _%hd6570065956%_
                                                   _%tl6570165959%_
                                                   _%e6570265962%_
                                                   _%__splice8100281003%_
                                                   _%target6570365966%_
                                                   _%tl6570565969%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6568265745%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6568265745%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6568265745%_)))
                                  (if (gx#stx-null? _%tl6570165959%_)
                                      (if (gx#stx-pair/null? _%tl6569165925%_)
                                          (let ((_%__splice8100681007%_
                                                 (gx#syntax-split-splice
                                                  _%tl6569165925%_
                                                  '0)))
                                            (let ((_%tl6573365805%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8100681007%_
                                                      '1)))
                                                  (_%target6573165802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8100681007%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6573365805%_)
                                                  (_%__match8110081101%_
                                                   _%e6568665908%_
                                                   _%hd6568765912%_
                                                   _%tl6568865915%_
                                                   _%e6568965918%_
                                                   _%hd6569065922%_
                                                   _%tl6569165925%_
                                                   _%e6569265928%_
                                                   _%hd6569365932%_
                                                   _%tl6569465935%_
                                                   _%e6569665942%_
                                                   _%hd6569765946%_
                                                   _%tl6569865949%_
                                                   _%e6569965952%_
                                                   _%hd6570065956%_
                                                   _%tl6570165959%_
                                                   _%__splice8100681007%_
                                                   _%target6573165802%_
                                                   _%tl6573365805%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6568265745%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6568265745%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6568265745%_)))))
                            (if (gx#stx-null? _%tl6570165959%_)
                                (if (gx#stx-pair/null? _%tl6569165925%_)
                                    (let ((_%__splice8100681007%_
                                           (gx#syntax-split-splice
                                            _%tl6569165925%_
                                            '0)))
                                      (let ((_%tl6573365805%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8100681007%_
                                                '1)))
                                            (_%target6573165802%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8100681007%_
                                                '0))))
                                        (if (gx#stx-null? _%tl6573365805%_)
                                            (_%__match8110081101%_
                                             _%e6568665908%_
                                             _%hd6568765912%_
                                             _%tl6568865915%_
                                             _%e6568965918%_
                                             _%hd6569065922%_
                                             _%tl6569165925%_
                                             _%e6569265928%_
                                             _%hd6569365932%_
                                             _%tl6569465935%_
                                             _%e6569665942%_
                                             _%hd6569765946%_
                                             _%tl6569865949%_
                                             _%e6569965952%_
                                             _%hd6570065956%_
                                             _%tl6570165959%_
                                             _%__splice8100681007%_
                                             _%target6573165802%_
                                             _%tl6573365805%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6568265745%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6568265745%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g6568265745%_))))))
                    (let () (declare (not safe)) (_%g6568265745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6568265745%_)))
                                                (if (gx#stx-pair?
                                                     _%tl6569465935%_)
                                                    (let ((_%e6572565782%_
                                                           (gx#syntax-e
                                                            _%tl6569465935%_)))
                                                      (let ((_%tl6572765789%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6572565782%_)))
                    (_%hd6572665786%_
                     (let () (declare (not safe)) (##car _%e6572565782%_))))
                (if (gx#stx-pair? _%tl6572765789%_)
                    (let ((_%e6572865792%_ (gx#syntax-e _%tl6572765789%_)))
                      (let ((_%tl6573065799%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6572865792%_)))
                            (_%hd6572965796%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6572865792%_))))
                        (if (gx#stx-null? _%tl6573065799%_)
                            (if (gx#stx-pair/null? _%tl6569165925%_)
                                (let ((_%__splice8100681007%_
                                       (gx#syntax-split-splice
                                        _%tl6569165925%_
                                        '0)))
                                  (let ((_%tl6573365805%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8100681007%_
                                            '1)))
                                        (_%target6573165802%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8100681007%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6573365805%_)
                                        (_%__match8110081101%_
                                         _%e6568665908%_
                                         _%hd6568765912%_
                                         _%tl6568865915%_
                                         _%e6568965918%_
                                         _%hd6569065922%_
                                         _%tl6569165925%_
                                         _%e6569265928%_
                                         _%hd6569365932%_
                                         _%tl6569465935%_
                                         _%e6572565782%_
                                         _%hd6572665786%_
                                         _%tl6572765789%_
                                         _%e6572865792%_
                                         _%hd6572965796%_
                                         _%tl6573065799%_
                                         _%__splice8100681007%_
                                         _%target6573165802%_
                                         _%tl6573365805%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6568265745%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6568265745%_)))
                            (let () (declare (not safe)) (_%g6568265745%_)))))
                    (let () (declare (not safe)) (_%g6568265745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6568265745%_)))))
                                          (if (gx#stx-pair? _%tl6569465935%_)
                                              (let ((_%e6572565782%_
                                                     (gx#syntax-e
                                                      _%tl6569465935%_)))
                                                (let ((_%tl6572765789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6572565782%_)))
                                                      (_%hd6572665786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6572565782%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6572765789%_)
                                                      (let ((_%e6572865792%_
                                                             (gx#syntax-e
                                                              _%tl6572765789%_)))
                                                        (let ((_%tl6573065799%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6572865792%_)))
                      (_%hd6572965796%_
                       (let () (declare (not safe)) (##car _%e6572865792%_))))
                  (if (gx#stx-null? _%tl6573065799%_)
                      (if (gx#stx-pair/null? _%tl6569165925%_)
                          (let ((_%__splice8100681007%_
                                 (gx#syntax-split-splice _%tl6569165925%_ '0)))
                            (let ((_%tl6573365805%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8100681007%_ '1)))
                                  (_%target6573165802%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8100681007%_
                                      '0))))
                              (if (gx#stx-null? _%tl6573365805%_)
                                  (_%__match8110081101%_
                                   _%e6568665908%_
                                   _%hd6568765912%_
                                   _%tl6568865915%_
                                   _%e6568965918%_
                                   _%hd6569065922%_
                                   _%tl6569165925%_
                                   _%e6569265928%_
                                   _%hd6569365932%_
                                   _%tl6569465935%_
                                   _%e6572565782%_
                                   _%hd6572665786%_
                                   _%tl6572765789%_
                                   _%e6572865792%_
                                   _%hd6572965796%_
                                   _%tl6573065799%_
                                   _%__splice8100681007%_
                                   _%target6573165802%_
                                   _%tl6573365805%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6568265745%_)))))
                          (let () (declare (not safe)) (_%g6568265745%_)))
                      (let () (declare (not safe)) (_%g6568265745%_)))))
              (let () (declare (not safe)) (_%g6568265745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6568265745%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6568265745%_)))))
                          (let () (declare (not safe)) (_%g6568265745%_)))))
                  (let () (declare (not safe)) (_%g6568265745%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-contract|
      (lambda (_%stx66068%_)
        (let* ((_%g6607166095%_
                (lambda (_%g6607266091%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6607266091%_)))
               (_%g6607066211%_
                (lambda (_%g6607266099%_)
                  (if (gx#stx-pair? _%g6607266099%_)
                      (let ((_%e6607566102%_ (gx#syntax-e _%g6607266099%_)))
                        (let ((_%hd6607666106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6607566102%_)))
                              (_%tl6607766109%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6607566102%_))))
                          (if (gx#stx-pair? _%tl6607766109%_)
                              (let ((_%e6607866112%_
                                     (gx#syntax-e _%tl6607766109%_)))
                                (let ((_%hd6607966116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6607866112%_)))
                                      (_%tl6608066119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6607866112%_))))
                                  (if (gx#stx-pair/null? _%tl6608066119%_)
                                      (let ((_g82711_
                                             (gx#syntax-split-splice
                                              _%tl6608066119%_
                                              '0)))
                                        (begin
                                          (let ((_g82712_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g82711_)
                                                       (##vector-length
                                                        _g82711_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g82712_ 2)))
                                                (error "Context expects 2 values"
                                                       _g82712_)))
                                          (let ((_%target6608166122%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82711_ 0)))
                                                (_%tl6608366125%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82711_ 1))))
                                            (if (gx#stx-null? _%tl6608366125%_)
                                                (letrec ((_%loop6608466128%_
                                                          (lambda (_%hd6608266132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body6608866135%_)
                    (if (gx#stx-pair? _%hd6608266132%_)
                        (let ((_%e6608566138%_ (gx#syntax-e _%hd6608266132%_)))
                          (let ((_%lp-hd6608666142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6608566138%_)))
                                (_%lp-tl6608766145%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6608566138%_))))
                            (_%loop6608466128%_
                             _%lp-tl6608766145%_
                             (cons _%lp-hd6608666142%_ _%body6608866135%_))))
                        (let ((_%body6608966148%_
                               (reverse _%body6608866135%_)))
                          ((lambda (_%L66152%_ _%L66154%_)
                             (let* ((_%g6617266180%_
                                     (lambda (_%g6617366176%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6617366176%_)))
                                    (_%g6617166207%_
                                     (lambda (_%g6617366184%_)
                                       ((lambda (_%L66187%_)
                                          (cons (gx#datum->syntax '#f 'using)
                                                (cons _%L66187%_
                                                      (foldr (lambda (_%g6619866201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6619966204%_)
                       (cons _%g6619866201%_ _%g6619966204%_))
                     '()
                     _%L66152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g6617366184%_))))
                               (_%g6617166207%_
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~Interface[1]#make-procedure-contract|
                                   _%stx66068%_
                                   _%L66154%_
                                   '#t)))))
                           _%body6608966148%_
                           _%hd6607966116%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6608466128%_
                                                   _%target6608166122%_
                                                   '()))
                                                (_%g6607166095%_
                                                 _%g6607266099%_)))))
                                      (_%g6607166095%_ _%g6607266099%_))))
                              (_%g6607166095%_ _%g6607266099%_))))
                      (_%g6607166095%_ _%g6607266099%_)))))
          (_%g6607066211%_ _%stx66068%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-unchecked-contract|
      (lambda (_%stx66216%_)
        (let* ((_%g6621966243%_
                (lambda (_%g6622066239%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6622066239%_)))
               (_%g6621866359%_
                (lambda (_%g6622066247%_)
                  (if (gx#stx-pair? _%g6622066247%_)
                      (let ((_%e6622366250%_ (gx#syntax-e _%g6622066247%_)))
                        (let ((_%hd6622466254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6622366250%_)))
                              (_%tl6622566257%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6622366250%_))))
                          (if (gx#stx-pair? _%tl6622566257%_)
                              (let ((_%e6622666260%_
                                     (gx#syntax-e _%tl6622566257%_)))
                                (let ((_%hd6622766264%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6622666260%_)))
                                      (_%tl6622866267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6622666260%_))))
                                  (if (gx#stx-pair/null? _%tl6622866267%_)
                                      (let ((_g82713_
                                             (gx#syntax-split-splice
                                              _%tl6622866267%_
                                              '0)))
                                        (begin
                                          (let ((_g82714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g82713_)
                                                       (##vector-length
                                                        _g82713_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g82714_ 2)))
                                                (error "Context expects 2 values"
                                                       _g82714_)))
                                          (let ((_%target6622966270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82713_ 0)))
                                                (_%tl6623166273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82713_ 1))))
                                            (if (gx#stx-null? _%tl6623166273%_)
                                                (letrec ((_%loop6623266276%_
                                                          (lambda (_%hd6623066280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body6623666283%_)
                    (if (gx#stx-pair? _%hd6623066280%_)
                        (let ((_%e6623366286%_ (gx#syntax-e _%hd6623066280%_)))
                          (let ((_%lp-hd6623466290%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6623366286%_)))
                                (_%lp-tl6623566293%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6623366286%_))))
                            (_%loop6623266276%_
                             _%lp-tl6623566293%_
                             (cons _%lp-hd6623466290%_ _%body6623666283%_))))
                        (let ((_%body6623766296%_
                               (reverse _%body6623666283%_)))
                          ((lambda (_%L66300%_ _%L66302%_)
                             (let* ((_%g6632066328%_
                                     (lambda (_%g6632166324%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6632166324%_)))
                                    (_%g6631966355%_
                                     (lambda (_%g6632166332%_)
                                       ((lambda (_%L66335%_)
                                          (cons (gx#datum->syntax '#f 'using)
                                                (cons _%L66335%_
                                                      (foldr (lambda (_%g6634666349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6634766352%_)
                       (cons _%g6634666349%_ _%g6634766352%_))
                     '()
                     _%L66300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g6632166332%_))))
                               (_%g6631966355%_
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~Interface[1]#make-procedure-contract|
                                   _%stx66216%_
                                   _%L66302%_
                                   '#f)))))
                           _%body6623766296%_
                           _%hd6622766264%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6623266276%_
                                                   _%target6622966270%_
                                                   '()))
                                                (_%g6621966243%_
                                                 _%g6622066247%_)))))
                                      (_%g6621966243%_ _%g6622066247%_))))
                              (_%g6621966243%_ _%g6622066247%_))))
                      (_%g6621966243%_ _%g6622066247%_)))))
          (_%g6621866359%_ _%stx66216%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#lambda/c|
      (lambda (_%stx66364%_)
        (letrec ((_%make-lambda66367%_
                  (lambda (_%signature66635%_ _%return66637%_ _%body66638%_)
                    (let* ((_%g6664066672%_
                            (lambda (_%g6664166668%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6664166668%_)))
                           (_%g6663966787%_
                            (lambda (_%g6664166676%_)
                              (if (gx#stx-pair? _%g6664166676%_)
                                  (let ((_%e6664666679%_
                                         (gx#syntax-e _%g6664166676%_)))
                                    (let ((_%hd6664766683%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6664666679%_)))
                                          (_%tl6664866686%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6664666679%_))))
                                      (if (gx#stx-pair? _%tl6664866686%_)
                                          (let ((_%e6664966689%_
                                                 (gx#syntax-e
                                                  _%tl6664866686%_)))
                                            (let ((_%hd6665066693%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6664966689%_)))
                                                  (_%tl6665166696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6664966689%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6665166696%_)
                                                  (let ((_%e6665266699%_
                                                         (gx#syntax-e
                                                          _%tl6665166696%_)))
                                                    (let ((_%hd6665366703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6665266699%_)))
                                                          (_%tl6665466706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6665266699%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6665466706%_)
                                                          (let ((_%e6665566709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6665466706%_)))
                    (let ((_%hd6665666713%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6665566709%_)))
                          (_%tl6665766716%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6665566709%_))))
                      (if (gx#stx-pair/null? _%hd6665666713%_)
                          (let ((_g82715_
                                 (gx#syntax-split-splice _%hd6665666713%_ '0)))
                            (begin
                              (let ((_g82716_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g82715_)
                                           (##vector-length _g82715_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g82716_ 2)))
                                    (error "Context expects 2 values"
                                           _g82716_)))
                              (let ((_%target6665866719%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g82715_ 0)))
                                    (_%tl6666066722%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g82715_ 1))))
                                (if (gx#stx-null? _%tl6666066722%_)
                                    (letrec ((_%loop6666166725%_
                                              (lambda (_%hd6665966729%_
                                                       _%body6666566732%_)
                                                (if (gx#stx-pair?
                                                     _%hd6665966729%_)
                                                    (let ((_%e6666266735%_
                                                           (gx#syntax-e
                                                            _%hd6665966729%_)))
                                                      (let ((_%lp-hd6666366739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6666266735%_)))
                    (_%lp-tl6666466742%_
                     (let () (declare (not safe)) (##cdr _%e6666266735%_))))
                (_%loop6666166725%_
                 _%lp-tl6666466742%_
                 (cons _%lp-hd6666366739%_ _%body6666566732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body6666666745%_
                                                           (reverse _%body6666566732%_)))
                                                      (if (gx#stx-null?
                                                           _%tl6665766716%_)
                                                          ((lambda (_%L66749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L66751%_
                            _%L66752%_
                            _%L66753%_)
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'lambda)
                            (cons _%L66753%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'with-procedure-signature)
                                              (cons (cons _%L66752%_
                                                          (cons _%L66751%_
                                                                (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'with-procedure-contract)
                        (cons _%L66752%_
                              (foldr (lambda (_%g6677866781%_ _%g6677966784%_)
                                       (cons _%g6677866781%_ _%g6677966784%_))
                                     '()
                                     _%L66749%_)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (gx#stx-source _%stx66364%_)))
                   _%body6666666745%_
                   _%hd6665366703%_
                   _%hd6665066693%_
                   _%hd6664766683%_)
                  (_%g6664066672%_ _%g6664166676%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop6666166725%_
                                       _%target6665866719%_
                                       '()))
                                    (_%g6664066672%_ _%g6664166676%_)))))
                          (_%g6664066672%_ _%g6664166676%_))))
                  (_%g6664066672%_ _%g6664166676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6664066672%_
                                                   _%g6664166676%_))))
                                          (_%g6664066672%_ _%g6664166676%_))))
                                  (_%g6664066672%_ _%g6664166676%_)))))
                      (_%g6663966787%_
                       (list (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature66635%_))
                             _%signature66635%_
                             _%return66637%_
                             _%body66638%_))))))
          (let* ((_%__stx8110381104%_ _%stx66364%_)
                 (_%g6637166419%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8110381104%_))))
            (let ((_%__kont8110681107%_
                   (lambda (_%L66590%_ _%L66592%_ _%L66593%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L66593%_)
                         (_%make-lambda66367%_
                          _%L66593%_
                          _%L66592%_
                          (foldr (lambda (_%g6661466617%_ _%g6661566620%_)
                                   (cons _%g6661466617%_ _%g6661566620%_))
                                 '()
                                 _%L66590%_))
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons _%L66593%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-procedure-signature)
                                                 (cons (cons '#f
                                                             (cons _%L66592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '())))
               (foldr (lambda (_%g6662266625%_ _%g6662366628%_)
                        (cons _%g6662266625%_ _%g6662366628%_))
                      '()
                      _%L66590%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                  (_%__kont8111081111%_
                   (lambda (_%L66476%_ _%L66478%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L66478%_)
                         (cons (gx#datum->syntax '#f 'lambda/c)
                               (cons _%L66478%_
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6649666499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6649766502%_)
                  (cons _%g6649666499%_ _%g6649766502%_))
                '()
                _%L66476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons _%L66478%_
                                     (foldr (lambda (_%g6650466507%_
                                                     _%g6650566510%_)
                                              (cons _%g6650466507%_
                                                    _%g6650566510%_))
                                            '()
                                            _%L66476%_)))))))
              (let* ((_%__match8117081171%_
                      (lambda (_%e6639966426%_
                               _%hd6640066430%_
                               _%tl6640166433%_
                               _%e6640266436%_
                               _%hd6640366440%_
                               _%tl6640466443%_
                               _%__splice8111281113%_
                               _%target6640566446%_
                               _%tl6640766449%_)
                        (letrec ((_%loop6640866452%_
                                  (lambda (_%hd6640666456%_ _%body6641266459%_)
                                    (if (gx#stx-pair? _%hd6640666456%_)
                                        (let ((_%e6640966462%_
                                               (gx#syntax-e _%hd6640666456%_)))
                                          (let ((_%lp-tl6641166469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6640966462%_)))
                                                (_%lp-hd6641066466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6640966462%_))))
                                            (_%loop6640866452%_
                                             _%lp-tl6641166469%_
                                             (cons _%lp-hd6641066466%_
                                                   _%body6641266459%_))))
                                        (let ((_%body6641366472%_
                                               (reverse _%body6641266459%_)))
                                          (_%__kont8111081111%_
                                           _%body6641366472%_
                                           _%hd6640366440%_))))))
                          (_%loop6640866452%_ _%target6640566446%_ '()))))
                     (_%__match8115081151%_
                      (lambda (_%e6637666520%_
                               _%hd6637766524%_
                               _%tl6637866527%_
                               _%e6637966530%_
                               _%hd6638066534%_
                               _%tl6638166537%_
                               _%e6638266540%_
                               _%hd6638366544%_
                               _%tl6638466547%_
                               _%e6638566550%_
                               _%hd6638666554%_
                               _%tl6638766557%_
                               _%__splice8110881109%_
                               _%target6638866560%_
                               _%tl6639066563%_)
                        (letrec ((_%loop6639166566%_
                                  (lambda (_%hd6638966570%_ _%body6639566573%_)
                                    (if (gx#stx-pair? _%hd6638966570%_)
                                        (let ((_%e6639266576%_
                                               (gx#syntax-e _%hd6638966570%_)))
                                          (let ((_%lp-tl6639466583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6639266576%_)))
                                                (_%lp-hd6639366580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6639266576%_))))
                                            (_%loop6639166566%_
                                             _%lp-tl6639466583%_
                                             (cons _%lp-hd6639366580%_
                                                   _%body6639566573%_))))
                                        (let ((_%body6639666586%_
                                               (reverse _%body6639566573%_)))
                                          (_%__kont8110681107%_
                                           _%body6639666586%_
                                           _%hd6638666554%_
                                           _%hd6638066534%_))))))
                          (_%loop6639166566%_ _%target6638866560%_ '())))))
                (if (gx#stx-pair? _%__stx8110381104%_)
                    (let ((_%e6637666520%_ (gx#syntax-e _%__stx8110381104%_)))
                      (let ((_%tl6637866527%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6637666520%_)))
                            (_%hd6637766524%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6637666520%_))))
                        (if (gx#stx-pair? _%tl6637866527%_)
                            (let ((_%e6637966530%_
                                   (gx#syntax-e _%tl6637866527%_)))
                              (let ((_%tl6638166537%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6637966530%_)))
                                    (_%hd6638066534%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6637966530%_))))
                                (if (gx#stx-pair? _%tl6638166537%_)
                                    (let ((_%e6638266540%_
                                           (gx#syntax-e _%tl6638166537%_)))
                                      (let ((_%tl6638466547%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6638266540%_)))
                                            (_%hd6638366544%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6638266540%_))))
                                        (if (gx#identifier? _%hd6638366544%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g82717_|
                                                 _%hd6638366544%_)
                                                (if (gx#stx-pair?
                                                     _%tl6638466547%_)
                                                    (let ((_%e6638566550%_
                                                           (gx#syntax-e
                                                            _%tl6638466547%_)))
                                                      (let ((_%tl6638766557%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6638566550%_)))
                    (_%hd6638666554%_
                     (let () (declare (not safe)) (##car _%e6638566550%_))))
                (if (gx#stx-pair/null? _%tl6638766557%_)
                    (let ((_%__splice8110881109%_
                           (gx#syntax-split-splice _%tl6638766557%_ '0)))
                      (let ((_%tl6639066563%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8110881109%_ '1)))
                            (_%target6638866560%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8110881109%_ '0))))
                        (if (gx#stx-null? _%tl6639066563%_)
                            (_%__match8115081151%_
                             _%e6637666520%_
                             _%hd6637766524%_
                             _%tl6637866527%_
                             _%e6637966530%_
                             _%hd6638066534%_
                             _%tl6638166537%_
                             _%e6638266540%_
                             _%hd6638366544%_
                             _%tl6638466547%_
                             _%e6638566550%_
                             _%hd6638666554%_
                             _%tl6638766557%_
                             _%__splice8110881109%_
                             _%target6638866560%_
                             _%tl6639066563%_)
                            (if (gx#stx-pair/null? _%tl6638166537%_)
                                (let ((_%__splice8111281113%_
                                       (gx#syntax-split-splice
                                        _%tl6638166537%_
                                        '0)))
                                  (let ((_%tl6640766449%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8111281113%_
                                            '1)))
                                        (_%target6640566446%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8111281113%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6640766449%_)
                                        (_%__match8117081171%_
                                         _%e6637666520%_
                                         _%hd6637766524%_
                                         _%tl6637866527%_
                                         _%e6637966530%_
                                         _%hd6638066534%_
                                         _%tl6638166537%_
                                         _%__splice8111281113%_
                                         _%target6640566446%_
                                         _%tl6640766449%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6637166419%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6637166419%_))))))
                    (if (gx#stx-pair/null? _%tl6638166537%_)
                        (let ((_%__splice8111281113%_
                               (gx#syntax-split-splice _%tl6638166537%_ '0)))
                          (let ((_%tl6640766449%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8111281113%_ '1)))
                                (_%target6640566446%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8111281113%_ '0))))
                            (if (gx#stx-null? _%tl6640766449%_)
                                (_%__match8117081171%_
                                 _%e6637666520%_
                                 _%hd6637766524%_
                                 _%tl6637866527%_
                                 _%e6637966530%_
                                 _%hd6638066534%_
                                 _%tl6638166537%_
                                 _%__splice8111281113%_
                                 _%target6640566446%_
                                 _%tl6640766449%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6637166419%_)))))
                        (let () (declare (not safe)) (_%g6637166419%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl6638166537%_)
                                                        (let ((_%__splice8111281113%_
                                                               (gx#syntax-split-splice
                                                                _%tl6638166537%_
                                                                '0)))
                                                          (let ((_%tl6640766449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8111281113%_ '1)))
                        (_%target6640566446%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8111281113%_ '0))))
                    (if (gx#stx-null? _%tl6640766449%_)
                        (_%__match8117081171%_
                         _%e6637666520%_
                         _%hd6637766524%_
                         _%tl6637866527%_
                         _%e6637966530%_
                         _%hd6638066534%_
                         _%tl6638166537%_
                         _%__splice8111281113%_
                         _%target6640566446%_
                         _%tl6640766449%_)
                        (let () (declare (not safe)) (_%g6637166419%_)))))
                (let () (declare (not safe)) (_%g6637166419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl6638166537%_)
                                                    (let ((_%__splice8111281113%_
                                                           (gx#syntax-split-splice
                                                            _%tl6638166537%_
                                                            '0)))
                                                      (let ((_%tl6640766449%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8111281113%_ '1)))
                    (_%target6640566446%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8111281113%_ '0))))
                (if (gx#stx-null? _%tl6640766449%_)
                    (_%__match8117081171%_
                     _%e6637666520%_
                     _%hd6637766524%_
                     _%tl6637866527%_
                     _%e6637966530%_
                     _%hd6638066534%_
                     _%tl6638166537%_
                     _%__splice8111281113%_
                     _%target6640566446%_
                     _%tl6640766449%_)
                    (let () (declare (not safe)) (_%g6637166419%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6637166419%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl6638166537%_)
                                                (let ((_%__splice8111281113%_
                                                       (gx#syntax-split-splice
                                                        _%tl6638166537%_
                                                        '0)))
                                                  (let ((_%tl6640766449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8111281113%_
                                                            '1)))
                                                        (_%target6640566446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8111281113%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6640766449%_)
                                                        (_%__match8117081171%_
                                                         _%e6637666520%_
                                                         _%hd6637766524%_
                                                         _%tl6637866527%_
                                                         _%e6637966530%_
                                                         _%hd6638066534%_
                                                         _%tl6638166537%_
                                                         _%__splice8111281113%_
                                                         _%target6640566446%_
                                                         _%tl6640766449%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6637166419%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6637166419%_))))))
                                    (if (gx#stx-pair/null? _%tl6638166537%_)
                                        (let ((_%__splice8111281113%_
                                               (gx#syntax-split-splice
                                                _%tl6638166537%_
                                                '0)))
                                          (let ((_%tl6640766449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8111281113%_
                                                    '1)))
                                                (_%target6640566446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8111281113%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl6640766449%_)
                                                (_%__match8117081171%_
                                                 _%e6637666520%_
                                                 _%hd6637766524%_
                                                 _%tl6637866527%_
                                                 _%e6637966530%_
                                                 _%hd6638066534%_
                                                 _%tl6638166537%_
                                                 _%__splice8111281113%_
                                                 _%target6640566446%_
                                                 _%tl6640766449%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6637166419%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6637166419%_))))))
                            (let () (declare (not safe)) (_%g6637166419%_)))))
                    (let () (declare (not safe)) (_%g6637166419%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#def*/c|
      (lambda (_%$stx66794%_)
        (let* ((_%g6679866822%_
                (lambda (_%g6679966818%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6679966818%_)))
               (_%g6679766907%_
                (lambda (_%g6679966826%_)
                  (if (gx#stx-pair? _%g6679966826%_)
                      (let ((_%e6680266829%_ (gx#syntax-e _%g6679966826%_)))
                        (let ((_%hd6680366833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6680266829%_)))
                              (_%tl6680466836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6680266829%_))))
                          (if (gx#stx-pair? _%tl6680466836%_)
                              (let ((_%e6680566839%_
                                     (gx#syntax-e _%tl6680466836%_)))
                                (let ((_%hd6680666843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6680566839%_)))
                                      (_%tl6680766846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6680566839%_))))
                                  (if (gx#stx-pair/null? _%tl6680766846%_)
                                      (let ((_g82718_
                                             (gx#syntax-split-splice
                                              _%tl6680766846%_
                                              '0)))
                                        (begin
                                          (let ((_g82719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g82718_)
                                                       (##vector-length
                                                        _g82718_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g82719_ 2)))
                                                (error "Context expects 2 values"
                                                       _g82719_)))
                                          (let ((_%target6680866849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82718_ 0)))
                                                (_%tl6681066852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82718_ 1))))
                                            (if (gx#stx-null? _%tl6681066852%_)
                                                (letrec ((_%loop6681166855%_
                                                          (lambda (_%hd6680966859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause6681566862%_)
                    (if (gx#stx-pair? _%hd6680966859%_)
                        (let ((_%e6681266865%_ (gx#syntax-e _%hd6680966859%_)))
                          (let ((_%lp-hd6681366869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6681266865%_)))
                                (_%lp-tl6681466872%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6681266865%_))))
                            (_%loop6681166855%_
                             _%lp-tl6681466872%_
                             (cons _%lp-hd6681366869%_ _%clause6681566862%_))))
                        (let ((_%clause6681666875%_
                               (reverse _%clause6681566862%_)))
                          ((lambda (_%L66879%_ _%L66881%_)
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L66881%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'case-lambda/c)
                                                     (foldr (lambda (_%g6689866901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6689966904%_)
                      (cons _%g6689866901%_ _%g6689966904%_))
                    '()
                    _%L66879%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause6681666875%_
                           _%hd6680666843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6681166855%_
                                                   _%target6680866849%_
                                                   '()))
                                                (_%g6679866822%_
                                                 _%g6679966826%_)))))
                                      (_%g6679866822%_ _%g6679966826%_))))
                              (_%g6679866822%_ _%g6679966826%_))))
                      (_%g6679866822%_ _%g6679966826%_)))))
          (_%g6679766907%_ _%$stx66794%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#case-lambda/c|
      (lambda (_%stx66912%_)
        (letrec ((_%is-clause-signature?66915%_
                  (lambda (_%clause67449%_)
                    (let* ((_%__stx8117381174%_ _%clause67449%_)
                           (_%g6745367495%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8117381174%_))))
                      (let ((_%__kont8117681177%_
                             (lambda (_%L67627%_ _%L67629%_ _%L67630%_) '#t))
                            (_%__kont8118081181%_
                             (lambda (_%L67542%_ _%L67544%_)
                               (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                _%L67544%_))))
                        (let* ((_%__match8122881229%_
                                (lambda (_%e6747867502%_
                                         _%hd6747967506%_
                                         _%tl6748067509%_
                                         _%__splice8118281183%_
                                         _%target6748167512%_
                                         _%tl6748367515%_)
                                  (letrec ((_%loop6748467518%_
                                            (lambda (_%hd6748267522%_
                                                     _%body6748867525%_)
                                              (if (gx#stx-pair?
                                                   _%hd6748267522%_)
                                                  (let ((_%e6748567528%_
                                                         (gx#syntax-e
                                                          _%hd6748267522%_)))
                                                    (let ((_%lp-tl6748767535%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6748567528%_)))
                                                          (_%lp-hd6748667532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6748567528%_))))
                                                      (_%loop6748467518%_
                                                       _%lp-tl6748767535%_
                                                       (cons _%lp-hd6748667532%_
                                                             _%body6748867525%_))))
                                                  (let ((_%body6748967538%_
                                                         (reverse _%body6748867525%_)))
                                                    (_%__kont8118081181%_
                                                     _%body6748967538%_
                                                     _%hd6747967506%_))))))
                                    (_%loop6748467518%_
                                     _%target6748167512%_
                                     '()))))
                               (_%__match8121481215%_
                                (lambda (_%e6745867567%_
                                         _%hd6745967571%_
                                         _%tl6746067574%_
                                         _%e6746167577%_
                                         _%hd6746267581%_
                                         _%tl6746367584%_
                                         _%e6746467587%_
                                         _%hd6746567591%_
                                         _%tl6746667594%_
                                         _%__splice8117881179%_
                                         _%target6746767597%_
                                         _%tl6746967600%_)
                                  (letrec ((_%loop6747067603%_
                                            (lambda (_%hd6746867607%_
                                                     _%body6747467610%_)
                                              (if (gx#stx-pair?
                                                   _%hd6746867607%_)
                                                  (let ((_%e6747167613%_
                                                         (gx#syntax-e
                                                          _%hd6746867607%_)))
                                                    (let ((_%lp-tl6747367620%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6747167613%_)))
                                                          (_%lp-hd6747267617%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6747167613%_))))
                                                      (_%loop6747067603%_
                                                       _%lp-tl6747367620%_
                                                       (cons _%lp-hd6747267617%_
                                                             _%body6747467610%_))))
                                                  (let ((_%body6747567623%_
                                                         (reverse _%body6747467610%_)))
                                                    (_%__kont8117681177%_
                                                     _%body6747567623%_
                                                     _%hd6746567591%_
                                                     _%hd6745967571%_))))))
                                    (_%loop6747067603%_
                                     _%target6746767597%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8117381174%_)
                              (let ((_%e6745867567%_
                                     (gx#syntax-e _%__stx8117381174%_)))
                                (let ((_%tl6746067574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6745867567%_)))
                                      (_%hd6745967571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6745867567%_))))
                                  (if (gx#stx-pair? _%tl6746067574%_)
                                      (let ((_%e6746167577%_
                                             (gx#syntax-e _%tl6746067574%_)))
                                        (let ((_%tl6746367584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6746167577%_)))
                                              (_%hd6746267581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6746167577%_))))
                                          (if (gx#identifier? _%hd6746267581%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g82720_|
                                                   _%hd6746267581%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6746367584%_)
                                                      (let ((_%e6746467587%_
                                                             (gx#syntax-e
                                                              _%tl6746367584%_)))
                                                        (let ((_%tl6746667594%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6746467587%_)))
                      (_%hd6746567591%_
                       (let () (declare (not safe)) (##car _%e6746467587%_))))
                  (if (gx#stx-pair/null? _%tl6746667594%_)
                      (let ((_%__splice8117881179%_
                             (gx#syntax-split-splice _%tl6746667594%_ '0)))
                        (let ((_%tl6746967600%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8117881179%_ '1)))
                              (_%target6746767597%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8117881179%_ '0))))
                          (if (gx#stx-null? _%tl6746967600%_)
                              (_%__match8121481215%_
                               _%e6745867567%_
                               _%hd6745967571%_
                               _%tl6746067574%_
                               _%e6746167577%_
                               _%hd6746267581%_
                               _%tl6746367584%_
                               _%e6746467587%_
                               _%hd6746567591%_
                               _%tl6746667594%_
                               _%__splice8117881179%_
                               _%target6746767597%_
                               _%tl6746967600%_)
                              (if (gx#stx-pair/null? _%tl6746067574%_)
                                  (let ((_%__splice8118281183%_
                                         (gx#syntax-split-splice
                                          _%tl6746067574%_
                                          '0)))
                                    (let ((_%tl6748367515%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8118281183%_
                                              '1)))
                                          (_%target6748167512%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8118281183%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6748367515%_)
                                          (_%__match8122881229%_
                                           _%e6745867567%_
                                           _%hd6745967571%_
                                           _%tl6746067574%_
                                           _%__splice8118281183%_
                                           _%target6748167512%_
                                           _%tl6748367515%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6745367495%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6745367495%_))))))
                      (if (gx#stx-pair/null? _%tl6746067574%_)
                          (let ((_%__splice8118281183%_
                                 (gx#syntax-split-splice _%tl6746067574%_ '0)))
                            (let ((_%tl6748367515%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8118281183%_ '1)))
                                  (_%target6748167512%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8118281183%_
                                      '0))))
                              (if (gx#stx-null? _%tl6748367515%_)
                                  (_%__match8122881229%_
                                   _%e6745867567%_
                                   _%hd6745967571%_
                                   _%tl6746067574%_
                                   _%__splice8118281183%_
                                   _%target6748167512%_
                                   _%tl6748367515%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6745367495%_)))))
                          (let () (declare (not safe)) (_%g6745367495%_))))))
              (if (gx#stx-pair/null? _%tl6746067574%_)
                  (let ((_%__splice8118281183%_
                         (gx#syntax-split-splice _%tl6746067574%_ '0)))
                    (let ((_%tl6748367515%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8118281183%_ '1)))
                          (_%target6748167512%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8118281183%_ '0))))
                      (if (gx#stx-null? _%tl6748367515%_)
                          (_%__match8122881229%_
                           _%e6745867567%_
                           _%hd6745967571%_
                           _%tl6746067574%_
                           _%__splice8118281183%_
                           _%target6748167512%_
                           _%tl6748367515%_)
                          (let () (declare (not safe)) (_%g6745367495%_)))))
                  (let () (declare (not safe)) (_%g6745367495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6746067574%_)
                                                      (let ((_%__splice8118281183%_
                                                             (gx#syntax-split-splice
                                                              _%tl6746067574%_
                                                              '0)))
                                                        (let ((_%tl6748367515%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8118281183%_ '1)))
                      (_%target6748167512%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8118281183%_ '0))))
                  (if (gx#stx-null? _%tl6748367515%_)
                      (_%__match8122881229%_
                       _%e6745867567%_
                       _%hd6745967571%_
                       _%tl6746067574%_
                       _%__splice8118281183%_
                       _%target6748167512%_
                       _%tl6748367515%_)
                      (let () (declare (not safe)) (_%g6745367495%_)))))
              (let () (declare (not safe)) (_%g6745367495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6746067574%_)
                                                  (let ((_%__splice8118281183%_
                                                         (gx#syntax-split-splice
                                                          _%tl6746067574%_
                                                          '0)))
                                                    (let ((_%tl6748367515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8118281183%_
                                                              '1)))
                                                          (_%target6748167512%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8118281183%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6748367515%_)
                                                          (_%__match8122881229%_
                                                           _%e6745867567%_
                                                           _%hd6745967571%_
                                                           _%tl6746067574%_
                                                           _%__splice8118281183%_
                                                           _%target6748167512%_
                                                           _%tl6748367515%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6745367495%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6745367495%_))))))
                                      (if (gx#stx-pair/null? _%tl6746067574%_)
                                          (let ((_%__splice8118281183%_
                                                 (gx#syntax-split-splice
                                                  _%tl6746067574%_
                                                  '0)))
                                            (let ((_%tl6748367515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8118281183%_
                                                      '1)))
                                                  (_%target6748167512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8118281183%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6748367515%_)
                                                  (_%__match8122881229%_
                                                   _%e6745867567%_
                                                   _%hd6745967571%_
                                                   _%tl6746067574%_
                                                   _%__splice8118281183%_
                                                   _%target6748167512%_
                                                   _%tl6748367515%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6745367495%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6745367495%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g6745367495%_))))))))
                 (_%clause-e66917%_
                  (lambda (_%clause67189%_)
                    (let* ((_%__stx8123181232%_ _%clause67189%_)
                           (_%g6719367235%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8123181232%_))))
                      (let ((_%__kont8123481235%_
                             (lambda (_%L67375%_ _%L67377%_ _%L67378%_)
                               (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                    _%L67378%_)
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/contract~Interface[1]#check-signature!__%|
                                        '#f
                                        '#f
                                        '#f
                                        _%stx66912%_
                                        _%L67378%_
                                        _%L67377%_))
                                     (let* ((_%g6739867406%_
                                             (lambda (_%g6739967402%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g6739967402%_)))
                                            (_%g6739767433%_
                                             (lambda (_%g6739967410%_)
                                               ((lambda (_%L67413%_)
                                                  (cons _%L67413%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'with-procedure-signature)
                            (cons (cons _%L67378%_
                                        (cons _%L67377%_ (cons '#f '())))
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'with-procedure-contract)
                                              (cons _%L67378%_
                                                    (foldr (lambda (_%g6742467427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g6742567430%_)
                     (cons _%g6742467427%_ _%g6742567430%_))
                   '()
                   _%L67375%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g6739967410%_))))
                                       (_%g6739767433%_
                                        (let ()
                                          (declare (not safe))
                                          (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                           _%L67378%_)))))
                                   (cons _%L67378%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'with-procedure-signature)
                                                     (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L67377%_ (cons '#f '())))
                   (foldr (lambda (_%g6743667439%_ _%g6743767442%_)
                            (cons _%g6743667439%_ _%g6743767442%_))
                          '()
                          _%L67375%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                            (_%__kont8123881239%_
                             (lambda (_%L67282%_ _%L67284%_)
                               (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                    _%L67284%_)
                                   (_%clause-e66917%_
                                    (cons _%L67284%_
                                          (cons (gx#datum->syntax '#f '=>)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       ':t)
                                                      (foldr (lambda (_%g6729967302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6730067305%_)
                       (cons _%g6729967302%_ _%g6730067305%_))
                     '()
                     _%L67282%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%clause67189%_))))
                        (let* ((_%__match8128681287%_
                                (lambda (_%e6721867242%_
                                         _%hd6721967246%_
                                         _%tl6722067249%_
                                         _%__splice8124081241%_
                                         _%target6722167252%_
                                         _%tl6722367255%_)
                                  (letrec ((_%loop6722467258%_
                                            (lambda (_%hd6722267262%_
                                                     _%body6722867265%_)
                                              (if (gx#stx-pair?
                                                   _%hd6722267262%_)
                                                  (let ((_%e6722567268%_
                                                         (gx#syntax-e
                                                          _%hd6722267262%_)))
                                                    (let ((_%lp-tl6722767275%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6722567268%_)))
                                                          (_%lp-hd6722667272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6722567268%_))))
                                                      (_%loop6722467258%_
                                                       _%lp-tl6722767275%_
                                                       (cons _%lp-hd6722667272%_
                                                             _%body6722867265%_))))
                                                  (let ((_%body6722967278%_
                                                         (reverse _%body6722867265%_)))
                                                    (_%__kont8123881239%_
                                                     _%body6722967278%_
                                                     _%hd6721967246%_))))))
                                    (_%loop6722467258%_
                                     _%target6722167252%_
                                     '()))))
                               (_%__match8127281273%_
                                (lambda (_%e6719867315%_
                                         _%hd6719967319%_
                                         _%tl6720067322%_
                                         _%e6720167325%_
                                         _%hd6720267329%_
                                         _%tl6720367332%_
                                         _%e6720467335%_
                                         _%hd6720567339%_
                                         _%tl6720667342%_
                                         _%__splice8123681237%_
                                         _%target6720767345%_
                                         _%tl6720967348%_)
                                  (letrec ((_%loop6721067351%_
                                            (lambda (_%hd6720867355%_
                                                     _%body6721467358%_)
                                              (if (gx#stx-pair?
                                                   _%hd6720867355%_)
                                                  (let ((_%e6721167361%_
                                                         (gx#syntax-e
                                                          _%hd6720867355%_)))
                                                    (let ((_%lp-tl6721367368%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6721167361%_)))
                                                          (_%lp-hd6721267365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6721167361%_))))
                                                      (_%loop6721067351%_
                                                       _%lp-tl6721367368%_
                                                       (cons _%lp-hd6721267365%_
                                                             _%body6721467358%_))))
                                                  (let ((_%body6721567371%_
                                                         (reverse _%body6721467358%_)))
                                                    (_%__kont8123481235%_
                                                     _%body6721567371%_
                                                     _%hd6720567339%_
                                                     _%hd6719967319%_))))))
                                    (_%loop6721067351%_
                                     _%target6720767345%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8123181232%_)
                              (let ((_%e6719867315%_
                                     (gx#syntax-e _%__stx8123181232%_)))
                                (let ((_%tl6720067322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6719867315%_)))
                                      (_%hd6719967319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6719867315%_))))
                                  (if (gx#stx-pair? _%tl6720067322%_)
                                      (let ((_%e6720167325%_
                                             (gx#syntax-e _%tl6720067322%_)))
                                        (let ((_%tl6720367332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6720167325%_)))
                                              (_%hd6720267329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6720167325%_))))
                                          (if (gx#identifier? _%hd6720267329%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g82721_|
                                                   _%hd6720267329%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6720367332%_)
                                                      (let ((_%e6720467335%_
                                                             (gx#syntax-e
                                                              _%tl6720367332%_)))
                                                        (let ((_%tl6720667342%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6720467335%_)))
                      (_%hd6720567339%_
                       (let () (declare (not safe)) (##car _%e6720467335%_))))
                  (if (gx#stx-pair/null? _%tl6720667342%_)
                      (let ((_%__splice8123681237%_
                             (gx#syntax-split-splice _%tl6720667342%_ '0)))
                        (let ((_%tl6720967348%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8123681237%_ '1)))
                              (_%target6720767345%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8123681237%_ '0))))
                          (if (gx#stx-null? _%tl6720967348%_)
                              (_%__match8127281273%_
                               _%e6719867315%_
                               _%hd6719967319%_
                               _%tl6720067322%_
                               _%e6720167325%_
                               _%hd6720267329%_
                               _%tl6720367332%_
                               _%e6720467335%_
                               _%hd6720567339%_
                               _%tl6720667342%_
                               _%__splice8123681237%_
                               _%target6720767345%_
                               _%tl6720967348%_)
                              (if (gx#stx-pair/null? _%tl6720067322%_)
                                  (let ((_%__splice8124081241%_
                                         (gx#syntax-split-splice
                                          _%tl6720067322%_
                                          '0)))
                                    (let ((_%tl6722367255%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8124081241%_
                                              '1)))
                                          (_%target6722167252%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8124081241%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6722367255%_)
                                          (_%__match8128681287%_
                                           _%e6719867315%_
                                           _%hd6719967319%_
                                           _%tl6720067322%_
                                           _%__splice8124081241%_
                                           _%target6722167252%_
                                           _%tl6722367255%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6719367235%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6719367235%_))))))
                      (if (gx#stx-pair/null? _%tl6720067322%_)
                          (let ((_%__splice8124081241%_
                                 (gx#syntax-split-splice _%tl6720067322%_ '0)))
                            (let ((_%tl6722367255%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8124081241%_ '1)))
                                  (_%target6722167252%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8124081241%_
                                      '0))))
                              (if (gx#stx-null? _%tl6722367255%_)
                                  (_%__match8128681287%_
                                   _%e6719867315%_
                                   _%hd6719967319%_
                                   _%tl6720067322%_
                                   _%__splice8124081241%_
                                   _%target6722167252%_
                                   _%tl6722367255%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6719367235%_)))))
                          (let () (declare (not safe)) (_%g6719367235%_))))))
              (if (gx#stx-pair/null? _%tl6720067322%_)
                  (let ((_%__splice8124081241%_
                         (gx#syntax-split-splice _%tl6720067322%_ '0)))
                    (let ((_%tl6722367255%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8124081241%_ '1)))
                          (_%target6722167252%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8124081241%_ '0))))
                      (if (gx#stx-null? _%tl6722367255%_)
                          (_%__match8128681287%_
                           _%e6719867315%_
                           _%hd6719967319%_
                           _%tl6720067322%_
                           _%__splice8124081241%_
                           _%target6722167252%_
                           _%tl6722367255%_)
                          (let () (declare (not safe)) (_%g6719367235%_)))))
                  (let () (declare (not safe)) (_%g6719367235%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6720067322%_)
                                                      (let ((_%__splice8124081241%_
                                                             (gx#syntax-split-splice
                                                              _%tl6720067322%_
                                                              '0)))
                                                        (let ((_%tl6722367255%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8124081241%_ '1)))
                      (_%target6722167252%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8124081241%_ '0))))
                  (if (gx#stx-null? _%tl6722367255%_)
                      (_%__match8128681287%_
                       _%e6719867315%_
                       _%hd6719967319%_
                       _%tl6720067322%_
                       _%__splice8124081241%_
                       _%target6722167252%_
                       _%tl6722367255%_)
                      (let () (declare (not safe)) (_%g6719367235%_)))))
              (let () (declare (not safe)) (_%g6719367235%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6720067322%_)
                                                  (let ((_%__splice8124081241%_
                                                         (gx#syntax-split-splice
                                                          _%tl6720067322%_
                                                          '0)))
                                                    (let ((_%tl6722367255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8124081241%_
                                                              '1)))
                                                          (_%target6722167252%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8124081241%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6722367255%_)
                                                          (_%__match8128681287%_
                                                           _%e6719867315%_
                                                           _%hd6719967319%_
                                                           _%tl6720067322%_
                                                           _%__splice8124081241%_
                                                           _%target6722167252%_
                                                           _%tl6722367255%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6719367235%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6719367235%_))))))
                                      (if (gx#stx-pair/null? _%tl6720067322%_)
                                          (let ((_%__splice8124081241%_
                                                 (gx#syntax-split-splice
                                                  _%tl6720067322%_
                                                  '0)))
                                            (let ((_%tl6722367255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8124081241%_
                                                      '1)))
                                                  (_%target6722167252%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8124081241%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6722367255%_)
                                                  (_%__match8128681287%_
                                                   _%e6719867315%_
                                                   _%hd6719967319%_
                                                   _%tl6720067322%_
                                                   _%__splice8124081241%_
                                                   _%target6722167252%_
                                                   _%tl6722367255%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6719367235%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6719367235%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g6719367235%_)))))))))
          (let* ((_%__stx8128981290%_ _%stx66912%_)
                 (_%g6692066953%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8128981290%_))))
            (let ((_%__kont8129281293%_
                   (lambda (_%L67072%_)
                     (let* ((_%g6709567112%_
                             (lambda (_%g6709667108%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g6709667108%_)))
                            (_%g6709467173%_
                             (lambda (_%g6709667116%_)
                               (if (gx#stx-pair/null? _%g6709667116%_)
                                   (let ((_g82722_
                                          (gx#syntax-split-splice
                                           _%g6709667116%_
                                           '0)))
                                     (begin
                                       (let ((_g82723_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g82722_)
                                                    (##vector-length _g82722_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g82723_ 2)))
                                             (error "Context expects 2 values"
                                                    _g82723_)))
                                       (let ((_%target6709867119%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g82722_ 0)))
                                             (_%tl6710067122%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g82722_ 1))))
                                         (if (gx#stx-null? _%tl6710067122%_)
                                             (letrec ((_%loop6710167125%_
                                                       (lambda (_%hd6709967129%_
                                                                _%clause6710567132%_)
                                                         (if (gx#stx-pair?
                                                              _%hd6709967129%_)
                                                             (let ((_%e6710267135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd6709967129%_)))
                       (let ((_%lp-hd6710367139%_
                              (let ()
                                (declare (not safe))
                                (##car _%e6710267135%_)))
                             (_%lp-tl6710467142%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e6710267135%_))))
                         (_%loop6710167125%_
                          _%lp-tl6710467142%_
                          (cons _%lp-hd6710367139%_ _%clause6710567132%_))))
                     (let ((_%clause6710667145%_
                            (reverse _%clause6710567132%_)))
                       ((lambda (_%L67149%_)
                          (cons (gx#datum->syntax '#f 'case-lambda)
                                (foldr (lambda (_%g6716467167%_
                                                _%g6716567170%_)
                                         (cons _%g6716467167%_
                                               _%g6716567170%_))
                                       '()
                                       _%L67149%_)))
                        _%clause6710667145%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop6710167125%_
                                                _%target6709867119%_
                                                '()))
                                             (_%g6709567112%_
                                              _%g6709667116%_)))))
                                   (_%g6709567112%_ _%g6709667116%_)))))
                       (_%g6709467173%_
                        (map _%clause-e66917%_
                             (foldr (lambda (_%g6717667179%_ _%g6717767182%_)
                                      (cons _%g6717667179%_ _%g6717767182%_))
                                    '()
                                    _%L67072%_))))))
                  (_%__kont8129681297%_
                   (lambda (_%L67000%_)
                     (cons (gx#datum->syntax '#f 'case-lambda)
                           (foldr (lambda (_%g6701667019%_ _%g6701767022%_)
                                    (cons _%g6701667019%_ _%g6701767022%_))
                                  '()
                                  _%L67000%_)))))
              (let* ((_%__match8132881329%_
                      (lambda (_%e6693666960%_
                               _%hd6693766964%_
                               _%tl6693866967%_
                               _%__splice8129881299%_
                               _%target6693966970%_
                               _%tl6694166973%_)
                        (letrec ((_%loop6694266976%_
                                  (lambda (_%hd6694066980%_
                                           _%clause6694666983%_)
                                    (if (gx#stx-pair? _%hd6694066980%_)
                                        (let ((_%e6694366986%_
                                               (gx#syntax-e _%hd6694066980%_)))
                                          (let ((_%lp-tl6694566993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6694366986%_)))
                                                (_%lp-hd6694466990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6694366986%_))))
                                            (_%loop6694266976%_
                                             _%lp-tl6694566993%_
                                             (cons _%lp-hd6694466990%_
                                                   _%clause6694666983%_))))
                                        (let ((_%clause6694766996%_
                                               (reverse _%clause6694666983%_)))
                                          (_%__kont8129681297%_
                                           _%clause6694766996%_))))))
                          (_%loop6694266976%_ _%target6693966970%_ '()))))
                     (_%__match8131481315%_
                      (lambda (_%e6692367032%_
                               _%hd6692467036%_
                               _%tl6692567039%_
                               _%__splice8129481295%_
                               _%target6692667042%_
                               _%tl6692867045%_)
                        (letrec ((_%loop6692967048%_
                                  (lambda (_%hd6692767052%_
                                           _%clause6693367055%_)
                                    (if (gx#stx-pair? _%hd6692767052%_)
                                        (let ((_%e6693067058%_
                                               (gx#syntax-e _%hd6692767052%_)))
                                          (let ((_%lp-tl6693267065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6693067058%_)))
                                                (_%lp-hd6693167062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6693067058%_))))
                                            (_%loop6692967048%_
                                             _%lp-tl6693267065%_
                                             (cons _%lp-hd6693167062%_
                                                   _%clause6693367055%_))))
                                        (let* ((_%clause6693467068%_
                                                (reverse _%clause6693367055%_))
                                               (_%L67072%_
                                                _%clause6693467068%_))
                                          (if (ormap _%is-clause-signature?66915%_
                                                     (foldr (lambda (_%g6708667089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6708767092%_)
                      (cons _%g6708667089%_ _%g6708767092%_))
                    '()
                    _%L67072%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8129281293%_ _%L67072%_)
                                              (_%__match8132881329%_
                                               _%e6692367032%_
                                               _%hd6692467036%_
                                               _%tl6692567039%_
                                               _%__splice8129481295%_
                                               _%target6692667042%_
                                               _%tl6692867045%_)))))))
                          (_%loop6692967048%_ _%target6692667042%_ '())))))
                (if (gx#stx-pair? _%__stx8128981290%_)
                    (let ((_%e6692367032%_ (gx#syntax-e _%__stx8128981290%_)))
                      (let ((_%tl6692567039%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6692367032%_)))
                            (_%hd6692467036%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6692367032%_))))
                        (if (gx#stx-pair/null? _%tl6692567039%_)
                            (let ((_%__splice8129481295%_
                                   (gx#syntax-split-splice
                                    _%tl6692567039%_
                                    '0)))
                              (let ((_%tl6692867045%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8129481295%_
                                        '1)))
                                    (_%target6692667042%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8129481295%_
                                        '0))))
                                (if (gx#stx-null? _%tl6692867045%_)
                                    (_%__match8131481315%_
                                     _%e6692367032%_
                                     _%hd6692467036%_
                                     _%tl6692567039%_
                                     _%__splice8129481295%_
                                     _%target6692667042%_
                                     _%tl6692867045%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6692066953%_)))))
                            (let () (declare (not safe)) (_%g6692066953%_)))))
                    (let () (declare (not safe)) (_%g6692066953%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#@method|
      (lambda (_%stx67661%_)
        (let* ((_%__stx8133181332%_ _%stx67661%_)
               (_%g6766567710%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8133181332%_))))
          (let ((_%__kont8133481335%_
                 (lambda (_%L67866%_ _%L67868%_)
                   (let* ((_%str67885%_ (symbol->string (gx#stx-e _%L67868%_)))
                          (_%ix67888%_ (string-rindex _%str67885%_ '#\.))
                          (_%g6789367908%_
                           (lambda (_%g6789467904%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6789467904%_)))
                          (_%g6789267964%_
                           (lambda (_%g6789467912%_)
                             (if (gx#stx-pair? _%g6789467912%_)
                                 (let ((_%e6789767915%_
                                        (gx#syntax-e _%g6789467912%_)))
                                   (let ((_%hd6789867919%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e6789767915%_)))
                                         (_%tl6789967922%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e6789767915%_))))
                                     (if (gx#stx-pair? _%tl6789967922%_)
                                         (let ((_%e6790067925%_
                                                (gx#syntax-e
                                                 _%tl6789967922%_)))
                                           (let ((_%hd6790167929%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e6790067925%_)))
                                                 (_%tl6790267932%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e6790067925%_))))
                                             (if (gx#stx-null?
                                                  _%tl6790267932%_)
                                                 ((lambda (_%L67935%_
                                                           _%L67937%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'call-method)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '%%ref-dotted)
                              (cons _%L67937%_ '()))
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L67935%_ '()))
                              (foldr (lambda (_%g6795567958%_ _%g6795667961%_)
                                       (cons _%g6795567958%_ _%g6795667961%_))
                                     '()
                                     _%L67866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd6790167929%_
                                                  _%hd6789867919%_)
                                                 (_%g6789367908%_
                                                  _%g6789467912%_))))
                                         (_%g6789367908%_ _%g6789467912%_))))
                                 (_%g6789367908%_ _%g6789467912%_)))))
                     (_%g6789267964%_
                      (list (gx#stx-identifier
                             _%L67868%_
                             (substring _%str67885%_ '0 _%ix67888%_))
                            (let ((__tmp82724
                                   (substring
                                    _%str67885%_
                                    (fx1+ _%ix67888%_)
                                    (string-length _%str67885%_))))
                              (declare (not safe))
                              (##string->symbol __tmp82724)))))))
                (_%__kont8133881339%_
                 (lambda (_%L67777%_ _%L67779%_ _%L67780%_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _%L67779%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L67780%_ '()))
                                     (foldr (lambda (_%g6780067803%_
                                                     _%g6780167806%_)
                                              (cons _%g6780067803%_
                                                    _%g6780167806%_))
                                            '()
                                            _%L67777%_)))))))
            (let* ((_%__match8138881389%_
                    (lambda (_%e6768767717%_
                             _%hd6768867721%_
                             _%tl6768967724%_
                             _%e6769067727%_
                             _%hd6769167731%_
                             _%tl6769267734%_
                             _%e6769367737%_
                             _%hd6769467741%_
                             _%tl6769567744%_
                             _%__splice8134081341%_
                             _%target6769667747%_
                             _%tl6769867750%_)
                      (letrec ((_%loop6769967753%_
                                (lambda (_%hd6769767757%_ _%arg6770367760%_)
                                  (if (gx#stx-pair? _%hd6769767757%_)
                                      (let ((_%e6770067763%_
                                             (gx#syntax-e _%hd6769767757%_)))
                                        (let ((_%lp-tl6770267770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6770067763%_)))
                                              (_%lp-hd6770167767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6770067763%_))))
                                          (_%loop6769967753%_
                                           _%lp-tl6770267770%_
                                           (cons _%lp-hd6770167767%_
                                                 _%arg6770367760%_))))
                                      (let ((_%arg6770467773%_
                                             (reverse _%arg6770367760%_)))
                                        (_%__kont8133881339%_
                                         _%arg6770467773%_
                                         _%hd6769467741%_
                                         _%hd6769167731%_))))))
                        (_%loop6769967753%_ _%target6769667747%_ '()))))
                   (_%__match8137481375%_
                    (lambda (_%e6768767717%_
                             _%hd6768867721%_
                             _%tl6768967724%_
                             _%e6769067727%_
                             _%hd6769167731%_
                             _%tl6769267734%_)
                      (if (gx#stx-pair? _%tl6769267734%_)
                          (let ((_%e6769367737%_
                                 (gx#syntax-e _%tl6769267734%_)))
                            (let ((_%tl6769567744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6769367737%_)))
                                  (_%hd6769467741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6769367737%_))))
                              (if (gx#stx-pair/null? _%tl6769567744%_)
                                  (let ((_%__splice8134081341%_
                                         (gx#syntax-split-splice
                                          _%tl6769567744%_
                                          '0)))
                                    (let ((_%tl6769867750%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8134081341%_
                                              '1)))
                                          (_%target6769667747%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8134081341%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6769867750%_)
                                          (_%__match8138881389%_
                                           _%e6768767717%_
                                           _%hd6768867721%_
                                           _%tl6768967724%_
                                           _%e6769067727%_
                                           _%hd6769167731%_
                                           _%tl6769267734%_
                                           _%e6769367737%_
                                           _%hd6769467741%_
                                           _%tl6769567744%_
                                           _%__splice8134081341%_
                                           _%target6769667747%_
                                           _%tl6769867750%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6766567710%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6766567710%_)))))
                          (let () (declare (not safe)) (_%g6766567710%_)))))
                   (_%__match8136281363%_
                    (lambda (_%e6766967816%_
                             _%hd6767067820%_
                             _%tl6767167823%_
                             _%e6767267826%_
                             _%hd6767367830%_
                             _%tl6767467833%_
                             _%__splice8133681337%_
                             _%target6767567836%_
                             _%tl6767767839%_)
                      (letrec ((_%loop6767867842%_
                                (lambda (_%hd6767667846%_ _%arg6768267849%_)
                                  (if (gx#stx-pair? _%hd6767667846%_)
                                      (let ((_%e6767967852%_
                                             (gx#syntax-e _%hd6767667846%_)))
                                        (let ((_%lp-tl6768167859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6767967852%_)))
                                              (_%lp-hd6768067856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6767967852%_))))
                                          (_%loop6767867842%_
                                           _%lp-tl6768167859%_
                                           (cons _%lp-hd6768067856%_
                                                 _%arg6768267849%_))))
                                      (let ((_%arg6768367862%_
                                             (reverse _%arg6768267849%_)))
                                        (let ((_%L67866%_ _%arg6768367862%_)
                                              (_%L67868%_ _%hd6767367830%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/contract~Using[1]#dotted-identifier?|
                                                 _%L67868%_))
                                              (_%__kont8133481335%_
                                               _%L67866%_
                                               _%L67868%_)
                                              (_%__match8137481375%_
                                               _%e6766967816%_
                                               _%hd6767067820%_
                                               _%tl6767167823%_
                                               _%e6767267826%_
                                               _%hd6767367830%_
                                               _%tl6767467833%_))))))))
                        (_%loop6767867842%_ _%target6767567836%_ '())))))
              (if (gx#stx-pair? _%__stx8133181332%_)
                  (let ((_%e6766967816%_ (gx#syntax-e _%__stx8133181332%_)))
                    (let ((_%tl6767167823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6766967816%_)))
                          (_%hd6767067820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6766967816%_))))
                      (if (gx#stx-pair? _%tl6767167823%_)
                          (let ((_%e6767267826%_
                                 (gx#syntax-e _%tl6767167823%_)))
                            (let ((_%tl6767467833%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6767267826%_)))
                                  (_%hd6767367830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6767267826%_))))
                              (if (gx#stx-pair/null? _%tl6767467833%_)
                                  (let ((_%__splice8133681337%_
                                         (gx#syntax-split-splice
                                          _%tl6767467833%_
                                          '0)))
                                    (let ((_%tl6767767839%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8133681337%_
                                              '1)))
                                          (_%target6767567836%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8133681337%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6767767839%_)
                                          (_%__match8136281363%_
                                           _%e6766967816%_
                                           _%hd6767067820%_
                                           _%tl6767167823%_
                                           _%e6767267826%_
                                           _%hd6767367830%_
                                           _%tl6767467833%_
                                           _%__splice8133681337%_
                                           _%target6767567836%_
                                           _%tl6767767839%_)
                                          (if (gx#stx-pair? _%tl6767467833%_)
                                              (let ((_%e6769367737%_
                                                     (gx#syntax-e
                                                      _%tl6767467833%_)))
                                                (let ((_%tl6769567744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6769367737%_)))
                                                      (_%hd6769467741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6769367737%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6769567744%_)
                                                      (let ((_%__splice8134081341%_
                                                             (gx#syntax-split-splice
                                                              _%tl6769567744%_
                                                              '0)))
                                                        (let ((_%tl6769867750%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8134081341%_ '1)))
                      (_%target6769667747%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8134081341%_ '0))))
                  (if (gx#stx-null? _%tl6769867750%_)
                      (_%__match8138881389%_
                       _%e6766967816%_
                       _%hd6767067820%_
                       _%tl6767167823%_
                       _%e6767267826%_
                       _%hd6767367830%_
                       _%tl6767467833%_
                       _%e6769367737%_
                       _%hd6769467741%_
                       _%tl6769567744%_
                       _%__splice8134081341%_
                       _%target6769667747%_
                       _%tl6769867750%_)
                      (let () (declare (not safe)) (_%g6766567710%_)))))
              (let () (declare (not safe)) (_%g6766567710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6766567710%_))))))
                                  (if (gx#stx-pair? _%tl6767467833%_)
                                      (let ((_%e6769367737%_
                                             (gx#syntax-e _%tl6767467833%_)))
                                        (let ((_%tl6769567744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6769367737%_)))
                                              (_%hd6769467741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6769367737%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl6769567744%_)
                                              (let ((_%__splice8134081341%_
                                                     (gx#syntax-split-splice
                                                      _%tl6769567744%_
                                                      '0)))
                                                (let ((_%tl6769867750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8134081341%_
                                                          '1)))
                                                      (_%target6769667747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8134081341%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl6769867750%_)
                                                      (_%__match8138881389%_
                                                       _%e6766967816%_
                                                       _%hd6767067820%_
                                                       _%tl6767167823%_
                                                       _%e6767267826%_
                                                       _%hd6767367830%_
                                                       _%tl6767467833%_
                                                       _%e6769367737%_
                                                       _%hd6769467741%_
                                                       _%tl6769567744%_
                                                       _%__splice8134081341%_
                                                       _%target6769667747%_
                                                       _%tl6769867750%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6766567710%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6766567710%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6766567710%_))))))
                          (let () (declare (not safe)) (_%g6766567710%_)))))
                  (let () (declare (not safe)) (_%g6766567710%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmethod/c|
      (lambda (_%stx67974%_)
        (let* ((_%__stx8139181392%_ _%stx67974%_)
               (_%g6797968104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8139181392%_))))
          (let ((_%__kont8139481395%_
                 (lambda (_%L68673%_
                          _%L68675%_
                          _%L68676%_
                          _%L68677%_
                          _%L68678%_
                          _%L68679%_
                          _%L68680%_)
                   (let* ((_%g6871668724%_
                           (lambda (_%g6871768720%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6871768720%_)))
                          (_%g6871568785%_
                           (lambda (_%g6871768728%_)
                             ((lambda (_%L68731%_)
                                (let* ((_%g6874368751%_
                                        (lambda (_%g6874468747%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g6874468747%_)))
                                       (_%g6874268773%_
                                        (lambda (_%g6874468755%_)
                                          ((lambda (_%L68758%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defmethod)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '@method~)
                                                               (cons _%L68679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L68678%_ '())))
                 (cons _%L68758%_ _%L68673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g6874468755%_))))
                                  (_%g6874268773%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'lambda/c)
                                          (cons (cons _%L68731%_ _%L68676%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'using)
                                                            (cons (cons _%L68677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%L68731%_
                                      (cons (gx#datum->syntax '#f '::-)
                                            (cons _%L68678%_ '()))))
                          (cons (cons (gx#datum->syntax '#f 'with-receiver)
                                      (cons _%L68677%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6877668779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6877768782%_)
                               (cons _%g6877668779%_ _%g6877768782%_))
                             '()
                             _%L68675%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx67974%_)))))
                              _%g6871768728%_))))
                     (_%g6871568785%_ (gx#genident _%L68677%_)))))
                (_%__kont8139881399%_
                 (lambda (_%L68352%_
                          _%L68354%_
                          _%L68355%_
                          _%L68356%_
                          _%L68357%_
                          _%L68358%_
                          _%L68359%_)
                   (let* ((_%g6839968416%_
                           (lambda (_%g6840068412%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6840068412%_)))
                          (_%g6839868534%_
                           (lambda (_%g6840068420%_)
                             (if (gx#stx-pair/null? _%g6840068420%_)
                                 (let ((_g82725_
                                        (gx#syntax-split-splice
                                         _%g6840068420%_
                                         '0)))
                                   (begin
                                     (let ((_g82726_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g82725_)
                                                  (##vector-length _g82725_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g82726_ 2)))
                                           (error "Context expects 2 values"
                                                  _g82726_)))
                                     (let ((_%target6840268423%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g82725_ 0)))
                                           (_%tl6840468426%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g82725_ 1))))
                                       (if (gx#stx-null? _%tl6840468426%_)
                                           (letrec ((_%loop6840568429%_
                                                     (lambda (_%hd6840368433%_
                                                              _%receiver6840968436%_)
                                                       (if (gx#stx-pair?
                                                            _%hd6840368433%_)
                                                           (let ((_%e6840668439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd6840368433%_)))
                     (let ((_%lp-hd6840768443%_
                            (let ()
                              (declare (not safe))
                              (##car _%e6840668439%_)))
                           (_%lp-tl6840868446%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e6840668439%_))))
                       (_%loop6840568429%_
                        _%lp-tl6840868446%_
                        (cons _%lp-hd6840768443%_ _%receiver6840968436%_))))
                   (let ((_%receiver6841068449%_
                          (reverse _%receiver6840968436%_)))
                     ((lambda (_%L68453%_)
                        (let* ((_%g6846968477%_
                                (lambda (_%g6847068473%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g6847068473%_)))
                               (_%g6846868499%_
                                (lambda (_%g6847068481%_)
                                  ((lambda (_%L68484%_)
                                     (cons (gx#datum->syntax '#f 'defmethod)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@method~)
                                                       (cons _%L68358%_
                                                             (cons _%L68357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L68484%_
                                                       _%L68352%_))))
                                   _%g6847068481%_))))
                          (_%g6846868499%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'case-lambda/c)
                                  (begin
                                    (gx#syntax-check-splice-targets
                                     _%L68354%_
                                     _%L68356%_
                                     _%L68453%_
                                     _%L68356%_
                                     _%L68355%_
                                     _%L68453%_)
                                    (foldr (lambda (_%g6850268512%_
                                                    _%g6850368515%_
                                                    _%g6850468517%_
                                                    _%g6850568519%_
                                                    _%g6850668521%_
                                                    _%g6850768523%_
                                                    _%g6850868525%_)
                                             (cons (cons (cons _%g6850468517%_
                                                               _%g6850668521%_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'using)
                             (cons (cons _%g6850368515%_
                                         (cons _%g6850468517%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '::-)
                                                     (cons _%L68357%_ '()))))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'with-receiver)
                                               (cons _%g6850368515%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons '()
                               (foldr (lambda (_%g6850968528%_ _%g6851068531%_)
                                        (cons _%g6850968528%_ _%g6851068531%_))
                                      '()
                                      _%g6850268512%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g6850868525%_))
                                           '()
                                           _%L68354%_
                                           _%L68356%_
                                           _%L68453%_
                                           _%L68356%_
                                           _%L68355%_
                                           _%L68453%_)))
                            (gx#stx-source _%stx67974%_)))))
                      _%receiver6841068449%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop6840568429%_
                                              _%target6840268423%_
                                              '()))
                                           (_%g6839968416%_
                                            _%g6840068420%_)))))
                                 (_%g6839968416%_ _%g6840068420%_)))))
                     (_%g6839868534%_
                      (map gx#genident
                           (foldr (lambda (_%g6853768540%_ _%g6853868543%_)
                                    (cons _%g6853768540%_ _%g6853868543%_))
                                  '()
                                  _%L68356%_))))))
                (_%__kont8140281403%_
                 (lambda (_%L68161%_ _%L68163%_ _%L68164%_ _%L68165%_)
                   (cons (gx#datum->syntax '#f 'defmethod)
                         (cons (cons (gx#datum->syntax '#f '@method~)
                                     (cons _%L68164%_ (cons _%L68163%_ '())))
                               _%L68161%_)))))
            (let* ((_%g6797868187%_
                    (lambda ()
                      (let ((_%e6808468111%_
                             (gx#syntax-e _%__stx8139181392%_)))
                        (let ((_%tl6808668118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6808468111%_)))
                              (_%hd6808568115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6808468111%_))))
                          (if (gx#stx-pair? _%tl6808668118%_)
                              (let ((_%e6808768121%_
                                     (gx#syntax-e _%tl6808668118%_)))
                                (let ((_%tl6808968128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6808768121%_)))
                                      (_%hd6808868125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6808768121%_))))
                                  (if (gx#stx-pair? _%hd6808868125%_)
                                      (let ((_%e6809068131%_
                                             (gx#syntax-e _%hd6808868125%_)))
                                        (let ((_%tl6809268138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6809068131%_)))
                                              (_%hd6809168135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6809068131%_))))
                                          (if (gx#stx-pair? _%tl6809268138%_)
                                              (let ((_%e6809368141%_
                                                     (gx#syntax-e
                                                      _%tl6809268138%_)))
                                                (let ((_%tl6809568148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6809368141%_)))
                                                      (_%hd6809468145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6809368141%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6809568148%_)
                                                      (let ((_%e6809668151%_
                                                             (gx#syntax-e
                                                              _%tl6809568148%_)))
                                                        (let ((_%tl6809868158%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6809668151%_)))
                      (_%hd6809768155%_
                       (let () (declare (not safe)) (##car _%e6809668151%_))))
                  (if (gx#stx-null? _%tl6809868158%_)
                      (_%__kont8140281403%_
                       _%tl6808968128%_
                       _%hd6809768155%_
                       _%hd6809468145%_
                       _%hd6809168135%_)
                      (let () (declare (not safe)) (_%g6797968104%_)))))
              (let () (declare (not safe)) (_%g6797968104%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6797968104%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6797968104%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6797968104%_)))))))
                   (_%__match8152881529%_
                    (lambda (_%e6803168194%_
                             _%hd6803268198%_
                             _%tl6803368201%_
                             _%e6803468204%_
                             _%hd6803568208%_
                             _%tl6803668211%_
                             _%e6803768214%_
                             _%hd6803868218%_
                             _%tl6803968221%_
                             _%e6804068224%_
                             _%hd6804168228%_
                             _%tl6804268231%_
                             _%e6804368234%_
                             _%hd6804468238%_
                             _%tl6804568241%_
                             _%e6804668244%_
                             _%hd6804768248%_
                             _%tl6804868251%_
                             _%e6804968254%_
                             _%hd6805068258%_
                             _%tl6805168261%_
                             _%__splice8140081401%_
                             _%target6805268264%_
                             _%tl6805468267%_)
                      (letrec ((_%loop6805568270%_
                                (lambda (_%hd6805368274%_
                                         _%body6805968277%_
                                         _%args6806068279%_
                                         _%self6806168281%_)
                                  (if (gx#stx-pair? _%hd6805368274%_)
                                      (let ((_%e6805668284%_
                                             (gx#syntax-e _%hd6805368274%_)))
                                        (let ((_%lp-tl6805868291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6805668284%_)))
                                              (_%lp-hd6805768288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6805668284%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6805768288%_)
                                              (let ((_%e6806568294%_
                                                     (gx#syntax-e
                                                      _%lp-hd6805768288%_)))
                                                (let ((_%tl6806768301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6806568294%_)))
                                                      (_%hd6806668298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6806568294%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd6806668298%_)
                                                      (let ((_%e6806868304%_
                                                             (gx#syntax-e
                                                              _%hd6806668298%_)))
                                                        (let ((_%tl6807068311%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6806868304%_)))
                      (_%hd6806968308%_
                       (let () (declare (not safe)) (##car _%e6806868304%_))))
                  (if (gx#stx-pair/null? _%tl6806768301%_)
                      (let ((_g82727_
                             (gx#syntax-split-splice _%tl6806768301%_ '0)))
                        (begin
                          (let ((_g82728_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g82727_)
                                       (##vector-length _g82727_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g82728_ 2)))
                                (error "Context expects 2 values" _g82728_)))
                          (let ((_%target6807168314%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g82727_ 0)))
                                (_%tl6807368317%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g82727_ 1))))
                            (if (gx#stx-null? _%tl6807368317%_)
                                (letrec ((_%loop6807468320%_
                                          (lambda (_%hd6807268324%_
                                                   _%body6807868327%_)
                                            (if (gx#stx-pair? _%hd6807268324%_)
                                                (let ((_%e6807568330%_
                                                       (gx#syntax-e
                                                        _%hd6807268324%_)))
                                                  (let ((_%lp-hd6807668334%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6807568330%_)))
                                                        (_%lp-tl6807768337%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6807568330%_))))
                                                    (_%loop6807468320%_
                                                     _%lp-tl6807768337%_
                                                     (cons _%lp-hd6807668334%_
                                                           _%body6807868327%_))))
                                                (let ((_%body6807968340%_
                                                       (reverse _%body6807868327%_)))
                                                  (_%loop6805568270%_
                                                   _%lp-tl6805868291%_
                                                   (cons _%body6807968340%_
                                                         _%body6805968277%_)
                                                   (cons _%tl6807068311%_
                                                         _%args6806068279%_)
                                                   (cons _%hd6806968308%_
                                                         _%self6806168281%_)))))))
                                  (_%loop6807468320%_
                                   _%target6807168314%_
                                   '()))
                                (let ()
                                  (declare (not safe))
                                  (_%g6797868187%_))))))
                      (_%__kont8140281403%_
                       _%tl6803668211%_
                       _%hd6804468238%_
                       _%hd6804168228%_
                       _%hd6803868218%_))))
              (_%__kont8140281403%_
               _%tl6803668211%_
               _%hd6804468238%_
               _%hd6804168228%_
               _%hd6803868218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8140281403%_
                                               _%tl6803668211%_
                                               _%hd6804468238%_
                                               _%hd6804168228%_
                                               _%hd6803868218%_))))
                                      (let ((_%self6806468349%_
                                             (reverse _%self6806168281%_))
                                            (_%args6806368347%_
                                             (reverse _%args6806068279%_))
                                            (_%body6806268344%_
                                             (reverse _%body6805968277%_)))
                                        (let ((_%L68352%_ _%tl6804868251%_)
                                              (_%L68354%_ _%body6806268344%_)
                                              (_%L68355%_ _%args6806368347%_)
                                              (_%L68356%_ _%self6806468349%_)
                                              (_%L68357%_ _%hd6804468238%_)
                                              (_%L68358%_ _%hd6804168228%_)
                                              (_%L68359%_ _%hd6803868218%_))
                                          (if (and (gx#identifier-list?
                                                    (foldr (lambda (_%g6839068393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g6839168396%_)
                     (cons _%g6839068393%_ _%g6839168396%_))
                   '()
                   _%L68356%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#identifier? _%L68358%_))
                                              (_%__kont8139881399%_
                                               _%L68352%_
                                               _%L68354%_
                                               _%L68355%_
                                               _%L68356%_
                                               _%L68357%_
                                               _%L68358%_
                                               _%L68359%_)
                                              (_%__kont8140281403%_
                                               _%tl6803668211%_
                                               _%hd6804468238%_
                                               _%hd6804168228%_
                                               _%hd6803868218%_))))))))
                        (_%loop6805568270%_
                         _%target6805268264%_
                         '()
                         '()
                         '()))))
                   (_%__match8147281473%_
                    (lambda (_%e6798868553%_
                             _%hd6798968557%_
                             _%tl6799068560%_
                             _%e6799168563%_
                             _%hd6799268567%_
                             _%tl6799368570%_
                             _%e6799468573%_
                             _%hd6799568577%_
                             _%tl6799668580%_
                             _%e6799768583%_
                             _%hd6799868587%_
                             _%tl6799968590%_
                             _%e6800068593%_
                             _%hd6800168597%_
                             _%tl6800268600%_
                             _%e6800368603%_
                             _%hd6800468607%_
                             _%tl6800568610%_
                             _%e6800668613%_
                             _%hd6800768617%_
                             _%tl6800868620%_
                             _%e6800968623%_
                             _%hd6801068627%_
                             _%tl6801168630%_
                             _%e6801268633%_
                             _%hd6801368637%_
                             _%tl6801468640%_
                             _%__splice8139681397%_
                             _%target6801568643%_
                             _%tl6801768646%_)
                      (letrec ((_%loop6801868649%_
                                (lambda (_%hd6801668653%_ _%body6802268656%_)
                                  (if (gx#stx-pair? _%hd6801668653%_)
                                      (let ((_%e6801968659%_
                                             (gx#syntax-e _%hd6801668653%_)))
                                        (let ((_%lp-tl6802168666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6801968659%_)))
                                              (_%lp-hd6802068663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6801968659%_))))
                                          (_%loop6801868649%_
                                           _%lp-tl6802168666%_
                                           (cons _%lp-hd6802068663%_
                                                 _%body6802268656%_))))
                                      (let ((_%body6802368669%_
                                             (reverse _%body6802268656%_)))
                                        (let ((_%L68673%_ _%tl6800568610%_)
                                              (_%L68675%_ _%body6802368669%_)
                                              (_%L68676%_ _%tl6801468640%_)
                                              (_%L68677%_ _%hd6801368637%_)
                                              (_%L68678%_ _%hd6800168597%_)
                                              (_%L68679%_ _%hd6799868587%_)
                                              (_%L68680%_ _%hd6799568577%_))
                                          (if (and (gx#identifier? _%L68677%_)
                                                   (gx#identifier? _%L68679%_))
                                              (_%__kont8139481395%_
                                               _%L68673%_
                                               _%L68675%_
                                               _%L68676%_
                                               _%L68677%_
                                               _%L68678%_
                                               _%L68679%_
                                               _%L68680%_)
                                              (_%__kont8140281403%_
                                               _%tl6799368570%_
                                               _%hd6800168597%_
                                               _%hd6799868587%_
                                               _%hd6799568577%_))))))))
                        (_%loop6801868649%_ _%target6801568643%_ '())))))
              (if (gx#stx-pair? _%__stx8139181392%_)
                  (let ((_%e6798868553%_ (gx#syntax-e _%__stx8139181392%_)))
                    (let ((_%tl6799068560%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6798868553%_)))
                          (_%hd6798968557%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6798868553%_))))
                      (if (gx#stx-pair? _%tl6799068560%_)
                          (let ((_%e6799168563%_
                                 (gx#syntax-e _%tl6799068560%_)))
                            (let ((_%tl6799368570%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6799168563%_)))
                                  (_%hd6799268567%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6799168563%_))))
                              (if (gx#stx-pair? _%hd6799268567%_)
                                  (let ((_%e6799468573%_
                                         (gx#syntax-e _%hd6799268567%_)))
                                    (let ((_%tl6799668580%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6799468573%_)))
                                          (_%hd6799568577%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6799468573%_))))
                                      (if (gx#stx-pair? _%tl6799668580%_)
                                          (let ((_%e6799768583%_
                                                 (gx#syntax-e
                                                  _%tl6799668580%_)))
                                            (let ((_%tl6799968590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6799768583%_)))
                                                  (_%hd6799868587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6799768583%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6799968590%_)
                                                  (let ((_%e6800068593%_
                                                         (gx#syntax-e
                                                          _%tl6799968590%_)))
                                                    (let ((_%tl6800268600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6800068593%_)))
                                                          (_%hd6800168597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6800068593%_))))
                                                      (if (gx#stx-null?
                                                           _%tl6800268600%_)
                                                          (if (gx#stx-pair?
                                                               _%tl6799368570%_)
                                                              (let ((_%e6800368603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl6799368570%_)))
                        (let ((_%tl6800568610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6800368603%_)))
                              (_%hd6800468607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6800368603%_))))
                          (if (gx#stx-pair? _%hd6800468607%_)
                              (let ((_%e6800668613%_
                                     (gx#syntax-e _%hd6800468607%_)))
                                (let ((_%tl6800868620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6800668613%_)))
                                      (_%hd6800768617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6800668613%_))))
                                  (if (gx#identifier? _%hd6800768617%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g82729_|
                                           _%hd6800768617%_)
                                          (if (gx#stx-pair? _%tl6800868620%_)
                                              (let ((_%e6800968623%_
                                                     (gx#syntax-e
                                                      _%tl6800868620%_)))
                                                (let ((_%tl6801168630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6800968623%_)))
                                                      (_%hd6801068627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6800968623%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd6801068627%_)
                                                      (let ((_%e6801268633%_
                                                             (gx#syntax-e
                                                              _%hd6801068627%_)))
                                                        (let ((_%tl6801468640%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6801268633%_)))
                      (_%hd6801368637%_
                       (let () (declare (not safe)) (##car _%e6801268633%_))))
                  (if (gx#stx-pair/null? _%tl6801168630%_)
                      (let ((_%__splice8139681397%_
                             (gx#syntax-split-splice _%tl6801168630%_ '0)))
                        (let ((_%tl6801768646%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8139681397%_ '1)))
                              (_%target6801568643%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8139681397%_ '0))))
                          (if (gx#stx-null? _%tl6801768646%_)
                              (_%__match8147281473%_
                               _%e6798868553%_
                               _%hd6798968557%_
                               _%tl6799068560%_
                               _%e6799168563%_
                               _%hd6799268567%_
                               _%tl6799368570%_
                               _%e6799468573%_
                               _%hd6799568577%_
                               _%tl6799668580%_
                               _%e6799768583%_
                               _%hd6799868587%_
                               _%tl6799968590%_
                               _%e6800068593%_
                               _%hd6800168597%_
                               _%tl6800268600%_
                               _%e6800368603%_
                               _%hd6800468607%_
                               _%tl6800568610%_
                               _%e6800668613%_
                               _%hd6800768617%_
                               _%tl6800868620%_
                               _%e6800968623%_
                               _%hd6801068627%_
                               _%tl6801168630%_
                               _%e6801268633%_
                               _%hd6801368637%_
                               _%tl6801468640%_
                               _%__splice8139681397%_
                               _%target6801568643%_
                               _%tl6801768646%_)
                              (_%__kont8140281403%_
                               _%tl6799368570%_
                               _%hd6800168597%_
                               _%hd6799868587%_
                               _%hd6799568577%_))))
                      (_%__kont8140281403%_
                       _%tl6799368570%_
                       _%hd6800168597%_
                       _%hd6799868587%_
                       _%hd6799568577%_))))
              (_%__kont8140281403%_
               _%tl6799368570%_
               _%hd6800168597%_
               _%hd6799868587%_
               _%hd6799568577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8140281403%_
                                               _%tl6799368570%_
                                               _%hd6800168597%_
                                               _%hd6799868587%_
                                               _%hd6799568577%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypedDefinitions[1]#_g82730_|
                                               _%hd6800768617%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl6800868620%_)
                                                  (let ((_%__splice8140081401%_
                                                         (gx#syntax-split-splice
                                                          _%tl6800868620%_
                                                          '0)))
                                                    (let ((_%tl6805468267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8140081401%_
                                                              '1)))
                                                          (_%target6805268264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8140081401%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6805468267%_)
                                                          (_%__match8152881529%_
                                                           _%e6798868553%_
                                                           _%hd6798968557%_
                                                           _%tl6799068560%_
                                                           _%e6799168563%_
                                                           _%hd6799268567%_
                                                           _%tl6799368570%_
                                                           _%e6799468573%_
                                                           _%hd6799568577%_
                                                           _%tl6799668580%_
                                                           _%e6799768583%_
                                                           _%hd6799868587%_
                                                           _%tl6799968590%_
                                                           _%e6800068593%_
                                                           _%hd6800168597%_
                                                           _%tl6800268600%_
                                                           _%e6800368603%_
                                                           _%hd6800468607%_
                                                           _%tl6800568610%_
                                                           _%e6800668613%_
                                                           _%hd6800768617%_
                                                           _%tl6800868620%_
                                                           _%__splice8140081401%_
                                                           _%target6805268264%_
                                                           _%tl6805468267%_)
                                                          (_%__kont8140281403%_
                                                           _%tl6799368570%_
                                                           _%hd6800168597%_
                                                           _%hd6799868587%_
                                                           _%hd6799568577%_))))
                                                  (_%__kont8140281403%_
                                                   _%tl6799368570%_
                                                   _%hd6800168597%_
                                                   _%hd6799868587%_
                                                   _%hd6799568577%_))
                                              (_%__kont8140281403%_
                                               _%tl6799368570%_
                                               _%hd6800168597%_
                                               _%hd6799868587%_
                                               _%hd6799568577%_)))
                                      (_%__kont8140281403%_
                                       _%tl6799368570%_
                                       _%hd6800168597%_
                                       _%hd6799868587%_
                                       _%hd6799568577%_))))
                              (_%__kont8140281403%_
                               _%tl6799368570%_
                               _%hd6800168597%_
                               _%hd6799868587%_
                               _%hd6799568577%_))))
                      (_%__kont8140281403%_
                       _%tl6799368570%_
                       _%hd6800168597%_
                       _%hd6799868587%_
                       _%hd6799568577%_))
                  (let () (declare (not safe)) (_%g6797968104%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6797968104%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6797968104%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6797968104%_)))))
                          (let () (declare (not safe)) (_%g6797968104%_)))))
                  (let () (declare (not safe)) (_%g6797968104%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-receiver|
      (lambda (_%stx68797%_)
        (let* ((_%g6880068818%_
                (lambda (_%g6880168814%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6880168814%_)))
               (_%g6879968904%_
                (lambda (_%g6880168822%_)
                  (if (gx#stx-pair? _%g6880168822%_)
                      (let ((_%e6880468825%_ (gx#syntax-e _%g6880168822%_)))
                        (let ((_%hd6880568829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6880468825%_)))
                              (_%tl6880668832%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6880468825%_))))
                          (if (gx#stx-pair? _%tl6880668832%_)
                              (let ((_%e6880768835%_
                                     (gx#syntax-e _%tl6880668832%_)))
                                (let ((_%hd6880868839%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6880768835%_)))
                                      (_%tl6880968842%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6880768835%_))))
                                  (if (gx#stx-pair? _%tl6880968842%_)
                                      (let ((_%e6881068845%_
                                             (gx#syntax-e _%tl6880968842%_)))
                                        (let ((_%hd6881168849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6881068845%_)))
                                              (_%tl6881268852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6881068845%_))))
                                          (if (gx#stx-null? _%tl6881268852%_)
                                              ((lambda (_%L68855%_ _%L68857%_)
                                                 (let* ((_%g6887368881%_
                                                         (lambda (_%g6887468877%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g6887468877%_)))
                                                        (_%g6887268900%_
                                                         (lambda (_%g6887468885%_)
                                                           ((lambda (_%L68888%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@receiver)
                                        (cons _%L68888%_ '()))
                                  (cons _%L68855%_ '()))))
                    _%g6887468885%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g6887268900%_
                                                    (gx#core-quote-syntax
                                                     _%L68857%_))))
                                               _%hd6881168849%_
                                               _%hd6880868839%_)
                                              (_%g6880068818%_
                                               _%g6880168822%_))))
                                      (_%g6880068818%_ _%g6880168822%_))))
                              (_%g6880068818%_ _%g6880168822%_))))
                      (_%g6880068818%_ _%g6880168822%_)))))
          (_%g6879968904%_ _%stx68797%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#let/c|
      (lambda (_%stx68908%_)
        (let* ((_%__stx8157181572%_ _%stx68908%_)
               (_%g6891369009%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8157181572%_))))
          (let ((_%__kont8157481575%_
                 (lambda (_%L69356%_
                          _%L69358%_
                          _%L69359%_
                          _%L69360%_
                          _%L69361%_)
                   (let* ((_%g6939169399%_
                           (lambda (_%g6939269395%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6939269395%_)))
                          (_%g6939069426%_
                           (lambda (_%g6939269403%_)
                             ((lambda (_%L69406%_)
                                (cons (cons (gx#datum->syntax '#f 'letrec)
                                            (cons (cons (cons _%L69361%_
                                                              (cons _%L69406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L69361%_ '())))
                                      (foldr (lambda (_%g6941769420%_
                                                      _%g6941869423%_)
                                               (cons _%g6941769420%_
                                                     _%g6941869423%_))
                                             '()
                                             _%L69359%_)))
                              _%g6939269403%_))))
                     (_%g6939069426%_
                      (gx#stx-wrap-source
                       (cons (gx#datum->syntax '#f 'lambda/c)
                             (cons (foldr (lambda (_%g6943169434%_
                                                   _%g6943269437%_)
                                            (cons _%g6943169434%_
                                                  _%g6943269437%_))
                                          '()
                                          _%L69360%_)
                                   (cons (gx#datum->syntax '#f '=>)
                                         (cons _%L69358%_
                                               (foldr (lambda (_%g6942969440%_
                                                               _%g6943069443%_)
                                                        (cons _%g6942969440%_
                                                              _%g6943069443%_))
                                                      '()
                                                      _%L69356%_)))))
                       (gx#stx-source _%stx68908%_))))))
                (_%__kont8158081581%_
                 (lambda (_%L69159%_ _%L69161%_ _%L69162%_ _%L69163%_)
                   (cons (gx#datum->syntax '#f 'let/c)
                         (cons _%L69163%_
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _%L69161%_
                                        _%L69162%_)
                                       (foldr (lambda (_%g6919769201%_
                                                       _%g6919869204%_
                                                       _%g6919969206%_)
                                                (cons (cons _%g6919869204%_
                                                            (cons _%g6919769201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g6919969206%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L69161%_
                                              _%L69162%_))
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6919569209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6919669212%_)
                  (cons _%g6919569209%_ _%g6919669212%_))
                '()
                _%L69159%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                (_%__kont8158681587%_
                 (lambda (_%L69026%_)
                   (cons (gx#datum->syntax '#f 'let) _%L69026%_))))
            (let* ((_%__match8164081641%_
                    (lambda (_%e6896569045%_
                             _%hd6896669049%_
                             _%tl6896769052%_
                             _%e6896869055%_
                             _%hd6896969059%_
                             _%tl6897069062%_
                             _%e6897169065%_
                             _%hd6897269069%_
                             _%tl6897369072%_
                             _%__splice8158281583%_
                             _%target6897469075%_
                             _%tl6897669078%_)
                      (letrec ((_%loop6897769081%_
                                (lambda (_%hd6897569085%_
                                         _%init6898169088%_
                                         _%var6898269090%_)
                                  (if (gx#stx-pair? _%hd6897569085%_)
                                      (let ((_%e6897869093%_
                                             (gx#syntax-e _%hd6897569085%_)))
                                        (let ((_%lp-tl6898069100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6897869093%_)))
                                              (_%lp-hd6897969097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6897869093%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6897969097%_)
                                              (let ((_%e6899469103%_
                                                     (gx#syntax-e
                                                      _%lp-hd6897969097%_)))
                                                (let ((_%tl6899669110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6899469103%_)))
                                                      (_%hd6899569107%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6899469103%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6899669110%_)
                                                      (let ((_%e6899769113%_
                                                             (gx#syntax-e
                                                              _%tl6899669110%_)))
                                                        (let ((_%tl6899969120%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6899769113%_)))
                      (_%hd6899869117%_
                       (let () (declare (not safe)) (##car _%e6899769113%_))))
                  (if (gx#stx-null? _%tl6899969120%_)
                      (_%loop6897769081%_
                       _%lp-tl6898069100%_
                       (cons _%hd6899869117%_ _%init6898169088%_)
                       (cons _%hd6899569107%_ _%var6898269090%_))
                      (_%__kont8158681587%_ _%tl6896769052%_))))
              (_%__kont8158681587%_ _%tl6896769052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8158681587%_
                                               _%tl6896769052%_))))
                                      (let ((_%var6898469126%_
                                             (reverse _%var6898269090%_))
                                            (_%init6898369123%_
                                             (reverse _%init6898169088%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl6897369072%_)
                                            (let ((_%__splice8158481585%_
                                                   (gx#syntax-split-splice
                                                    _%tl6897369072%_
                                                    '0)))
                                              (let ((_%tl6898769132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8158481585%_
                                                        '1)))
                                                    (_%target6898569129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8158481585%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl6898769132%_)
                                                    (letrec ((_%loop6898869135%_
                                                              (lambda (_%hd6898669139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body6899269142%_)
                        (if (gx#stx-pair? _%hd6898669139%_)
                            (let ((_%e6898969145%_
                                   (gx#syntax-e _%hd6898669139%_)))
                              (let ((_%lp-tl6899169152%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6898969145%_)))
                                    (_%lp-hd6899069149%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6898969145%_))))
                                (_%loop6898869135%_
                                 _%lp-tl6899169152%_
                                 (cons _%lp-hd6899069149%_
                                       _%body6899269142%_))))
                            (let ((_%body6899369155%_
                                   (reverse _%body6899269142%_)))
                              (let ((_%L69159%_ _%body6899369155%_)
                                    (_%L69161%_ _%init6898369123%_)
                                    (_%L69162%_ _%var6898469126%_)
                                    (_%L69163%_ _%hd6896969059%_))
                                (if (and (gx#identifier? _%L69163%_)
                                         (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                          (foldr (lambda (_%g6918769190%_
                                                          _%g6918869193%_)
                                                   (cons _%g6918769190%_
                                                         _%g6918869193%_))
                                                 '()
                                                 _%L69162%_)))
                                    (_%__kont8158081581%_
                                     _%L69159%_
                                     _%L69161%_
                                     _%L69162%_
                                     _%L69163%_)
                                    (_%__kont8158681587%_
                                     _%tl6896769052%_))))))))
              (_%loop6898869135%_ _%target6898569129%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8158681587%_
                                                     _%tl6896769052%_))))
                                            (_%__kont8158681587%_
                                             _%tl6896769052%_)))))))
                        (_%loop6897769081%_ _%target6897469075%_ '() '()))))
                   (_%__match8161481615%_
                    (lambda (_%e6892069222%_
                             _%hd6892169226%_
                             _%tl6892269229%_
                             _%e6892369232%_
                             _%hd6892469236%_
                             _%tl6892569239%_
                             _%e6892669242%_
                             _%hd6892769246%_
                             _%tl6892869249%_
                             _%__splice8157681577%_
                             _%target6892969252%_
                             _%tl6893169255%_)
                      (letrec ((_%loop6893269258%_
                                (lambda (_%hd6893069262%_
                                         _%init6893669265%_
                                         _%var6893769267%_)
                                  (if (gx#stx-pair? _%hd6893069262%_)
                                      (let ((_%e6893369270%_
                                             (gx#syntax-e _%hd6893069262%_)))
                                        (let ((_%lp-tl6893569277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6893369270%_)))
                                              (_%lp-hd6893469274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6893369270%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6893469274%_)
                                              (let ((_%e6895569280%_
                                                     (gx#syntax-e
                                                      _%lp-hd6893469274%_)))
                                                (let ((_%tl6895769287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6895569280%_)))
                                                      (_%hd6895669284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6895569280%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6895769287%_)
                                                      (let ((_%e6895869290%_
                                                             (gx#syntax-e
                                                              _%tl6895769287%_)))
                                                        (let ((_%tl6896069297%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6895869290%_)))
                      (_%hd6895969294%_
                       (let () (declare (not safe)) (##car _%e6895869290%_))))
                  (if (gx#stx-null? _%tl6896069297%_)
                      (_%loop6893269258%_
                       _%lp-tl6893569277%_
                       (cons _%hd6895969294%_ _%init6893669265%_)
                       (cons _%hd6895669284%_ _%var6893769267%_))
                      (_%__match8164081641%_
                       _%e6892069222%_
                       _%hd6892169226%_
                       _%tl6892269229%_
                       _%e6892369232%_
                       _%hd6892469236%_
                       _%tl6892569239%_
                       _%e6892669242%_
                       _%hd6892769246%_
                       _%tl6892869249%_
                       _%__splice8157681577%_
                       _%target6892969252%_
                       _%tl6893169255%_))))
              (_%__match8164081641%_
               _%e6892069222%_
               _%hd6892169226%_
               _%tl6892269229%_
               _%e6892369232%_
               _%hd6892469236%_
               _%tl6892569239%_
               _%e6892669242%_
               _%hd6892769246%_
               _%tl6892869249%_
               _%__splice8157681577%_
               _%target6892969252%_
               _%tl6893169255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match8164081641%_
                                               _%e6892069222%_
                                               _%hd6892169226%_
                                               _%tl6892269229%_
                                               _%e6892369232%_
                                               _%hd6892469236%_
                                               _%tl6892569239%_
                                               _%e6892669242%_
                                               _%hd6892769246%_
                                               _%tl6892869249%_
                                               _%__splice8157681577%_
                                               _%target6892969252%_
                                               _%tl6893169255%_))))
                                      (let ((_%var6893969303%_
                                             (reverse _%var6893769267%_))
                                            (_%init6893869300%_
                                             (reverse _%init6893669265%_)))
                                        (if (gx#stx-pair? _%tl6892869249%_)
                                            (let ((_%e6894069306%_
                                                   (gx#syntax-e
                                                    _%tl6892869249%_)))
                                              (let ((_%tl6894269313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6894069306%_)))
                                                    (_%hd6894169310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6894069306%_))))
                                                (if (gx#identifier?
                                                     _%hd6894169310%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g82731_|
                                                         _%hd6894169310%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6894269313%_)
                                                            (let ((_%e6894369316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6894269313%_)))
                      (let ((_%tl6894569323%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6894369316%_)))
                            (_%hd6894469320%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6894369316%_))))
                        (if (gx#stx-pair/null? _%tl6894569323%_)
                            (let ((_%__splice8157881579%_
                                   (gx#syntax-split-splice
                                    _%tl6894569323%_
                                    '0)))
                              (let ((_%tl6894869329%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8157881579%_
                                        '1)))
                                    (_%target6894669326%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8157881579%_
                                        '0))))
                                (if (gx#stx-null? _%tl6894869329%_)
                                    (letrec ((_%loop6894969332%_
                                              (lambda (_%hd6894769336%_
                                                       _%body6895369339%_)
                                                (if (gx#stx-pair?
                                                     _%hd6894769336%_)
                                                    (let ((_%e6895069342%_
                                                           (gx#syntax-e
                                                            _%hd6894769336%_)))
                                                      (let ((_%lp-tl6895269349%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6895069342%_)))
                    (_%lp-hd6895169346%_
                     (let () (declare (not safe)) (##car _%e6895069342%_))))
                (_%loop6894969332%_
                 _%lp-tl6895269349%_
                 (cons _%lp-hd6895169346%_ _%body6895369339%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body6895469352%_
                                                           (reverse _%body6895369339%_)))
                                                      (let ((_%L69356%_
                                                             _%body6895469352%_)
                                                            (_%L69358%_
                                                             _%hd6894469320%_)
                                                            (_%L69359%_
                                                             _%init6893869300%_)
                                                            (_%L69360%_
                                                             _%var6893969303%_)
                                                            (_%L69361%_
                                                             _%hd6892469236%_))
                                                        (if (gx#identifier?
                                                             _%L69361%_)
                                                            (_%__kont8157481575%_
                                                             _%L69356%_
                                                             _%L69358%_
                                                             _%L69359%_
                                                             _%L69360%_
                                                             _%L69361%_)
                                                            (_%__match8164081641%_
                                                             _%e6892069222%_
                                                             _%hd6892169226%_
                                                             _%tl6892269229%_
                                                             _%e6892369232%_
                                                             _%hd6892469236%_
                                                             _%tl6892569239%_
                                                             _%e6892669242%_
                                                             _%hd6892769246%_
                                                             _%tl6892869249%_
                                                             _%__splice8157681577%_
                                                             _%target6892969252%_
                                                             _%tl6893169255%_))))))))
                                      (_%loop6894969332%_
                                       _%target6894669326%_
                                       '()))
                                    (_%__match8164081641%_
                                     _%e6892069222%_
                                     _%hd6892169226%_
                                     _%tl6892269229%_
                                     _%e6892369232%_
                                     _%hd6892469236%_
                                     _%tl6892569239%_
                                     _%e6892669242%_
                                     _%hd6892769246%_
                                     _%tl6892869249%_
                                     _%__splice8157681577%_
                                     _%target6892969252%_
                                     _%tl6893169255%_))))
                            (_%__match8164081641%_
                             _%e6892069222%_
                             _%hd6892169226%_
                             _%tl6892269229%_
                             _%e6892369232%_
                             _%hd6892469236%_
                             _%tl6892569239%_
                             _%e6892669242%_
                             _%hd6892769246%_
                             _%tl6892869249%_
                             _%__splice8157681577%_
                             _%target6892969252%_
                             _%tl6893169255%_))))
                    (_%__match8164081641%_
                     _%e6892069222%_
                     _%hd6892169226%_
                     _%tl6892269229%_
                     _%e6892369232%_
                     _%hd6892469236%_
                     _%tl6892569239%_
                     _%e6892669242%_
                     _%hd6892769246%_
                     _%tl6892869249%_
                     _%__splice8157681577%_
                     _%target6892969252%_
                     _%tl6893169255%_))
                (_%__match8164081641%_
                 _%e6892069222%_
                 _%hd6892169226%_
                 _%tl6892269229%_
                 _%e6892369232%_
                 _%hd6892469236%_
                 _%tl6892569239%_
                 _%e6892669242%_
                 _%hd6892769246%_
                 _%tl6892869249%_
                 _%__splice8157681577%_
                 _%target6892969252%_
                 _%tl6893169255%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match8164081641%_
                                                     _%e6892069222%_
                                                     _%hd6892169226%_
                                                     _%tl6892269229%_
                                                     _%e6892369232%_
                                                     _%hd6892469236%_
                                                     _%tl6892569239%_
                                                     _%e6892669242%_
                                                     _%hd6892769246%_
                                                     _%tl6892869249%_
                                                     _%__splice8157681577%_
                                                     _%target6892969252%_
                                                     _%tl6893169255%_))))
                                            (_%__match8164081641%_
                                             _%e6892069222%_
                                             _%hd6892169226%_
                                             _%tl6892269229%_
                                             _%e6892369232%_
                                             _%hd6892469236%_
                                             _%tl6892569239%_
                                             _%e6892669242%_
                                             _%hd6892769246%_
                                             _%tl6892869249%_
                                             _%__splice8157681577%_
                                             _%target6892969252%_
                                             _%tl6893169255%_)))))))
                        (_%loop6893269258%_ _%target6892969252%_ '() '())))))
              (if (gx#stx-pair? _%__stx8157181572%_)
                  (let ((_%e6892069222%_ (gx#syntax-e _%__stx8157181572%_)))
                    (let ((_%tl6892269229%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6892069222%_)))
                          (_%hd6892169226%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6892069222%_))))
                      (if (gx#stx-pair? _%tl6892269229%_)
                          (let ((_%e6892369232%_
                                 (gx#syntax-e _%tl6892269229%_)))
                            (let ((_%tl6892569239%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6892369232%_)))
                                  (_%hd6892469236%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6892369232%_))))
                              (if (gx#stx-pair? _%tl6892569239%_)
                                  (let ((_%e6892669242%_
                                         (gx#syntax-e _%tl6892569239%_)))
                                    (let ((_%tl6892869249%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6892669242%_)))
                                          (_%hd6892769246%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6892669242%_))))
                                      (if (gx#stx-pair/null? _%hd6892769246%_)
                                          (let ((_%__splice8157681577%_
                                                 (gx#syntax-split-splice
                                                  _%hd6892769246%_
                                                  '0)))
                                            (let ((_%tl6893169255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8157681577%_
                                                      '1)))
                                                  (_%target6892969252%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8157681577%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6893169255%_)
                                                  (_%__match8161481615%_
                                                   _%e6892069222%_
                                                   _%hd6892169226%_
                                                   _%tl6892269229%_
                                                   _%e6892369232%_
                                                   _%hd6892469236%_
                                                   _%tl6892569239%_
                                                   _%e6892669242%_
                                                   _%hd6892769246%_
                                                   _%tl6892869249%_
                                                   _%__splice8157681577%_
                                                   _%target6892969252%_
                                                   _%tl6893169255%_)
                                                  (_%__kont8158681587%_
                                                   _%tl6892269229%_))))
                                          (_%__kont8158681587%_
                                           _%tl6892269229%_))))
                                  (_%__kont8158681587%_ _%tl6892269229%_))))
                          (_%__kont8158681587%_ _%tl6892269229%_))))
                  (let () (declare (not safe)) (_%g6891369009%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defclass/c|
      (lambda (_%stx69454%_)
        (letrec ((_%generate69457%_
                  (lambda (_%hd76628%_ _%slots76630%_ _%body76631%_)
                    (let* ((_%__stx8164981650%_ _%hd76628%_)
                           (_%g7663576657%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8164981650%_))))
                      (let ((_%__kont8165281653%_
                             (lambda (_%L76733%_ _%L76735%_)
                               (_%generate-defclass69478%_
                                _%L76735%_
                                (foldr (lambda (_%g7675776760%_
                                                _%g7675876763%_)
                                         (cons _%g7675776760%_
                                               _%g7675876763%_))
                                       '()
                                       _%L76733%_)
                                _%slots76630%_
                                _%body76631%_)))
                            (_%__kont8165681657%_
                             (lambda (_%L76675%_)
                               (_%generate-defclass69478%_
                                _%L76675%_
                                '()
                                _%slots76630%_
                                _%body76631%_)))
                            (_%__kont8165881659%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad class head"
                                _%stx69454%_
                                _%hd76628%_))))
                        (let* ((_%g7663376686%_
                                (lambda ()
                                  (let ((_%L76675%_ _%__stx8164981650%_))
                                    (if (gx#identifier? _%L76675%_)
                                        (_%__kont8165681657%_ _%L76675%_)
                                        (_%__kont8165881659%_)))))
                               (_%__match8167481675%_
                                (lambda (_%e7663976693%_
                                         _%hd7664076697%_
                                         _%tl7664176700%_
                                         _%__splice8165481655%_
                                         _%target7664276703%_
                                         _%tl7664476706%_)
                                  (letrec ((_%loop7664576709%_
                                            (lambda (_%hd7664376713%_
                                                     _%super7664976716%_)
                                              (if (gx#stx-pair?
                                                   _%hd7664376713%_)
                                                  (let ((_%e7664676719%_
                                                         (gx#syntax-e
                                                          _%hd7664376713%_)))
                                                    (let ((_%lp-tl7664876726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7664676719%_)))
                                                          (_%lp-hd7664776723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7664676719%_))))
                                                      (_%loop7664576709%_
                                                       _%lp-tl7664876726%_
                                                       (cons _%lp-hd7664776723%_
                                                             _%super7664976716%_))))
                                                  (let ((_%super7665076729%_
                                                         (reverse _%super7664976716%_)))
                                                    (let ((_%L76733%_
                                                           _%super7665076729%_)
                                                          (_%L76735%_
                                                           _%hd7664076697%_))
                                                      (if (and (gx#identifier?
                                                                _%L76735%_)
                                                               (andmap gerbil/core/mop~MOP-2#syntax-local-class-type-info?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr (lambda (_%g7674976752%_ _%g7675076755%_)
                                        (cons _%g7674976752%_ _%g7675076755%_))
                                      '()
                                      _%L76733%_)))
                  (_%__kont8165281653%_ _%L76733%_ _%L76735%_)
                  (let () (declare (not safe)) (_%g7663376686%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop7664576709%_
                                     _%target7664276703%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8164981650%_)
                              (let ((_%e7663976693%_
                                     (gx#syntax-e _%__stx8164981650%_)))
                                (let ((_%tl7664176700%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7663976693%_)))
                                      (_%hd7664076697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7663976693%_))))
                                  (if (gx#stx-pair/null? _%tl7664176700%_)
                                      (let ((_%__splice8165481655%_
                                             (gx#syntax-split-splice
                                              _%tl7664176700%_
                                              '0)))
                                        (let ((_%tl7664476706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8165481655%_
                                                  '1)))
                                              (_%target7664276703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8165481655%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7664476706%_)
                                              (_%__match8167481675%_
                                               _%e7663976693%_
                                               _%hd7664076697%_
                                               _%tl7664176700%_
                                               _%__splice8165481655%_
                                               _%target7664276703%_
                                               _%tl7664476706%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7663376686%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7663376686%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g7663376686%_))))))))
                 (_%check-typedef-body!69459%_
                  (lambda (_%body76619%_)
                    (letrec ((_%body-opt?76622%_
                              (lambda (_%key76625%_)
                                (let ((__tmp82732 (gx#stx-e _%key76625%_)))
                                  (declare (not safe))
                                  (##memq __tmp82732
                                          '(id:
                                            struct:
                                            name:
                                            constructor:
                                            transparent:
                                            final:
                                            print:
                                            equal:
                                            metaclass:))))))
                      (if (gx#stx-plist? _%body76619%_ _%body-opt?76622%_)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"invalid defclass body"
                           _%stx69454%_
                           _%body76619%_)))))
                 (_%slot-name69460%_
                  (lambda (_%slot-spec76616%_)
                    (gx#stx-e
                     (if (gx#identifier? _%slot-spec76616%_)
                         _%slot-spec76616%_
                         (gx#stx-car _%slot-spec76616%_)))))
                 (_%slot-contract69461%_
                  (lambda (_%slot-spec76497%_)
                    (let* ((_%__stx8167781678%_ _%slot-spec76497%_)
                           (_%g7650276523%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8167781678%_))))
                      (let ((_%__kont8168081681%_ (lambda (_%L76603%_) '#f))
                            (_%__kont8168281683%_
                             (lambda (_%L76581%_ _%L76583%_) '#f))
                            (_%__kont8168481685%_
                             (lambda (_%L76540%_ _%L76542%_) _%L76540%_)))
                        (let* ((_%g7650076596%_
                                (lambda ()
                                  (if (gx#stx-pair? _%__stx8167781678%_)
                                      (let ((_%e7650776561%_
                                             (gx#syntax-e
                                              _%__stx8167781678%_)))
                                        (let ((_%tl7650976568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7650776561%_)))
                                              (_%hd7650876565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7650776561%_))))
                                          (if (gx#stx-pair? _%tl7650976568%_)
                                              (let ((_%e7651076571%_
                                                     (gx#syntax-e
                                                      _%tl7650976568%_)))
                                                (let ((_%tl7651276578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e7651076571%_)))
                                                      (_%hd7651176575%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e7651076571%_))))
                                                  (if (gx#stx-null?
                                                       _%tl7651276578%_)
                                                      (_%__kont8168281683%_
                                                       _%hd7651176575%_
                                                       _%hd7650876565%_)
                                                      (_%__kont8168481685%_
                                                       _%tl7650976568%_
                                                       _%hd7650876565%_))))
                                              (_%__kont8168481685%_
                                               _%tl7650976568%_
                                               _%hd7650876565%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7650276523%_)))))
                               (_%L76603%_ _%__stx8167781678%_))
                          (if (gx#identifier? _%L76603%_)
                              (_%__kont8168081681%_ _%L76603%_)
                              (let ()
                                (declare (not safe))
                                (_%g7650076596%_))))))))
                 (_%slot-contract-normalize69462%_
                  (lambda (_%slot-spec76486%_)
                    (let ((_%contract7648876490%_
                           (_%slot-contract69461%_ _%slot-spec76486%_)))
                      (if _%contract7648876490%_
                          (let ((_%contract76494%_ _%contract7648876490%_))
                            (_%contract-normalize69463%_ _%contract76494%_))
                          '#f))))
                 (_%contract-normalize69463%_
                  (lambda (_%contract76231%_)
                    (let* ((_%__stx8170981710%_ _%contract76231%_)
                           (_%g7623776281%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8170981710%_))))
                      (let ((_%__kont8171281713%_
                             (lambda (_%L76457%_)
                               (_%contract-normalize69463%_
                                (foldr (lambda (_%g7647376476%_
                                                _%g7647476479%_)
                                         (cons _%g7647376476%_
                                               _%g7647476479%_))
                                       '()
                                       _%L76457%_))))
                            (_%__kont8171681717%_
                             (lambda (_%L76381%_ _%L76383%_)
                               (cons (gx#datum->syntax '#f ':~)
                                     (cons (cons (gx#datum->syntax '#f '?)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'or)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'not)
                           (cons _%L76383%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (gx#datum->syntax '#f ':?)
                                                 (cons _%L76381%_ '()))))))
                            (_%__kont8171881719%_ (lambda (_%L76319%_) '#f))
                            (_%__kont8172081721%_
                             (lambda () _%contract76231%_)))
                        (let* ((_%g7623476400%_
                                (lambda ()
                                  (if (gx#stx-pair? _%__stx8170981710%_)
                                      (let ((_%e7625776341%_
                                             (gx#syntax-e
                                              _%__stx8170981710%_)))
                                        (let ((_%tl7625976348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7625776341%_)))
                                              (_%hd7625876345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7625776341%_))))
                                          (if (gx#identifier? _%hd7625876345%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g82733_|
                                                   _%hd7625876345%_)
                                                  (if (gx#stx-pair?
                                                       _%tl7625976348%_)
                                                      (let ((_%e7626076351%_
                                                             (gx#syntax-e
                                                              _%tl7625976348%_)))
                                                        (let ((_%tl7626276358%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e7626076351%_)))
                      (_%hd7626176355%_
                       (let () (declare (not safe)) (##car _%e7626076351%_))))
                  (if (gx#stx-pair? _%tl7626276358%_)
                      (let ((_%e7626376361%_ (gx#syntax-e _%tl7626276358%_)))
                        (let ((_%tl7626576368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7626376361%_)))
                              (_%hd7626476365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7626376361%_))))
                          (if (gx#identifier? _%hd7626476365%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~TypedDefinitions[1]#_g82734_|
                                   _%hd7626476365%_)
                                  (if (gx#stx-pair? _%tl7626576368%_)
                                      (let ((_%e7626676371%_
                                             (gx#syntax-e _%tl7626576368%_)))
                                        (let ((_%tl7626876378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7626676371%_)))
                                              (_%hd7626776375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7626676371%_))))
                                          (if (gx#stx-null? _%tl7626876378%_)
                                              (_%__kont8171681717%_
                                               _%hd7626776375%_
                                               _%hd7626176355%_)
                                              (_%__kont8172081721%_))))
                                      (_%__kont8172081721%_))
                                  (_%__kont8172081721%_))
                              (_%__kont8172081721%_))))
                      (_%__kont8172081721%_))))
              (_%__kont8172081721%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g82735_|
                                                       _%hd7625876345%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7625976348%_)
                                                          (let ((_%e7627376309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7625976348%_)))
                    (let ((_%tl7627576316%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7627376309%_)))
                          (_%hd7627476313%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7627376309%_))))
                      (if (gx#stx-null? _%tl7627576316%_)
                          (_%__kont8171881719%_ _%hd7627476313%_)
                          (_%__kont8172081721%_))))
                  (_%__kont8172081721%_))
              (_%__kont8172081721%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8172081721%_))))
                                      (_%__kont8172081721%_))))
                               (_%__match8174881749%_
                                (lambda (_%__splice8171481715%_
                                         _%target7624076407%_
                                         _%tl7624276410%_
                                         _%e7624976413%_
                                         _%hd7625076417%_
                                         _%tl7625176420%_
                                         _%e7625276423%_
                                         _%hd7625376427%_
                                         _%tl7625476430%_)
                                  (letrec ((_%loop7624376433%_
                                            (lambda (_%hd7624176437%_
                                                     _%pre7624776440%_)
                                              (if (gx#stx-pair?
                                                   _%hd7624176437%_)
                                                  (let ((_%e7624476443%_
                                                         (gx#syntax-e
                                                          _%hd7624176437%_)))
                                                    (let ((_%lp-tl7624676450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7624476443%_)))
                                                          (_%lp-hd7624576447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7624476443%_))))
                                                      (_%loop7624376433%_
                                                       _%lp-tl7624676450%_
                                                       (cons _%lp-hd7624576447%_
                                                             _%pre7624776440%_))))
                                                  (let ((_%pre7624876453%_
                                                         (reverse _%pre7624776440%_)))
                                                    (_%__kont8171281713%_
                                                     _%pre7624876453%_))))))
                                    (_%loop7624376433%_
                                     _%target7624076407%_
                                     '())))))
                          (if (gx#stx-pair/null? _%__stx8170981710%_)
                              (if (let ((__tmp82736
                                         (gx#stx-length _%__stx8170981710%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp82736 '2))
                                  (let ((_%__splice8171481715%_
                                         (gx#syntax-split-splice
                                          _%__stx8170981710%_
                                          '2)))
                                    (let ((_%tl7624276410%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8171481715%_
                                              '1)))
                                          (_%target7624076407%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8171481715%_
                                              '0))))
                                      (if (gx#stx-pair? _%tl7624276410%_)
                                          (let ((_%e7624976413%_
                                                 (gx#syntax-e
                                                  _%tl7624276410%_)))
                                            (let ((_%tl7625176420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7624976413%_)))
                                                  (_%hd7625076417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7624976413%_))))
                                              (if (gx#identifier?
                                                   _%hd7625076417%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g82737_|
                                                       _%hd7625076417%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7625176420%_)
                                                          (let ((_%e7625276423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7625176420%_)))
                    (let ((_%tl7625476430%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7625276423%_)))
                          (_%hd7625376427%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7625276423%_))))
                      (if (gx#stx-null? _%tl7625476430%_)
                          (_%__match8174881749%_
                           _%__splice8171481715%_
                           _%target7624076407%_
                           _%tl7624276410%_
                           _%e7624976413%_
                           _%hd7625076417%_
                           _%tl7625176420%_
                           _%e7625276423%_
                           _%hd7625376427%_
                           _%tl7625476430%_)
                          (let () (declare (not safe)) (_%g7623476400%_)))))
                  (let () (declare (not safe)) (_%g7623476400%_)))
              (let () (declare (not safe)) (_%g7623476400%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7623476400%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7623476400%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7623476400%_)))
                              (let ()
                                (declare (not safe))
                                (_%g7623476400%_))))))))
                 (_%slot-contract-type69464%_
                  (lambda (_%slot-spec76220%_)
                    (let ((_%contract7622276224%_
                           (_%slot-contract69461%_ _%slot-spec76220%_)))
                      (if _%contract7622276224%_
                          (let ((_%contract76228%_ _%contract7622276224%_))
                            (_%contract-type69465%_ _%contract76228%_))
                          '#f))))
                 (_%contract-type69465%_
                  (lambda (_%contract76028%_)
                    (let* ((_%__stx8180381804%_ _%contract76028%_)
                           (_%g7603376065%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8180381804%_))))
                      (let ((_%__kont8180681807%_
                             (lambda (_%L76187%_ _%L76189%_ _%L76190%_)
                               _%L76189%_))
                            (_%__kont8180881809%_
                             (lambda (_%L76123%_
                                      _%L76125%_
                                      _%L76126%_
                                      _%L76127%_)
                               _%L76125%_))
                            (_%__kont8181081811%_ (lambda () '#f)))
                        (let* ((_%__match8185281853%_
                                (lambda (_%e7604876083%_
                                         _%hd7604976087%_
                                         _%tl7605076090%_
                                         _%e7605176093%_
                                         _%hd7605276097%_
                                         _%tl7605376100%_
                                         _%e7605476103%_
                                         _%hd7605576107%_
                                         _%tl7605676110%_
                                         _%e7605776113%_
                                         _%hd7605876117%_
                                         _%tl7605976120%_)
                                  (let ((_%L76123%_ _%tl7605976120%_)
                                        (_%L76125%_ _%hd7605876117%_)
                                        (_%L76126%_ _%hd7605576107%_)
                                        (_%L76127%_ _%hd7605276097%_))
                                    (if (and (gx#identifier? _%L76126%_)
                                             (or (gx#free-identifier=?
                                                  _%L76126%_
                                                  (gx#datum->syntax '#f ':))
                                                 (gx#free-identifier=?
                                                  _%L76126%_
                                                  (gx#datum->syntax '#f ':?))
                                                 (gx#free-identifier=?
                                                  _%L76126%_
                                                  (gx#datum->syntax '#f ':-))
                                                 (gx#free-identifier=?
                                                  _%L76126%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '::-))))
                                        (_%__kont8180881809%_
                                         _%L76123%_
                                         _%L76125%_
                                         _%L76126%_
                                         _%L76127%_)
                                        (_%__kont8181081811%_)))))
                               (_%__match8182481825%_
                                (lambda (_%e7603876167%_
                                         _%hd7603976171%_
                                         _%tl7604076174%_
                                         _%e7604176177%_
                                         _%hd7604276181%_
                                         _%tl7604376184%_)
                                  (let ((_%L76187%_ _%tl7604376184%_)
                                        (_%L76189%_ _%hd7604276181%_)
                                        (_%L76190%_ _%hd7603976171%_))
                                    (if (and (gx#identifier? _%L76190%_)
                                             (or (gx#free-identifier=?
                                                  _%L76190%_
                                                  (gx#datum->syntax '#f ':))
                                                 (gx#free-identifier=?
                                                  _%L76190%_
                                                  (gx#datum->syntax '#f ':?))
                                                 (gx#free-identifier=?
                                                  _%L76190%_
                                                  (gx#datum->syntax '#f ':-))
                                                 (gx#free-identifier=?
                                                  _%L76190%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '::-))))
                                        (_%__kont8180681807%_
                                         _%L76187%_
                                         _%L76189%_
                                         _%L76190%_)
                                        (if (gx#identifier? _%hd7603976171%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g82738_|
                                                 _%hd7603976171%_)
                                                (if (gx#stx-pair?
                                                     _%tl7604376184%_)
                                                    (let ((_%e7605476103%_
                                                           (gx#syntax-e
                                                            _%tl7604376184%_)))
                                                      (let ((_%tl7605676110%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e7605476103%_)))
                    (_%hd7605576107%_
                     (let () (declare (not safe)) (##car _%e7605476103%_))))
                (if (gx#stx-pair? _%tl7605676110%_)
                    (let ((_%e7605776113%_ (gx#syntax-e _%tl7605676110%_)))
                      (let ((_%tl7605976120%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7605776113%_)))
                            (_%hd7605876117%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7605776113%_))))
                        (_%__match8185281853%_
                         _%e7603876167%_
                         _%hd7603976171%_
                         _%tl7604076174%_
                         _%e7604176177%_
                         _%hd7604276181%_
                         _%tl7604376184%_
                         _%e7605476103%_
                         _%hd7605576107%_
                         _%tl7605676110%_
                         _%e7605776113%_
                         _%hd7605876117%_
                         _%tl7605976120%_)))
                    (_%__kont8181081811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8181081811%_))
                                                (_%__kont8181081811%_))
                                            (_%__kont8181081811%_)))))))
                          (if (gx#stx-pair? _%__stx8180381804%_)
                              (let ((_%e7603876167%_
                                     (gx#syntax-e _%__stx8180381804%_)))
                                (let ((_%tl7604076174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7603876167%_)))
                                      (_%hd7603976171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7603876167%_))))
                                  (if (gx#stx-pair? _%tl7604076174%_)
                                      (let ((_%e7604176177%_
                                             (gx#syntax-e _%tl7604076174%_)))
                                        (let ((_%tl7604376184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7604176177%_)))
                                              (_%hd7604276181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7604176177%_))))
                                          (_%__match8182481825%_
                                           _%e7603876167%_
                                           _%hd7603976171%_
                                           _%tl7604076174%_
                                           _%e7604176177%_
                                           _%hd7604276181%_
                                           _%tl7604376184%_)))
                                      (_%__kont8181081811%_))))
                              (_%__kont8181081811%_)))))))
                 (_%slot-contract-predicate69466%_
                  (lambda (_%slot-spec76017%_)
                    (let ((_%contract7601976021%_
                           (_%slot-contract69461%_ _%slot-spec76017%_)))
                      (if _%contract7601976021%_
                          (let ((_%contract76025%_ _%contract7601976021%_))
                            (_%contract-predicate69467%_ _%contract76025%_))
                          '#f))))
                 (_%contract-predicate69467%_
                  (lambda (_%contract75939%_)
                    (let* ((_%__stx8185581856%_ _%contract75939%_)
                           (_%g7594375958%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8185581856%_))))
                      (let ((_%__kont8185881859%_
                             (lambda (_%L75996%_ _%L75998%_) _%L75998%_))
                            (_%__kont8186081861%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx8185581856%_)
                            (let ((_%e7594775976%_
                                   (gx#syntax-e _%__stx8185581856%_)))
                              (let ((_%tl7594975983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e7594775976%_)))
                                    (_%hd7594875980%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e7594775976%_))))
                                (if (gx#identifier? _%hd7594875980%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~TypedDefinitions[1]#_g82739_|
                                         _%hd7594875980%_)
                                        (if (gx#stx-pair? _%tl7594975983%_)
                                            (let ((_%e7595075986%_
                                                   (gx#syntax-e
                                                    _%tl7594975983%_)))
                                              (let ((_%tl7595275993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7595075986%_)))
                                                    (_%hd7595175990%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7595075986%_))))
                                                (_%__kont8185881859%_
                                                 _%tl7595275993%_
                                                 _%hd7595175990%_)))
                                            (_%__kont8186081861%_))
                                        (_%__kont8186081861%_))
                                    (_%__kont8186081861%_))))
                            (_%__kont8186081861%_))))))
                 (_%slot-default69468%_
                  (lambda (_%slot-spec75767%_)
                    (let* ((_%__stx8188181882%_ _%slot-spec75767%_)
                           (_%g7577275804%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8188181882%_))))
                      (let ((_%__kont8188481885%_
                             (lambda (_%L75920%_ _%L75922%_) _%L75920%_))
                            (_%__kont8188681887%_
                             (lambda (_%L75872%_ _%L75874%_) _%L75872%_))
                            (_%__kont8189081891%_ (lambda () '#f)))
                        (let* ((_%__match8193281933%_
                                (lambda (_%__splice8188881889%_
                                         _%target7578475822%_
                                         _%tl7578675825%_
                                         _%e7579375828%_
                                         _%hd7579475832%_
                                         _%tl7579575835%_
                                         _%e7579675838%_
                                         _%hd7579775842%_
                                         _%tl7579875845%_)
                                  (letrec ((_%loop7578775848%_
                                            (lambda (_%hd7578575852%_
                                                     _%id7579175855%_)
                                              (if (gx#stx-pair?
                                                   _%hd7578575852%_)
                                                  (let ((_%e7578875858%_
                                                         (gx#syntax-e
                                                          _%hd7578575852%_)))
                                                    (let ((_%lp-tl7579075865%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7578875858%_)))
                                                          (_%lp-hd7578975862%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7578875858%_))))
                                                      (_%loop7578775848%_
                                                       _%lp-tl7579075865%_
                                                       (cons _%lp-hd7578975862%_
                                                             _%id7579175855%_))))
                                                  (let ((_%id7579275868%_
                                                         (reverse _%id7579175855%_)))
                                                    (_%__kont8188681887%_
                                                     _%hd7579775842%_
                                                     _%id7579275868%_))))))
                                    (_%loop7578775848%_
                                     _%target7578475822%_
                                     '()))))
                               (_%g7577075893%_
                                (lambda ()
                                  (if (gx#stx-pair/null? _%__stx8188181882%_)
                                      (if (let ((__tmp82740
                                                 (gx#stx-length
                                                  _%__stx8188181882%_)))
                                            (declare (not safe))
                                            (##fx>= __tmp82740 '2))
                                          (let ((_%__splice8188881889%_
                                                 (gx#syntax-split-splice
                                                  _%__stx8188181882%_
                                                  '2)))
                                            (let ((_%tl7578675825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8188881889%_
                                                      '1)))
                                                  (_%target7578475822%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8188881889%_
                                                      '0))))
                                              (if (gx#stx-pair?
                                                   _%tl7578675825%_)
                                                  (let ((_%e7579375828%_
                                                         (gx#syntax-e
                                                          _%tl7578675825%_)))
                                                    (let ((_%tl7579575835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7579375828%_)))
                                                          (_%hd7579475832%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7579375828%_))))
                                                      (if (gx#identifier?
                                                           _%hd7579475832%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/contract~TypedDefinitions[1]#_g82741_|
                                                               _%hd7579475832%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl7579575835%_)
                          (let ((_%e7579675838%_
                                 (gx#syntax-e _%tl7579575835%_)))
                            (let ((_%tl7579875845%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7579675838%_)))
                                  (_%hd7579775842%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7579675838%_))))
                              (if (gx#stx-null? _%tl7579875845%_)
                                  (_%__match8193281933%_
                                   _%__splice8188881889%_
                                   _%target7578475822%_
                                   _%tl7578675825%_
                                   _%e7579375828%_
                                   _%hd7579475832%_
                                   _%tl7579575835%_
                                   _%e7579675838%_
                                   _%hd7579775842%_
                                   _%tl7579875845%_)
                                  (_%__kont8189081891%_))))
                          (_%__kont8189081891%_))
                      (_%__kont8189081891%_))
                  (_%__kont8189081891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8189081891%_))))
                                          (_%__kont8189081891%_))
                                      (_%__kont8189081891%_)))))
                          (if (gx#stx-pair? _%__stx8188181882%_)
                              (let ((_%e7577675900%_
                                     (gx#syntax-e _%__stx8188181882%_)))
                                (let ((_%tl7577875907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7577675900%_)))
                                      (_%hd7577775904%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7577675900%_))))
                                  (if (gx#stx-pair? _%tl7577875907%_)
                                      (let ((_%e7577975910%_
                                             (gx#syntax-e _%tl7577875907%_)))
                                        (let ((_%tl7578175917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7577975910%_)))
                                              (_%hd7578075914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7577975910%_))))
                                          (if (gx#stx-null? _%tl7578175917%_)
                                              (_%__kont8188481885%_
                                               _%hd7578075914%_
                                               _%hd7577775904%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7577075893%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7577075893%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g7577075893%_))))))))
                 (_%infer-slot-type69469%_
                  (lambda (_%slot75665%_ _%type-a75667%_ _%type-b75668%_)
                    (if (not _%type-a75667%_)
                        _%type-b75668%_
                        (if (not _%type-b75668%_)
                            _%type-a75667%_
                            (if (gx#free-identifier=?
                                 _%type-a75667%_
                                 _%type-b75668%_)
                                _%type-a75667%_
                                (let _%again75678%_ ((_%klass-a75681%_
                                                      (gx#syntax-local-value
                                                       _%type-a75667%_))
                                                     (_%klass-b75683%_
                                                      (gx#syntax-local-value
                                                       _%type-b75668%_)))
                                  (if (eq? _%klass-a75681%_ _%klass-b75683%_)
                                      _%type-a75667%_
                                      (if (let ()
                                            (declare (not safe))
                                            (class-instance?
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             _%klass-a75681%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (class-instance?
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 _%klass-b75683%_))
                                              (if (eq? (let ((__obj82470
                                                              _%klass-a75681%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-direct-instance-of?
                        __obj82470
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82470 '1 '#f '#f))
                     (unchecked-slot-ref __obj82470 'id)))
               (let ((__obj82471 _%klass-b75683%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82471
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82471 '1 '#f '#f))
                     (unchecked-slot-ref __obj82471 'id))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-a75667%_
                                                  (if (member _%type-a75667%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/contract~ClassMeta#!class-precedence-list
                         _%klass-b75683%_))
                      gx#free-identifier=?)
              _%type-b75668%_
              (if (member _%type-b75668%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             _%klass-a75681%_))
                          gx#free-identifier=?)
                  _%type-a75667%_
                  (gx#raise-syntax-error
                   '#f
                   '"incompatible slot types"
                   _%stx69454%_
                   _%slot75665%_
                   _%type-a75667%_
                   _%type-b75668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                     _%klass-b75683%_))
                                                  (let ((_%$e75701%_
                                                         (gx#syntax-local-value
                                                          (let ((__obj82468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%klass-b75683%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj82468
                           'gerbil/core/contract~TypeReference#type-reference::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj82468 '1 '#f '#f))
                        (unchecked-slot-ref __obj82468 'identifier)))
                  false)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%$e75701%_
                                                        ((lambda (_%klass-b75705%_)
                                                           (_%again75678%_
                                                            _%klass-a75681%_
                                                            _%klass-b75705%_))
                                                         _%$e75701%_)
                                                        (if (gx#free-identifier=?
                                                             _%type-a75667%_
                                                             (let ((__obj82469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%klass-b75683%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj82469
                              'gerbil/core/contract~TypeReference#type-reference::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref __obj82469 '1 '#f '#f))
                           (unchecked-slot-ref __obj82469 'identifier))))
                    _%type-a75667%_
                    (gx#raise-syntax-error
                     '#f
                     '"cannot resolve type reference to determine slot type compatibility"
                     _%stx69454%_
                     _%slot75665%_
                     _%type-a75667%_
                     _%type-b75668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"incompatible slot types"
                                                   _%stx69454%_
                                                   _%slot75665%_
                                                   _%type-a75667%_
                                                   _%type-b75668%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (class-instance?
                                                 gerbil/core/contract~InterfaceInfo#interface-info::t
                                                 _%klass-a75681%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                                     _%klass-b75683%_))
                                                  (if (member _%type-a75667%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
                         _%klass-b75683%_)))
              _%type-b75668%_
              (if (member _%type-b75668%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
                             _%klass-a75681%_)))
                  _%type-a75667%_
                  (gx#raise-syntax-error
                   '#f
                   '"incompatible slot types"
                   _%stx69454%_
                   _%slot75665%_
                   _%type-a75667%_
                   _%type-b75668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                         _%klass-b75683%_))
                                                      (let ((_%$e75726%_
                                                             (gx#syntax-local-value
                                                              (let ((__obj82466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%klass-b75683%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj82466
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj82466
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj82466 'identifier)))
                      false)))
                (if _%$e75726%_
                    ((lambda (_%klass-b75730%_)
                       (_%again75678%_ _%klass-a75681%_ _%klass-b75730%_))
                     _%$e75726%_)
                    (if (gx#free-identifier=?
                         _%type-a75667%_
                         (let ((__obj82467 _%klass-b75683%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj82467
                                  'gerbil/core/contract~TypeReference#type-reference::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj82467
                                  '1
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj82467 'identifier))))
                        _%type-a75667%_
                        (gx#raise-syntax-error
                         '#f
                         '"cannot resolve type reference to determine slot type compatibility"
                         _%stx69454%_
                         _%slot75665%_
                         _%type-a75667%_
                         _%type-b75668%_))))
              (gx#raise-syntax-error
               '#f
               '"incompatible slot types"
               _%stx69454%_
               _%slot75665%_
               _%type-a75667%_
               _%type-b75668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                     _%klass-a75681%_))
                                                  (let ((_%$e75741%_
                                                         (gx#syntax-local-value
                                                          (let ((__obj82461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%klass-a75681%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj82461
                           'gerbil/core/contract~TypeReference#type-reference::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj82461 '1 '#f '#f))
                        (unchecked-slot-ref __obj82461 'identifier)))
                  false)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%$e75741%_
                                                        ((lambda (_%klass-a75745%_)
                                                           (_%again75678%_
                                                            _%klass-a75745%_
                                                            _%klass-b75683%_))
                                                         _%$e75741%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (class-instance?
                                                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                               _%klass-b75683%_))
                                                            (let ((_%$e75750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-local-value
                            (let ((__obj82463 _%klass-b75683%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82463
                                     'gerbil/core/contract~TypeReference#type-reference::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82463
                                     '1
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref __obj82463 'identifier)))
                            false)))
                      (if _%$e75750%_
                          ((lambda (_%klass-b75754%_)
                             (_%again75678%_
                              _%klass-a75681%_
                              _%klass-b75754%_))
                           _%$e75750%_)
                          (if (gx#free-identifier=?
                               (let ((__obj82464 _%klass-a75681%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj82464
                                        'gerbil/core/contract~TypeReference#type-reference::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj82464
                                        '1
                                        '#f
                                        '#f))
                                     (unchecked-slot-ref
                                      __obj82464
                                      'identifier)))
                               (let ((__obj82465 _%klass-b75683%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj82465
                                        'gerbil/core/contract~TypeReference#type-reference::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj82465
                                        '1
                                        '#f
                                        '#f))
                                     (unchecked-slot-ref
                                      __obj82465
                                      'identifier))))
                              _%type-a75667%_
                              (gx#raise-syntax-error
                               '#f
                               '"cannot resolve type reference to determine slot type compatibility"
                               _%stx69454%_
                               _%slot75665%_
                               _%type-a75667%_
                               _%type-b75668%_))))
                    (if (gx#free-identifier=?
                         _%type-b75668%_
                         (let ((__obj82462 _%klass-a75681%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj82462
                                  'gerbil/core/contract~TypeReference#type-reference::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj82462
                                  '1
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj82462 'identifier))))
                        _%type-b75668%_
                        (gx#raise-syntax-error
                         '#f
                         '"cannot resolve type reference to determine slot type compatibility"
                         _%stx69454%_
                         _%slot75665%_
                         _%type-a75667%_
                         _%type-b75668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"unexpected slot type"
                                                   _%stx69454%_
                                                   _%slot75665%_
                                                   _%type-a75667%_
                                                   _%klass-a75681%_)))))))))))
                 (_%get-mixin-slots69470%_
                  (lambda (_%super75536%_)
                    (letrec* ((_%tab75539%_ (make-hash-table-eq)))
                      (let _%loop75542%_ ((_%rest75545%_ _%super75536%_)
                                          (_%result75547%_ '()))
                        (let* ((_%rest7554875556%_ _%rest75545%_)
                               (_%else7555075568%_
                                (lambda ()
                                  (values (reverse! _%result75547%_)
                                          _%tab75539%_)))
                               (_%K7555275649%_
                                (lambda (_%rest75572%_ _%type-id75574%_)
                                  (let* ((_%klass75576%_
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                             _%stx69454%_
                                             _%type-id75574%_)))
                                         (_%slots75579%_
                                          (let ((__obj82472 _%klass75576%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj82472
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj82472
                                                   '4
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj82472
                                                 'slots)))))
                                    (let _%loop-inner75584%_ ((_%rest-slots75587%_
                                                               _%slots75579%_)
                                                              (_%result75589%_
                                                               _%result75547%_))
                                      (let* ((_%rest-slots7559075598%_
                                              _%rest-slots75587%_)
                                             (_%else7559275610%_
                                              (lambda ()
                                                (_%loop75542%_
                                                 (foldr cons
                                                        _%rest75572%_
                                                        (let ((__obj82473
                                                               _%klass75576%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj82473
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj82473 '3 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj82473
                       'super))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%result75589%_)))
                                             (_%K7559475633%_
                                              (lambda (_%rest-slots75614%_
                                                       _%slot75616%_)
                                                (let ((_%slot-type75618%_
                                                       (hash-ref
                                                        _%tab75539%_
                                                        _%slot75616%_
                                                        absent-value)))
                                                  (if (eq? _%slot-type75618%_
                                                           absent-value)
                                                      (let ()
                                                        (hash-put!
                                                         _%tab75539%_
                                                         _%slot75616%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                            _%klass75576%_
                                                            _%slot75616%_)))
                                                        (_%loop-inner75584%_
                                                         _%rest-slots75614%_
                                                         (cons _%slot75616%_
                                                               _%result75589%_)))
                                                      (if (not _%slot-type75618%_)
                                                          (let ()
                                                            (hash-put!
                                                             _%tab75539%_
                                                             _%slot75616%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (|gerbil/core/contract~Using[1]#!class-slot-type|
                        _%klass75576%_
                        _%slot75616%_)))
                    (_%loop-inner75584%_ _%rest-slots75614%_ _%result75589%_))
                  (let* ((_%other-slot-type75627%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                             _%klass75576%_
                             _%slot75616%_)))
                         (_%slot-type75630%_
                          (_%infer-slot-type69469%_
                           _%slot75616%_
                           _%other-slot-type75627%_
                           _%slot-type75618%_)))
                    (hash-put! _%tab75539%_ _%slot75616%_ _%slot-type75630%_)
                    (_%loop-inner75584%_
                     _%rest-slots75614%_
                     _%result75589%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-slots7559075598%_))
                                            (let ((_%hd7559575637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-slots7559075598%_)))
                                                  (_%tl7559675640%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-slots7559075598%_))))
                                              (let* ((_%slot75643%_
                                                      _%hd7559575637%_)
                                                     (_%rest-slots75646%_
                                                      _%tl7559675640%_))
                                                (_%K7559475633%_
                                                 _%rest-slots75646%_
                                                 _%slot75643%_)))
                                            (_%else7559275610%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest7554875556%_))
                              (let ((_%hd7555375653%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest7554875556%_)))
                                    (_%tl7555475656%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest7554875556%_))))
                                (let* ((_%type-id75659%_ _%hd7555375653%_)
                                       (_%rest75662%_ _%tl7555475656%_))
                                  (_%K7555275649%_
                                   _%rest75662%_
                                   _%type-id75659%_)))
                              (_%else7555075568%_)))))))
                 (_%get-slot-table69471%_
                  (lambda (_%slots75479%_
                           _%mixin-slots75481%_
                           _%super75482%_
                           _%contract-e75483%_
                           _%getf75484%_
                           _%mixf75485%_)
                    (letrec* ((_%tab75487%_ (make-hash-table-eq)))
                      (for-each
                       (lambda (_%slot75490%_)
                         (for-each
                          (lambda (_%super-type75493%_)
                            (let* ((_%klass75496%_
                                    (gx#syntax-local-value
                                     _%super-type75493%_))
                                   (_%$e75499%_
                                    (hash-get _%tab75487%_ _%slot75490%_)))
                              (if _%$e75499%_
                                  ((lambda (_%a75503%_)
                                     (let ((_%$e75506%_
                                            (_%getf75484%_
                                             _%klass75496%_
                                             _%slot75490%_)))
                                       (if _%$e75506%_
                                           ((lambda (_%b75510%_)
                                              (hash-put!
                                               _%tab75487%_
                                               _%slot75490%_
                                               (_%mixf75485%_
                                                _%slot75490%_
                                                _%a75503%_
                                                _%b75510%_)))
                                            _%$e75506%_)
                                           '#!void)))
                                   _%$e75499%_)
                                  (let ((_%$e75513%_
                                         (_%getf75484%_
                                          _%klass75496%_
                                          _%slot75490%_)))
                                    (if _%$e75513%_
                                        ((lambda (_%a75517%_)
                                           (hash-put!
                                            _%tab75487%_
                                            _%slot75490%_
                                            _%a75517%_))
                                         _%$e75513%_)
                                        '#!void)))))
                          _%super75482%_))
                       _%mixin-slots75481%_)
                      (for-each
                       (lambda (_%slot-spec75520%_)
                         (let ((_%slot75523%_
                                (_%slot-name69460%_ _%slot-spec75520%_))
                               (_%a75525%_
                                (_%contract-e75483%_ _%slot-spec75520%_)))
                           (if _%a75525%_
                               (let ((_%$e75527%_
                                      (hash-get _%tab75487%_ _%slot75523%_)))
                                 (if _%$e75527%_
                                     ((lambda (_%b75531%_)
                                        (hash-put!
                                         _%tab75487%_
                                         _%slot75523%_
                                         (_%mixf75485%_
                                          _%slot75523%_
                                          _%a75525%_
                                          _%b75531%_)))
                                      _%$e75527%_)
                                     (hash-put!
                                      _%tab75487%_
                                      _%slot75523%_
                                      _%a75525%_)))
                               '#!void)))
                       _%slots75479%_)
                      _%tab75487%_)))
                 (_%get-slot-contracts69472%_
                  (lambda (_%slots73915%_
                           _%mixin-slots73917%_
                           _%super73918%_
                           _%slot-type-table73919%_)
                    (_%get-slot-table69471%_
                     _%slots73915%_
                     _%mixin-slots73917%_
                     _%super73918%_
                     _%slot-contract-normalize69462%_
                     |gerbil/core/contract~Using[1]#!class-slot-contract|
                     (lambda (_%slot73921%_ _%a73923%_ _%b73924%_)
                       (let* ((_%__stx8220382204%_ _%a73923%_)
                              (_%g7398674039%_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx8220382204%_))))
                         (let ((_%__kont8220682207%_
                                (lambda ()
                                  (let* ((_%__stx8217182172%_ _%b73924%_)
                                         (_%g7530975327%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8217182172%_))))
                                    (let ((_%__kont8217482175%_
                                           (lambda (_%L75421%_)
                                             (let* ((_%g7544075448%_
                                                     (lambda (_%g7544175444%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7544175444%_)))
                                                    (_%g7543975467%_
                                                     (lambda (_%g7544175452%_)
                                                       ((lambda (_%L75455%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':)
                        (cons _%L75455%_ '())))
                _%g7544175452%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7543975467%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_)))))
                                          (_%__kont8217682177%_
                                           (lambda (_%L75354%_)
                                             (let* ((_%g7537375381%_
                                                     (lambda (_%g7537475377%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7537475377%_)))
                                                    (_%g7537275400%_
                                                     (lambda (_%g7537475385%_)
                                                       ((lambda (_%L75388%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75354%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L75388%_ '())))))
                _%g7537475385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7537275400%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_))))))
                                      (let ((_%__match8218482185%_
                                             (lambda (_%e7531275411%_
                                                      _%hd7531375415%_
                                                      _%tl7531475418%_)
                                               (let ((_%L75421%_
                                                      _%hd7531375415%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L75421%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L75421%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L75421%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8217482175%_
                                                      _%L75421%_)
                                                     (if (gx#identifier?
                                                          _%hd7531375415%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/contract~TypedDefinitions[1]#_g82742_|
                                                              _%hd7531375415%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%tl7531475418%_)
                         (let ((_%e7531975344%_
                                (gx#syntax-e _%tl7531475418%_)))
                           (let ((_%tl7532175351%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7531975344%_)))
                                 (_%hd7532075348%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7531975344%_))))
                             (_%__kont8217682177%_ _%hd7532075348%_)))
                         (let () (declare (not safe)) (_%g7530975327%_)))
                     (let () (declare (not safe)) (_%g7530975327%_)))
                 (let () (declare (not safe)) (_%g7530975327%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair? _%__stx8217182172%_)
                                            (let ((_%e7531275411%_
                                                   (gx#syntax-e
                                                    _%__stx8217182172%_)))
                                              (let ((_%tl7531475418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7531275411%_)))
                                                    (_%hd7531375415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7531275411%_))))
                                                (_%__match8218482185%_
                                                 _%e7531275411%_
                                                 _%hd7531375415%_
                                                 _%tl7531475418%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g7530975327%_))))))))
                               (_%__kont8220882209%_
                                (lambda ()
                                  (let* ((_%__stx8212382124%_ _%b73924%_)
                                         (_%g7510575125%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8212382124%_))))
                                    (let ((_%__kont8212682127%_
                                           (lambda ()
                                             (let* ((_%g7524775255%_
                                                     (lambda (_%g7524875251%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7524875251%_)))
                                                    (_%g7524675279%_
                                                     (lambda (_%g7524875259%_)
                                                       ((lambda (_%L75262%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':?)
                        (cons _%L75262%_ '())))
                _%g7524875259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7524675279%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_)))))
                                          (_%__kont8212882129%_
                                           (lambda (_%L75173%_)
                                             (let* ((_%g7519575203%_
                                                     (lambda (_%g7519675199%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7519675199%_)))
                                                    (_%g7519475222%_
                                                     (lambda (_%g7519675207%_)
                                                       ((lambda (_%L75210%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75173%_
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L75210%_ '())))))
                _%g7519675207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7519475222%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_)))))
                                          (_%__kont8213082131%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69454%_
                                              _%slot73921%_
                                              _%a73923%_
                                              _%b73924%_))))
                                      (if (gx#stx-pair? _%__stx8212382124%_)
                                          (let ((_%e7510775233%_
                                                 (gx#syntax-e
                                                  _%__stx8212382124%_)))
                                            (let ((_%tl7510975240%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7510775233%_)))
                                                  (_%hd7510875237%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7510775233%_))))
                                              (if (gx#identifier?
                                                   _%hd7510875237%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g82743_|
                                                       _%hd7510875237%_)
                                                      (_%__kont8212682127%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypedDefinitions[1]#_g82744_|
                                                           _%hd7510875237%_)
                                                          (if (gx#stx-pair?
                                                               _%tl7510975240%_)
                                                              (let ((_%e7511475153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl7510975240%_)))
                        (let ((_%tl7511675160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7511475153%_)))
                              (_%hd7511575157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7511475153%_))))
                          (if (gx#stx-pair? _%tl7511675160%_)
                              (let ((_%e7511775163%_
                                     (gx#syntax-e _%tl7511675160%_)))
                                (let ((_%tl7511975170%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7511775163%_)))
                                      (_%hd7511875167%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7511775163%_))))
                                  (if (gx#identifier? _%hd7511875167%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g82745_|
                                           _%hd7511875167%_)
                                          (_%__kont8212882129%_
                                           _%hd7511575157%_)
                                          (_%__kont8213082131%_))
                                      (_%__kont8213082131%_))))
                              (_%__kont8213082131%_))))
                      (_%__kont8213082131%_))
                  (_%__kont8213082131%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8213082131%_))))
                                          (_%__kont8213082131%_))))))
                               (_%__kont8221082211%_
                                (lambda ()
                                  (let* ((_%__stx8209182092%_ _%b73924%_)
                                         (_%g7491374932%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8209182092%_))))
                                    (let ((_%__kont8209482095%_
                                           (lambda (_%L75028%_)
                                             (let* ((_%g7504775055%_
                                                     (lambda (_%g7504875051%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7504875051%_)))
                                                    (_%g7504675074%_
                                                     (lambda (_%g7504875059%_)
                                                       ((lambda (_%L75062%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':-)
                        (cons _%L75062%_ '())))
                _%g7504875059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7504675074%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_)))))
                                          (_%__kont8209682097%_
                                           (lambda (_%L74959%_ _%L74961%_)
                                             (let* ((_%g7498074988%_
                                                     (lambda (_%g7498174984%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7498174984%_)))
                                                    (_%g7497975007%_
                                                     (lambda (_%g7498174992%_)
                                                       ((lambda (_%L74995%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74961%_
                              (cons (gx#datum->syntax '#f ':-)
                                    (cons _%L74995%_ '())))))
                _%g7498174992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7497975007%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_))))))
                                      (let ((_%__match8210482105%_
                                             (lambda (_%e7491675018%_
                                                      _%hd7491775022%_
                                                      _%tl7491875025%_)
                                               (let ((_%L75028%_
                                                      _%hd7491775022%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L75028%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L75028%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L75028%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8209482095%_
                                                      _%L75028%_)
                                                     (if (gx#identifier?
                                                          _%hd7491775022%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/contract~TypedDefinitions[1]#_g82746_|
                                                              _%hd7491775022%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%tl7491875025%_)
                         (let ((_%e7492474949%_
                                (gx#syntax-e _%tl7491875025%_)))
                           (let ((_%tl7492674956%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7492474949%_)))
                                 (_%hd7492574953%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7492474949%_))))
                             (_%__kont8209682097%_
                              _%tl7492674956%_
                              _%hd7492574953%_)))
                         (let () (declare (not safe)) (_%g7491374932%_)))
                     (let () (declare (not safe)) (_%g7491374932%_)))
                 (let () (declare (not safe)) (_%g7491374932%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair? _%__stx8209182092%_)
                                            (let ((_%e7491675018%_
                                                   (gx#syntax-e
                                                    _%__stx8209182092%_)))
                                              (let ((_%tl7491875025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7491675018%_)))
                                                    (_%hd7491775022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7491675018%_))))
                                                (_%__match8210482105%_
                                                 _%e7491675018%_
                                                 _%hd7491775022%_
                                                 _%tl7491875025%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g7491374932%_))))))))
                               (_%__kont8221282213%_
                                (lambda (_%L74740%_)
                                  (let* ((_%__stx8206582066%_ _%b73924%_)
                                         (_%g7475674770%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8206582066%_))))
                                    (let ((_%__kont8206882069%_
                                           (lambda (_%L74843%_)
                                             (let* ((_%g7485674864%_
                                                     (lambda (_%g7485774860%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7485774860%_)))
                                                    (_%g7485574883%_
                                                     (lambda (_%g7485774868%_)
                                                       ((lambda (_%L74871%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74740%_
                                                      (cons _%L74843%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74871%_ '())))))
                _%g7485774868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7485574883%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_)))))
                                          (_%__kont8207082071%_
                                           (lambda ()
                                             (let* ((_%g7478174789%_
                                                     (lambda (_%g7478274785%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7478274785%_)))
                                                    (_%g7478074812%_
                                                     (lambda (_%g7478274793%_)
                                                       ((lambda (_%L74796%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74740%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74796%_ '())))))
                _%g7478274793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7478074812%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_))))))
                                      (if (gx#stx-pair? _%__stx8206582066%_)
                                          (let ((_%e7475974823%_
                                                 (gx#syntax-e
                                                  _%__stx8206582066%_)))
                                            (let ((_%tl7476174830%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7475974823%_)))
                                                  (_%hd7476074827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7475974823%_))))
                                              (if (gx#identifier?
                                                   _%hd7476074827%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g82747_|
                                                       _%hd7476074827%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7476174830%_)
                                                          (let ((_%e7476274833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7476174830%_)))
                    (let ((_%tl7476474840%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7476274833%_)))
                          (_%hd7476374837%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7476274833%_))))
                      (_%__kont8206882069%_ _%hd7476374837%_)))
                  (_%__kont8207082071%_))
              (_%__kont8207082071%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8207082071%_))))
                                          (_%__kont8207082071%_))))))
                               (_%__kont8221482215%_
                                (lambda (_%L74461%_)
                                  (let* ((_%__stx8199982000%_ _%b73924%_)
                                         (_%g7447974506%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8199982000%_))))
                                    (let ((_%__kont8200282003%_
                                           (lambda ()
                                             (let* ((_%g7466374671%_
                                                     (lambda (_%g7466474667%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7466474667%_)))
                                                    (_%g7466274695%_
                                                     (lambda (_%g7466474675%_)
                                                       ((lambda (_%L74678%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74461%_
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L74678%_ '())))))
                _%g7466474675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7466274695%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_)))))
                                          (_%__kont8200482005%_
                                           (lambda (_%L74596%_)
                                             (let* ((_%g7461174619%_
                                                     (lambda (_%g7461274615%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7461274615%_)))
                                                    (_%g7461074638%_
                                                     (lambda (_%g7461274623%_)
                                                       ((lambda (_%L74626%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74461%_
                                                      (cons _%L74596%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L74626%_ '())))))
                _%g7461274623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7461074638%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_)))))
                                          (_%__kont8200682007%_
                                           (lambda (_%L74544%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69454%_
                                              _%slot73921%_
                                              _%a73923%_
                                              _%b73924%_)))
                                          (_%__kont8200882009%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69454%_
                                              _%slot73921%_
                                              _%a73923%_
                                              _%b73924%_))))
                                      (if (gx#stx-pair? _%__stx8199982000%_)
                                          (let ((_%e7448174649%_
                                                 (gx#syntax-e
                                                  _%__stx8199982000%_)))
                                            (let ((_%tl7448374656%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7448174649%_)))
                                                  (_%hd7448274653%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7448174649%_))))
                                              (if (gx#identifier?
                                                   _%hd7448274653%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g82748_|
                                                       _%hd7448274653%_)
                                                      (_%__kont8200282003%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypedDefinitions[1]#_g82749_|
                                                           _%hd7448274653%_)
                                                          (if (gx#stx-pair?
                                                               _%tl7448374656%_)
                                                              (let ((_%e7448874576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl7448374656%_)))
                        (let ((_%tl7449074583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7448874576%_)))
                              (_%hd7448974580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7448874576%_))))
                          (if (gx#stx-pair? _%tl7449074583%_)
                              (let ((_%e7449174586%_
                                     (gx#syntax-e _%tl7449074583%_)))
                                (let ((_%tl7449374593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7449174586%_)))
                                      (_%hd7449274590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7449174586%_))))
                                  (if (gx#identifier? _%hd7449274590%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g82750_|
                                           _%hd7449274590%_)
                                          (_%__kont8200482005%_
                                           _%hd7448974580%_)
                                          (_%__kont8200682007%_
                                           _%hd7448974580%_))
                                      (_%__kont8200682007%_
                                       _%hd7448974580%_))))
                              (_%__kont8200682007%_ _%hd7448974580%_))))
                      (_%__kont8200882009%_))
                  (_%__kont8200882009%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8200882009%_))))
                                          (_%__kont8200882009%_))))))
                               (_%__kont8221682217%_
                                (lambda (_%L74278%_)
                                  (let* ((_%__stx8196781968%_ _%b73924%_)
                                         (_%g7429474312%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8196781968%_))))
                                    (let ((_%__kont8197081971%_
                                           (lambda (_%L74401%_)
                                             (let ((_%$e74412%_
                                                    (gx#free-identifier=?
                                                     _%L74401%_
                                                     (gx#datum->syntax
                                                      '#f
                                                      ':))))
                                               (if _%$e74412%_
                                                   _%$e74412%_
                                                   (let ((_%$e74416%_
                                                          (gx#free-identifier=?
                                                           _%L74401%_
                                                           (gx#datum->syntax
                                                            '#f
                                                            ':?))))
                                                     (if _%$e74416%_
                                                         _%$e74416%_
                                                         (gx#free-identifier=?
                                                          _%L74401%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-))))))))
                                          (_%__kont8197281973%_
                                           (lambda (_%L74339%_)
                                             (let* ((_%g7435374361%_
                                                     (lambda (_%g7435474357%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7435474357%_)))
                                                    (_%g7435274380%_
                                                     (lambda (_%g7435474365%_)
                                                       ((lambda (_%L74368%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74278%_
                                                      (cons _%L74339%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':-)
                                    (cons _%L74368%_ '())))))
                _%g7435474365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7435274380%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_))))))
                                      (if (gx#stx-pair? _%__stx8196781968%_)
                                          (let ((_%e7429774391%_
                                                 (gx#syntax-e
                                                  _%__stx8196781968%_)))
                                            (let ((_%tl7429974398%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7429774391%_)))
                                                  (_%hd7429874395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7429774391%_))))
                                              (_%__kont8197081971%_
                                               _%hd7429874395%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7429474312%_)))))))
                               (_%__kont8221882219%_
                                (lambda (_%L74066%_)
                                  (let* ((_%__stx8193581936%_ _%b73924%_)
                                         (_%g7408074098%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8193581936%_))))
                                    (let ((_%__kont8193881939%_
                                           (lambda (_%L74181%_ _%L74183%_)
                                             (let* ((_%g7420674214%_
                                                     (lambda (_%g7420774210%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7420774210%_)))
                                                    (_%g7420574233%_
                                                     (lambda (_%g7420774218%_)
                                                       ((lambda (_%L74221%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74066%_
                                                      (cons _%L74183%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74221%_ '())))))
                _%g7420774218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7420574233%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_)))))
                                          (_%__kont8194081941%_
                                           (lambda ()
                                             (let* ((_%g7410974117%_
                                                     (lambda (_%g7411074113%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7411074113%_)))
                                                    (_%g7410874140%_
                                                     (lambda (_%g7411074121%_)
                                                       ((lambda (_%L74124%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74066%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74124%_ '())))))
                _%g7411074121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7410874140%_
                                                (hash-ref
                                                 _%slot-type-table73919%_
                                                 _%slot73921%_))))))
                                      (let ((_%__match8196481965%_
                                             (lambda (_%e7408474151%_
                                                      _%hd7408574155%_
                                                      _%tl7408674158%_
                                                      _%e7408774161%_
                                                      _%hd7408874165%_
                                                      _%tl7408974168%_
                                                      _%e7409074171%_
                                                      _%hd7409174175%_
                                                      _%tl7409274178%_)
                                               (let ((_%L74181%_
                                                      _%hd7409174175%_)
                                                     (_%L74183%_
                                                      _%hd7408874165%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L74181%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L74181%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L74181%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8193881939%_
                                                      _%L74181%_
                                                      _%L74183%_)
                                                     (_%__kont8194081941%_))))))
                                        (if (gx#stx-pair? _%__stx8193581936%_)
                                            (let ((_%e7408474151%_
                                                   (gx#syntax-e
                                                    _%__stx8193581936%_)))
                                              (let ((_%tl7408674158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7408474151%_)))
                                                    (_%hd7408574155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7408474151%_))))
                                                (if (gx#identifier?
                                                     _%hd7408574155%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g82751_|
                                                         _%hd7408574155%_)
                                                        (if (gx#stx-pair?
                                                             _%tl7408674158%_)
                                                            (let ((_%e7408774161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl7408674158%_)))
                      (let ((_%tl7408974168%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7408774161%_)))
                            (_%hd7408874165%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7408774161%_))))
                        (if (gx#stx-pair? _%tl7408974168%_)
                            (let ((_%e7409074171%_
                                   (gx#syntax-e _%tl7408974168%_)))
                              (let ((_%tl7409274178%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e7409074171%_)))
                                    (_%hd7409174175%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e7409074171%_))))
                                (_%__match8196481965%_
                                 _%e7408474151%_
                                 _%hd7408574155%_
                                 _%tl7408674158%_
                                 _%e7408774161%_
                                 _%hd7408874165%_
                                 _%tl7408974168%_
                                 _%e7409074171%_
                                 _%hd7409174175%_
                                 _%tl7409274178%_)))
                            (_%__kont8194081941%_))))
                    (_%__kont8194081941%_))
                (_%__kont8194081941%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8194081941%_))))
                                            (_%__kont8194081941%_))))))))
                           (if (gx#stx-pair? _%__stx8220382204%_)
                               (let ((_%e7398875294%_
                                      (gx#syntax-e _%__stx8220382204%_)))
                                 (let ((_%tl7399075301%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7398875294%_)))
                                       (_%hd7398975298%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7398875294%_))))
                                   (if (gx#identifier? _%hd7398975298%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/contract~TypedDefinitions[1]#_g82752_|
                                            _%hd7398975298%_)
                                           (_%__kont8220682207%_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core/contract~TypedDefinitions[1]#_g82753_|
                                                _%hd7398975298%_)
                                               (_%__kont8220882209%_)
                                               (if (gx#free-identifier=?
                                                    |gerbil/core/contract~TypedDefinitions[1]#_g82754_|
                                                    _%hd7398975298%_)
                                                   (_%__kont8221082211%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/contract~TypedDefinitions[1]#_g82755_|
                                                        _%hd7398975298%_)
                                                       (if (gx#stx-pair?
                                                            _%tl7399075301%_)
                                                           (let ((_%e7400174720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl7399075301%_)))
                     (let ((_%tl7400374727%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e7400174720%_)))
                           (_%hd7400274724%_
                            (let ()
                              (declare (not safe))
                              (##car _%e7400174720%_))))
                       (if (gx#stx-pair? _%tl7400374727%_)
                           (let ((_%e7400474730%_
                                  (gx#syntax-e _%tl7400374727%_)))
                             (let ((_%tl7400674737%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e7400474730%_)))
                                   (_%hd7400574734%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e7400474730%_))))
                               (if (gx#identifier? _%hd7400574734%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/contract~TypedDefinitions[1]#_g82756_|
                                        _%hd7400574734%_)
                                       (_%__kont8221282213%_ _%hd7400274724%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/contract~TypedDefinitions[1]#_g82757_|
                                            _%hd7400574734%_)
                                           (_%__kont8221482215%_
                                            _%hd7400274724%_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core/contract~TypedDefinitions[1]#_g82758_|
                                                _%hd7400574734%_)
                                               (_%__kont8221682217%_
                                                _%hd7400274724%_)
                                               (_%__kont8221882219%_
                                                _%hd7400274724%_))))
                                   (_%__kont8221882219%_ _%hd7400274724%_))))
                           (_%__kont8221882219%_ _%hd7400274724%_))))
                   (let () (declare (not safe)) (_%g7398674039%_)))
               (let () (declare (not safe)) (_%g7398674039%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ()
                                         (declare (not safe))
                                         (_%g7398674039%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g7398674039%_)))))))))
                 (_%get-slot-defaults69473%_
                  (lambda (_%slots73905%_ _%mixin-slots73907%_ _%super73908%_)
                    (_%get-slot-table69471%_
                     _%slots73905%_
                     _%mixin-slots73907%_
                     _%super73908%_
                     _%slot-default69468%_
                     |gerbil/core/contract~Using[1]#!class-slot-default|
                     (lambda (_%slot73910%_ _%a73912%_ _%b73913%_)
                       _%a73912%_))))
                 (_%update-slot-types!69474%_
                  (lambda (_%slots73875%_ _%slot-type-table73877%_)
                    (for-each
                     (lambda (_%slot-spec73879%_)
                       (let* ((_%slot73882%_
                               (_%slot-name69460%_ _%slot-spec73879%_))
                              (_%slot-type7388473886%_
                               (_%slot-contract-type69464%_
                                _%slot-spec73879%_)))
                         (if _%slot-type7388473886%_
                             (let* ((_%slot-type73890%_
                                     _%slot-type7388473886%_)
                                    (_%$e73893%_
                                     (hash-get
                                      _%slot-type-table73877%_
                                      _%slot73882%_)))
                               (if _%$e73893%_
                                   ((lambda (_%other-slot-type73897%_)
                                      (let ((_%slot-type73900%_
                                             (_%infer-slot-type69469%_
                                              _%slot73882%_
                                              _%other-slot-type73897%_
                                              _%slot-type73890%_)))
                                        (hash-put!
                                         _%slot-type-table73877%_
                                         _%slot73882%_
                                         _%slot-type73900%_)))
                                    _%$e73893%_)
                                   (hash-put!
                                    _%slot-type-table73877%_
                                    _%slot73882%_
                                    _%slot-type73890%_)))
                             '#f)))
                     _%slots73875%_)))
                 (_%syntax-local-value/context69475%_
                  (lambda (_%id73869%_)
                    (gx#syntax-local-value
                     _%id73869%_
                     (lambda (_%id73872%_)
                       (gx#raise-syntax-error
                        '#f
                        '"not a class meta type binding"
                        _%stx69454%_
                        _%id73872%_)))))
                 (_%order-slots69476%_
                  (lambda (_%slots73800%_ _%super73802%_)
                    (let ((_g82759_
                           (c4-linearize
                            '()
                            _%super73802%_
                            'get-precedence-list:
                            (lambda (_%klass-id73804%_)
                              (cons _%klass-id73804%_
                                    (let ((__tmp82761
                                           (_%syntax-local-value/context69475%_
                                            _%klass-id73804%_)))
                                      (declare (not safe))
                                      (gerbil/core/contract~ClassMeta#!class-precedence-list
                                       __tmp82761))))
                            'struct:
                            (lambda (_%klass-id73807%_)
                              (let ((__obj82474
                                     (_%syntax-local-value/context69475%_
                                      _%klass-id73807%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj82474
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj82474
                                       '7
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj82474
                                     'struct?))))
                            'eq:
                            gx#free-identifier=?
                            'get-name:
                            gx#stx-e)))
                      (begin
                        (let ((_g82760_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g82759_)
                                     (##vector-length _g82759_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g82760_ 2)))
                              (error "Context expects 2 values" _g82760_)))
                        (let ((_%precedence-list73810%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g82759_ 0)))
                              (_%base-struct73812%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g82759_ 1))))
                          (let* ((_%base-fields73826%_
                                  (if _%base-struct73812%_
                                      (let* ((_%klass73814%_
                                              (gx#syntax-local-value
                                               _%base-struct73812%_))
                                             (_%$e73817%_
                                              (let ((__obj82475
                                                     _%klass73814%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj82475
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj82475
                                                       '6
                                                       '#f
                                                       '#f))
                                                    (class-slot-ref
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj82475
                                                     'ordered-slots)))))
                                        (if _%$e73817%_
                                            _%$e73817%_
                                            (let ((_%ordered73823%_
                                                   (_%order-slots69476%_
                                                    (let ((__obj82476
                                                           _%klass73814%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj82476
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj82476
                                                             '4
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj82476
                                                           'slots)))
                                                    (let ((__obj82477
                                                           _%klass73814%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj82477
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj82477
                                                             '3
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj82477
                                                           'super))))))
                                              (let ((__obj82478
                                                     _%klass73814%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj82478
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-set!
                                                       __obj82478
                                                       _%ordered73823%_
                                                       '6
                                                       '#f
                                                       '#f))
                                                    (class-slot-set!
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj82478
                                                     'ordered-slots
                                                     _%ordered73823%_)))
                                              _%ordered73823%_)))
                                      '()))
                                 (_%r-fields73829%_
                                  (reverse _%base-fields73826%_))
                                 (_%seen-slots73840%_
                                  (let ((_%tab73832%_ (make-hash-table-eq)))
                                    (for-each
                                     (lambda (_%g7383473836%_)
                                       (hash-put!
                                        _%tab73832%_
                                        _%g7383473836%_
                                        '#t))
                                     _%base-fields73826%_)
                                    _%tab73832%_))
                                 (_%process-slot73846%_
                                  (lambda (_%slot73843%_)
                                    (if (hash-get
                                         _%seen-slots73840%_
                                         _%slot73843%_)
                                        '#!void
                                        (begin
                                          (hash-put!
                                           _%seen-slots73840%_
                                           _%slot73843%_
                                           '#t)
                                          (set! _%r-fields73829%_
                                                (cons _%slot73843%_
                                                      _%r-fields73829%_)))))))
                            (for-each
                             (lambda (_%mixin73851%_)
                               (let ((_%klass73854%_
                                      (gx#syntax-local-value _%mixin73851%_)))
                                 (if (let ((__obj82479 _%klass73854%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj82479
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj82479
                                              '7
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj82479
                                            'struct?)))
                                     '#!void
                                     (let ((_%$e73857%_
                                            (let ((__obj82480 _%klass73854%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     __obj82480
                                                     'gerbil.core#class-type-info::t))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     __obj82480
                                                     '6
                                                     '#f
                                                     '#f))
                                                  (class-slot-ref
                                                   gerbil/core/mop~MOP-2#class-type-info::t
                                                   __obj82480
                                                   'ordered-slots)))))
                                       (if _%$e73857%_
                                           ((lambda (_%ordered73861%_)
                                              (for-each
                                               _%process-slot73846%_
                                               _%ordered73861%_))
                                            _%$e73857%_)
                                           (let ((_%ordered73866%_
                                                  (_%order-slots69476%_
                                                   (let ((__obj82481
                                                          _%klass73854%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj82481
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj82481
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj82481
                                                          'slots)))
                                                   (let ((__obj82482
                                                          _%klass73854%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj82482
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj82482
                                                            '3
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj82482
                                                          'super))))))
                                             (let ((__obj82483 _%klass73854%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      __obj82483
                                                      'gerbil.core#class-type-info::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-set!
                                                      __obj82483
                                                      _%ordered73866%_
                                                      '6
                                                      '#f
                                                      '#f))
                                                   (class-slot-set!
                                                    gerbil/core/mop~MOP-2#class-type-info::t
                                                    __obj82483
                                                    'ordered-slots
                                                    _%ordered73866%_)))
                                             (for-each
                                              _%process-slot73846%_
                                              _%ordered73866%_)))))))
                             _%precedence-list73810%_)
                            (for-each _%process-slot73846%_ _%slots73800%_)
                            (reverse _%r-fields73829%_)))))))
                 (_%wrap69477%_
                  (lambda (_%e-stx73797%_)
                    (gx#stx-wrap-source
                     _%e-stx73797%_
                     (gx#stx-source _%stx69454%_))))
                 (_%generate-defclass69478%_
                  (lambda (_%id69612%_
                           _%super-ref69614%_
                           _%slots69615%_
                           _%body69616%_)
                    (letrec ((_%make-id69618%_
                              (lambda _%args73794%_
                                (apply gx#stx-identifier
                                       _%id69612%_
                                       _%args73794%_))))
                      (gx#check-duplicate-identifiers
                       (map _%slot-name69460%_ _%slots69615%_)
                       _%stx69454%_)
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~Interface[1]#check-signature-spec!__%|
                         '#f
                         absent-value
                         '#f
                         _%stx69454%_
                         _%slots69615%_))
                      (_%check-typedef-body!69459%_ _%body69616%_)
                      (let ((_g82762_
                             (_%get-mixin-slots69470%_ _%super-ref69614%_)))
                        (begin
                          (let ((_g82763_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g82762_)
                                       (##vector-length _g82762_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g82763_ 2)))
                                (error "Context expects 2 values" _g82763_)))
                          (let ((_%mixin-slots69621%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g82762_ 0)))
                                (_%slot-type-table69623%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g82762_ 1))))
                            (let* ((_%slot-contract-table69625%_
                                    (_%get-slot-contracts69472%_
                                     _%slots69615%_
                                     _%mixin-slots69621%_
                                     _%super-ref69614%_
                                     _%slot-type-table69623%_))
                                   (_%slot-default-table69628%_
                                    (_%get-slot-defaults69473%_
                                     _%slots69615%_
                                     _%mixin-slots69621%_
                                     _%super-ref69614%_))
                                   (_%ordered-slots69631%_
                                    (_%order-slots69476%_
                                     (map _%slot-name69460%_ _%slots69615%_)
                                     _%super-ref69614%_)))
                              (_%update-slot-types!69474%_
                               _%slots69615%_
                               _%slot-type-table69623%_)
                              (let* ((_%slots69636%_
                                      (map _%slot-name69460%_ _%slots69615%_))
                                     (_%mixin-slots69642%_
                                      (filter (lambda (_%slot69639%_)
                                                (not (memq _%slot69639%_
                                                           _%slots69636%_)))
                                              _%mixin-slots69621%_))
                                     (_%name69645%_
                                      (symbol->string (gx#stx-e _%id69612%_)))
                                     (_%super69648%_
                                      (map gx#syntax-local-value
                                           _%super-ref69614%_))
                                     (_%struct?69651%_
                                      (gx#stx-getq 'struct: _%body69616%_))
                                     (_%g6965469662%_
                                      (lambda (_%g6965569658%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g6965569658%_)))
                                     (_%g6965373790%_
                                      (lambda (_%g6965569666%_)
                                        ((lambda (_%L69669%_)
                                           (let* ((_%g6969269700%_
                                                   (lambda (_%g6969369696%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g6969369696%_)))
                                                  (_%g6969173786%_
                                                   (lambda (_%g6969369704%_)
                                                     ((lambda (_%L69707%_)
                                                        (let* ((_%g6972069728%_
                                                                (lambda (_%g6972169724%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g6972169724%_)))
                       (_%g6971973782%_
                        (lambda (_%g6972169732%_)
                          ((lambda (_%L69735%_)
                             (let* ((_%g6974869756%_
                                     (lambda (_%g6974969752%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6974969752%_)))
                                    (_%g6974773778%_
                                     (lambda (_%g6974969760%_)
                                       ((lambda (_%L69763%_)
                                          (let* ((_%g6977669784%_
                                                  (lambda (_%g6977769780%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g6977769780%_)))
                                                 (_%g6977573774%_
                                                  (lambda (_%g6977769788%_)
                                                    ((lambda (_%L69791%_)
                                                       (let* ((_%g6980469821%_
                                                               (lambda (_%g6980569817%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g6980569817%_)))
                      (_%g6980373770%_
                       (lambda (_%g6980569825%_)
                         (if (gx#stx-pair/null? _%g6980569825%_)
                             (let ((_g82764_
                                    (gx#syntax-split-splice
                                     _%g6980569825%_
                                     '0)))
                               (begin
                                 (let ((_g82765_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g82764_)
                                              (##vector-length _g82764_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g82765_ 2)))
                                       (error "Context expects 2 values"
                                              _g82765_)))
                                 (let ((_%target6980769828%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g82764_ 0)))
                                       (_%tl6980969831%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g82764_ 1))))
                                   (if (gx#stx-null? _%tl6980969831%_)
                                       (letrec ((_%loop6981069834%_
                                                 (lambda (_%hd6980869838%_
                                                          _%slot6981469841%_)
                                                   (if (gx#stx-pair?
                                                        _%hd6980869838%_)
                                                       (let ((_%e6981169844%_
                                                              (gx#syntax-e
                                                               _%hd6980869838%_)))
                                                         (let ((_%lp-hd6981269848%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e6981169844%_)))
                       (_%lp-tl6981369851%_
                        (let () (declare (not safe)) (##cdr _%e6981169844%_))))
                   (_%loop6981069834%_
                    _%lp-tl6981369851%_
                    (cons _%lp-hd6981269848%_ _%slot6981469841%_))))
               (let ((_%slot6981569854%_ (reverse _%slot6981469841%_)))
                 ((lambda (_%L69858%_)
                    (let* ((_%g6987569892%_
                            (lambda (_%g6987669888%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6987669888%_)))
                           (_%g6987473766%_
                            (lambda (_%g6987669896%_)
                              (if (gx#stx-pair/null? _%g6987669896%_)
                                  (let ((_g82766_
                                         (gx#syntax-split-splice
                                          _%g6987669896%_
                                          '0)))
                                    (begin
                                      (let ((_g82767_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82766_)
                                                   (##vector-length _g82766_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82767_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82767_)))
                                      (let ((_%target6987869899%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82766_ 0)))
                                            (_%tl6988069902%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82766_ 1))))
                                        (if (gx#stx-null? _%tl6988069902%_)
                                            (letrec ((_%loop6988169905%_
                                                      (lambda (_%hd6987969909%_
                                                               _%ordered-slot6988569912%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6987969909%_)
                                                            (let ((_%e6988269915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6987969909%_)))
                      (let ((_%lp-hd6988369919%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6988269915%_)))
                            (_%lp-tl6988469922%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6988269915%_))))
                        (_%loop6988169905%_
                         _%lp-tl6988469922%_
                         (cons _%lp-hd6988369919%_
                               _%ordered-slot6988569912%_))))
                    (let ((_%ordered-slot6988669925%_
                           (reverse _%ordered-slot6988569912%_)))
                      ((lambda (_%L69929%_)
                         (let* ((_%g6994669963%_
                                 (lambda (_%g6994769959%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g6994769959%_)))
                                (_%g6994573757%_
                                 (lambda (_%g6994769967%_)
                                   (if (gx#stx-pair/null? _%g6994769967%_)
                                       (let ((_g82768_
                                              (gx#syntax-split-splice
                                               _%g6994769967%_
                                               '0)))
                                         (begin
                                           (let ((_g82769_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g82768_)
                                                        (##vector-length
                                                         _g82768_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g82769_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g82769_)))
                                           (let ((_%target6994969970%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g82768_ 0)))
                                                 (_%tl6995169973%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g82768_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl6995169973%_)
                                                 (letrec ((_%loop6995269976%_
                                                           (lambda (_%hd6995069980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%getf6995669983%_)
                     (if (gx#stx-pair? _%hd6995069980%_)
                         (let ((_%e6995369986%_
                                (gx#syntax-e _%hd6995069980%_)))
                           (let ((_%lp-hd6995469990%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e6995369986%_)))
                                 (_%lp-tl6995569993%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e6995369986%_))))
                             (_%loop6995269976%_
                              _%lp-tl6995569993%_
                              (cons _%lp-hd6995469990%_ _%getf6995669983%_))))
                         (let ((_%getf6995769996%_
                                (reverse _%getf6995669983%_)))
                           ((lambda (_%L70000%_)
                              (let* ((_%g7001770034%_
                                      (lambda (_%g7001870030%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7001870030%_)))
                                     (_%g7001673748%_
                                      (lambda (_%g7001870038%_)
                                        (if (gx#stx-pair/null? _%g7001870038%_)
                                            (let ((_g82770_
                                                   (gx#syntax-split-splice
                                                    _%g7001870038%_
                                                    '0)))
                                              (begin
                                                (let ((_g82771_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g82770_)
                                                             (##vector-length
                                                              _g82770_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g82771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g82771_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target7002070041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g82770_
                                                          0)))
                                                      (_%tl7002270044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g82770_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl7002270044%_)
                                                      (letrec ((_%loop7002370047%_
                                                                (lambda (_%hd7002170051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%setf7002770054%_)
                          (if (gx#stx-pair? _%hd7002170051%_)
                              (let ((_%e7002470057%_
                                     (gx#syntax-e _%hd7002170051%_)))
                                (let ((_%lp-hd7002570061%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7002470057%_)))
                                      (_%lp-tl7002670064%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7002470057%_))))
                                  (_%loop7002370047%_
                                   _%lp-tl7002670064%_
                                   (cons _%lp-hd7002570061%_
                                         _%setf7002770054%_))))
                              (let ((_%setf7002870067%_
                                     (reverse _%setf7002770054%_)))
                                ((lambda (_%L70071%_)
                                   (let* ((_%g7008870105%_
                                           (lambda (_%g7008970101%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g7008970101%_)))
                                          (_%g7008773739%_
                                           (lambda (_%g7008970109%_)
                                             (if (gx#stx-pair/null?
                                                  _%g7008970109%_)
                                                 (let ((_g82772_
                                                        (gx#syntax-split-splice
                                                         _%g7008970109%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g82773_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g82772_)
                          (##vector-length _g82772_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g82773_ 2)))
                   (error "Context expects 2 values" _g82773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target7009170112%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g82772_
                                                               0)))
                                                           (_%tl7009370115%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g82772_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl7009370115%_)
                                                           (letrec ((_%loop7009470118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd7009270122%_ _%rawsetf7009870125%_)
                               (if (gx#stx-pair? _%hd7009270122%_)
                                   (let ((_%e7009570128%_
                                          (gx#syntax-e _%hd7009270122%_)))
                                     (let ((_%lp-hd7009670132%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7009570128%_)))
                                           (_%lp-tl7009770135%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7009570128%_))))
                                       (_%loop7009470118%_
                                        _%lp-tl7009770135%_
                                        (cons _%lp-hd7009670132%_
                                              _%rawsetf7009870125%_))))
                                   (let ((_%rawsetf7009970138%_
                                          (reverse _%rawsetf7009870125%_)))
                                     ((lambda (_%L70142%_)
                                        (let* ((_%g7015970176%_
                                                (lambda (_%g7016070172%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7016070172%_)))
                                               (_%g7015873735%_
                                                (lambda (_%g7016070180%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g7016070180%_)
                                                      (let ((_g82774_
                                                             (gx#syntax-split-splice
                                                              _%g7016070180%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g82775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g82774_)
                               (##vector-length _g82774_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g82775_ 2)))
                        (error "Context expects 2 values" _g82775_)))
                  (let ((_%target7016270183%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g82774_ 0)))
                        (_%tl7016470186%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g82774_ 1))))
                    (if (gx#stx-null? _%tl7016470186%_)
                        (letrec ((_%loop7016570189%_
                                  (lambda (_%hd7016370193%_
                                           _%mixin-slot7016970196%_)
                                    (if (gx#stx-pair? _%hd7016370193%_)
                                        (let ((_%e7016670199%_
                                               (gx#syntax-e _%hd7016370193%_)))
                                          (let ((_%lp-hd7016770203%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7016670199%_)))
                                                (_%lp-tl7016870206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7016670199%_))))
                                            (_%loop7016570189%_
                                             _%lp-tl7016870206%_
                                             (cons _%lp-hd7016770203%_
                                                   _%mixin-slot7016970196%_))))
                                        (let ((_%mixin-slot7017070209%_
                                               (reverse _%mixin-slot7016970196%_)))
                                          ((lambda (_%L70213%_)
                                             (let* ((_%g7023070247%_
                                                     (lambda (_%g7023170243%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7023170243%_)))
                                                    (_%g7022973726%_
                                                     (lambda (_%g7023170251%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g7023170251%_)
                                                           (let ((_g82776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g7023170251%_ '0)))
                     (begin
                       (let ((_g82777_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g82776_)
                                    (##vector-length _g82776_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g82777_ 2)))
                             (error "Context expects 2 values" _g82777_)))
                       (let ((_%target7023370254%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g82776_ 0)))
                             (_%tl7023570257%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g82776_ 1))))
                         (if (gx#stx-null? _%tl7023570257%_)
                             (letrec ((_%loop7023670260%_
                                       (lambda (_%hd7023470264%_
                                                _%mixin-getf7024070267%_)
                                         (if (gx#stx-pair? _%hd7023470264%_)
                                             (let ((_%e7023770270%_
                                                    (gx#syntax-e
                                                     _%hd7023470264%_)))
                                               (let ((_%lp-hd7023870274%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7023770270%_)))
                                                     (_%lp-tl7023970277%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7023770270%_))))
                                                 (_%loop7023670260%_
                                                  _%lp-tl7023970277%_
                                                  (cons _%lp-hd7023870274%_
                                                        _%mixin-getf7024070267%_))))
                                             (let ((_%mixin-getf7024170280%_
                                                    (reverse _%mixin-getf7024070267%_)))
                                               ((lambda (_%L70284%_)
                                                  (let* ((_%g7030170318%_
                                                          (lambda (_%g7030270314%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g7030270314%_)))
                                                         (_%g7030073717%_
                                                          (lambda (_%g7030270322%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g7030270322%_)
                        (let ((_g82778_
                               (gx#syntax-split-splice _%g7030270322%_ '0)))
                          (begin
                            (let ((_g82779_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g82778_)
                                         (##vector-length _g82778_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g82779_ 2)))
                                  (error "Context expects 2 values" _g82779_)))
                            (let ((_%target7030470325%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g82778_ 0)))
                                  (_%tl7030670328%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g82778_ 1))))
                              (if (gx#stx-null? _%tl7030670328%_)
                                  (letrec ((_%loop7030770331%_
                                            (lambda (_%hd7030570335%_
                                                     _%mixin-setf7031170338%_)
                                              (if (gx#stx-pair?
                                                   _%hd7030570335%_)
                                                  (let ((_%e7030870341%_
                                                         (gx#syntax-e
                                                          _%hd7030570335%_)))
                                                    (let ((_%lp-hd7030970345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7030870341%_)))
                                                          (_%lp-tl7031070348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7030870341%_))))
                                                      (_%loop7030770331%_
                                                       _%lp-tl7031070348%_
                                                       (cons _%lp-hd7030970345%_
                                                             _%mixin-setf7031170338%_))))
                                                  (let ((_%mixin-setf7031270351%_
                                                         (reverse _%mixin-setf7031170338%_)))
                                                    ((lambda (_%L70355%_)
                                                       (let* ((_%g7037270389%_
                                                               (lambda (_%g7037370385%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7037370385%_)))
                      (_%g7037173708%_
                       (lambda (_%g7037370393%_)
                         (if (gx#stx-pair/null? _%g7037370393%_)
                             (let ((_g82780_
                                    (gx#syntax-split-splice
                                     _%g7037370393%_
                                     '0)))
                               (begin
                                 (let ((_g82781_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g82780_)
                                              (##vector-length _g82780_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g82781_ 2)))
                                       (error "Context expects 2 values"
                                              _g82781_)))
                                 (let ((_%target7037570396%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g82780_ 0)))
                                       (_%tl7037770399%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g82780_ 1))))
                                   (if (gx#stx-null? _%tl7037770399%_)
                                       (letrec ((_%loop7037870402%_
                                                 (lambda (_%hd7037670406%_
                                                          _%mixin-rawsetf7038270409%_)
                                                   (if (gx#stx-pair?
                                                        _%hd7037670406%_)
                                                       (let ((_%e7037970412%_
                                                              (gx#syntax-e
                                                               _%hd7037670406%_)))
                                                         (let ((_%lp-hd7038070416%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e7037970412%_)))
                       (_%lp-tl7038170419%_
                        (let () (declare (not safe)) (##cdr _%e7037970412%_))))
                   (_%loop7037870402%_
                    _%lp-tl7038170419%_
                    (cons _%lp-hd7038070416%_ _%mixin-rawsetf7038270409%_))))
               (let ((_%mixin-rawsetf7038370422%_
                      (reverse _%mixin-rawsetf7038270409%_)))
                 ((lambda (_%L70426%_)
                    (let* ((_%g7044370460%_
                            (lambda (_%g7044470456%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7044470456%_)))
                           (_%g7044273691%_
                            (lambda (_%g7044470464%_)
                              (if (gx#stx-pair/null? _%g7044470464%_)
                                  (let ((_g82782_
                                         (gx#syntax-split-splice
                                          _%g7044470464%_
                                          '0)))
                                    (begin
                                      (let ((_g82783_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82782_)
                                                   (##vector-length _g82782_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82783_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82783_)))
                                      (let ((_%target7044670467%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82782_ 0)))
                                            (_%tl7044870470%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82782_ 1))))
                                        (if (gx#stx-null? _%tl7044870470%_)
                                            (letrec ((_%loop7044970473%_
                                                      (lambda (_%hd7044770477%_
                                                               _%ugetf7045370480%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7044770477%_)
                                                            (let ((_%e7045070483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7044770477%_)))
                      (let ((_%lp-hd7045170487%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7045070483%_)))
                            (_%lp-tl7045270490%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7045070483%_))))
                        (_%loop7044970473%_
                         _%lp-tl7045270490%_
                         (cons _%lp-hd7045170487%_ _%ugetf7045370480%_))))
                    (let ((_%ugetf7045470493%_ (reverse _%ugetf7045370480%_)))
                      ((lambda (_%L70497%_)
                         (let* ((_%g7051470531%_
                                 (lambda (_%g7051570527%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7051570527%_)))
                                (_%g7051373674%_
                                 (lambda (_%g7051570535%_)
                                   (if (gx#stx-pair/null? _%g7051570535%_)
                                       (let ((_g82784_
                                              (gx#syntax-split-splice
                                               _%g7051570535%_
                                               '0)))
                                         (begin
                                           (let ((_g82785_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g82784_)
                                                        (##vector-length
                                                         _g82784_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g82785_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g82785_)))
                                           (let ((_%target7051770538%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g82784_ 0)))
                                                 (_%tl7051970541%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g82784_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7051970541%_)
                                                 (letrec ((_%loop7052070544%_
                                                           (lambda (_%hd7051870548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%usetf7052470551%_)
                     (if (gx#stx-pair? _%hd7051870548%_)
                         (let ((_%e7052170554%_
                                (gx#syntax-e _%hd7051870548%_)))
                           (let ((_%lp-hd7052270558%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7052170554%_)))
                                 (_%lp-tl7052370561%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7052170554%_))))
                             (_%loop7052070544%_
                              _%lp-tl7052370561%_
                              (cons _%lp-hd7052270558%_ _%usetf7052470551%_))))
                         (let ((_%usetf7052570564%_
                                (reverse _%usetf7052470551%_)))
                           ((lambda (_%L70568%_)
                              (let* ((_%g7058570602%_
                                      (lambda (_%g7058670598%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7058670598%_)))
                                     (_%g7058473657%_
                                      (lambda (_%g7058670606%_)
                                        (if (gx#stx-pair/null? _%g7058670606%_)
                                            (let ((_g82786_
                                                   (gx#syntax-split-splice
                                                    _%g7058670606%_
                                                    '0)))
                                              (begin
                                                (let ((_g82787_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g82786_)
                                                             (##vector-length
                                                              _g82786_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g82787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g82787_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target7058870609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g82786_
                                                          0)))
                                                      (_%tl7059070612%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g82786_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl7059070612%_)
                                                      (letrec ((_%loop7059170615%_
                                                                (lambda (_%hd7058970619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%mixin-ugetf7059570622%_)
                          (if (gx#stx-pair? _%hd7058970619%_)
                              (let ((_%e7059270625%_
                                     (gx#syntax-e _%hd7058970619%_)))
                                (let ((_%lp-hd7059370629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7059270625%_)))
                                      (_%lp-tl7059470632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7059270625%_))))
                                  (_%loop7059170615%_
                                   _%lp-tl7059470632%_
                                   (cons _%lp-hd7059370629%_
                                         _%mixin-ugetf7059570622%_))))
                              (let ((_%mixin-ugetf7059670635%_
                                     (reverse _%mixin-ugetf7059570622%_)))
                                ((lambda (_%L70639%_)
                                   (let* ((_%g7065670673%_
                                           (lambda (_%g7065770669%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g7065770669%_)))
                                          (_%g7065573640%_
                                           (lambda (_%g7065770677%_)
                                             (if (gx#stx-pair/null?
                                                  _%g7065770677%_)
                                                 (let ((_g82788_
                                                        (gx#syntax-split-splice
                                                         _%g7065770677%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g82789_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g82788_)
                          (##vector-length _g82788_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g82789_ 2)))
                   (error "Context expects 2 values" _g82789_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target7065970680%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g82788_
                                                               0)))
                                                           (_%tl7066170683%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g82788_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl7066170683%_)
                                                           (letrec ((_%loop7066270686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd7066070690%_
                                      _%mixin-usetf7066670693%_)
                               (if (gx#stx-pair? _%hd7066070690%_)
                                   (let ((_%e7066370696%_
                                          (gx#syntax-e _%hd7066070690%_)))
                                     (let ((_%lp-hd7066470700%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7066370696%_)))
                                           (_%lp-tl7066570703%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7066370696%_))))
                                       (_%loop7066270686%_
                                        _%lp-tl7066570703%_
                                        (cons _%lp-hd7066470700%_
                                              _%mixin-usetf7066670693%_))))
                                   (let ((_%mixin-usetf7066770706%_
                                          (reverse _%mixin-usetf7066670693%_)))
                                     ((lambda (_%L70710%_)
                                        (let* ((_%type-slots70872%_
                                                (if (gx#stx-null?
                                                     _%slots69636%_)
                                                    '()
                                                    (cons 'slots:
                                                          (cons (map (lambda (_%slot70731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%getf70733%_
                                      _%setf70734%_
                                      _%rawsetf70735%_)
                               (let* ((_%g7073770760%_
                                       (lambda (_%g7073870756%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7073870756%_)))
                                      (_%g7073670836%_
                                       (lambda (_%g7073870764%_)
                                         (if (gx#stx-pair? _%g7073870764%_)
                                             (let ((_%e7074370767%_
                                                    (gx#syntax-e
                                                     _%g7073870764%_)))
                                               (let ((_%hd7074470771%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7074370767%_)))
                                                     (_%tl7074570774%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7074370767%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl7074570774%_)
                                                     (let ((_%e7074670777%_
                                                            (gx#syntax-e
                                                             _%tl7074570774%_)))
                                                       (let ((_%hd7074770781%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7074670777%_)))
                     (_%tl7074870784%_
                      (let () (declare (not safe)) (##cdr _%e7074670777%_))))
                 (if (gx#stx-pair? _%tl7074870784%_)
                     (let ((_%e7074970787%_ (gx#syntax-e _%tl7074870784%_)))
                       (let ((_%hd7075070791%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7074970787%_)))
                             (_%tl7075170794%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7074970787%_))))
                         (if (gx#stx-pair? _%tl7075170794%_)
                             (let ((_%e7075270797%_
                                    (gx#syntax-e _%tl7075170794%_)))
                               (let ((_%hd7075370801%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7075270797%_)))
                                     (_%tl7075470804%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7075270797%_))))
                                 (if (gx#stx-null? _%tl7075470804%_)
                                     ((lambda (_%L70807%_
                                               _%L70809%_
                                               _%L70810%_
                                               _%L70811%_)
                                        (if (hash-get
                                             _%slot-contract-table69625%_
                                             (gx#stx-e _%L70811%_))
                                            (cons _%L70811%_
                                                  (cons _%L70810%_
                                                        (cons _%L70807%_ '())))
                                            (cons _%L70811%_
                                                  (cons _%L70810%_
                                                        (cons _%L70809%_
                                                              '())))))
                                      _%hd7075370801%_
                                      _%hd7075070791%_
                                      _%hd7074770781%_
                                      _%hd7074470771%_)
                                     (_%g7073770760%_ _%g7073870764%_))))
                             (_%g7073770760%_ _%g7073870764%_))))
                     (_%g7073770760%_ _%g7073870764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7073770760%_
                                                      _%g7073870764%_))))
                                             (_%g7073770760%_
                                              _%g7073870764%_)))))
                                 (_%g7073670836%_
                                  (list _%slot70731%_
                                        _%getf70733%_
                                        _%setf70734%_
                                        _%rawsetf70735%_))))
                             (foldr (lambda (_%g7083970842%_ _%g7084070845%_)
                                      (cons _%g7083970842%_ _%g7084070845%_))
                                    '()
                                    _%L69858%_)
                             (foldr (lambda (_%g7084770850%_ _%g7084870853%_)
                                      (cons _%g7084770850%_ _%g7084870853%_))
                                    '()
                                    _%L70000%_)
                             (foldr (lambda (_%g7085570858%_ _%g7085670861%_)
                                      (cons _%g7085570858%_ _%g7085670861%_))
                                    '()
                                    _%L70071%_)
                             (foldr (lambda (_%g7086370866%_ _%g7086470869%_)
                                      (cons _%g7086370866%_ _%g7086470869%_))
                                    '()
                                    _%L70142%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-mixin-slots71019%_
                                                (if (gx#stx-null?
                                                     _%mixin-slots69642%_)
                                                    '()
                                                    (cons 'mixin:
                                                          (cons (map (lambda (_%slot70879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%getf70881%_
                                      _%setf70882%_
                                      _%rawsetf70883%_)
                               (let* ((_%g7088570908%_
                                       (lambda (_%g7088670904%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7088670904%_)))
                                      (_%g7088470983%_
                                       (lambda (_%g7088670912%_)
                                         (if (gx#stx-pair? _%g7088670912%_)
                                             (let ((_%e7089170915%_
                                                    (gx#syntax-e
                                                     _%g7088670912%_)))
                                               (let ((_%hd7089270919%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7089170915%_)))
                                                     (_%tl7089370922%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7089170915%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl7089370922%_)
                                                     (let ((_%e7089470925%_
                                                            (gx#syntax-e
                                                             _%tl7089370922%_)))
                                                       (let ((_%hd7089570929%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7089470925%_)))
                     (_%tl7089670932%_
                      (let () (declare (not safe)) (##cdr _%e7089470925%_))))
                 (if (gx#stx-pair? _%tl7089670932%_)
                     (let ((_%e7089770935%_ (gx#syntax-e _%tl7089670932%_)))
                       (let ((_%hd7089870939%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7089770935%_)))
                             (_%tl7089970942%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7089770935%_))))
                         (if (gx#stx-pair? _%tl7089970942%_)
                             (let ((_%e7090070945%_
                                    (gx#syntax-e _%tl7089970942%_)))
                               (let ((_%hd7090170949%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7090070945%_)))
                                     (_%tl7090270952%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7090070945%_))))
                                 (if (gx#stx-null? _%tl7090270952%_)
                                     ((lambda (_%L70955%_
                                               _%L70957%_
                                               _%L70958%_
                                               _%L70959%_)
                                        (if (hash-get
                                             _%slot-contract-table69625%_
                                             (gx#stx-e _%L70959%_))
                                            (cons _%L70959%_
                                                  (cons _%L70958%_
                                                        (cons _%L70955%_ '())))
                                            (cons _%L70959%_
                                                  (cons _%L70958%_
                                                        (cons _%L70957%_
                                                              '())))))
                                      _%hd7090170949%_
                                      _%hd7089870939%_
                                      _%hd7089570929%_
                                      _%hd7089270919%_)
                                     (_%g7088570908%_ _%g7088670912%_))))
                             (_%g7088570908%_ _%g7088670912%_))))
                     (_%g7088570908%_ _%g7088670912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7088570908%_
                                                      _%g7088670912%_))))
                                             (_%g7088570908%_
                                              _%g7088670912%_)))))
                                 (_%g7088470983%_
                                  (list _%slot70879%_
                                        _%getf70881%_
                                        _%setf70882%_
                                        _%rawsetf70883%_))))
                             (foldr (lambda (_%g7098670989%_ _%g7098770992%_)
                                      (cons _%g7098670989%_ _%g7098770992%_))
                                    '()
                                    _%L70213%_)
                             (foldr (lambda (_%g7099470997%_ _%g7099571000%_)
                                      (cons _%g7099470997%_ _%g7099571000%_))
                                    '()
                                    _%L70284%_)
                             (foldr (lambda (_%g7100271005%_ _%g7100371008%_)
                                      (cons _%g7100271005%_ _%g7100371008%_))
                                    '()
                                    _%L70355%_)
                             (foldr (lambda (_%g7101071013%_ _%g7101171016%_)
                                      (cons _%g7101071013%_ _%g7101171016%_))
                                    '()
                                    _%L70426%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-name71026%_
                                                (cons 'name:
                                                      (cons (let ((_%$e71022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'name: _%body69616%_)))
                      (if _%$e71022%_ _%$e71022%_ _%id69612%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-id71033%_
                                                (cons 'id:
                                                      (cons (let ((_%$e71029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'id: _%body69616%_)))
                      (if _%$e71029%_
                          _%$e71029%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                             _%L69669%_))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-constructor71048%_
                                                (let ((_%$e71044%_
                                                       (let ((_%e7103571037%_
                                                              (gx#stx-getq
                                                               'constructor:
                                                               _%body69616%_)))
                                                         (if _%e7103571037%_
                                                             (let ((_%e71041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e7103571037%_))
                       (cons 'constructor: (cons _%e71041%_ '())))
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e71044%_
                                                      _%$e71044%_
                                                      '())))
                                               (_%properties71102%_
                                                (let* ((_%properties71051%_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'transparent:
                                                              _%body69616%_))
                                                            (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          '())
                    '()))
               (_%properties71074%_
                (let ((_%$e71054%_
                       (gx#stx-e (gx#stx-getq 'print: _%body69616%_))))
                  (if _%$e71054%_
                      ((lambda (_%print71058%_)
                         (let ((_%print71069%_
                                (if (eq? _%print71058%_ '#t)
                                    (foldr (lambda (_%g7106071063%_
                                                    _%g7106171066%_)
                                             (cons _%g7106071063%_
                                                   _%g7106171066%_))
                                           '()
                                           _%L69858%_)
                                    _%print71058%_)))
                           (cons (cons 'print: _%print71069%_)
                                 _%properties71051%_)))
                       _%$e71054%_)
                      _%properties71051%_)))
               (_%properties71097%_
                (let ((_%$e71077%_
                       (gx#stx-e (gx#stx-getq 'equal: _%body69616%_))))
                  (if _%$e71077%_
                      ((lambda (_%equal71081%_)
                         (let ((_%equal71092%_
                                (if (eq? _%equal71081%_ '#t)
                                    (foldr (lambda (_%g7108371086%_
                                                    _%g7108471089%_)
                                             (cons _%g7108371086%_
                                                   _%g7108471089%_))
                                           '()
                                           _%L69858%_)
                                    _%equal71081%_)))
                           (cons (cons 'equal: _%equal71092%_)
                                 _%properties71074%_)))
                       _%$e71077%_)
                      _%properties71074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%properties71097%_))
                                               (_%type-properties71140%_
                                                (if (null? _%properties71102%_)
                                                    '()
                                                    (let* ((_%g7110571113%_
                                                            (lambda (_%g7110671109%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g7110671109%_)))
                                                           (_%g7110471136%_
                                                            (lambda (_%g7110671117%_)
                                                              ((lambda (_%L71120%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'properties:
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L71120%_ '()))
                                     '())))
                       _%g7110671117%_))))
              (_%g7110471136%_ _%properties71102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%metaclass71152%_
                                                (let ((_%$e71143%_
                                                       (gx#stx-getq
                                                        'metaclass:
                                                        _%body69616%_)))
                                                  (if _%$e71143%_
                                                      ((lambda (_%metaclass71147%_)
                                                         (if (gx#identifier?
                                                              _%metaclass71147%_)
                                                             _%metaclass71147%_
                                                             '#f))
                                                       _%$e71143%_)
                                                      '#f)))
                                               (_%final?71155%_
                                                (gx#stx-e
                                                 (gx#stx-getq
                                                  'final:
                                                  _%body69616%_)))
                                               (_%type-struct71158%_
                                                (cons 'struct:
                                                      (cons _%struct?69651%_
                                                            '())))
                                               (_%type-final71161%_
                                                (cons 'final:
                                                      (cons _%final?71155%_
                                                            '())))
                                               (_%type-metaclass71164%_
                                                (if _%metaclass71152%_
                                                    (cons 'metaclass:
                                                          (cons _%metaclass71152%_
                                                                '()))
                                                    '()))
                                               (_%g7116771184%_
                                                (lambda (_%g7116871180%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7116871180%_)))
                                               (_%g7116673636%_
                                                (lambda (_%g7116871188%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g7116871188%_)
                                                      (let ((_g82790_
                                                             (gx#syntax-split-splice
                                                              _%g7116871188%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g82791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g82790_)
                               (##vector-length _g82790_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g82791_ 2)))
                        (error "Context expects 2 values" _g82791_)))
                  (let ((_%target7117071191%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g82790_ 0)))
                        (_%tl7117271194%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g82790_ 1))))
                    (if (gx#stx-null? _%tl7117271194%_)
                        (letrec ((_%loop7117371197%_
                                  (lambda (_%hd7117171201%_
                                           _%type-body7117771204%_)
                                    (if (gx#stx-pair? _%hd7117171201%_)
                                        (let ((_%e7117471207%_
                                               (gx#syntax-e _%hd7117171201%_)))
                                          (let ((_%lp-hd7117571211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7117471207%_)))
                                                (_%lp-tl7117671214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7117471207%_))))
                                            (_%loop7117371197%_
                                             _%lp-tl7117671214%_
                                             (cons _%lp-hd7117571211%_
                                                   _%type-body7117771204%_))))
                                        (let ((_%type-body7117871217%_
                                               (reverse _%type-body7117771204%_)))
                                          ((lambda (_%L71221%_)
                                             (let* ((_%g7124271250%_
                                                     (lambda (_%g7124371246%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7124371246%_)))
                                                    (_%g7124173624%_
                                                     (lambda (_%g7124371254%_)
                                                       ((lambda (_%L71257%_)
                                                          (let* ((_%g7127071278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g7127171274%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g7127171274%_)))
                         (_%g7126973612%_
                          (lambda (_%g7127171282%_)
                            ((lambda (_%L71285%_)
                               (let* ((_%g7129871306%_
                                       (lambda (_%g7129971302%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7129971302%_)))
                                      (_%g7129773541%_
                                       (lambda (_%g7129971310%_)
                                         ((lambda (_%L71313%_)
                                            (let* ((_%g7132671334%_
                                                    (lambda (_%g7132771330%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g7132771330%_)))
                                                   (_%g7132573506%_
                                                    (lambda (_%g7132771338%_)
                                                      ((lambda (_%L71341%_)
                                                         (let* ((_%g7135471362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g7135571358%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g7135571358%_)))
                        (_%g7135373420%_
                         (lambda (_%g7135571366%_)
                           ((lambda (_%L71369%_)
                              (let* ((_%g7138271390%_
                                      (lambda (_%g7138371386%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7138371386%_)))
                                     (_%g7138173408%_
                                      (lambda (_%g7138371394%_)
                                        ((lambda (_%L71397%_)
                                           (let* ((_%g7141071418%_
                                                   (lambda (_%g7141171414%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g7141171414%_)))
                                                  (_%g7140973396%_
                                                   (lambda (_%g7141171422%_)
                                                     ((lambda (_%L71425%_)
                                                        (let* ((_%g7143871446%_
                                                                (lambda (_%g7143971442%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g7143971442%_)))
                       (_%g7143773282%_
                        (lambda (_%g7143971450%_)
                          ((lambda (_%L71453%_)
                             (let* ((_%g7146671474%_
                                     (lambda (_%g7146771470%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g7146771470%_)))
                                    (_%g7146573171%_
                                     (lambda (_%g7146771478%_)
                                       ((lambda (_%L71481%_)
                                          (let* ((_%g7149471502%_
                                                  (lambda (_%g7149571498%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g7149571498%_)))
                                                 (_%g7149373060%_
                                                  (lambda (_%g7149571506%_)
                                                    ((lambda (_%L71509%_)
                                                       (let* ((_%g7152271530%_
                                                               (lambda (_%g7152371526%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7152371526%_)))
                      (_%g7152173056%_
                       (lambda (_%g7152371534%_)
                         ((lambda (_%L71537%_)
                            (let* ((_%g7155071558%_
                                    (lambda (_%g7155171554%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g7155171554%_)))
                                   (_%g7154973052%_
                                    (lambda (_%g7155171562%_)
                                      ((lambda (_%L71565%_)
                                         (let* ((_%g7157871586%_
                                                 (lambda (_%g7157971582%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g7157971582%_)))
                                                (_%g7157773017%_
                                                 (lambda (_%g7157971590%_)
                                                   ((lambda (_%L71593%_)
                                                      (let* ((_%g7160671614%_
                                                              (lambda (_%g7160771610%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g7160771610%_)))
                     (_%g7160572946%_
                      (lambda (_%g7160771618%_)
                        ((lambda (_%L71621%_)
                           (let* ((_%g7163471642%_
                                   (lambda (_%g7163571638%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g7163571638%_)))
                                  (_%g7163372942%_
                                   (lambda (_%g7163571646%_)
                                     ((lambda (_%L71649%_)
                                        (let* ((_%g7166271670%_
                                                (lambda (_%g7166371666%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7166371666%_)))
                                               (_%g7166172938%_
                                                (lambda (_%g7166371674%_)
                                                  ((lambda (_%L71677%_)
                                                     (let* ((_%g7169071698%_
                                                             (lambda (_%g7169171694%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g7169171694%_)))
                                                            (_%g7168972934%_
                                                             (lambda (_%g7169171702%_)
                                                               ((lambda (_%L71705%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g7171871726%_
                                  (lambda (_%g7171971722%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g7171971722%_)))
                                 (_%g7171772908%_
                                  (lambda (_%g7171971730%_)
                                    ((lambda (_%L71733%_)
                                       (let* ((_%g7174671754%_
                                               (lambda (_%g7174771750%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g7174771750%_)))
                                              (_%g7174572882%_
                                               (lambda (_%g7174771758%_)
                                                 ((lambda (_%L71761%_)
                                                    (let* ((_%g7177471782%_
                                                            (lambda (_%g7177571778%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g7177571778%_)))
                                                           (_%g7177372856%_
                                                            (lambda (_%g7177571786%_)
                                                              ((lambda (_%L71789%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%map-slot-usetf71807%_
                                 (lambda (_%slot71802%_
                                          _%setf71804%_
                                          _%rawsetf71805%_)
                                   (cons 'cons
                                         (cons (cons 'quote
                                                     (cons _%slot71802%_ '()))
                                               (cons (if (hash-get
                                                          _%slot-contract-table69625%_
                                                          (gx#stx-e
                                                           _%slot71802%_))
                                                         (cons 'quote-syntax
                                                               (cons (gx#stx-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rawsetf71805%_
                              '"&"
                              _%rawsetf71805%_)
                             '()))
                 (cons 'quote-syntax (cons _%setf71804%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                                (_%g7181071818%_
                                 (lambda (_%g7181171814%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7181171814%_)))
                                (_%g7180972638%_
                                 (lambda (_%g7181171822%_)
                                   ((lambda (_%L71825%_)
                                      (let* ((_%g7183971847%_
                                              (lambda (_%g7184071843%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g7184071843%_)))
                                             (_%g7183872634%_
                                              (lambda (_%g7184071851%_)
                                                ((lambda (_%L71854%_)
                                                   (let* ((_%g7186771875%_
                                                           (lambda (_%g7186871871%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g7186871871%_)))
                                                          (_%g7186672120%_
                                                           (lambda (_%g7186871879%_)
                                                             ((lambda (_%L71882%_)
                                                                (let* ((_%g7189571912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g7189671908%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g7189671908%_)))
                               (_%g7189471976%_
                                (lambda (_%g7189671916%_)
                                  (if (gx#stx-pair/null? _%g7189671916%_)
                                      (let ((_g82792_
                                             (gx#syntax-split-splice
                                              _%g7189671916%_
                                              '0)))
                                        (begin
                                          (let ((_g82793_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g82792_)
                                                       (##vector-length
                                                        _g82792_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g82793_ 2)))
                                                (error "Context expects 2 values"
                                                       _g82793_)))
                                          (let ((_%target7189871919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82792_ 0)))
                                                (_%tl7190071922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82792_ 1))))
                                            (if (gx#stx-null? _%tl7190071922%_)
                                                (letrec ((_%loop7190171925%_
                                                          (lambda (_%hd7189971929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%defsetf7190571932%_)
                    (if (gx#stx-pair? _%hd7189971929%_)
                        (let ((_%e7190271935%_ (gx#syntax-e _%hd7189971929%_)))
                          (let ((_%lp-hd7190371939%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7190271935%_)))
                                (_%lp-tl7190471942%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7190271935%_))))
                            (_%loop7190171925%_
                             _%lp-tl7190471942%_
                             (cons _%lp-hd7190371939%_
                                   _%defsetf7190571932%_))))
                        (let ((_%defsetf7190671945%_
                               (reverse _%defsetf7190571932%_)))
                          ((lambda (_%L71949%_)
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _%L71285%_
                                         (cons _%L71854%_
                                               (cons _%L71882%_
                                                     (foldr (lambda (_%g7196771970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g7196871973%_)
                      (cons _%g7196771970%_ _%g7196871973%_))
                    '()
                    _%L71949%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _%defsetf7190671945%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7190171925%_
                                                   _%target7189871919%_
                                                   '()))
                                                (_%g7189571912%_
                                                 _%g7189671916%_)))))
                                      (_%g7189571912%_ _%g7189671916%_)))))
                          (_%g7189471976%_
                           (let ((__tmp82794
                                  (map (lambda (_%slot71980%_
                                                _%setf71982%_
                                                _%rawsetf71983%_)
                                         (let ((_%contract7198471986%_
                                                (hash-get
                                                 _%slot-contract-table69625%_
                                                 (gx#stx-e _%slot71980%_))))
                                           (if _%contract7198471986%_
                                               (let* ((_%contract71990%_
                                                       _%contract7198471986%_)
                                                      (_%g7199372016%_
                                                       (lambda (_%g7199472012%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g7199472012%_)))
                                                      (_%g7199272092%_
                                                       (lambda (_%g7199472020%_)
                                                         (if (gx#stx-pair?
                                                              _%g7199472020%_)
                                                             (let ((_%e7199972023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%g7199472020%_)))
                       (let ((_%hd7200072027%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7199972023%_)))
                             (_%tl7200172030%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7199972023%_))))
                         (if (gx#stx-pair? _%tl7200172030%_)
                             (let ((_%e7200272033%_
                                    (gx#syntax-e _%tl7200172030%_)))
                               (let ((_%hd7200372037%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7200272033%_)))
                                     (_%tl7200472040%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7200272033%_))))
                                 (if (gx#stx-pair? _%tl7200472040%_)
                                     (let ((_%e7200572043%_
                                            (gx#syntax-e _%tl7200472040%_)))
                                       (let ((_%hd7200672047%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7200572043%_)))
                                             (_%tl7200772050%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7200572043%_))))
                                         (if (gx#stx-pair? _%tl7200772050%_)
                                             (let ((_%e7200872053%_
                                                    (gx#syntax-e
                                                     _%tl7200772050%_)))
                                               (let ((_%hd7200972057%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7200872053%_)))
                                                     (_%tl7201072060%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7200872053%_))))
                                                 (if (gx#stx-null?
                                                      _%tl7201072060%_)
                                                     ((lambda (_%L72063%_
                                                               _%L72065%_
                                                               _%L72066%_
                                                               _%L72067%_)
                                                        (_%wrap69477%_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'def/c)
                                                               (cons (cons _%L72065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f '$obj)
                                               (cons (gx#datum->syntax '#f ':)
                                                     (cons _%L69669%_ '())))
                                         (cons _%L72067%_ '())))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons (gx#datum->syntax '#f ':void)
                                         (cons (cons _%L72063%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           (cons _%L72066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))
              _%hd7200972057%_
              _%hd7200672047%_
              _%hd7200372037%_
              _%hd7200072027%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7199372016%_
                                                      _%g7199472020%_))))
                                             (_%g7199372016%_
                                              _%g7199472020%_))))
                                     (_%g7199372016%_ _%g7199472020%_))))
                             (_%g7199372016%_ _%g7199472020%_))))
                     (_%g7199372016%_ _%g7199472020%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7199272092%_
                                                  (list (cons _%slot71980%_
                                                              _%contract71990%_)
                                                        _%slot71980%_
                                                        _%setf71982%_
                                                        (gx#stx-identifier
                                                         _%rawsetf71983%_
                                                         '"&"
                                                         _%rawsetf71983%_))))
                                               '#f)))
                                       (foldr (lambda (_%g7209572098%_
                                                       _%g7209672101%_)
                                                (cons _%g7209572098%_
                                                      _%g7209672101%_))
                                              '()
                                              _%L69858%_)
                                       (foldr (lambda (_%g7210372106%_
                                                       _%g7210472109%_)
                                                (cons _%g7210372106%_
                                                      _%g7210472109%_))
                                              '()
                                              _%L70071%_)
                                       (foldr (lambda (_%g7211172114%_
                                                       _%g7211272117%_)
                                                (cons _%g7211172114%_
                                                      _%g7211272117%_))
                                              '()
                                              _%L70142%_))))
                             (declare (not safe))
                             (##filter identity __tmp82794)))))
                      _%g7186871879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7186672120%_
                                                      (if (or (not (null? _%type-constructor71048%_))
                                                              (and (zero? (hash-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%slot-contract-table69625%_))
                           (zero? (hash-length _%slot-default-table69628%_)))
                      _%metaclass71152%_)
                  (cons (gx#datum->syntax '#f 'begin) '())
                  (if (and _%struct?69651%_
                           (zero? (hash-length _%slot-default-table69628%_)))
                      (let* ((_%g7213672151%_
                              (lambda (_%g7213772147%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g7213772147%_)))
                             (_%g7213572205%_
                              (lambda (_%g7213772155%_)
                                (if (gx#stx-pair? _%g7213772155%_)
                                    (let ((_%e7214072158%_
                                           (gx#syntax-e _%g7213772155%_)))
                                      (let ((_%hd7214172162%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7214072158%_)))
                                            (_%tl7214272165%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7214072158%_))))
                                        (if (gx#stx-pair? _%tl7214272165%_)
                                            (let ((_%e7214372168%_
                                                   (gx#syntax-e
                                                    _%tl7214272165%_)))
                                              (let ((_%hd7214472172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7214372168%_)))
                                                    (_%tl7214572175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7214372168%_))))
                                                (if (gx#stx-null?
                                                     _%tl7214572175%_)
                                                    ((lambda (_%L72178%_
                                                              _%L72180%_)
                                                       (_%wrap69477%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def/c)
                                                              (cons (cons _%L69735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%L72180%_)
                            (cons (gx#datum->syntax '#f '=>)
                                  (cons _%L69669%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L72178%_ '()))
                  (cons (cons (gx#datum->syntax '#f '##structure)
                              (cons _%L72178%_
                                    (foldr (lambda (_%g7219672199%_
                                                    _%g7219772202%_)
                                             (cons _%g7219672199%_
                                                   _%g7219772202%_))
                                           '()
                                           _%L69929%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd7214472172%_
                                                     _%hd7214172162%_)
                                                    (_%g7213672151%_
                                                     _%g7213772155%_))))
                                            (_%g7213672151%_
                                             _%g7213772155%_))))
                                    (_%g7213672151%_ _%g7213772155%_)))))
                        (_%g7213572205%_
                         (list (foldr (lambda (_%slot72209%_ _%r72211%_)
                                        (let ((_%$e72213%_
                                               (hash-get
                                                _%slot-contract-table69625%_
                                                (gx#stx-e _%slot72209%_))))
                                          (if _%$e72213%_
                                              ((lambda (_%contract72217%_)
                                                 (let* ((_%g7222072244%_
                                                         (lambda (_%g7222172240%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g7222172240%_)))
                                                        (_%g7221972334%_
                                                         (lambda (_%g7222172248%_)
                                                           (if (gx#stx-pair?
                                                                _%g7222172248%_)
                                                               (let ((_%e7222472251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g7222172248%_)))
                         (let ((_%hd7222572255%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e7222472251%_)))
                               (_%tl7222672258%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e7222472251%_))))
                           (if (gx#stx-pair? _%tl7222672258%_)
                               (let ((_%e7222772261%_
                                      (gx#syntax-e _%tl7222672258%_)))
                                 (let ((_%hd7222872265%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7222772261%_)))
                                       (_%tl7222972268%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7222772261%_))))
                                   (if (gx#stx-pair/null? _%hd7222872265%_)
                                       (let ((_g82795_
                                              (gx#syntax-split-splice
                                               _%hd7222872265%_
                                               '0)))
                                         (begin
                                           (let ((_g82796_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g82795_)
                                                        (##vector-length
                                                         _g82795_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g82796_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g82796_)))
                                           (let ((_%target7223072271%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g82795_ 0)))
                                                 (_%tl7223272274%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g82795_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7223272274%_)
                                                 (letrec ((_%loop7223372277%_
                                                           (lambda (_%hd7223172281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%contract7223772284%_)
                     (if (gx#stx-pair? _%hd7223172281%_)
                         (let ((_%e7223472287%_
                                (gx#syntax-e _%hd7223172281%_)))
                           (let ((_%lp-hd7223572291%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7223472287%_)))
                                 (_%lp-tl7223672294%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7223472287%_))))
                             (_%loop7223372277%_
                              _%lp-tl7223672294%_
                              (cons _%lp-hd7223572291%_
                                    _%contract7223772284%_))))
                         (let ((_%contract7223872297%_
                                (reverse _%contract7223772284%_)))
                           (if (gx#stx-null? _%tl7222972268%_)
                               ((lambda (_%L72301%_ _%L72303%_)
                                  (cons (cons _%L72303%_
                                              (foldr (lambda (_%g7232572328%_
                                                              _%g7232672331%_)
                                                       (cons _%g7232572328%_
                                                             _%g7232672331%_))
                                                     '()
                                                     _%L72301%_))
                                        _%r72211%_))
                                _%contract7223872297%_
                                _%hd7222572255%_)
                               (_%g7222072244%_ _%g7222172248%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7223372277%_
                                                    _%target7223072271%_
                                                    '()))
                                                 (_%g7222072244%_
                                                  _%g7222172248%_)))))
                                       (_%g7222072244%_ _%g7222172248%_))))
                               (_%g7222072244%_ _%g7222172248%_))))
                       (_%g7222072244%_ _%g7222172248%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g7221972334%_
                                                    (list _%slot72209%_
                                                          _%contract72217%_))))
                                               _%$e72213%_)
                                              (cons _%slot72209%_
                                                    _%r72211%_))))
                                      '()
                                      (foldr (lambda (_%g7233972342%_
                                                      _%g7234072345%_)
                                               (cons _%g7233972342%_
                                                     _%g7234072345%_))
                                             '()
                                             _%L69929%_))
                               (gx#core-quote-syntax _%L69707%_))))
                      (let* ((_%g7235072365%_
                              (lambda (_%g7235172361%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g7235172361%_)))
                             (_%g7234972418%_
                              (lambda (_%g7235172369%_)
                                (if (gx#stx-pair? _%g7235172369%_)
                                    (let ((_%e7235472372%_
                                           (gx#syntax-e _%g7235172369%_)))
                                      (let ((_%hd7235572376%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7235472372%_)))
                                            (_%tl7235672379%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7235472372%_))))
                                        (if (gx#stx-pair? _%tl7235672379%_)
                                            (let ((_%e7235772382%_
                                                   (gx#syntax-e
                                                    _%tl7235672379%_)))
                                              (let ((_%hd7235872386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7235772382%_)))
                                                    (_%tl7235972389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7235772382%_))))
                                                (if (gx#stx-null?
                                                     _%tl7235972389%_)
                                                    ((lambda (_%L72392%_
                                                              _%L72394%_)
                                                       (_%wrap69477%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def/c)
                                                              (cons (cons _%L69735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%L72394%_)
                            (cons (gx#datum->syntax '#f '=>)
                                  (cons _%L69669%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L72392%_ '()))
                  (cons (cons (gx#datum->syntax '#f '##structure)
                              (cons _%L72392%_
                                    (foldr (lambda (_%g7240972412%_
                                                    _%g7241072415%_)
                                             (cons _%g7240972412%_
                                                   _%g7241072415%_))
                                           '()
                                           _%L69929%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd7235872386%_
                                                     _%hd7235572376%_)
                                                    (_%g7235072365%_
                                                     _%g7235172369%_))))
                                            (_%g7235072365%_
                                             _%g7235172369%_))))
                                    (_%g7235072365%_ _%g7235172369%_)))))
                        (_%g7234972418%_
                         (list (foldr (lambda (_%slot72422%_ _%r72424%_)
                                        (let* ((_%default72426%_
                                                (hash-get
                                                 _%slot-default-table69628%_
                                                 (gx#stx-e _%slot72422%_)))
                                               (_%$e72429%_
                                                (hash-get
                                                 _%slot-contract-table69625%_
                                                 (gx#stx-e _%slot72422%_))))
                                          (if _%$e72429%_
                                              ((lambda (_%contract72433%_)
                                                 (let* ((_%g7243672473%_
                                                         (lambda (_%g7243772469%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g7243772469%_)))
                                                        (_%g7243572620%_
                                                         (lambda (_%g7243772477%_)
                                                           (if (gx#stx-pair?
                                                                _%g7243772477%_)
                                                               (let ((_%e7244172480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g7243772477%_)))
                         (let ((_%hd7244272484%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e7244172480%_)))
                               (_%tl7244372487%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e7244172480%_))))
                           (if (gx#stx-pair? _%tl7244372487%_)
                               (let ((_%e7244472490%_
                                      (gx#syntax-e _%tl7244372487%_)))
                                 (let ((_%hd7244572494%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7244472490%_)))
                                       (_%tl7244672497%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7244472490%_))))
                                   (if (gx#stx-pair/null? _%hd7244572494%_)
                                       (let ((_g82797_
                                              (gx#syntax-split-splice
                                               _%hd7244572494%_
                                               '0)))
                                         (begin
                                           (let ((_g82798_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g82797_)
                                                        (##vector-length
                                                         _g82797_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g82798_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g82798_)))
                                           (let ((_%target7244772500%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g82797_ 0)))
                                                 (_%tl7244972503%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g82797_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7244972503%_)
                                                 (letrec ((_%loop7245072506%_
                                                           (lambda (_%hd7244872510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%contract7245472513%_)
                     (if (gx#stx-pair? _%hd7244872510%_)
                         (let ((_%e7245172516%_
                                (gx#syntax-e _%hd7244872510%_)))
                           (let ((_%lp-hd7245272520%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7245172516%_)))
                                 (_%lp-tl7245372523%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7245172516%_))))
                             (_%loop7245072506%_
                              _%lp-tl7245372523%_
                              (cons _%lp-hd7245272520%_
                                    _%contract7245472513%_))))
                         (let ((_%contract7245572526%_
                                (reverse _%contract7245472513%_)))
                           (if (gx#stx-pair? _%tl7244672497%_)
                               (let ((_%e7245672530%_
                                      (gx#syntax-e _%tl7244672497%_)))
                                 (let ((_%hd7245772534%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7245672530%_)))
                                       (_%tl7245872537%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7245672530%_))))
                                   (if (gx#stx-pair/null? _%hd7245772534%_)
                                       (let ((_g82799_
                                              (gx#syntax-split-splice
                                               _%hd7245772534%_
                                               '0)))
                                         (begin
                                           (let ((_g82800_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g82799_)
                                                        (##vector-length
                                                         _g82799_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g82800_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g82800_)))
                                           (let ((_%target7245972540%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g82799_ 0)))
                                                 (_%tl7246172543%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g82799_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7246172543%_)
                                                 (letrec ((_%loop7246272546%_
                                                           (lambda (_%hd7246072550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%default7246672553%_)
                     (if (gx#stx-pair? _%hd7246072550%_)
                         (let ((_%e7246372556%_
                                (gx#syntax-e _%hd7246072550%_)))
                           (let ((_%lp-hd7246472560%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7246372556%_)))
                                 (_%lp-tl7246572563%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7246372556%_))))
                             (_%loop7246272546%_
                              _%lp-tl7246572563%_
                              (cons _%lp-hd7246472560%_
                                    _%default7246672553%_))))
                         (let ((_%default7246772566%_
                                (reverse _%default7246672553%_)))
                           (if (gx#stx-null? _%tl7245872537%_)
                               ((lambda (_%L72570%_ _%L72572%_ _%L72573%_)
                                  (cons (symbol->keyword (gx#stx-e _%L72573%_))
                                        (cons (cons _%L72573%_
                                                    (foldr (lambda (_%g7260372608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g7260472611%_)
                     (cons _%g7260372608%_ _%g7260472611%_))
                   (foldr (lambda (_%g7260572614%_ _%g7260672617%_)
                            (cons _%g7260572614%_ _%g7260672617%_))
                          '()
                          _%L72570%_)
                   _%L72572%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%r72424%_)))
                                _%default7246772566%_
                                _%contract7245572526%_
                                _%hd7244272484%_)
                               (_%g7243672473%_ _%g7243772477%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7246272546%_
                                                    _%target7245972540%_
                                                    '()))
                                                 (_%g7243672473%_
                                                  _%g7243772477%_)))))
                                       (_%g7243672473%_ _%g7243772477%_))))
                               (_%g7243672473%_ _%g7243772477%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7245072506%_
                                                    _%target7244772500%_
                                                    '()))
                                                 (_%g7243672473%_
                                                  _%g7243772477%_)))))
                                       (_%g7243672473%_ _%g7243772477%_))))
                               (_%g7243672473%_ _%g7243772477%_))))
                       (_%g7243672473%_ _%g7243772477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g7243572620%_
                                                    (list _%slot72422%_
                                                          _%contract72433%_
                                                          (if _%default72426%_
                                                              (cons ':=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%default72426%_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$e72429%_)
                                              (cons (symbol->keyword
                                                     (gx#stx-e _%slot72422%_))
                                                    (cons (cons _%slot72422%_
                                                                (cons _%default72426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%r72424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()
                                      (foldr (lambda (_%g7262572628%_
                                                      _%g7262672631%_)
                                               (cons _%g7262572628%_
                                                     _%g7262672631%_))
                                             '()
                                             _%L69929%_))
                               (gx#core-quote-syntax _%L69707%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g7184071851%_))))
                                        (_%g7183872634%_
                                         (_%wrap69477%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%L69669%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'make-class-type-info)
                          (cons 'id:
                                (cons _%L71313%_
                                      (cons 'name:
                                            (cons _%L71341%_
                                                  (cons 'slots:
                                                        (cons _%L71397%_
                                                              (cons 'ordered-slots:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L71425%_
                                  (cons 'super:
                                        (cons _%L71369%_
                                              (cons 'struct?:
                                                    (cons _%L71537%_
                                                          (cons 'final?:
                                                                (cons _%L71565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'metaclass:
                                    (cons _%L71593%_
                                          (cons 'constructor-method:
                                                (cons _%L71621%_
                                                      (cons 'type-descriptor:
                                                            (cons _%L71649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'constructor:
                                (cons _%L71677%_
                                      (cons 'predicate:
                                            (cons _%L71705%_
                                                  (cons 'accessors:
                                                        (cons _%L71733%_
                                                              (cons 'mutators:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L71789%_
                                  (cons 'unchecked-accessors:
                                        (cons _%L71761%_
                                              (cons 'unchecked-mutators:
                                                    (cons _%L71825%_
                                                          (cons 'slot-types:
                                                                (cons _%L71453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slot-contracts:
                                    (cons _%L71481%_
                                          (cons 'slot-defaults:
                                                (cons _%L71509%_
                                                      '())))))))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g7181171822%_))))
                           (_%g7180972638%_
                            (let* ((_%g7264272675%_
                                    (lambda (_%g7264372671%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g7264372671%_)))
                                   (_%g7264172804%_
                                    (lambda (_%g7264372679%_)
                                      (if (gx#stx-pair? _%g7264372679%_)
                                          (let ((_%e7264672682%_
                                                 (gx#syntax-e
                                                  _%g7264372679%_)))
                                            (let ((_%hd7264772686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7264672682%_)))
                                                  (_%tl7264872689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7264672682%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd7264772686%_)
                                                  (let ((_g82801_
                                                         (gx#syntax-split-splice
                                                          _%hd7264772686%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g82802_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g82801_)
                           (##vector-length _g82801_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g82802_ 2)))
                    (error "Context expects 2 values" _g82802_)))
              (let ((_%target7264972692%_
                     (let () (declare (not safe)) (##vector-ref _g82801_ 0)))
                    (_%tl7265172695%_
                     (let () (declare (not safe)) (##vector-ref _g82801_ 1))))
                (if (gx#stx-null? _%tl7265172695%_)
                    (letrec ((_%loop7265272698%_
                              (lambda (_%hd7265072702%_
                                       _%slot-usetf7265672705%_)
                                (if (gx#stx-pair? _%hd7265072702%_)
                                    (let ((_%e7265372708%_
                                           (gx#syntax-e _%hd7265072702%_)))
                                      (let ((_%lp-hd7265472712%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7265372708%_)))
                                            (_%lp-tl7265572715%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7265372708%_))))
                                        (_%loop7265272698%_
                                         _%lp-tl7265572715%_
                                         (cons _%lp-hd7265472712%_
                                               _%slot-usetf7265672705%_))))
                                    (let ((_%slot-usetf7265772718%_
                                           (reverse _%slot-usetf7265672705%_)))
                                      (if (gx#stx-pair? _%tl7264872689%_)
                                          (let ((_%e7265872722%_
                                                 (gx#syntax-e
                                                  _%tl7264872689%_)))
                                            (let ((_%hd7265972726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7265872722%_)))
                                                  (_%tl7266072729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7265872722%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd7265972726%_)
                                                  (let ((_g82803_
                                                         (gx#syntax-split-splice
                                                          _%hd7265972726%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g82804_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g82803_)
                           (##vector-length _g82803_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g82804_ 2)))
                    (error "Context expects 2 values" _g82804_)))
              (let ((_%target7266172732%_
                     (let () (declare (not safe)) (##vector-ref _g82803_ 0)))
                    (_%tl7266372735%_
                     (let () (declare (not safe)) (##vector-ref _g82803_ 1))))
                (if (gx#stx-null? _%tl7266372735%_)
                    (letrec ((_%loop7266472738%_
                              (lambda (_%hd7266272742%_
                                       _%mixin-slot-usetf7266872745%_)
                                (if (gx#stx-pair? _%hd7266272742%_)
                                    (let ((_%e7266572748%_
                                           (gx#syntax-e _%hd7266272742%_)))
                                      (let ((_%lp-hd7266672752%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7266572748%_)))
                                            (_%lp-tl7266772755%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7266572748%_))))
                                        (_%loop7266472738%_
                                         _%lp-tl7266772755%_
                                         (cons _%lp-hd7266672752%_
                                               _%mixin-slot-usetf7266872745%_))))
                                    (let ((_%mixin-slot-usetf7266972758%_
                                           (reverse _%mixin-slot-usetf7266872745%_)))
                                      (if (gx#stx-null? _%tl7266072729%_)
                                          ((lambda (_%L72762%_ _%L72764%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (foldr (lambda (_%g7278772792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g7278872795%_)
                    (cons _%g7278772792%_ _%g7278872795%_))
                  (foldr (lambda (_%g7278972798%_ _%g7279072801%_)
                           (cons _%g7278972798%_ _%g7279072801%_))
                         '()
                         _%L72762%_)
                  _%L72764%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-slot-usetf7266972758%_
                                           _%slot-usetf7265772718%_)
                                          (_%g7264272675%_
                                           _%g7264372679%_)))))))
                      (_%loop7266472738%_ _%target7266172732%_ '()))
                    (_%g7264272675%_ _%g7264372679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7264272675%_
                                                   _%g7264372679%_))))
                                          (_%g7264272675%_
                                           _%g7264372679%_)))))))
                      (_%loop7265272698%_ _%target7264972692%_ '()))
                    (_%g7264272675%_ _%g7264372679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7264272675%_
                                                   _%g7264372679%_))))
                                          (_%g7264272675%_ _%g7264372679%_)))))
                              (_%g7264172804%_
                               (list (map _%map-slot-usetf71807%_
                                          (foldr (lambda (_%g7280772810%_
                                                          _%g7280872813%_)
                                                   (cons _%g7280772810%_
                                                         _%g7280872813%_))
                                                 '()
                                                 _%L69858%_)
                                          (foldr (lambda (_%g7281572818%_
                                                          _%g7281672821%_)
                                                   (cons _%g7281572818%_
                                                         _%g7281672821%_))
                                                 '()
                                                 _%L70568%_)
                                          (foldr (lambda (_%g7282372826%_
                                                          _%g7282472829%_)
                                                   (cons _%g7282372826%_
                                                         _%g7282472829%_))
                                                 '()
                                                 _%L70142%_))
                                     (map _%map-slot-usetf71807%_
                                          (foldr (lambda (_%g7283172834%_
                                                          _%g7283272837%_)
                                                   (cons _%g7283172834%_
                                                         _%g7283272837%_))
                                                 '()
                                                 _%L70213%_)
                                          (foldr (lambda (_%g7283972842%_
                                                          _%g7284072845%_)
                                                   (cons _%g7283972842%_
                                                         _%g7284072845%_))
                                                 '()
                                                 _%L70710%_)
                                          (foldr (lambda (_%g7284772850%_
                                                          _%g7284872853%_)
                                                   (cons _%g7284772850%_
                                                         _%g7284872853%_))
                                                 '()
                                                 _%L70426%_))))))))
                       _%g7177571786%_))))
              (_%g7177372856%_
               (cons (gx#datum->syntax '#f '@list)
                     (begin
                       (gx#syntax-check-splice-targets _%L70071%_ _%L69858%_)
                       (foldr (lambda (_%g7285972866%_
                                       _%g7286072869%_
                                       _%g7286172871%_)
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%g7286072869%_
                                                              '()))
                                                  (cons '::
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%g7285972866%_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%g7286172871%_))
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%L70355%_
                                 _%L70213%_)
                                (foldr (lambda (_%g7286272874%_
                                                _%g7286372877%_
                                                _%g7286472879%_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g7286372877%_ '()))
                   (cons '::
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g7286272874%_ '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g7286472879%_))
                                       '()
                                       _%L70355%_
                                       _%L70213%_))
                              _%L70071%_
                              _%L69858%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g7174771758%_))))
                                         (_%g7174572882%_
                                          (cons (gx#datum->syntax '#f '@list)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L70497%_
                                                   _%L69858%_)
                                                  (foldr (lambda (_%g7288572892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g7288672895%_
                          _%g7288772897%_)
                   (cons (cons (gx#datum->syntax '#f '@list)
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g7288672895%_ '()))
                                     (cons '::
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _%g7288572892%_
                                                             '()))
                                                 '()))))
                         _%g7288772897%_))
                 (begin
                   (gx#syntax-check-splice-targets _%L70639%_ _%L70213%_)
                   (foldr (lambda (_%g7288872900%_
                                   _%g7288972903%_
                                   _%g7289072905%_)
                            (cons (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g7288972903%_ '()))
                                              (cons '::
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _%g7288872900%_ '()))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%g7289072905%_))
                          '()
                          _%L70639%_
                          _%L70213%_))
                 _%L70497%_
                 _%L69858%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g7171971730%_))))
                            (_%g7171772908%_
                             (cons (gx#datum->syntax '#f '@list)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _%L70000%_
                                      _%L69858%_)
                                     (foldr (lambda (_%g7291172918%_
                                                     _%g7291272921%_
                                                     _%g7291372923%_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%g7291272921%_ '()))
                        (cons '::
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g7291172918%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g7291372923%_))
                                            (begin
                                              (gx#syntax-check-splice-targets
                                               _%L70284%_
                                               _%L70213%_)
                                              (foldr (lambda (_%g7291472926%_
                                                              _%g7291572929%_
                                                              _%g7291672931%_)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%g7291572929%_ '()))
                                 (cons '::
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote-syntax)
                                                   (cons _%g7291472926%_ '()))
                                             '()))))
                     _%g7291672931%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _%L70284%_
                                                     _%L70213%_))
                                            _%L70000%_
                                            _%L69858%_))))))
                        _%g7169171702%_))))
               (_%g7168972934%_
                (cons (gx#datum->syntax '#f 'quote-syntax)
                      (cons _%L69763%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g7166371674%_))))
                                          (_%g7166172938%_
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _%L69735%_ '())))))
                                      _%g7163571646%_))))
                             (_%g7163372942%_
                              (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _%L69707%_ '())))))
                         _%g7160771618%_))))
                (_%g7160572946%_
                 (if (null? _%type-constructor71048%_)
                     '#f
                     (let* ((_%g7295072965%_
                             (lambda (_%g7295172961%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g7295172961%_)))
                            (_%g7294973013%_
                             (lambda (_%g7295172969%_)
                               (if (gx#stx-pair? _%g7295172969%_)
                                   (let ((_%e7295372972%_
                                          (gx#syntax-e _%g7295172969%_)))
                                     (let ((_%hd7295472976%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7295372972%_)))
                                           (_%tl7295572979%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7295372972%_))))
                                       (if (gx#stx-datum? _%hd7295472976%_)
                                           (let ((_%e7295672982%_
                                                  (gx#stx-e _%hd7295472976%_)))
                                             (if (equal? _%e7295672982%_
                                                         'constructor:)
                                                 (if (gx#stx-pair?
                                                      _%tl7295572979%_)
                                                     (let ((_%e7295772986%_
                                                            (gx#syntax-e
                                                             _%tl7295572979%_)))
                                                       (let ((_%hd7295872990%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7295772986%_)))
                     (_%tl7295972993%_
                      (let () (declare (not safe)) (##cdr _%e7295772986%_))))
                 (if (gx#stx-null? _%tl7295972993%_)
                     ((lambda (_%L72996%_)
                        (cons (gx#datum->syntax '#f 'quote)
                              (cons _%L72996%_ '())))
                      _%hd7295872990%_)
                     (_%g7295072965%_ _%g7295172969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7295072965%_
                                                      _%g7295172969%_))
                                                 (_%g7295072965%_
                                                  _%g7295172969%_)))
                                           (_%g7295072965%_ _%g7295172969%_))))
                                   (_%g7295072965%_ _%g7295172969%_)))))
                       (_%g7294973013%_ _%type-constructor71048%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g7157971590%_))))
                                           (_%g7157773017%_
                                            (if _%metaclass71152%_
                                                (let* ((_%g7302173029%_
                                                        (lambda (_%g7302273025%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g7302273025%_)))
                                                       (_%g7302073048%_
                                                        (lambda (_%g7302273033%_)
                                                          ((lambda (_%L73036%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote-syntax)
                           (cons _%L73036%_ '())))
                   _%g7302273033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7302073048%_
                                                   _%metaclass71152%_))
                                                '#f))))
                                       _%g7155171562%_))))
                              (_%g7154973052%_ _%final?71155%_)))
                          _%g7152371534%_))))
                 (_%g7152173056%_ _%struct?69651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g7149571506%_))))
                                            (_%g7149373060%_
                                             (let* ((_%g7306473087%_
                                                     (lambda (_%g7306573083%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7306573083%_)))
                                                    (_%g7306373167%_
                                                     (lambda (_%g7306573091%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g7306573091%_)
                                                           (let ((_g82805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g7306573091%_ '0)))
                     (begin
                       (let ((_g82806_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g82805_)
                                    (##vector-length _g82805_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g82806_ 2)))
                             (error "Context expects 2 values" _g82806_)))
                       (let ((_%target7306873094%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g82805_ 0)))
                             (_%tl7307073097%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g82805_ 1))))
                         (if (gx#stx-null? _%tl7307073097%_)
                             (letrec ((_%loop7307173100%_
                                       (lambda (_%hd7306973104%_
                                                _%default7307573107%_
                                                _%slot7307673109%_)
                                         (if (gx#stx-pair? _%hd7306973104%_)
                                             (let ((_%e7307273112%_
                                                    (gx#syntax-e
                                                     _%hd7306973104%_)))
                                               (let ((_%lp-hd7307373116%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7307273112%_)))
                                                     (_%lp-tl7307473119%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7307273112%_))))
                                                 (if (gx#stx-pair?
                                                      _%lp-hd7307373116%_)
                                                     (let ((_%e7307973122%_
                                                            (gx#syntax-e
                                                             _%lp-hd7307373116%_)))
                                                       (let ((_%hd7308073126%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7307973122%_)))
                     (_%tl7308173129%_
                      (let () (declare (not safe)) (##cdr _%e7307973122%_))))
                 (_%loop7307173100%_
                  _%lp-tl7307473119%_
                  (cons _%tl7308173129%_ _%default7307573107%_)
                  (cons _%hd7308073126%_ _%slot7307673109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7306473087%_
                                                      _%g7306573091%_))))
                                             (let ((_%default7307773132%_
                                                    (reverse _%default7307573107%_))
                                                   (_%slot7307873135%_
                                                    (reverse _%slot7307673109%_)))
                                               ((lambda (_%L73138%_ _%L73140%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        (begin
                                                          (gx#syntax-check-splice-targets
                                                           _%L73138%_
                                                           _%L73140%_)
                                                          (foldr (lambda (_%g7315573159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g7315673162%_
                                  _%g7315773164%_)
                           (cons (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g7315673162%_ '()))
                                             (cons '::
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g7315573159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%g7315773164%_))
                         '()
                         _%L73138%_
                         _%L73140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%default7307773132%_
                                                _%slot7307873135%_))))))
                               (_%loop7307173100%_
                                _%target7306873094%_
                                '()
                                '()))
                             (_%g7306473087%_ _%g7306573091%_)))))
                   (_%g7306473087%_ _%g7306573091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7306373167%_
                                                (hash->list
                                                 _%slot-default-table69628%_))))))
                                        _%g7146771478%_))))
                               (_%g7146573171%_
                                (let* ((_%g7317573198%_
                                        (lambda (_%g7317673194%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g7317673194%_)))
                                       (_%g7317473278%_
                                        (lambda (_%g7317673202%_)
                                          (if (gx#stx-pair/null?
                                               _%g7317673202%_)
                                              (let ((_g82807_
                                                     (gx#syntax-split-splice
                                                      _%g7317673202%_
                                                      '0)))
                                                (begin
                                                  (let ((_g82808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g82807_)
                                                               (##vector-length
                                                                _g82807_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g82808_ 2)))
                (error "Context expects 2 values" _g82808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target7317973205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g82807_
                                                            0)))
                                                        (_%tl7318173208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g82807_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl7318173208%_)
                                                        (letrec ((_%loop7318273211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd7318073215%_
                                   _%contract7318673218%_
                                   _%slot7318773220%_)
                            (if (gx#stx-pair? _%hd7318073215%_)
                                (let ((_%e7318373223%_
                                       (gx#syntax-e _%hd7318073215%_)))
                                  (let ((_%lp-hd7318473227%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7318373223%_)))
                                        (_%lp-tl7318573230%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7318373223%_))))
                                    (if (gx#stx-pair? _%lp-hd7318473227%_)
                                        (let ((_%e7319073233%_
                                               (gx#syntax-e
                                                _%lp-hd7318473227%_)))
                                          (let ((_%hd7319173237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7319073233%_)))
                                                (_%tl7319273240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7319073233%_))))
                                            (_%loop7318273211%_
                                             _%lp-tl7318573230%_
                                             (cons _%tl7319273240%_
                                                   _%contract7318673218%_)
                                             (cons _%hd7319173237%_
                                                   _%slot7318773220%_))))
                                        (_%g7317573198%_ _%g7317673202%_))))
                                (let ((_%contract7318873243%_
                                       (reverse _%contract7318673218%_))
                                      (_%slot7318973246%_
                                       (reverse _%slot7318773220%_)))
                                  ((lambda (_%L73249%_ _%L73251%_)
                                     (cons (gx#datum->syntax '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _%L73249%_
                                              _%L73251%_)
                                             (foldr (lambda (_%g7326673270%_
                                                             _%g7326773273%_
                                                             _%g7326873275%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '@list)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g7326773273%_ '()))
                                (cons '::
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g7326673270%_ '()))
                                            '()))))
                    _%g7326873275%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _%L73249%_
                                                    _%L73251%_))))
                                   _%contract7318873243%_
                                   _%slot7318973246%_))))))
                  (_%loop7318273211%_ _%target7317973205%_ '() '()))
                (_%g7317573198%_ _%g7317673202%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7317573198%_
                                               _%g7317673202%_)))))
                                  (_%g7317473278%_
                                   (hash->list
                                    _%slot-contract-table69625%_))))))
                           _%g7143971450%_))))
                  (_%g7143773282%_
                   (let* ((_%g7328673309%_
                           (lambda (_%g7328773305%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7328773305%_)))
                          (_%g7328573389%_
                           (lambda (_%g7328773313%_)
                             (if (gx#stx-pair/null? _%g7328773313%_)
                                 (let ((_g82809_
                                        (gx#syntax-split-splice
                                         _%g7328773313%_
                                         '0)))
                                   (begin
                                     (let ((_g82810_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g82809_)
                                                  (##vector-length _g82809_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g82810_ 2)))
                                           (error "Context expects 2 values"
                                                  _g82810_)))
                                     (let ((_%target7329073316%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g82809_ 0)))
                                           (_%tl7329273319%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g82809_ 1))))
                                       (if (gx#stx-null? _%tl7329273319%_)
                                           (letrec ((_%loop7329373322%_
                                                     (lambda (_%hd7329173326%_
                                                              _%type7329773329%_
                                                              _%slot7329873331%_)
                                                       (if (gx#stx-pair?
                                                            _%hd7329173326%_)
                                                           (let ((_%e7329473334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd7329173326%_)))
                     (let ((_%lp-hd7329573338%_
                            (let ()
                              (declare (not safe))
                              (##car _%e7329473334%_)))
                           (_%lp-tl7329673341%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e7329473334%_))))
                       (if (gx#stx-pair? _%lp-hd7329573338%_)
                           (let ((_%e7330173344%_
                                  (gx#syntax-e _%lp-hd7329573338%_)))
                             (let ((_%hd7330273348%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e7330173344%_)))
                                   (_%tl7330373351%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e7330173344%_))))
                               (_%loop7329373322%_
                                _%lp-tl7329673341%_
                                (cons _%tl7330373351%_ _%type7329773329%_)
                                (cons _%hd7330273348%_ _%slot7329873331%_))))
                           (_%g7328673309%_ _%g7328773313%_))))
                   (let ((_%type7329973354%_ (reverse _%type7329773329%_))
                         (_%slot7330073357%_ (reverse _%slot7329873331%_)))
                     ((lambda (_%L73360%_ _%L73362%_)
                        (cons (gx#datum->syntax '#f '@list)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%L73360%_
                                 _%L73362%_)
                                (foldr (lambda (_%g7337773381%_
                                                _%g7337873384%_
                                                _%g7337973386%_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g7337873384%_ '()))
                   (cons '::
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g7337773381%_ '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g7337973386%_))
                                       '()
                                       _%L73360%_
                                       _%L73362%_))))
                      _%type7329973354%_
                      _%slot7330073357%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop7329373322%_
                                              _%target7329073316%_
                                              '()
                                              '()))
                                           (_%g7328673309%_
                                            _%g7328773313%_)))))
                                 (_%g7328673309%_ _%g7328773313%_)))))
                     (_%g7328573389%_
                      (filter (lambda (_%st73393%_) (cdr _%st73393%_))
                              (hash->list _%slot-type-table69623%_)))))))
              _%g7141171422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g7140973396%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons (foldr (lambda (_%g7339973402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g7340073405%_)
                           (cons _%g7339973402%_ _%g7340073405%_))
                         '()
                         _%L69929%_)
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g7138371394%_))))
                                (_%g7138173408%_
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons (foldr (lambda (_%g7341173414%_
                                                             _%g7341273417%_)
                                                      (cons _%g7341173414%_
                                                            _%g7341273417%_))
                                                    '()
                                                    _%L69858%_)
                                             '())))))
                            _%g7135571366%_))))
                   (_%g7135373420%_
                    (let* ((_%g7342473441%_
                            (lambda (_%g7342573437%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7342573437%_)))
                           (_%g7342373502%_
                            (lambda (_%g7342573445%_)
                              (if (gx#stx-pair/null? _%g7342573445%_)
                                  (let ((_g82811_
                                         (gx#syntax-split-splice
                                          _%g7342573445%_
                                          '0)))
                                    (begin
                                      (let ((_g82812_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82811_)
                                                   (##vector-length _g82811_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82812_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82812_)))
                                      (let ((_%target7342773448%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82811_ 0)))
                                            (_%tl7342973451%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82811_ 1))))
                                        (if (gx#stx-null? _%tl7342973451%_)
                                            (letrec ((_%loop7343073454%_
                                                      (lambda (_%hd7342873458%_
                                                               _%super-id7343473461%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7342873458%_)
                                                            (let ((_%e7343173464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7342873458%_)))
                      (let ((_%lp-hd7343273468%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7343173464%_)))
                            (_%lp-tl7343373471%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7343173464%_))))
                        (_%loop7343073454%_
                         _%lp-tl7343373471%_
                         (cons _%lp-hd7343273468%_ _%super-id7343473461%_))))
                    (let ((_%super-id7343573474%_
                           (reverse _%super-id7343473461%_)))
                      ((lambda (_%L73478%_)
                         (cons (gx#datum->syntax '#f '@list)
                               (foldr (lambda (_%g7349373496%_ _%g7349473499%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax)
                                                    (cons _%g7349373496%_ '()))
                                              _%g7349473499%_))
                                      '()
                                      _%L73478%_)))
                       _%super-id7343573474%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7343073454%_
                                               _%target7342773448%_
                                               '()))
                                            (_%g7342473441%_
                                             _%g7342573445%_)))))
                                  (_%g7342473441%_ _%g7342573445%_)))))
                      (_%g7342373502%_ _%super-ref69614%_)))))
               _%g7132771338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7132573506%_
                                               (let* ((_%g7351073518%_
                                                       (lambda (_%g7351173514%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g7351173514%_)))
                                                      (_%g7350973537%_
                                                       (lambda (_%g7351173522%_)
                                                         ((lambda (_%L73525%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L73525%_ '())))
                  _%g7351173522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7350973537%_
                                                  (gx#stx-car
                                                   (gx#stx-cdr
                                                    _%type-name71026%_)))))))
                                          _%g7129971310%_))))
                                 (_%g7129773541%_
                                  (let* ((_%g7354573560%_
                                          (lambda (_%g7354673556%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g7354673556%_)))
                                         (_%g7354473608%_
                                          (lambda (_%g7354673564%_)
                                            (if (gx#stx-pair? _%g7354673564%_)
                                                (let ((_%e7354873567%_
                                                       (gx#syntax-e
                                                        _%g7354673564%_)))
                                                  (let ((_%hd7354973571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e7354873567%_)))
                                                        (_%tl7355073574%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e7354873567%_))))
                                                    (if (gx#stx-datum?
                                                         _%hd7354973571%_)
                                                        (let ((_%e7355173577%_
                                                               (gx#stx-e
                                                                _%hd7354973571%_)))
                                                          (if (equal? _%e7355173577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'id:)
                      (if (gx#stx-pair? _%tl7355073574%_)
                          (let ((_%e7355273581%_
                                 (gx#syntax-e _%tl7355073574%_)))
                            (let ((_%hd7355373585%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7355273581%_)))
                                  (_%tl7355473588%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7355273581%_))))
                              (if (gx#stx-null? _%tl7355473588%_)
                                  ((lambda (_%L73591%_)
                                     (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L73591%_ '())))
                                   _%hd7355373585%_)
                                  (_%g7354573560%_ _%g7354673564%_))))
                          (_%g7354573560%_ _%g7354673564%_))
                      (_%g7354573560%_ _%g7354673564%_)))
                (_%g7354573560%_ _%g7354673564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g7354573560%_
                                                 _%g7354673564%_)))))
                                    (_%g7354473608%_ _%type-id71033%_)))))
                             _%g7127171282%_))))
                    (_%g7126973612%_
                     (_%wrap69477%_
                      (cons (gx#datum->syntax '#f 'defclass-type)
                            (cons _%L69707%_
                                  (cons _%L69791%_
                                        (cons _%L71257%_
                                              (cons _%L69763%_
                                                    (foldr (lambda (_%g7361573618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g7361673621%_)
                     (cons _%g7361573618%_ _%g7361673621%_))
                   '()
                   _%L71221%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                _%g7124371254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7124173624%_
                                                (if (or (not (null? _%type-constructor71048%_))
                                                        (and (zero? (hash-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%slot-contract-table69625%_))
                     (zero? (hash-length _%slot-default-table69628%_)))
                _%metaclass71152%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%L69735%_
                                                    '#f))))
                                           _%type-body7117871217%_))))))
                          (_%loop7117371197%_ _%target7117071191%_ '()))
                        (_%g7116771184%_ _%g7116871188%_)))))
              (_%g7116771184%_ _%g7116871188%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g7116673636%_
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _%type-mixin-slots71019%_
                                                           _%type-slots70872%_)
                                                    _%type-properties71140%_)
                                             _%type-metaclass71164%_)
                                      _%type-final71161%_)
                               _%type-struct71158%_)
                        _%type-constructor71048%_)
                 _%type-name71026%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-id71033%_))))
                                      _%mixin-usetf7066770706%_))))))
                     (_%loop7066270686%_ _%target7065970680%_ '()))
                   (_%g7065670673%_ _%g7065770677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7065670673%_
                                                  _%g7065770677%_)))))
                                     (_%g7065573640%_
                                      (gx#stx-map
                                       (lambda (_%g7364373645%_)
                                         (_%make-id69618%_
                                          '"&"
                                          _%g7364373645%_))
                                       (foldr (lambda (_%g7364873651%_
                                                       _%g7364973654%_)
                                                (cons _%g7364873651%_
                                                      _%g7364973654%_))
                                              '()
                                              _%L70355%_)))))
                                 _%mixin-ugetf7059670635%_))))))
                (_%loop7059170615%_ _%target7058870609%_ '()))
              (_%g7058570602%_ _%g7058670606%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g7058570602%_
                                             _%g7058670606%_)))))
                                (_%g7058473657%_
                                 (gx#stx-map
                                  (lambda (_%g7366073662%_)
                                    (_%make-id69618%_ '"&" _%g7366073662%_))
                                  (foldr (lambda (_%g7366573668%_
                                                  _%g7366673671%_)
                                           (cons _%g7366573668%_
                                                 _%g7366673671%_))
                                         '()
                                         _%L70284%_)))))
                            _%usetf7052570564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7052070544%_
                                                    _%target7051770538%_
                                                    '()))
                                                 (_%g7051470531%_
                                                  _%g7051570535%_)))))
                                       (_%g7051470531%_ _%g7051570535%_)))))
                           (_%g7051373674%_
                            (gx#stx-map
                             (lambda (_%g7367773679%_)
                               (_%make-id69618%_ '"&" _%g7367773679%_))
                             (foldr (lambda (_%g7368273685%_ _%g7368373688%_)
                                      (cons _%g7368273685%_ _%g7368373688%_))
                                    '()
                                    _%L70071%_)))))
                       _%ugetf7045470493%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7044970473%_
                                               _%target7044670467%_
                                               '()))
                                            (_%g7044370460%_
                                             _%g7044470464%_)))))
                                  (_%g7044370460%_ _%g7044470464%_)))))
                      (_%g7044273691%_
                       (gx#stx-map
                        (lambda (_%g7369473696%_)
                          (_%make-id69618%_ '"&" _%g7369473696%_))
                        (foldr (lambda (_%g7369973702%_ _%g7370073705%_)
                                 (cons _%g7369973702%_ _%g7370073705%_))
                               '()
                               _%L70000%_)))))
                  _%mixin-rawsetf7038370422%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop7037870402%_
                                          _%target7037570396%_
                                          '()))
                                       (_%g7037270389%_ _%g7037370393%_)))))
                             (_%g7037270389%_ _%g7037370393%_)))))
                 (_%g7037173708%_
                  (gx#stx-map
                   (lambda (_%g7371173713%_)
                     (_%make-id69618%_
                      _%name69645%_
                      '"-unchecked-"
                      _%g7371173713%_
                      '"-set!"))
                   _%mixin-slots69642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-setf7031270351%_))))))
                                    (_%loop7030770331%_
                                     _%target7030470325%_
                                     '()))
                                  (_%g7030170318%_ _%g7030270322%_)))))
                        (_%g7030170318%_ _%g7030270322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g7030073717%_
                                                     (gx#stx-map
                                                      (lambda (_%g7372073722%_)
                                                        (_%make-id69618%_
                                                         _%name69645%_
                                                         '"-"
                                                         _%g7372073722%_
                                                         '"-set!"))
                                                      _%mixin-slots69642%_))))
                                                _%mixin-getf7024170280%_))))))
                               (_%loop7023670260%_ _%target7023370254%_ '()))
                             (_%g7023070247%_ _%g7023170251%_)))))
                   (_%g7023070247%_ _%g7023170251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7022973726%_
                                                (gx#stx-map
                                                 (lambda (_%g7372973731%_)
                                                   (_%make-id69618%_
                                                    _%name69645%_
                                                    '"-"
                                                    _%g7372973731%_))
                                                 _%mixin-slots69642%_))))
                                           _%mixin-slot7017070209%_))))))
                          (_%loop7016570189%_ _%target7016270183%_ '()))
                        (_%g7015970176%_ _%g7016070180%_)))))
              (_%g7015970176%_ _%g7016070180%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g7015873735%_
                                           _%mixin-slots69642%_)))
                                      _%rawsetf7009970138%_))))))
                     (_%loop7009470118%_ _%target7009170112%_ '()))
                   (_%g7008870105%_ _%g7008970109%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7008870105%_
                                                  _%g7008970109%_)))))
                                     (_%g7008773739%_
                                      (gx#stx-map
                                       (lambda (_%g7374273744%_)
                                         (_%make-id69618%_
                                          _%name69645%_
                                          '"-unchecked-"
                                          _%g7374273744%_
                                          '"-set!"))
                                       _%slots69636%_))))
                                 _%setf7002870067%_))))))
                (_%loop7002370047%_ _%target7002070041%_ '()))
              (_%g7001770034%_ _%g7001870038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g7001770034%_
                                             _%g7001870038%_)))))
                                (_%g7001673748%_
                                 (gx#stx-map
                                  (lambda (_%g7375173753%_)
                                    (_%make-id69618%_
                                     _%name69645%_
                                     '"-"
                                     _%g7375173753%_
                                     '"-set!"))
                                  _%slots69636%_))))
                            _%getf6995769996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop6995269976%_
                                                    _%target6994969970%_
                                                    '()))
                                                 (_%g6994669963%_
                                                  _%g6994769967%_)))))
                                       (_%g6994669963%_ _%g6994769967%_)))))
                           (_%g6994573757%_
                            (gx#stx-map
                             (lambda (_%g7376073762%_)
                               (_%make-id69618%_
                                _%name69645%_
                                '"-"
                                _%g7376073762%_))
                             _%slots69636%_))))
                       _%ordered-slot6988669925%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop6988169905%_
                                               _%target6987869899%_
                                               '()))
                                            (_%g6987569892%_
                                             _%g6987669896%_)))))
                                  (_%g6987569892%_ _%g6987669896%_)))))
                      (_%g6987473766%_ _%ordered-slots69631%_)))
                  _%slot6981569854%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop6981069834%_
                                          _%target6980769828%_
                                          '()))
                                       (_%g6980469821%_ _%g6980569825%_)))))
                             (_%g6980469821%_ _%g6980569825%_)))))
                 (_%g6980373770%_ _%slots69636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g6977769788%_))))
                                            (_%g6977573774%_
                                             (map gerbil/core/mop~MOP-2#!class-type-descriptor
                                                  _%super69648%_))))
                                        _%g6974969760%_))))
                               (_%g6974773778%_
                                (_%make-id69618%_ _%name69645%_ '"?"))))
                           _%g6972169732%_))))
                  (_%g6971973782%_ (_%make-id69618%_ '"make-" _%name69645%_))))
              _%g6969369704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g6969173786%_
                                              (_%make-id69618%_
                                               _%name69645%_
                                               '"::t"))))
                                         _%g6965569666%_))))
                                (_%g6965373790%_ _%id69612%_))))))))))
          (let* ((_%g6948069508%_
                  (lambda (_%g6948169504%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g6948169504%_)))
                 (_%g6947969608%_
                  (lambda (_%g6948169512%_)
                    (if (gx#stx-pair? _%g6948169512%_)
                        (let ((_%e6948569515%_ (gx#syntax-e _%g6948169512%_)))
                          (let ((_%hd6948669519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6948569515%_)))
                                (_%tl6948769522%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6948569515%_))))
                            (if (gx#stx-pair? _%tl6948769522%_)
                                (let ((_%e6948869525%_
                                       (gx#syntax-e _%tl6948769522%_)))
                                  (let ((_%hd6948969529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6948869525%_)))
                                        (_%tl6949069532%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6948869525%_))))
                                    (if (gx#stx-pair? _%tl6949069532%_)
                                        (let ((_%e6949169535%_
                                               (gx#syntax-e _%tl6949069532%_)))
                                          (let ((_%hd6949269539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6949169535%_)))
                                                (_%tl6949369542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6949169535%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd6949269539%_)
                                                (let ((_g82813_
                                                       (gx#syntax-split-splice
                                                        _%hd6949269539%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g82814_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g82813_)
                         (##vector-length _g82813_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g82814_ 2)))
                  (error "Context expects 2 values" _g82814_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target6949469545%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g82813_
                                                              0)))
                                                          (_%tl6949669548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g82813_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl6949669548%_)
                                                          (letrec ((_%loop6949769551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd6949569555%_ _%slot6950169558%_)
                              (if (gx#stx-pair? _%hd6949569555%_)
                                  (let ((_%e6949869561%_
                                         (gx#syntax-e _%hd6949569555%_)))
                                    (let ((_%lp-hd6949969565%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6949869561%_)))
                                          (_%lp-tl6950069568%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6949869561%_))))
                                      (_%loop6949769551%_
                                       _%lp-tl6950069568%_
                                       (cons _%lp-hd6949969565%_
                                             _%slot6950169558%_))))
                                  (let ((_%slot6950269571%_
                                         (reverse _%slot6950169558%_)))
                                    ((lambda (_%L69575%_ _%L69577%_ _%L69578%_)
                                       (_%generate69457%_
                                        _%L69578%_
                                        (foldr (lambda (_%g6959969602%_
                                                        _%g6960069605%_)
                                                 (cons _%g6959969602%_
                                                       _%g6960069605%_))
                                               '()
                                               _%L69577%_)
                                        _%L69575%_))
                                     _%tl6949369542%_
                                     _%slot6950269571%_
                                     _%hd6948969529%_))))))
                    (_%loop6949769551%_ _%target6949469545%_ '()))
                  (_%g6948069508%_ _%g6948169512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g6948069508%_
                                                 _%g6948169512%_))))
                                        (_%g6948069508%_ _%g6948169512%_))))
                                (_%g6948069508%_ _%g6948169512%_))))
                        (_%g6948069508%_ _%g6948169512%_)))))
            (_%g6947969608%_ _%stx69454%_)))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defstruct/c|
      (lambda (_%$stx76800%_)
        (let* ((_%g7680476823%_
                (lambda (_%g7680576819%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7680576819%_)))
               (_%g7680376880%_
                (lambda (_%g7680576827%_)
                  (if (gx#stx-pair? _%g7680576827%_)
                      (let ((_%e7680976830%_ (gx#syntax-e _%g7680576827%_)))
                        (let ((_%hd7681076834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7680976830%_)))
                              (_%tl7681176837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7680976830%_))))
                          (if (gx#stx-pair? _%tl7681176837%_)
                              (let ((_%e7681276840%_
                                     (gx#syntax-e _%tl7681176837%_)))
                                (let ((_%hd7681376844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7681276840%_)))
                                      (_%tl7681476847%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7681276840%_))))
                                  (if (gx#stx-pair? _%tl7681476847%_)
                                      (let ((_%e7681576850%_
                                             (gx#syntax-e _%tl7681476847%_)))
                                        (let ((_%hd7681676854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7681576850%_)))
                                              (_%tl7681776857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7681576850%_))))
                                          ((lambda (_%L76860%_
                                                    _%L76862%_
                                                    _%L76863%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass/c)
                                                   (cons _%L76863%_
                                                         (cons _%L76862%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L76860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl7681776857%_
                                           _%hd7681676854%_
                                           _%hd7681376844%_)))
                                      (_%g7680476823%_ _%g7680576827%_))))
                              (_%g7680476823%_ _%g7680576827%_))))
                      (_%g7680476823%_ _%g7680576827%_)))))
          (_%g7680376880%_ _%$stx76800%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmutable|
      (lambda (_%stx76884%_)
        (let* ((_%__stx8234782348%_ _%stx76884%_)
               (_%g7688876925%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8234782348%_))))
          (let ((_%__kont8235082351%_
                 (lambda (_%L77037%_ _%L77039%_ _%L77040%_ _%L77041%_)
                   (let* ((_%g7706677074%_
                           (lambda (_%g7706777070%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7706777070%_)))
                          (_%g7706577093%_
                           (lambda (_%g7706777078%_)
                             ((lambda (_%L77081%_)
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L77041%_
                                                        (cons _%L77040%_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'def/c)
                                                        (cons (cons _%L77081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'new-value)
                                        (cons _%L77039%_
                                              (cons _%L77037%_ '())))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'set!)
                                  (cons _%L77041%_
                                        (cons (gx#datum->syntax '#f 'new-value)
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g7706777078%_))))
                     (_%g7706577093%_
                      (gx#stx-identifier _%L77041%_ _%L77041%_ '"-set!")))))
                (_%__kont8235282353%_
                 (lambda (_%L76962%_ _%L76964%_)
                   (cons (gx#datum->syntax '#f 'defmutable)
                         (cons _%L76964%_
                               (cons _%L76962%_
                                     (cons (gx#datum->syntax '#f ':)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 '()))))))))
            (let ((_%__match8238682387%_
                   (lambda (_%e7689476987%_
                            _%hd7689576991%_
                            _%tl7689676994%_
                            _%e7689776997%_
                            _%hd7689877001%_
                            _%tl7689977004%_
                            _%e7690077007%_
                            _%hd7690177011%_
                            _%tl7690277014%_
                            _%e7690377017%_
                            _%hd7690477021%_
                            _%tl7690577024%_
                            _%e7690677027%_
                            _%hd7690777031%_
                            _%tl7690877034%_)
                     (let ((_%L77037%_ _%hd7690777031%_)
                           (_%L77039%_ _%hd7690477021%_)
                           (_%L77040%_ _%hd7690177011%_)
                           (_%L77041%_ _%hd7689877001%_))
                       (if (and (gx#identifier? _%L77041%_)
                                (gx#identifier? _%L77039%_)
                                (or (gx#free-identifier=?
                                     _%L77039%_
                                     (gx#datum->syntax '#f ':))
                                    (gx#free-identifier=?
                                     _%L77039%_
                                     (gx#datum->syntax '#f ':?))))
                           (_%__kont8235082351%_
                            _%L77037%_
                            _%L77039%_
                            _%L77040%_
                            _%L77041%_)
                           (let () (declare (not safe)) (_%g7688876925%_)))))))
              (if (gx#stx-pair? _%__stx8234782348%_)
                  (let ((_%e7689476987%_ (gx#syntax-e _%__stx8234782348%_)))
                    (let ((_%tl7689676994%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7689476987%_)))
                          (_%hd7689576991%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7689476987%_))))
                      (if (gx#stx-pair? _%tl7689676994%_)
                          (let ((_%e7689776997%_
                                 (gx#syntax-e _%tl7689676994%_)))
                            (let ((_%tl7689977004%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7689776997%_)))
                                  (_%hd7689877001%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7689776997%_))))
                              (if (gx#stx-pair? _%tl7689977004%_)
                                  (let ((_%e7690077007%_
                                         (gx#syntax-e _%tl7689977004%_)))
                                    (let ((_%tl7690277014%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7690077007%_)))
                                          (_%hd7690177011%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7690077007%_))))
                                      (if (gx#stx-pair? _%tl7690277014%_)
                                          (let ((_%e7690377017%_
                                                 (gx#syntax-e
                                                  _%tl7690277014%_)))
                                            (let ((_%tl7690577024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7690377017%_)))
                                                  (_%hd7690477021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7690377017%_))))
                                              (if (gx#stx-pair?
                                                   _%tl7690577024%_)
                                                  (let ((_%e7690677027%_
                                                         (gx#syntax-e
                                                          _%tl7690577024%_)))
                                                    (let ((_%tl7690877034%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7690677027%_)))
                                                          (_%hd7690777031%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7690677027%_))))
                                                      (if (gx#stx-null?
                                                           _%tl7690877034%_)
                                                          (_%__match8238682387%_
                                                           _%e7689476987%_
                                                           _%hd7689576991%_
                                                           _%tl7689676994%_
                                                           _%e7689776997%_
                                                           _%hd7689877001%_
                                                           _%tl7689977004%_
                                                           _%e7690077007%_
                                                           _%hd7690177011%_
                                                           _%tl7690277014%_
                                                           _%e7690377017%_
                                                           _%hd7690477021%_
                                                           _%tl7690577024%_
                                                           _%e7690677027%_
                                                           _%hd7690777031%_
                                                           _%tl7690877034%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g7688876925%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7688876925%_)))))
                                          (if (gx#stx-null? _%tl7690277014%_)
                                              (_%__kont8235282353%_
                                               _%hd7690177011%_
                                               _%hd7689877001%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7688876925%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7688876925%_)))))
                          (let () (declare (not safe)) (_%g7688876925%_)))))
                  (let () (declare (not safe)) (_%g7688876925%_))))))))))
