(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84185_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84192_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84195_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84196_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84204_|
    (##structure
     gx#syntax-quote::t
     'lambda/c
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84205_|
    (##structure
     gx#syntax-quote::t
     'case-lambda/c
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84206_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84208_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84209_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84210_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84212_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84213_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84214_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84216_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84217_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84218_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84219_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84220_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84221_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84222_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84223_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84224_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84225_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84226_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84227_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84228_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84229_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84230_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84231_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84232_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84233_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypedDefinitions[1]#is-signature?|
      (lambda (_%formals64141%_)
        (let _%lp64144%_ ((_%rest64147%_ _%formals64141%_))
          (let* ((_%__stx8204282043%_ _%rest64147%_)
                 (_%g6415664225%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8204282043%_))))
            (let ((_%__kont8204582046%_
                   (lambda (_%L64526%_ _%L64528%_) (_%lp64144%_ _%L64526%_)))
                  (_%__kont8204782048%_
                   (lambda (_%L64492%_ _%L64494%_) (_%lp64144%_ _%L64492%_)))
                  (_%__kont8204982050%_
                   (lambda (_%L64438%_ _%L64440%_ _%L64441%_) '#t))
                  (_%__kont8205182052%_
                   (lambda (_%L64394%_ _%L64396%_ _%L64397%_)
                     (_%lp64144%_ _%L64394%_)))
                  (_%__kont8205382054%_
                   (lambda (_%L64346%_ _%L64348%_ _%L64349%_)
                     (_%lp64144%_ _%L64346%_)))
                  (_%__kont8205582056%_
                   (lambda (_%L64273%_ _%L64275%_ _%L64276%_ _%L64277%_) '#t))
                  (_%__kont8205782058%_ (lambda () '#f)))
              (let* ((_%__match8215382154%_
                      (lambda (_%e6421164243%_
                               _%hd6421264247%_
                               _%tl6421364250%_
                               _%e6421464253%_
                               _%hd6421564257%_
                               _%tl6421664260%_
                               _%e6421764263%_
                               _%hd6421864267%_
                               _%tl6421964270%_)
                        (let ((_%L64273%_ _%tl6421664260%_)
                              (_%L64275%_ _%tl6421964270%_)
                              (_%L64276%_ _%hd6421864267%_)
                              (_%L64277%_ _%hd6421264247%_))
                          (if (and (gx#stx-keyword? _%L64277%_)
                                   (gx#identifier? _%L64276%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Interface[1]#signature-contract?|
                                      _%L64275%_)))
                              (_%__kont8205582056%_
                               _%L64273%_
                               _%L64275%_
                               _%L64276%_
                               _%L64277%_)
                              (_%__kont8205782058%_)))))
                     (_%__match8213582136%_
                      (lambda (_%e6419564306%_
                               _%hd6419664310%_
                               _%tl6419764313%_
                               _%e6419864316%_
                               _%hd6419964320%_
                               _%tl6420064323%_
                               _%e6420164326%_
                               _%hd6420264330%_
                               _%tl6420364333%_
                               _%e6420464336%_
                               _%hd6420564340%_
                               _%tl6420664343%_)
                        (let ((_%L64346%_ _%tl6420064323%_)
                              (_%L64348%_ _%hd6420264330%_)
                              (_%L64349%_ _%hd6419664310%_))
                          (if (and (gx#stx-keyword? _%L64349%_)
                                   (gx#identifier? _%L64348%_))
                              (_%__kont8205382054%_
                               _%L64346%_
                               _%L64348%_
                               _%L64349%_)
                              (_%__match8215382154%_
                               _%e6419564306%_
                               _%hd6419664310%_
                               _%tl6419764313%_
                               _%e6419864316%_
                               _%hd6419964320%_
                               _%tl6420064323%_
                               _%e6420164326%_
                               _%hd6420264330%_
                               _%tl6420364333%_)))))
                     (_%__match8210982110%_
                      (lambda (_%e6418664374%_
                               _%hd6418764378%_
                               _%tl6418864381%_
                               _%e6418964384%_
                               _%hd6419064388%_
                               _%tl6419164391%_)
                        (let ((_%L64394%_ _%tl6419164391%_)
                              (_%L64396%_ _%hd6419064388%_)
                              (_%L64397%_ _%hd6418764378%_))
                          (if (and (gx#stx-keyword? _%L64397%_)
                                   (gx#identifier? _%L64396%_))
                              (_%__kont8205182052%_
                               _%L64394%_
                               _%L64396%_
                               _%L64397%_)
                              (if (gx#stx-pair? _%hd6419064388%_)
                                  (let ((_%e6420164326%_
                                         (gx#syntax-e _%hd6419064388%_)))
                                    (let ((_%tl6420364333%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6420164326%_)))
                                          (_%hd6420264330%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6420164326%_))))
                                      (if (gx#stx-pair? _%tl6420364333%_)
                                          (let ((_%e6420464336%_
                                                 (gx#syntax-e
                                                  _%tl6420364333%_)))
                                            (let ((_%tl6420664343%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6420464336%_)))
                                                  (_%hd6420564340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6420464336%_))))
                                              (if (gx#stx-null?
                                                   _%tl6420664343%_)
                                                  (_%__match8213582136%_
                                                   _%e6418664374%_
                                                   _%hd6418764378%_
                                                   _%tl6418864381%_
                                                   _%e6418964384%_
                                                   _%hd6419064388%_
                                                   _%tl6419164391%_
                                                   _%e6420164326%_
                                                   _%hd6420264330%_
                                                   _%tl6420364333%_
                                                   _%e6420464336%_
                                                   _%hd6420564340%_
                                                   _%tl6420664343%_)
                                                  (_%__match8215382154%_
                                                   _%e6418664374%_
                                                   _%hd6418764378%_
                                                   _%tl6418864381%_
                                                   _%e6418964384%_
                                                   _%hd6419064388%_
                                                   _%tl6419164391%_
                                                   _%e6420164326%_
                                                   _%hd6420264330%_
                                                   _%tl6420364333%_))))
                                          (_%__match8215382154%_
                                           _%e6418664374%_
                                           _%hd6418764378%_
                                           _%tl6418864381%_
                                           _%e6418964384%_
                                           _%hd6419064388%_
                                           _%tl6419164391%_
                                           _%e6420164326%_
                                           _%hd6420264330%_
                                           _%tl6420364333%_))))
                                  (_%__kont8205782058%_))))))
                     (_%__match8209782098%_
                      (lambda (_%e6417764418%_
                               _%hd6417864422%_
                               _%tl6417964425%_
                               _%e6418064428%_
                               _%hd6418164432%_
                               _%tl6418264435%_)
                        (let ((_%L64438%_ _%tl6417964425%_)
                              (_%L64440%_ _%tl6418264435%_)
                              (_%L64441%_ _%hd6418164432%_))
                          (if (and (gx#identifier? _%L64441%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Interface[1]#signature-contract?|
                                      _%L64440%_)))
                              (_%__kont8204982050%_
                               _%L64438%_
                               _%L64440%_
                               _%L64441%_)
                              (if (gx#stx-pair? _%tl6417964425%_)
                                  (let ((_%e6418964384%_
                                         (gx#syntax-e _%tl6417964425%_)))
                                    (let ((_%tl6419164391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6418964384%_)))
                                          (_%hd6419064388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6418964384%_))))
                                      (_%__match8210982110%_
                                       _%e6417764418%_
                                       _%hd6417864422%_
                                       _%tl6417964425%_
                                       _%e6418964384%_
                                       _%hd6419064388%_
                                       _%tl6419164391%_)))
                                  (_%__kont8205782058%_))))))
                     (_%__match8206582066%_
                      (lambda (_%e6416064516%_
                               _%hd6416164520%_
                               _%tl6416264523%_)
                        (let ((_%L64526%_ _%tl6416264523%_)
                              (_%L64528%_ _%hd6416164520%_))
                          (if (gx#identifier? _%L64528%_)
                              (_%__kont8204582046%_ _%L64526%_ _%L64528%_)
                              (if (gx#stx-pair? _%hd6416164520%_)
                                  (let ((_%e6416864472%_
                                         (gx#syntax-e _%hd6416164520%_)))
                                    (let ((_%tl6417064479%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6416864472%_)))
                                          (_%hd6416964476%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6416864472%_))))
                                      (if (gx#stx-pair? _%tl6417064479%_)
                                          (let ((_%e6417164482%_
                                                 (gx#syntax-e
                                                  _%tl6417064479%_)))
                                            (let ((_%tl6417364489%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6417164482%_)))
                                                  (_%hd6417264486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6417164482%_))))
                                              (if (gx#stx-null?
                                                   _%tl6417364489%_)
                                                  (_%__kont8204782048%_
                                                   _%tl6416264523%_
                                                   _%hd6416964476%_)
                                                  (_%__match8209782098%_
                                                   _%e6416064516%_
                                                   _%hd6416164520%_
                                                   _%tl6416264523%_
                                                   _%e6416864472%_
                                                   _%hd6416964476%_
                                                   _%tl6417064479%_))))
                                          (_%__match8209782098%_
                                           _%e6416064516%_
                                           _%hd6416164520%_
                                           _%tl6416264523%_
                                           _%e6416864472%_
                                           _%hd6416964476%_
                                           _%tl6417064479%_))))
                                  (if (gx#stx-pair? _%tl6416264523%_)
                                      (let ((_%e6418964384%_
                                             (gx#syntax-e _%tl6416264523%_)))
                                        (let ((_%tl6419164391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6418964384%_)))
                                              (_%hd6419064388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6418964384%_))))
                                          (_%__match8210982110%_
                                           _%e6416064516%_
                                           _%hd6416164520%_
                                           _%tl6416264523%_
                                           _%e6418964384%_
                                           _%hd6419064388%_
                                           _%tl6419164391%_)))
                                      (_%__kont8205782058%_))))))))
                (if (gx#stx-pair? _%__stx8204282043%_)
                    (let ((_%e6416064516%_ (gx#syntax-e _%__stx8204282043%_)))
                      (let ((_%tl6416264523%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6416064516%_)))
                            (_%hd6416164520%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6416064516%_))))
                        (_%__match8206582066%_
                         _%e6416064516%_
                         _%hd6416164520%_
                         _%tl6416264523%_)))
                    (_%__kont8205782058%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#def/c|
      (lambda (_%stx64543%_)
        (letrec ((_%make-definition64546%_
                  (lambda (_%id65644%_
                           _%args65646%_
                           _%return65647%_
                           _%body65648%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~Interface[1]#check-signature!__%|
                       '#f
                       absent-value
                       absent-value
                       _%stx64543%_
                       _%args65646%_
                       _%return65647%_))
                    (if (let ()
                          (declare (not safe))
                          (|gerbil/core/contract~Interface[1]#signature-has-keywords?|
                           _%args65646%_))
                        (_%make-keyword-def64548%_
                         _%id65644%_
                         _%args65646%_
                         _%return65647%_
                         _%body65648%_)
                        (let* ((_%unchecked-id65650%_
                                (gx#stx-identifier
                                 _%id65644%_
                                 '"__"
                                 _%id65644%_))
                               (_%g6565365668%_
                                (lambda (_%g6565465664%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g6565465664%_)))
                               (_%g6565265714%_
                                (lambda (_%g6565465672%_)
                                  (if (gx#stx-pair? _%g6565465672%_)
                                      (let ((_%e6565765675%_
                                             (gx#syntax-e _%g6565465672%_)))
                                        (let ((_%hd6565865679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6565765675%_)))
                                              (_%tl6565965682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6565765675%_))))
                                          (if (gx#stx-pair? _%tl6565965682%_)
                                              (let ((_%e6566065685%_
                                                     (gx#syntax-e
                                                      _%tl6565965682%_)))
                                                (let ((_%hd6566165689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6566065685%_)))
                                                      (_%tl6566265692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6566065685%_))))
                                                  (if (gx#stx-null?
                                                       _%tl6566265692%_)
                                                      ((lambda (_%L65695%_
                                                                _%L65697%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _%L65697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L65695%_ '()))))
               _%hd6566165689%_
               _%hd6565865679%_)
              (_%g6565365668%_ _%g6565465672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g6565365668%_
                                               _%g6565465672%_))))
                                      (_%g6565365668%_ _%g6565465672%_)))))
                          (_%g6565265714%_
                           (list (_%make-checked-def64549%_
                                  _%id65644%_
                                  _%unchecked-id65650%_
                                  _%args65646%_
                                  _%return65647%_)
                                 (_%make-unchecked-def64550%_
                                  _%unchecked-id65650%_
                                  _%args65646%_
                                  _%return65647%_
                                  _%body65648%_)))))))
                 (_%make-keyword-def64548%_
                  (lambda (_%id65451%_
                           _%signature65453%_
                           _%return65454%_
                           _%body65455%_)
                    (let* ((_%g6545765497%_
                            (lambda (_%g6545865493%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6545865493%_)))
                           (_%g6545665640%_
                            (lambda (_%g6545865501%_)
                              (if (gx#stx-pair? _%g6545865501%_)
                                  (let ((_%e6546565504%_
                                         (gx#syntax-e _%g6545865501%_)))
                                    (let ((_%hd6546665508%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6546565504%_)))
                                          (_%tl6546765511%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6546565504%_))))
                                      (if (gx#stx-pair? _%tl6546765511%_)
                                          (let ((_%e6546865514%_
                                                 (gx#syntax-e
                                                  _%tl6546765511%_)))
                                            (let ((_%hd6546965518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6546865514%_)))
                                                  (_%tl6547065521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6546865514%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6547065521%_)
                                                  (let ((_%e6547165524%_
                                                         (gx#syntax-e
                                                          _%tl6547065521%_)))
                                                    (let ((_%hd6547265528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6547165524%_)))
                                                          (_%tl6547365531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6547165524%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6547365531%_)
                                                          (let ((_%e6547465534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6547365531%_)))
                    (let ((_%hd6547565538%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6547465534%_)))
                          (_%tl6547665541%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6547465534%_))))
                      (if (gx#stx-pair? _%tl6547665541%_)
                          (let ((_%e6547765544%_
                                 (gx#syntax-e _%tl6547665541%_)))
                            (let ((_%hd6547865548%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6547765544%_)))
                                  (_%tl6547965551%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6547765544%_))))
                              (if (gx#stx-pair? _%tl6547965551%_)
                                  (let ((_%e6548065554%_
                                         (gx#syntax-e _%tl6547965551%_)))
                                    (let ((_%hd6548165558%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6548065554%_)))
                                          (_%tl6548265561%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6548065554%_))))
                                      (if (gx#stx-pair/null? _%hd6548165558%_)
                                          (let ((_g84179_
                                                 (gx#syntax-split-splice
                                                  _%hd6548165558%_
                                                  '0)))
                                            (begin
                                              (let ((_g84180_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g84179_)
                                                           (##vector-length
                                                            _g84179_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g84180_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g84180_)))
                                              (let ((_%target6548365564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g84179_
                                                        0)))
                                                    (_%tl6548565567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g84179_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl6548565567%_)
                                                    (letrec ((_%loop6548665570%_
                                                              (lambda (_%hd6548465574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body6549065577%_)
                        (if (gx#stx-pair? _%hd6548465574%_)
                            (let ((_%e6548765580%_
                                   (gx#syntax-e _%hd6548465574%_)))
                              (let ((_%lp-hd6548865584%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6548765580%_)))
                                    (_%lp-tl6548965587%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6548765580%_))))
                                (_%loop6548665570%_
                                 _%lp-tl6548965587%_
                                 (cons _%lp-hd6548865584%_
                                       _%body6549065577%_))))
                            (let ((_%body6549165590%_
                                   (reverse _%body6549065577%_)))
                              (if (gx#stx-null? _%tl6548265561%_)
                                  ((lambda (_%L65594%_
                                            _%L65596%_
                                            _%L65597%_
                                            _%L65598%_
                                            _%L65599%_
                                            _%L65600%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons (cons _%L65600%_ _%L65599%_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'with-procedure-signature)
                                                              (cons (cons _%L65598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L65597%_ (cons '#f '())))
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@type)
                                                    (cons _%L65596%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'with-procedure-contract)
                                                          (cons _%L65598%_
                                                                (foldr (lambda (_%g6563165634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%g6563265637%_)
                                 (cons _%g6563165634%_ _%g6563265637%_))
                               '()
                               _%L65594%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (gx#stx-source _%stx64543%_)))
                                   _%body6549165590%_
                                   _%hd6547865548%_
                                   _%hd6547565538%_
                                   _%hd6547265528%_
                                   _%hd6546965518%_
                                   _%hd6546665508%_)
                                  (_%g6545765497%_ _%g6545865501%_)))))))
              (_%loop6548665570%_ _%target6548365564%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g6545765497%_
                                                     _%g6545865501%_)))))
                                          (_%g6545765497%_ _%g6545865501%_))))
                                  (_%g6545765497%_ _%g6545865501%_))))
                          (_%g6545765497%_ _%g6545865501%_))))
                  (_%g6545765497%_ _%g6545865501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6545765497%_
                                                   _%g6545865501%_))))
                                          (_%g6545765497%_ _%g6545865501%_))))
                                  (_%g6545765497%_ _%g6545865501%_)))))
                      (_%g6545665640%_
                       (list _%id65451%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65453%_))
                             _%signature65453%_
                             _%return65454%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                _%stx64543%_
                                _%return65454%_))
                             _%body65455%_)))))
                 (_%make-checked-def64549%_
                  (lambda (_%id65232%_
                           _%unchecked-id65234%_
                           _%signature65235%_
                           _%return65236%_)
                    (let* ((_%g6523865282%_
                            (lambda (_%g6523965278%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6523965278%_)))
                           (_%g6523765447%_
                            (lambda (_%g6523965286%_)
                              (if (gx#stx-pair? _%g6523965286%_)
                                  (let ((_%e6524765289%_
                                         (gx#syntax-e _%g6523965286%_)))
                                    (let ((_%hd6524865293%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6524765289%_)))
                                          (_%tl6524965296%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6524765289%_))))
                                      (if (gx#stx-pair? _%tl6524965296%_)
                                          (let ((_%e6525065299%_
                                                 (gx#syntax-e
                                                  _%tl6524965296%_)))
                                            (let ((_%hd6525165303%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6525065299%_)))
                                                  (_%tl6525265306%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6525065299%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6525265306%_)
                                                  (let ((_%e6525365309%_
                                                         (gx#syntax-e
                                                          _%tl6525265306%_)))
                                                    (let ((_%hd6525465313%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6525365309%_)))
                                                          (_%tl6525565316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6525365309%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6525565316%_)
                                                          (let ((_%e6525665319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6525565316%_)))
                    (let ((_%hd6525765323%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6525665319%_)))
                          (_%tl6525865326%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6525665319%_))))
                      (if (gx#stx-pair/null? _%hd6525765323%_)
                          (let ((_g84181_
                                 (gx#syntax-split-splice _%hd6525765323%_ '0)))
                            (begin
                              (let ((_g84182_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g84181_)
                                           (##vector-length _g84181_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g84182_ 2)))
                                    (error "Context expects 2 values"
                                           _g84182_)))
                              (let ((_%target6525965329%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g84181_ 0)))
                                    (_%tl6526165332%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g84181_ 1))))
                                (if (gx#stx-null? _%tl6526165332%_)
                                    (letrec ((_%loop6526265335%_
                                              (lambda (_%hd6526065339%_
                                                       _%out6526665342%_)
                                                (if (gx#stx-pair?
                                                     _%hd6526065339%_)
                                                    (let ((_%e6526365345%_
                                                           (gx#syntax-e
                                                            _%hd6526065339%_)))
                                                      (let ((_%lp-hd6526465349%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6526365345%_)))
                    (_%lp-tl6526565352%_
                     (let () (declare (not safe)) (##cdr _%e6526365345%_))))
                (_%loop6526265335%_
                 _%lp-tl6526565352%_
                 (cons _%lp-hd6526465349%_ _%out6526665342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%out6526765355%_
                                                           (reverse _%out6526665342%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl6525865326%_)
                                                          (let ((_%e6526865359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6525865326%_)))
                    (let ((_%hd6526965363%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6526865359%_)))
                          (_%tl6527065366%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6526865359%_))))
                      (if (gx#stx-pair? _%tl6527065366%_)
                          (let ((_%e6527165369%_
                                 (gx#syntax-e _%tl6527065366%_)))
                            (let ((_%hd6527265373%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6527165369%_)))
                                  (_%tl6527365376%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6527165369%_))))
                              (if (gx#stx-pair? _%tl6527365376%_)
                                  (let ((_%e6527465379%_
                                         (gx#syntax-e _%tl6527365376%_)))
                                    (let ((_%hd6527565383%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6527465379%_)))
                                          (_%tl6527665386%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6527465379%_))))
                                      (if (gx#stx-null? _%tl6527665386%_)
                                          ((lambda (_%L65389%_
                                                    _%L65391%_
                                                    _%L65392%_
                                                    _%L65393%_
                                                    _%L65394%_
                                                    _%L65395%_
                                                    _%L65396%_)
                                             (if (gx#stx-list? _%L65392%_)
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%L65396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L65394%_)
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'with-procedure-signature)
                                  (cons (cons _%L65392%_
                                              (cons _%L65391%_
                                                    (cons _%L65395%_ '())))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L65389%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'with-procedure-contract)
                              (cons _%L65392%_
                                    (cons (cons _%L65395%_
                                                (foldr (lambda (_%g6543065433%_
                                                                _%g6543165436%_)
                                                         (cons _%g6543065433%_
                                                               _%g6543165436%_))
                                                       '()
                                                       _%L65393%_))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _%stx64543%_))
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%L65396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L65394%_)
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'with-procedure-signature)
                                  (cons (cons _%L65392%_
                                              (cons _%L65391%_
                                                    (cons _%L65395%_ '())))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L65389%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'with-procedure-contract)
                              (cons _%L65392%_
                                    (cons (cons (gx#datum->syntax '#f '##apply)
                                                (cons _%L65395%_
                                                      (foldr (lambda (_%g6543865441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6543965444%_)
                       (cons _%g6543865441%_ _%g6543965444%_))
                     '()
                     _%L65393%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%stx64543%_))))
                                           _%hd6527565383%_
                                           _%hd6527265373%_
                                           _%hd6526965363%_
                                           _%out6526765355%_
                                           _%hd6525465313%_
                                           _%hd6525165303%_
                                           _%hd6524865293%_)
                                          (_%g6523865282%_ _%g6523965286%_))))
                                  (_%g6523865282%_ _%g6523965286%_))))
                          (_%g6523865282%_ _%g6523965286%_))))
                  (_%g6523865282%_ _%g6523965286%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop6526265335%_
                                       _%target6525965329%_
                                       '()))
                                    (_%g6523865282%_ _%g6523965286%_)))))
                          (_%g6523865282%_ _%g6523965286%_))))
                  (_%g6523865282%_ _%g6523965286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6523865282%_
                                                   _%g6523965286%_))))
                                          (_%g6523865282%_ _%g6523965286%_))))
                                  (_%g6523865282%_ _%g6523965286%_)))))
                      (_%g6523765447%_
                       (list _%id65232%_
                             _%unchecked-id65234%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65235%_))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-out|
                                _%signature65235%_))
                             _%signature65235%_
                             _%return65236%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                _%stx64543%_
                                _%return65236%_)))))))
                 (_%make-unchecked-def64550%_
                  (lambda (_%unchecked-id65057%_
                           _%signature65059%_
                           _%return65060%_
                           _%body65061%_)
                    (let* ((_%g6506365099%_
                            (lambda (_%g6506465095%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6506465095%_)))
                           (_%g6506265228%_
                            (lambda (_%g6506465103%_)
                              (if (gx#stx-pair? _%g6506465103%_)
                                  (let ((_%e6507065106%_
                                         (gx#syntax-e _%g6506465103%_)))
                                    (let ((_%hd6507165110%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6507065106%_)))
                                          (_%tl6507265113%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6507065106%_))))
                                      (if (gx#stx-pair? _%tl6507265113%_)
                                          (let ((_%e6507365116%_
                                                 (gx#syntax-e
                                                  _%tl6507265113%_)))
                                            (let ((_%hd6507465120%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6507365116%_)))
                                                  (_%tl6507565123%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6507365116%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6507565123%_)
                                                  (let ((_%e6507665126%_
                                                         (gx#syntax-e
                                                          _%tl6507565123%_)))
                                                    (let ((_%hd6507765130%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6507665126%_)))
                                                          (_%tl6507865133%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6507665126%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6507865133%_)
                                                          (let ((_%e6507965136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6507865133%_)))
                    (let ((_%hd6508065140%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6507965136%_)))
                          (_%tl6508165143%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6507965136%_))))
                      (if (gx#stx-pair? _%tl6508165143%_)
                          (let ((_%e6508265146%_
                                 (gx#syntax-e _%tl6508165143%_)))
                            (let ((_%hd6508365150%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6508265146%_)))
                                  (_%tl6508465153%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6508265146%_))))
                              (if (gx#stx-pair/null? _%hd6508365150%_)
                                  (let ((_g84183_
                                         (gx#syntax-split-splice
                                          _%hd6508365150%_
                                          '0)))
                                    (begin
                                      (let ((_g84184_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84183_)
                                                   (##vector-length _g84183_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84184_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84184_)))
                                      (let ((_%target6508565156%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g84183_ 0)))
                                            (_%tl6508765159%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g84183_ 1))))
                                        (if (gx#stx-null? _%tl6508765159%_)
                                            (letrec ((_%loop6508865162%_
                                                      (lambda (_%hd6508665166%_
                                                               _%body6509265169%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6508665166%_)
                                                            (let ((_%e6508965172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6508665166%_)))
                      (let ((_%lp-hd6509065176%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6508965172%_)))
                            (_%lp-tl6509165179%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6508965172%_))))
                        (_%loop6508865162%_
                         _%lp-tl6509165179%_
                         (cons _%lp-hd6509065176%_ _%body6509265169%_))))
                    (let ((_%body6509365182%_ (reverse _%body6509265169%_)))
                      (if (gx#stx-null? _%tl6508465153%_)
                          ((lambda (_%L65186%_
                                    _%L65188%_
                                    _%L65189%_
                                    _%L65190%_
                                    _%L65191%_)
                             (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _%L65191%_ _%L65190%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'with-procedure-signature)
                                                      (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L65188%_ (cons '#f '())))
                    (cons (cons (gx#datum->syntax
                                 '#f
                                 'with-procedure-unchecked-contract)
                                (cons _%L65189%_
                                      (foldr (lambda (_%g6521965222%_
                                                      _%g6522065225%_)
                                               (cons _%g6521965222%_
                                                     _%g6522065225%_))
                                             '()
                                             _%L65186%_)))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (gx#stx-source _%stx64543%_)))
                           _%body6509365182%_
                           _%hd6508065140%_
                           _%hd6507765130%_
                           _%hd6507465120%_
                           _%hd6507165110%_)
                          (_%g6506365099%_ _%g6506465103%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop6508865162%_
                                               _%target6508565156%_
                                               '()))
                                            (_%g6506365099%_
                                             _%g6506465103%_)))))
                                  (_%g6506365099%_ _%g6506465103%_))))
                          (_%g6506365099%_ _%g6506465103%_))))
                  (_%g6506365099%_ _%g6506465103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6506365099%_
                                                   _%g6506465103%_))))
                                          (_%g6506365099%_ _%g6506465103%_))))
                                  (_%g6506365099%_ _%g6506465103%_)))))
                      (_%g6506265228%_
                       (list _%unchecked-id65057%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65059%_))
                             _%signature65059%_
                             _%return65060%_
                             _%body65061%_))))))
          (let* ((_%__stx8215682157%_ _%stx64543%_)
                 (_%g6455564647%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8215682157%_))))
            (let ((_%__kont8215982160%_
                   (lambda (_%L65008%_ _%L65010%_ _%L65011%_ _%L65012%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L65011%_)
                         (_%make-definition64546%_
                          _%L65012%_
                          _%L65011%_
                          _%L65010%_
                          (foldr (lambda (_%g6503665039%_ _%g6503765042%_)
                                   (cons _%g6503665039%_ _%g6503765042%_))
                                 '()
                                 _%L65008%_))
                         (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L65012%_ _%L65011%_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-procedure-signature)
                                                 (cons (cons '#f
                                                             (cons _%L65010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '())))
               (foldr (lambda (_%g6504465047%_ _%g6504565050%_)
                        (cons _%g6504465047%_ _%g6504565050%_))
                      '()
                      _%L65008%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                  (_%__kont8216382164%_
                   (lambda (_%L64882%_ _%L64884%_ _%L64885%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L64884%_)
                         (cons (gx#datum->syntax '#f 'def/c)
                               (cons (cons _%L64885%_ _%L64884%_)
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6490464907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6490564910%_)
                  (cons _%g6490464907%_ _%g6490564910%_))
                '()
                _%L64882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L64885%_ _%L64884%_)
                                     (foldr (lambda (_%g6491264915%_
                                                     _%g6491364918%_)
                                              (cons _%g6491264915%_
                                                    _%g6491364918%_))
                                            '()
                                            _%L64882%_))))))
                  (_%__kont8216782168%_
                   (lambda (_%L64780%_ _%L64782%_ _%L64783%_ _%L64784%_)
                     (cons (gx#datum->syntax '#f 'def/c)
                           (cons (cons _%L64784%_ _%L64783%_)
                                 (cons (cons (gx#datum->syntax '#f 'lambda/c)
                                             (cons _%L64782%_
                                                   (foldr (lambda (_%g6480664809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g6480764812%_)
                    (cons _%g6480664809%_ _%g6480764812%_))
                  '()
                  _%L64780%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont8217182172%_
                   (lambda (_%L64684%_ _%L64686%_)
                     (cons (gx#datum->syntax '#f 'def)
                           (cons _%L64686%_ (cons _%L64684%_ '()))))))
              (let* ((_%__match8229382294%_
                      (lambda (_%e6463364654%_
                               _%hd6463464658%_
                               _%tl6463564661%_
                               _%e6463664664%_
                               _%hd6463764668%_
                               _%tl6463864671%_
                               _%e6463964674%_
                               _%hd6464064678%_
                               _%tl6464164681%_)
                        (let ((_%L64684%_ _%hd6464064678%_)
                              (_%L64686%_ _%hd6463764668%_))
                          (if (gx#identifier? _%L64686%_)
                              (_%__kont8217182172%_ _%L64684%_ _%L64686%_)
                              (let ()
                                (declare (not safe))
                                (_%g6455564647%_))))))
                     (_%__match8227382274%_
                      (lambda (_%e6461064710%_
                               _%hd6461164714%_
                               _%tl6461264717%_
                               _%e6461364720%_
                               _%hd6461464724%_
                               _%tl6461564727%_
                               _%e6461664730%_
                               _%hd6461764734%_
                               _%tl6461864737%_
                               _%e6461964740%_
                               _%hd6462064744%_
                               _%tl6462164747%_
                               _%__splice8216982170%_
                               _%target6462264750%_
                               _%tl6462464753%_)
                        (letrec ((_%loop6462564756%_
                                  (lambda (_%hd6462364760%_ _%body6462964763%_)
                                    (if (gx#stx-pair? _%hd6462364760%_)
                                        (let ((_%e6462664766%_
                                               (gx#syntax-e _%hd6462364760%_)))
                                          (let ((_%lp-tl6462864773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6462664766%_)))
                                                (_%lp-hd6462764770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6462664766%_))))
                                            (_%loop6462564756%_
                                             _%lp-tl6462864773%_
                                             (cons _%lp-hd6462764770%_
                                                   _%body6462964763%_))))
                                        (let ((_%body6463064776%_
                                               (reverse _%body6462964763%_)))
                                          (_%__kont8216782168%_
                                           _%body6463064776%_
                                           _%tl6461864737%_
                                           _%tl6462164747%_
                                           _%hd6462064744%_))))))
                          (_%loop6462564756%_ _%target6462264750%_ '()))))
                     (_%__match8225982260%_
                      (lambda (_%e6461064710%_
                               _%hd6461164714%_
                               _%tl6461264717%_
                               _%e6461364720%_
                               _%hd6461464724%_
                               _%tl6461564727%_
                               _%e6461664730%_
                               _%hd6461764734%_
                               _%tl6461864737%_)
                        (if (gx#stx-pair? _%hd6461764734%_)
                            (let ((_%e6461964740%_
                                   (gx#syntax-e _%hd6461764734%_)))
                              (let ((_%tl6462164747%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6461964740%_)))
                                    (_%hd6462064744%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6461964740%_))))
                                (if (gx#stx-pair/null? _%tl6461564727%_)
                                    (let ((_%__splice8216982170%_
                                           (gx#syntax-split-splice
                                            _%tl6461564727%_
                                            '0)))
                                      (let ((_%tl6462464753%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8216982170%_
                                                '1)))
                                            (_%target6462264750%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8216982170%_
                                                '0))))
                                        (if (gx#stx-null? _%tl6462464753%_)
                                            (_%__match8227382274%_
                                             _%e6461064710%_
                                             _%hd6461164714%_
                                             _%tl6461264717%_
                                             _%e6461364720%_
                                             _%hd6461464724%_
                                             _%tl6461564727%_
                                             _%e6461664730%_
                                             _%hd6461764734%_
                                             _%tl6461864737%_
                                             _%e6461964740%_
                                             _%hd6462064744%_
                                             _%tl6462164747%_
                                             _%__splice8216982170%_
                                             _%target6462264750%_
                                             _%tl6462464753%_)
                                            (if (gx#stx-pair? _%tl6461564727%_)
                                                (let ((_%e6463964674%_
                                                       (gx#syntax-e
                                                        _%tl6461564727%_)))
                                                  (let ((_%tl6464164681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6463964674%_)))
                                                        (_%hd6464064678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6463964674%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6464164681%_)
                                                        (_%__match8229382294%_
                                                         _%e6461064710%_
                                                         _%hd6461164714%_
                                                         _%tl6461264717%_
                                                         _%e6461364720%_
                                                         _%hd6461464724%_
                                                         _%tl6461564727%_
                                                         _%e6463964674%_
                                                         _%hd6464064678%_
                                                         _%tl6464164681%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6455564647%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6455564647%_))))))
                                    (if (gx#stx-pair? _%tl6461564727%_)
                                        (let ((_%e6463964674%_
                                               (gx#syntax-e _%tl6461564727%_)))
                                          (let ((_%tl6464164681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6463964674%_)))
                                                (_%hd6464064678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6463964674%_))))
                                            (if (gx#stx-null? _%tl6464164681%_)
                                                (_%__match8229382294%_
                                                 _%e6461064710%_
                                                 _%hd6461164714%_
                                                 _%tl6461264717%_
                                                 _%e6461364720%_
                                                 _%hd6461464724%_
                                                 _%tl6461564727%_
                                                 _%e6463964674%_
                                                 _%hd6464064678%_
                                                 _%tl6464164681%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6455564647%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6455564647%_))))))
                            (if (gx#stx-pair? _%tl6461564727%_)
                                (let ((_%e6463964674%_
                                       (gx#syntax-e _%tl6461564727%_)))
                                  (let ((_%tl6464164681%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6463964674%_)))
                                        (_%hd6464064678%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6463964674%_))))
                                    (if (gx#stx-null? _%tl6464164681%_)
                                        (_%__match8229382294%_
                                         _%e6461064710%_
                                         _%hd6461164714%_
                                         _%tl6461264717%_
                                         _%e6461364720%_
                                         _%hd6461464724%_
                                         _%tl6461564727%_
                                         _%e6463964674%_
                                         _%hd6464064678%_
                                         _%tl6464164681%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6455564647%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6455564647%_))))))
                     (_%__match8224182242%_
                      (lambda (_%e6458864822%_
                               _%hd6458964826%_
                               _%tl6459064829%_
                               _%e6459164832%_
                               _%hd6459264836%_
                               _%tl6459364839%_
                               _%e6459464842%_
                               _%hd6459564846%_
                               _%tl6459664849%_
                               _%__splice8216582166%_
                               _%target6459764852%_
                               _%tl6459964855%_)
                        (letrec ((_%loop6460064858%_
                                  (lambda (_%hd6459864862%_ _%body6460464865%_)
                                    (if (gx#stx-pair? _%hd6459864862%_)
                                        (let ((_%e6460164868%_
                                               (gx#syntax-e _%hd6459864862%_)))
                                          (let ((_%lp-tl6460364875%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6460164868%_)))
                                                (_%lp-hd6460264872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6460164868%_))))
                                            (_%loop6460064858%_
                                             _%lp-tl6460364875%_
                                             (cons _%lp-hd6460264872%_
                                                   _%body6460464865%_))))
                                        (let ((_%body6460564878%_
                                               (reverse _%body6460464865%_)))
                                          (let ((_%L64882%_ _%body6460564878%_)
                                                (_%L64884%_ _%tl6459664849%_)
                                                (_%L64885%_ _%hd6459564846%_))
                                            (if (gx#identifier? _%L64885%_)
                                                (_%__kont8216382164%_
                                                 _%L64882%_
                                                 _%L64884%_
                                                 _%L64885%_)
                                                (_%__match8225982260%_
                                                 _%e6458864822%_
                                                 _%hd6458964826%_
                                                 _%tl6459064829%_
                                                 _%e6459164832%_
                                                 _%hd6459264836%_
                                                 _%tl6459364839%_
                                                 _%e6459464842%_
                                                 _%hd6459564846%_
                                                 _%tl6459664849%_))))))))
                          (_%loop6460064858%_ _%target6459764852%_ '()))))
                     (_%__match8223382234%_
                      (lambda (_%e6458864822%_
                               _%hd6458964826%_
                               _%tl6459064829%_
                               _%e6459164832%_
                               _%hd6459264836%_
                               _%tl6459364839%_
                               _%e6459464842%_
                               _%hd6459564846%_
                               _%tl6459664849%_)
                        (if (gx#stx-pair/null? _%tl6459364839%_)
                            (let ((_%__splice8216582166%_
                                   (gx#syntax-split-splice
                                    _%tl6459364839%_
                                    '0)))
                              (let ((_%tl6459964855%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8216582166%_
                                        '1)))
                                    (_%target6459764852%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8216582166%_
                                        '0))))
                                (if (gx#stx-null? _%tl6459964855%_)
                                    (_%__match8224182242%_
                                     _%e6458864822%_
                                     _%hd6458964826%_
                                     _%tl6459064829%_
                                     _%e6459164832%_
                                     _%hd6459264836%_
                                     _%tl6459364839%_
                                     _%e6459464842%_
                                     _%hd6459564846%_
                                     _%tl6459664849%_
                                     _%__splice8216582166%_
                                     _%target6459764852%_
                                     _%tl6459964855%_)
                                    (if (gx#stx-pair? _%hd6459564846%_)
                                        (let ((_%e6461964740%_
                                               (gx#syntax-e _%hd6459564846%_)))
                                          (let ((_%tl6462164747%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6461964740%_)))
                                                (_%hd6462064744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6461964740%_))))
                                            (if (gx#stx-pair? _%tl6459364839%_)
                                                (let ((_%e6463964674%_
                                                       (gx#syntax-e
                                                        _%tl6459364839%_)))
                                                  (let ((_%tl6464164681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6463964674%_)))
                                                        (_%hd6464064678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6463964674%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6464164681%_)
                                                        (_%__match8229382294%_
                                                         _%e6458864822%_
                                                         _%hd6458964826%_
                                                         _%tl6459064829%_
                                                         _%e6459164832%_
                                                         _%hd6459264836%_
                                                         _%tl6459364839%_
                                                         _%e6463964674%_
                                                         _%hd6464064678%_
                                                         _%tl6464164681%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6455564647%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6455564647%_)))))
                                        (if (gx#stx-pair? _%tl6459364839%_)
                                            (let ((_%e6463964674%_
                                                   (gx#syntax-e
                                                    _%tl6459364839%_)))
                                              (let ((_%tl6464164681%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6463964674%_)))
                                                    (_%hd6464064678%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6463964674%_))))
                                                (if (gx#stx-null?
                                                     _%tl6464164681%_)
                                                    (_%__match8229382294%_
                                                     _%e6458864822%_
                                                     _%hd6458964826%_
                                                     _%tl6459064829%_
                                                     _%e6459164832%_
                                                     _%hd6459264836%_
                                                     _%tl6459364839%_
                                                     _%e6463964674%_
                                                     _%hd6464064678%_
                                                     _%tl6464164681%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6455564647%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6455564647%_)))))))
                            (if (gx#stx-pair? _%hd6459564846%_)
                                (let ((_%e6461964740%_
                                       (gx#syntax-e _%hd6459564846%_)))
                                  (let ((_%tl6462164747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6461964740%_)))
                                        (_%hd6462064744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6461964740%_))))
                                    (if (gx#stx-pair? _%tl6459364839%_)
                                        (let ((_%e6463964674%_
                                               (gx#syntax-e _%tl6459364839%_)))
                                          (let ((_%tl6464164681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6463964674%_)))
                                                (_%hd6464064678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6463964674%_))))
                                            (if (gx#stx-null? _%tl6464164681%_)
                                                (_%__match8229382294%_
                                                 _%e6458864822%_
                                                 _%hd6458964826%_
                                                 _%tl6459064829%_
                                                 _%e6459164832%_
                                                 _%hd6459264836%_
                                                 _%tl6459364839%_
                                                 _%e6463964674%_
                                                 _%hd6464064678%_
                                                 _%tl6464164681%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6455564647%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6455564647%_)))))
                                (if (gx#stx-pair? _%tl6459364839%_)
                                    (let ((_%e6463964674%_
                                           (gx#syntax-e _%tl6459364839%_)))
                                      (let ((_%tl6464164681%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6463964674%_)))
                                            (_%hd6464064678%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6463964674%_))))
                                        (if (gx#stx-null? _%tl6464164681%_)
                                            (_%__match8229382294%_
                                             _%e6458864822%_
                                             _%hd6458964826%_
                                             _%tl6459064829%_
                                             _%e6459164832%_
                                             _%hd6459264836%_
                                             _%tl6459364839%_
                                             _%e6463964674%_
                                             _%hd6464064678%_
                                             _%tl6464164681%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6455564647%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6455564647%_)))))))
                     (_%__match8221582216%_
                      (lambda (_%e6456164928%_
                               _%hd6456264932%_
                               _%tl6456364935%_
                               _%e6456464938%_
                               _%hd6456564942%_
                               _%tl6456664945%_
                               _%e6456764948%_
                               _%hd6456864952%_
                               _%tl6456964955%_
                               _%e6457064958%_
                               _%hd6457164962%_
                               _%tl6457264965%_
                               _%e6457364968%_
                               _%hd6457464972%_
                               _%tl6457564975%_
                               _%__splice8216182162%_
                               _%target6457664978%_
                               _%tl6457864981%_)
                        (letrec ((_%loop6457964984%_
                                  (lambda (_%hd6457764988%_ _%body6458364991%_)
                                    (if (gx#stx-pair? _%hd6457764988%_)
                                        (let ((_%e6458064994%_
                                               (gx#syntax-e _%hd6457764988%_)))
                                          (let ((_%lp-tl6458265001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6458064994%_)))
                                                (_%lp-hd6458164998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6458064994%_))))
                                            (_%loop6457964984%_
                                             _%lp-tl6458265001%_
                                             (cons _%lp-hd6458164998%_
                                                   _%body6458364991%_))))
                                        (let ((_%body6458465004%_
                                               (reverse _%body6458364991%_)))
                                          (let ((_%L65008%_ _%body6458465004%_)
                                                (_%L65010%_ _%hd6457464972%_)
                                                (_%L65011%_ _%tl6456964955%_)
                                                (_%L65012%_ _%hd6456864952%_))
                                            (if (gx#identifier? _%L65012%_)
                                                (_%__kont8215982160%_
                                                 _%L65008%_
                                                 _%L65010%_
                                                 _%L65011%_
                                                 _%L65012%_)
                                                (_%__match8223382234%_
                                                 _%e6456164928%_
                                                 _%hd6456264932%_
                                                 _%tl6456364935%_
                                                 _%e6456464938%_
                                                 _%hd6456564942%_
                                                 _%tl6456664945%_
                                                 _%e6456764948%_
                                                 _%hd6456864952%_
                                                 _%tl6456964955%_))))))))
                          (_%loop6457964984%_ _%target6457664978%_ '())))))
                (if (gx#stx-pair? _%__stx8215682157%_)
                    (let ((_%e6456164928%_ (gx#syntax-e _%__stx8215682157%_)))
                      (let ((_%tl6456364935%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6456164928%_)))
                            (_%hd6456264932%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6456164928%_))))
                        (if (gx#stx-pair? _%tl6456364935%_)
                            (let ((_%e6456464938%_
                                   (gx#syntax-e _%tl6456364935%_)))
                              (let ((_%tl6456664945%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6456464938%_)))
                                    (_%hd6456564942%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6456464938%_))))
                                (if (gx#stx-pair? _%hd6456564942%_)
                                    (let ((_%e6456764948%_
                                           (gx#syntax-e _%hd6456564942%_)))
                                      (let ((_%tl6456964955%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6456764948%_)))
                                            (_%hd6456864952%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6456764948%_))))
                                        (if (gx#stx-pair? _%tl6456664945%_)
                                            (let ((_%e6457064958%_
                                                   (gx#syntax-e
                                                    _%tl6456664945%_)))
                                              (let ((_%tl6457264965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6457064958%_)))
                                                    (_%hd6457164962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6457064958%_))))
                                                (if (gx#identifier?
                                                     _%hd6457164962%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g84185_|
                                                         _%hd6457164962%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6457264965%_)
                                                            (let ((_%e6457364968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6457264965%_)))
                      (let ((_%tl6457564975%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6457364968%_)))
                            (_%hd6457464972%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6457364968%_))))
                        (if (gx#stx-pair/null? _%tl6457564975%_)
                            (let ((_%__splice8216182162%_
                                   (gx#syntax-split-splice
                                    _%tl6457564975%_
                                    '0)))
                              (let ((_%tl6457864981%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8216182162%_
                                        '1)))
                                    (_%target6457664978%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8216182162%_
                                        '0))))
                                (if (gx#stx-null? _%tl6457864981%_)
                                    (_%__match8221582216%_
                                     _%e6456164928%_
                                     _%hd6456264932%_
                                     _%tl6456364935%_
                                     _%e6456464938%_
                                     _%hd6456564942%_
                                     _%tl6456664945%_
                                     _%e6456764948%_
                                     _%hd6456864952%_
                                     _%tl6456964955%_
                                     _%e6457064958%_
                                     _%hd6457164962%_
                                     _%tl6457264965%_
                                     _%e6457364968%_
                                     _%hd6457464972%_
                                     _%tl6457564975%_
                                     _%__splice8216182162%_
                                     _%target6457664978%_
                                     _%tl6457864981%_)
                                    (if (gx#stx-pair/null? _%tl6456664945%_)
                                        (let ((_%__splice8216582166%_
                                               (gx#syntax-split-splice
                                                _%tl6456664945%_
                                                '0)))
                                          (let ((_%tl6459964855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8216582166%_
                                                    '1)))
                                                (_%target6459764852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8216582166%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl6459964855%_)
                                                (_%__match8224182242%_
                                                 _%e6456164928%_
                                                 _%hd6456264932%_
                                                 _%tl6456364935%_
                                                 _%e6456464938%_
                                                 _%hd6456564942%_
                                                 _%tl6456664945%_
                                                 _%e6456764948%_
                                                 _%hd6456864952%_
                                                 _%tl6456964955%_
                                                 _%__splice8216582166%_
                                                 _%target6459764852%_
                                                 _%tl6459964855%_)
                                                (if (gx#stx-pair?
                                                     _%hd6456864952%_)
                                                    (let ((_%e6461964740%_
                                                           (gx#syntax-e
                                                            _%hd6456864952%_)))
                                                      (let ((_%tl6462164747%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6461964740%_)))
                    (_%hd6462064744%_
                     (let () (declare (not safe)) (##car _%e6461964740%_))))
                (let () (declare (not safe)) (_%g6455564647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6455564647%_))))))
                                        (if (gx#stx-pair? _%hd6456864952%_)
                                            (let ((_%e6461964740%_
                                                   (gx#syntax-e
                                                    _%hd6456864952%_)))
                                              (let ((_%tl6462164747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6461964740%_)))
                                                    (_%hd6462064744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6461964740%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6455564647%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6455564647%_)))))))
                            (if (gx#stx-pair/null? _%tl6456664945%_)
                                (let ((_%__splice8216582166%_
                                       (gx#syntax-split-splice
                                        _%tl6456664945%_
                                        '0)))
                                  (let ((_%tl6459964855%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8216582166%_
                                            '1)))
                                        (_%target6459764852%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8216582166%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6459964855%_)
                                        (_%__match8224182242%_
                                         _%e6456164928%_
                                         _%hd6456264932%_
                                         _%tl6456364935%_
                                         _%e6456464938%_
                                         _%hd6456564942%_
                                         _%tl6456664945%_
                                         _%e6456764948%_
                                         _%hd6456864952%_
                                         _%tl6456964955%_
                                         _%__splice8216582166%_
                                         _%target6459764852%_
                                         _%tl6459964855%_)
                                        (if (gx#stx-pair? _%hd6456864952%_)
                                            (let ((_%e6461964740%_
                                                   (gx#syntax-e
                                                    _%hd6456864952%_)))
                                              (let ((_%tl6462164747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6461964740%_)))
                                                    (_%hd6462064744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6461964740%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6455564647%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6455564647%_))))))
                                (if (gx#stx-pair? _%hd6456864952%_)
                                    (let ((_%e6461964740%_
                                           (gx#syntax-e _%hd6456864952%_)))
                                      (let ((_%tl6462164747%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6461964740%_)))
                                            (_%hd6462064744%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6461964740%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6455564647%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6455564647%_)))))))
                    (if (gx#stx-pair/null? _%tl6456664945%_)
                        (let ((_%__splice8216582166%_
                               (gx#syntax-split-splice _%tl6456664945%_ '0)))
                          (let ((_%tl6459964855%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8216582166%_ '1)))
                                (_%target6459764852%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8216582166%_ '0))))
                            (if (gx#stx-null? _%tl6459964855%_)
                                (_%__match8224182242%_
                                 _%e6456164928%_
                                 _%hd6456264932%_
                                 _%tl6456364935%_
                                 _%e6456464938%_
                                 _%hd6456564942%_
                                 _%tl6456664945%_
                                 _%e6456764948%_
                                 _%hd6456864952%_
                                 _%tl6456964955%_
                                 _%__splice8216582166%_
                                 _%target6459764852%_
                                 _%tl6459964855%_)
                                (if (gx#stx-pair? _%hd6456864952%_)
                                    (let ((_%e6461964740%_
                                           (gx#syntax-e _%hd6456864952%_)))
                                      (let ((_%tl6462164747%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6461964740%_)))
                                            (_%hd6462064744%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6461964740%_))))
                                        (if (gx#stx-null? _%tl6457264965%_)
                                            (_%__match8229382294%_
                                             _%e6456164928%_
                                             _%hd6456264932%_
                                             _%tl6456364935%_
                                             _%e6456464938%_
                                             _%hd6456564942%_
                                             _%tl6456664945%_
                                             _%e6457064958%_
                                             _%hd6457164962%_
                                             _%tl6457264965%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6455564647%_)))))
                                    (if (gx#stx-null? _%tl6457264965%_)
                                        (_%__match8229382294%_
                                         _%e6456164928%_
                                         _%hd6456264932%_
                                         _%tl6456364935%_
                                         _%e6456464938%_
                                         _%hd6456564942%_
                                         _%tl6456664945%_
                                         _%e6457064958%_
                                         _%hd6457164962%_
                                         _%tl6457264965%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6455564647%_)))))))
                        (if (gx#stx-pair? _%hd6456864952%_)
                            (let ((_%e6461964740%_
                                   (gx#syntax-e _%hd6456864952%_)))
                              (let ((_%tl6462164747%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6461964740%_)))
                                    (_%hd6462064744%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6461964740%_))))
                                (if (gx#stx-null? _%tl6457264965%_)
                                    (_%__match8229382294%_
                                     _%e6456164928%_
                                     _%hd6456264932%_
                                     _%tl6456364935%_
                                     _%e6456464938%_
                                     _%hd6456564942%_
                                     _%tl6456664945%_
                                     _%e6457064958%_
                                     _%hd6457164962%_
                                     _%tl6457264965%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6455564647%_)))))
                            (if (gx#stx-null? _%tl6457264965%_)
                                (_%__match8229382294%_
                                 _%e6456164928%_
                                 _%hd6456264932%_
                                 _%tl6456364935%_
                                 _%e6456464938%_
                                 _%hd6456564942%_
                                 _%tl6456664945%_
                                 _%e6457064958%_
                                 _%hd6457164962%_
                                 _%tl6457264965%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6455564647%_))))))
                (if (gx#stx-pair/null? _%tl6456664945%_)
                    (let ((_%__splice8216582166%_
                           (gx#syntax-split-splice _%tl6456664945%_ '0)))
                      (let ((_%tl6459964855%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8216582166%_ '1)))
                            (_%target6459764852%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8216582166%_ '0))))
                        (if (gx#stx-null? _%tl6459964855%_)
                            (_%__match8224182242%_
                             _%e6456164928%_
                             _%hd6456264932%_
                             _%tl6456364935%_
                             _%e6456464938%_
                             _%hd6456564942%_
                             _%tl6456664945%_
                             _%e6456764948%_
                             _%hd6456864952%_
                             _%tl6456964955%_
                             _%__splice8216582166%_
                             _%target6459764852%_
                             _%tl6459964855%_)
                            (if (gx#stx-pair? _%hd6456864952%_)
                                (let ((_%e6461964740%_
                                       (gx#syntax-e _%hd6456864952%_)))
                                  (let ((_%tl6462164747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6461964740%_)))
                                        (_%hd6462064744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6461964740%_))))
                                    (if (gx#stx-null? _%tl6457264965%_)
                                        (_%__match8229382294%_
                                         _%e6456164928%_
                                         _%hd6456264932%_
                                         _%tl6456364935%_
                                         _%e6456464938%_
                                         _%hd6456564942%_
                                         _%tl6456664945%_
                                         _%e6457064958%_
                                         _%hd6457164962%_
                                         _%tl6457264965%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6455564647%_)))))
                                (if (gx#stx-null? _%tl6457264965%_)
                                    (_%__match8229382294%_
                                     _%e6456164928%_
                                     _%hd6456264932%_
                                     _%tl6456364935%_
                                     _%e6456464938%_
                                     _%hd6456564942%_
                                     _%tl6456664945%_
                                     _%e6457064958%_
                                     _%hd6457164962%_
                                     _%tl6457264965%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6455564647%_)))))))
                    (if (gx#stx-pair? _%hd6456864952%_)
                        (let ((_%e6461964740%_ (gx#syntax-e _%hd6456864952%_)))
                          (let ((_%tl6462164747%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6461964740%_)))
                                (_%hd6462064744%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6461964740%_))))
                            (if (gx#stx-null? _%tl6457264965%_)
                                (_%__match8229382294%_
                                 _%e6456164928%_
                                 _%hd6456264932%_
                                 _%tl6456364935%_
                                 _%e6456464938%_
                                 _%hd6456564942%_
                                 _%tl6456664945%_
                                 _%e6457064958%_
                                 _%hd6457164962%_
                                 _%tl6457264965%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6455564647%_)))))
                        (if (gx#stx-null? _%tl6457264965%_)
                            (_%__match8229382294%_
                             _%e6456164928%_
                             _%hd6456264932%_
                             _%tl6456364935%_
                             _%e6456464938%_
                             _%hd6456564942%_
                             _%tl6456664945%_
                             _%e6457064958%_
                             _%hd6457164962%_
                             _%tl6457264965%_)
                            (let () (declare (not safe)) (_%g6455564647%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl6456664945%_)
                                                        (let ((_%__splice8216582166%_
                                                               (gx#syntax-split-splice
                                                                _%tl6456664945%_
                                                                '0)))
                                                          (let ((_%tl6459964855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8216582166%_ '1)))
                        (_%target6459764852%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8216582166%_ '0))))
                    (if (gx#stx-null? _%tl6459964855%_)
                        (_%__match8224182242%_
                         _%e6456164928%_
                         _%hd6456264932%_
                         _%tl6456364935%_
                         _%e6456464938%_
                         _%hd6456564942%_
                         _%tl6456664945%_
                         _%e6456764948%_
                         _%hd6456864952%_
                         _%tl6456964955%_
                         _%__splice8216582166%_
                         _%target6459764852%_
                         _%tl6459964855%_)
                        (if (gx#stx-pair? _%hd6456864952%_)
                            (let ((_%e6461964740%_
                                   (gx#syntax-e _%hd6456864952%_)))
                              (let ((_%tl6462164747%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6461964740%_)))
                                    (_%hd6462064744%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6461964740%_))))
                                (if (gx#stx-null? _%tl6457264965%_)
                                    (_%__match8229382294%_
                                     _%e6456164928%_
                                     _%hd6456264932%_
                                     _%tl6456364935%_
                                     _%e6456464938%_
                                     _%hd6456564942%_
                                     _%tl6456664945%_
                                     _%e6457064958%_
                                     _%hd6457164962%_
                                     _%tl6457264965%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6455564647%_)))))
                            (if (gx#stx-null? _%tl6457264965%_)
                                (_%__match8229382294%_
                                 _%e6456164928%_
                                 _%hd6456264932%_
                                 _%tl6456364935%_
                                 _%e6456464938%_
                                 _%hd6456564942%_
                                 _%tl6456664945%_
                                 _%e6457064958%_
                                 _%hd6457164962%_
                                 _%tl6457264965%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6455564647%_)))))))
                (if (gx#stx-pair? _%hd6456864952%_)
                    (let ((_%e6461964740%_ (gx#syntax-e _%hd6456864952%_)))
                      (let ((_%tl6462164747%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6461964740%_)))
                            (_%hd6462064744%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6461964740%_))))
                        (if (gx#stx-null? _%tl6457264965%_)
                            (_%__match8229382294%_
                             _%e6456164928%_
                             _%hd6456264932%_
                             _%tl6456364935%_
                             _%e6456464938%_
                             _%hd6456564942%_
                             _%tl6456664945%_
                             _%e6457064958%_
                             _%hd6457164962%_
                             _%tl6457264965%_)
                            (let () (declare (not safe)) (_%g6455564647%_)))))
                    (if (gx#stx-null? _%tl6457264965%_)
                        (_%__match8229382294%_
                         _%e6456164928%_
                         _%hd6456264932%_
                         _%tl6456364935%_
                         _%e6456464938%_
                         _%hd6456564942%_
                         _%tl6456664945%_
                         _%e6457064958%_
                         _%hd6457164962%_
                         _%tl6457264965%_)
                        (let () (declare (not safe)) (_%g6455564647%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%tl6456664945%_)
                                                (let ((_%__splice8216582166%_
                                                       (gx#syntax-split-splice
                                                        _%tl6456664945%_
                                                        '0)))
                                                  (let ((_%tl6459964855%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8216582166%_
                                                            '1)))
                                                        (_%target6459764852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8216582166%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6459964855%_)
                                                        (_%__match8224182242%_
                                                         _%e6456164928%_
                                                         _%hd6456264932%_
                                                         _%tl6456364935%_
                                                         _%e6456464938%_
                                                         _%hd6456564942%_
                                                         _%tl6456664945%_
                                                         _%e6456764948%_
                                                         _%hd6456864952%_
                                                         _%tl6456964955%_
                                                         _%__splice8216582166%_
                                                         _%target6459764852%_
                                                         _%tl6459964855%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6456864952%_)
                                                            (let ((_%e6461964740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6456864952%_)))
                      (let ((_%tl6462164747%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6461964740%_)))
                            (_%hd6462064744%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6461964740%_))))
                        (let () (declare (not safe)) (_%g6455564647%_))))
                    (let () (declare (not safe)) (_%g6455564647%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%hd6456864952%_)
                                                    (let ((_%e6461964740%_
                                                           (gx#syntax-e
                                                            _%hd6456864952%_)))
                                                      (let ((_%tl6462164747%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6461964740%_)))
                    (_%hd6462064744%_
                     (let () (declare (not safe)) (##car _%e6461964740%_))))
                (let () (declare (not safe)) (_%g6455564647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6455564647%_)))))))
                                    (if (gx#stx-pair? _%tl6456664945%_)
                                        (let ((_%e6463964674%_
                                               (gx#syntax-e _%tl6456664945%_)))
                                          (let ((_%tl6464164681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6463964674%_)))
                                                (_%hd6464064678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6463964674%_))))
                                            (if (gx#stx-null? _%tl6464164681%_)
                                                (_%__match8229382294%_
                                                 _%e6456164928%_
                                                 _%hd6456264932%_
                                                 _%tl6456364935%_
                                                 _%e6456464938%_
                                                 _%hd6456564942%_
                                                 _%tl6456664945%_
                                                 _%e6463964674%_
                                                 _%hd6464064678%_
                                                 _%tl6464164681%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6455564647%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6455564647%_))))))
                            (let () (declare (not safe)) (_%g6455564647%_)))))
                    (let () (declare (not safe)) (_%g6455564647%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-signature|
      (lambda (_%stx65724%_)
        (let* ((_%__stx8229682297%_ _%stx65724%_)
               (_%g6572865791%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8229682297%_))))
          (let ((_%__kont8229982300%_
                 (lambda (_%L66042%_ _%L66044%_)
                   (let* ((_%g6606966077%_
                           (lambda (_%g6607066073%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6607066073%_)))
                          (_%g6606866104%_
                           (lambda (_%g6607066081%_)
                             ((lambda (_%L66084%_)
                                (cons (gx#datum->syntax '#f 'begin-annotation)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '@type.signature)
                                                  (cons 'return:
                                                        (cons _%L66084%_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6609566098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6609666101%_)
                               (cons _%g6609566098%_ _%g6609666101%_))
                             '()
                             _%L66042%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g6607066081%_))))
                     (_%g6606866104%_
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                         _%stx65724%_
                         _%L66044%_))))))
                (_%__kont8230382304%_
                 (lambda (_%L65878%_ _%L65880%_ _%L65881%_ _%L65882%_)
                   (let* ((_%g6590865916%_
                           (lambda (_%g6590965912%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6590965912%_)))
                          (_%g6590765943%_
                           (lambda (_%g6590965920%_)
                             ((lambda (_%L65923%_)
                                (cons (gx#datum->syntax '#f 'begin-annotation)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '@type.signature)
                                                  _%L65923%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6593465937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6593565940%_)
                               (cons _%g6593465937%_ _%g6593565940%_))
                             '()
                             _%L65878%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g6590965920%_))))
                     (_%g6590765943%_
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~Interface[1]#make-procedure-lambda-signature|
                         _%stx65724%_
                         _%L65882%_
                         _%L65881%_
                         _%L65880%_)))))))
            (let* ((_%__match8239982400%_
                    (lambda (_%e6576265798%_
                             _%hd6576365802%_
                             _%tl6576465805%_
                             _%e6576565808%_
                             _%hd6576665812%_
                             _%tl6576765815%_
                             _%e6576865818%_
                             _%hd6576965822%_
                             _%tl6577065825%_
                             _%e6577165828%_
                             _%hd6577265832%_
                             _%tl6577365835%_
                             _%e6577465838%_
                             _%hd6577565842%_
                             _%tl6577665845%_
                             _%__splice8230582306%_
                             _%target6577765848%_
                             _%tl6577965851%_)
                      (letrec ((_%loop6578065854%_
                                (lambda (_%hd6577865858%_ _%body6578465861%_)
                                  (if (gx#stx-pair? _%hd6577865858%_)
                                      (let ((_%e6578165864%_
                                             (gx#syntax-e _%hd6577865858%_)))
                                        (let ((_%lp-tl6578365871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6578165864%_)))
                                              (_%lp-hd6578265868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6578165864%_))))
                                          (_%loop6578065854%_
                                           _%lp-tl6578365871%_
                                           (cons _%lp-hd6578265868%_
                                                 _%body6578465861%_))))
                                      (let ((_%body6578565874%_
                                             (reverse _%body6578465861%_)))
                                        (_%__kont8230382304%_
                                         _%body6578565874%_
                                         _%hd6577565842%_
                                         _%hd6577265832%_
                                         _%hd6576965822%_))))))
                        (_%loop6578065854%_ _%target6577765848%_ '()))))
                   (_%__match8235982360%_
                    (lambda (_%e6573265954%_
                             _%hd6573365958%_
                             _%tl6573465961%_
                             _%e6573565964%_
                             _%hd6573665968%_
                             _%tl6573765971%_
                             _%e6573865974%_
                             _%hd6573965978%_
                             _%tl6574065981%_
                             _%e6574165984%_
                             _%e6574265988%_
                             _%hd6574365992%_
                             _%tl6574465995%_
                             _%e6574565998%_
                             _%hd6574666002%_
                             _%tl6574766005%_
                             _%e6574866008%_
                             _%__splice8230182302%_
                             _%target6574966012%_
                             _%tl6575166015%_)
                      (letrec ((_%loop6575266018%_
                                (lambda (_%hd6575066022%_ _%body6575666025%_)
                                  (if (gx#stx-pair? _%hd6575066022%_)
                                      (let ((_%e6575366028%_
                                             (gx#syntax-e _%hd6575066022%_)))
                                        (let ((_%lp-tl6575566035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6575366028%_)))
                                              (_%lp-hd6575466032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6575366028%_))))
                                          (_%loop6575266018%_
                                           _%lp-tl6575566035%_
                                           (cons _%lp-hd6575466032%_
                                                 _%body6575666025%_))))
                                      (let ((_%body6575766038%_
                                             (reverse _%body6575666025%_)))
                                        (_%__kont8229982300%_
                                         _%body6575766038%_
                                         _%hd6574365992%_))))))
                        (_%loop6575266018%_ _%target6574966012%_ '())))))
              (if (gx#stx-pair? _%__stx8229682297%_)
                  (let ((_%e6573265954%_ (gx#syntax-e _%__stx8229682297%_)))
                    (let ((_%tl6573465961%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6573265954%_)))
                          (_%hd6573365958%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6573265954%_))))
                      (if (gx#stx-pair? _%tl6573465961%_)
                          (let ((_%e6573565964%_
                                 (gx#syntax-e _%tl6573465961%_)))
                            (let ((_%tl6573765971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6573565964%_)))
                                  (_%hd6573665968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6573565964%_))))
                              (if (gx#stx-pair? _%hd6573665968%_)
                                  (let ((_%e6573865974%_
                                         (gx#syntax-e _%hd6573665968%_)))
                                    (let ((_%tl6574065981%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6573865974%_)))
                                          (_%hd6573965978%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6573865974%_))))
                                      (if (gx#stx-datum? _%hd6573965978%_)
                                          (let ((_%e6574165984%_
                                                 (gx#stx-e _%hd6573965978%_)))
                                            (if (equal? _%e6574165984%_ '#f)
                                                (if (gx#stx-pair?
                                                     _%tl6574065981%_)
                                                    (let ((_%e6574265988%_
                                                           (gx#syntax-e
                                                            _%tl6574065981%_)))
                                                      (let ((_%tl6574465995%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6574265988%_)))
                    (_%hd6574365992%_
                     (let () (declare (not safe)) (##car _%e6574265988%_))))
                (if (gx#stx-pair? _%tl6574465995%_)
                    (let ((_%e6574565998%_ (gx#syntax-e _%tl6574465995%_)))
                      (let ((_%tl6574766005%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6574565998%_)))
                            (_%hd6574666002%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6574565998%_))))
                        (if (gx#stx-datum? _%hd6574666002%_)
                            (let ((_%e6574866008%_
                                   (gx#stx-e _%hd6574666002%_)))
                              (if (equal? _%e6574866008%_ '#f)
                                  (if (gx#stx-null? _%tl6574766005%_)
                                      (if (gx#stx-pair/null? _%tl6573765971%_)
                                          (let ((_%__splice8230182302%_
                                                 (gx#syntax-split-splice
                                                  _%tl6573765971%_
                                                  '0)))
                                            (let ((_%tl6575166015%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8230182302%_
                                                      '1)))
                                                  (_%target6574966012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8230182302%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6575166015%_)
                                                  (_%__match8235982360%_
                                                   _%e6573265954%_
                                                   _%hd6573365958%_
                                                   _%tl6573465961%_
                                                   _%e6573565964%_
                                                   _%hd6573665968%_
                                                   _%tl6573765971%_
                                                   _%e6573865974%_
                                                   _%hd6573965978%_
                                                   _%tl6574065981%_
                                                   _%e6574165984%_
                                                   _%e6574265988%_
                                                   _%hd6574365992%_
                                                   _%tl6574465995%_
                                                   _%e6574565998%_
                                                   _%hd6574666002%_
                                                   _%tl6574766005%_
                                                   _%e6574866008%_
                                                   _%__splice8230182302%_
                                                   _%target6574966012%_
                                                   _%tl6575166015%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6572865791%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6572865791%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6572865791%_)))
                                  (if (gx#stx-null? _%tl6574766005%_)
                                      (if (gx#stx-pair/null? _%tl6573765971%_)
                                          (let ((_%__splice8230582306%_
                                                 (gx#syntax-split-splice
                                                  _%tl6573765971%_
                                                  '0)))
                                            (let ((_%tl6577965851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8230582306%_
                                                      '1)))
                                                  (_%target6577765848%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8230582306%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6577965851%_)
                                                  (_%__match8239982400%_
                                                   _%e6573265954%_
                                                   _%hd6573365958%_
                                                   _%tl6573465961%_
                                                   _%e6573565964%_
                                                   _%hd6573665968%_
                                                   _%tl6573765971%_
                                                   _%e6573865974%_
                                                   _%hd6573965978%_
                                                   _%tl6574065981%_
                                                   _%e6574265988%_
                                                   _%hd6574365992%_
                                                   _%tl6574465995%_
                                                   _%e6574565998%_
                                                   _%hd6574666002%_
                                                   _%tl6574766005%_
                                                   _%__splice8230582306%_
                                                   _%target6577765848%_
                                                   _%tl6577965851%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6572865791%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6572865791%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6572865791%_)))))
                            (if (gx#stx-null? _%tl6574766005%_)
                                (if (gx#stx-pair/null? _%tl6573765971%_)
                                    (let ((_%__splice8230582306%_
                                           (gx#syntax-split-splice
                                            _%tl6573765971%_
                                            '0)))
                                      (let ((_%tl6577965851%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8230582306%_
                                                '1)))
                                            (_%target6577765848%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8230582306%_
                                                '0))))
                                        (if (gx#stx-null? _%tl6577965851%_)
                                            (_%__match8239982400%_
                                             _%e6573265954%_
                                             _%hd6573365958%_
                                             _%tl6573465961%_
                                             _%e6573565964%_
                                             _%hd6573665968%_
                                             _%tl6573765971%_
                                             _%e6573865974%_
                                             _%hd6573965978%_
                                             _%tl6574065981%_
                                             _%e6574265988%_
                                             _%hd6574365992%_
                                             _%tl6574465995%_
                                             _%e6574565998%_
                                             _%hd6574666002%_
                                             _%tl6574766005%_
                                             _%__splice8230582306%_
                                             _%target6577765848%_
                                             _%tl6577965851%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6572865791%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6572865791%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g6572865791%_))))))
                    (let () (declare (not safe)) (_%g6572865791%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6572865791%_)))
                                                (if (gx#stx-pair?
                                                     _%tl6574065981%_)
                                                    (let ((_%e6577165828%_
                                                           (gx#syntax-e
                                                            _%tl6574065981%_)))
                                                      (let ((_%tl6577365835%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6577165828%_)))
                    (_%hd6577265832%_
                     (let () (declare (not safe)) (##car _%e6577165828%_))))
                (if (gx#stx-pair? _%tl6577365835%_)
                    (let ((_%e6577465838%_ (gx#syntax-e _%tl6577365835%_)))
                      (let ((_%tl6577665845%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6577465838%_)))
                            (_%hd6577565842%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6577465838%_))))
                        (if (gx#stx-null? _%tl6577665845%_)
                            (if (gx#stx-pair/null? _%tl6573765971%_)
                                (let ((_%__splice8230582306%_
                                       (gx#syntax-split-splice
                                        _%tl6573765971%_
                                        '0)))
                                  (let ((_%tl6577965851%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8230582306%_
                                            '1)))
                                        (_%target6577765848%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8230582306%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6577965851%_)
                                        (_%__match8239982400%_
                                         _%e6573265954%_
                                         _%hd6573365958%_
                                         _%tl6573465961%_
                                         _%e6573565964%_
                                         _%hd6573665968%_
                                         _%tl6573765971%_
                                         _%e6573865974%_
                                         _%hd6573965978%_
                                         _%tl6574065981%_
                                         _%e6577165828%_
                                         _%hd6577265832%_
                                         _%tl6577365835%_
                                         _%e6577465838%_
                                         _%hd6577565842%_
                                         _%tl6577665845%_
                                         _%__splice8230582306%_
                                         _%target6577765848%_
                                         _%tl6577965851%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6572865791%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6572865791%_)))
                            (let () (declare (not safe)) (_%g6572865791%_)))))
                    (let () (declare (not safe)) (_%g6572865791%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6572865791%_)))))
                                          (if (gx#stx-pair? _%tl6574065981%_)
                                              (let ((_%e6577165828%_
                                                     (gx#syntax-e
                                                      _%tl6574065981%_)))
                                                (let ((_%tl6577365835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6577165828%_)))
                                                      (_%hd6577265832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6577165828%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6577365835%_)
                                                      (let ((_%e6577465838%_
                                                             (gx#syntax-e
                                                              _%tl6577365835%_)))
                                                        (let ((_%tl6577665845%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6577465838%_)))
                      (_%hd6577565842%_
                       (let () (declare (not safe)) (##car _%e6577465838%_))))
                  (if (gx#stx-null? _%tl6577665845%_)
                      (if (gx#stx-pair/null? _%tl6573765971%_)
                          (let ((_%__splice8230582306%_
                                 (gx#syntax-split-splice _%tl6573765971%_ '0)))
                            (let ((_%tl6577965851%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8230582306%_ '1)))
                                  (_%target6577765848%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8230582306%_
                                      '0))))
                              (if (gx#stx-null? _%tl6577965851%_)
                                  (_%__match8239982400%_
                                   _%e6573265954%_
                                   _%hd6573365958%_
                                   _%tl6573465961%_
                                   _%e6573565964%_
                                   _%hd6573665968%_
                                   _%tl6573765971%_
                                   _%e6573865974%_
                                   _%hd6573965978%_
                                   _%tl6574065981%_
                                   _%e6577165828%_
                                   _%hd6577265832%_
                                   _%tl6577365835%_
                                   _%e6577465838%_
                                   _%hd6577565842%_
                                   _%tl6577665845%_
                                   _%__splice8230582306%_
                                   _%target6577765848%_
                                   _%tl6577965851%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6572865791%_)))))
                          (let () (declare (not safe)) (_%g6572865791%_)))
                      (let () (declare (not safe)) (_%g6572865791%_)))))
              (let () (declare (not safe)) (_%g6572865791%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6572865791%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6572865791%_)))))
                          (let () (declare (not safe)) (_%g6572865791%_)))))
                  (let () (declare (not safe)) (_%g6572865791%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-contract|
      (lambda (_%stx66114%_)
        (let* ((_%g6611766141%_
                (lambda (_%g6611866137%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6611866137%_)))
               (_%g6611666257%_
                (lambda (_%g6611866145%_)
                  (if (gx#stx-pair? _%g6611866145%_)
                      (let ((_%e6612166148%_ (gx#syntax-e _%g6611866145%_)))
                        (let ((_%hd6612266152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6612166148%_)))
                              (_%tl6612366155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6612166148%_))))
                          (if (gx#stx-pair? _%tl6612366155%_)
                              (let ((_%e6612466158%_
                                     (gx#syntax-e _%tl6612366155%_)))
                                (let ((_%hd6612566162%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6612466158%_)))
                                      (_%tl6612666165%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6612466158%_))))
                                  (if (gx#stx-pair/null? _%tl6612666165%_)
                                      (let ((_g84186_
                                             (gx#syntax-split-splice
                                              _%tl6612666165%_
                                              '0)))
                                        (begin
                                          (let ((_g84187_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84186_)
                                                       (##vector-length
                                                        _g84186_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84187_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84187_)))
                                          (let ((_%target6612766168%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84186_ 0)))
                                                (_%tl6612966171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84186_ 1))))
                                            (if (gx#stx-null? _%tl6612966171%_)
                                                (letrec ((_%loop6613066174%_
                                                          (lambda (_%hd6612866178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body6613466181%_)
                    (if (gx#stx-pair? _%hd6612866178%_)
                        (let ((_%e6613166184%_ (gx#syntax-e _%hd6612866178%_)))
                          (let ((_%lp-hd6613266188%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6613166184%_)))
                                (_%lp-tl6613366191%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6613166184%_))))
                            (_%loop6613066174%_
                             _%lp-tl6613366191%_
                             (cons _%lp-hd6613266188%_ _%body6613466181%_))))
                        (let ((_%body6613566194%_
                               (reverse _%body6613466181%_)))
                          ((lambda (_%L66198%_ _%L66200%_)
                             (let* ((_%g6621866226%_
                                     (lambda (_%g6621966222%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6621966222%_)))
                                    (_%g6621766253%_
                                     (lambda (_%g6621966230%_)
                                       ((lambda (_%L66233%_)
                                          (cons (gx#datum->syntax '#f 'using)
                                                (cons _%L66233%_
                                                      (foldr (lambda (_%g6624466247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6624566250%_)
                       (cons _%g6624466247%_ _%g6624566250%_))
                     '()
                     _%L66198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g6621966230%_))))
                               (_%g6621766253%_
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~Interface[1]#make-procedure-contract|
                                   _%stx66114%_
                                   _%L66200%_
                                   '#t)))))
                           _%body6613566194%_
                           _%hd6612566162%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6613066174%_
                                                   _%target6612766168%_
                                                   '()))
                                                (_%g6611766141%_
                                                 _%g6611866145%_)))))
                                      (_%g6611766141%_ _%g6611866145%_))))
                              (_%g6611766141%_ _%g6611866145%_))))
                      (_%g6611766141%_ _%g6611866145%_)))))
          (_%g6611666257%_ _%stx66114%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-unchecked-contract|
      (lambda (_%stx66262%_)
        (let* ((_%g6626566289%_
                (lambda (_%g6626666285%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6626666285%_)))
               (_%g6626466405%_
                (lambda (_%g6626666293%_)
                  (if (gx#stx-pair? _%g6626666293%_)
                      (let ((_%e6626966296%_ (gx#syntax-e _%g6626666293%_)))
                        (let ((_%hd6627066300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6626966296%_)))
                              (_%tl6627166303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6626966296%_))))
                          (if (gx#stx-pair? _%tl6627166303%_)
                              (let ((_%e6627266306%_
                                     (gx#syntax-e _%tl6627166303%_)))
                                (let ((_%hd6627366310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6627266306%_)))
                                      (_%tl6627466313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6627266306%_))))
                                  (if (gx#stx-pair/null? _%tl6627466313%_)
                                      (let ((_g84188_
                                             (gx#syntax-split-splice
                                              _%tl6627466313%_
                                              '0)))
                                        (begin
                                          (let ((_g84189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84188_)
                                                       (##vector-length
                                                        _g84188_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84189_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84189_)))
                                          (let ((_%target6627566316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84188_ 0)))
                                                (_%tl6627766319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84188_ 1))))
                                            (if (gx#stx-null? _%tl6627766319%_)
                                                (letrec ((_%loop6627866322%_
                                                          (lambda (_%hd6627666326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body6628266329%_)
                    (if (gx#stx-pair? _%hd6627666326%_)
                        (let ((_%e6627966332%_ (gx#syntax-e _%hd6627666326%_)))
                          (let ((_%lp-hd6628066336%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6627966332%_)))
                                (_%lp-tl6628166339%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6627966332%_))))
                            (_%loop6627866322%_
                             _%lp-tl6628166339%_
                             (cons _%lp-hd6628066336%_ _%body6628266329%_))))
                        (let ((_%body6628366342%_
                               (reverse _%body6628266329%_)))
                          ((lambda (_%L66346%_ _%L66348%_)
                             (let* ((_%g6636666374%_
                                     (lambda (_%g6636766370%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6636766370%_)))
                                    (_%g6636566401%_
                                     (lambda (_%g6636766378%_)
                                       ((lambda (_%L66381%_)
                                          (cons (gx#datum->syntax '#f 'using)
                                                (cons _%L66381%_
                                                      (foldr (lambda (_%g6639266395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6639366398%_)
                       (cons _%g6639266395%_ _%g6639366398%_))
                     '()
                     _%L66346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g6636766378%_))))
                               (_%g6636566401%_
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~Interface[1]#make-procedure-contract|
                                   _%stx66262%_
                                   _%L66348%_
                                   '#f)))))
                           _%body6628366342%_
                           _%hd6627366310%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6627866322%_
                                                   _%target6627566316%_
                                                   '()))
                                                (_%g6626566289%_
                                                 _%g6626666293%_)))))
                                      (_%g6626566289%_ _%g6626666293%_))))
                              (_%g6626566289%_ _%g6626666293%_))))
                      (_%g6626566289%_ _%g6626666293%_)))))
          (_%g6626466405%_ _%stx66262%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#lambda/c|
      (lambda (_%stx66410%_)
        (letrec ((_%make-lambda66413%_
                  (lambda (_%signature66681%_ _%return66683%_ _%body66684%_)
                    (let* ((_%g6668666718%_
                            (lambda (_%g6668766714%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6668766714%_)))
                           (_%g6668566833%_
                            (lambda (_%g6668766722%_)
                              (if (gx#stx-pair? _%g6668766722%_)
                                  (let ((_%e6669266725%_
                                         (gx#syntax-e _%g6668766722%_)))
                                    (let ((_%hd6669366729%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6669266725%_)))
                                          (_%tl6669466732%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6669266725%_))))
                                      (if (gx#stx-pair? _%tl6669466732%_)
                                          (let ((_%e6669566735%_
                                                 (gx#syntax-e
                                                  _%tl6669466732%_)))
                                            (let ((_%hd6669666739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6669566735%_)))
                                                  (_%tl6669766742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6669566735%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6669766742%_)
                                                  (let ((_%e6669866745%_
                                                         (gx#syntax-e
                                                          _%tl6669766742%_)))
                                                    (let ((_%hd6669966749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6669866745%_)))
                                                          (_%tl6670066752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6669866745%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6670066752%_)
                                                          (let ((_%e6670166755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6670066752%_)))
                    (let ((_%hd6670266759%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6670166755%_)))
                          (_%tl6670366762%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6670166755%_))))
                      (if (gx#stx-pair/null? _%hd6670266759%_)
                          (let ((_g84190_
                                 (gx#syntax-split-splice _%hd6670266759%_ '0)))
                            (begin
                              (let ((_g84191_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g84190_)
                                           (##vector-length _g84190_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g84191_ 2)))
                                    (error "Context expects 2 values"
                                           _g84191_)))
                              (let ((_%target6670466765%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g84190_ 0)))
                                    (_%tl6670666768%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g84190_ 1))))
                                (if (gx#stx-null? _%tl6670666768%_)
                                    (letrec ((_%loop6670766771%_
                                              (lambda (_%hd6670566775%_
                                                       _%body6671166778%_)
                                                (if (gx#stx-pair?
                                                     _%hd6670566775%_)
                                                    (let ((_%e6670866781%_
                                                           (gx#syntax-e
                                                            _%hd6670566775%_)))
                                                      (let ((_%lp-hd6670966785%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6670866781%_)))
                    (_%lp-tl6671066788%_
                     (let () (declare (not safe)) (##cdr _%e6670866781%_))))
                (_%loop6670766771%_
                 _%lp-tl6671066788%_
                 (cons _%lp-hd6670966785%_ _%body6671166778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body6671266791%_
                                                           (reverse _%body6671166778%_)))
                                                      (if (gx#stx-null?
                                                           _%tl6670366762%_)
                                                          ((lambda (_%L66795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L66797%_
                            _%L66798%_
                            _%L66799%_)
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'lambda)
                            (cons _%L66799%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'with-procedure-signature)
                                              (cons (cons _%L66798%_
                                                          (cons _%L66797%_
                                                                (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'with-procedure-contract)
                        (cons _%L66798%_
                              (foldr (lambda (_%g6682466827%_ _%g6682566830%_)
                                       (cons _%g6682466827%_ _%g6682566830%_))
                                     '()
                                     _%L66795%_)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (gx#stx-source _%stx66410%_)))
                   _%body6671266791%_
                   _%hd6669966749%_
                   _%hd6669666739%_
                   _%hd6669366729%_)
                  (_%g6668666718%_ _%g6668766722%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop6670766771%_
                                       _%target6670466765%_
                                       '()))
                                    (_%g6668666718%_ _%g6668766722%_)))))
                          (_%g6668666718%_ _%g6668766722%_))))
                  (_%g6668666718%_ _%g6668766722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6668666718%_
                                                   _%g6668766722%_))))
                                          (_%g6668666718%_ _%g6668766722%_))))
                                  (_%g6668666718%_ _%g6668766722%_)))))
                      (_%g6668566833%_
                       (list (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature66681%_))
                             _%signature66681%_
                             _%return66683%_
                             _%body66684%_))))))
          (let* ((_%__stx8240282403%_ _%stx66410%_)
                 (_%g6641766465%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8240282403%_))))
            (let ((_%__kont8240582406%_
                   (lambda (_%L66636%_ _%L66638%_ _%L66639%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L66639%_)
                         (_%make-lambda66413%_
                          _%L66639%_
                          _%L66638%_
                          (foldr (lambda (_%g6666066663%_ _%g6666166666%_)
                                   (cons _%g6666066663%_ _%g6666166666%_))
                                 '()
                                 _%L66636%_))
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons _%L66639%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-procedure-signature)
                                                 (cons (cons '#f
                                                             (cons _%L66638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '())))
               (foldr (lambda (_%g6666866671%_ _%g6666966674%_)
                        (cons _%g6666866671%_ _%g6666966674%_))
                      '()
                      _%L66636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                  (_%__kont8240982410%_
                   (lambda (_%L66522%_ _%L66524%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L66524%_)
                         (cons (gx#datum->syntax '#f 'lambda/c)
                               (cons _%L66524%_
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6654266545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6654366548%_)
                  (cons _%g6654266545%_ _%g6654366548%_))
                '()
                _%L66522%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons _%L66524%_
                                     (foldr (lambda (_%g6655066553%_
                                                     _%g6655166556%_)
                                              (cons _%g6655066553%_
                                                    _%g6655166556%_))
                                            '()
                                            _%L66522%_)))))))
              (let* ((_%__match8246982470%_
                      (lambda (_%e6644566472%_
                               _%hd6644666476%_
                               _%tl6644766479%_
                               _%e6644866482%_
                               _%hd6644966486%_
                               _%tl6645066489%_
                               _%__splice8241182412%_
                               _%target6645166492%_
                               _%tl6645366495%_)
                        (letrec ((_%loop6645466498%_
                                  (lambda (_%hd6645266502%_ _%body6645866505%_)
                                    (if (gx#stx-pair? _%hd6645266502%_)
                                        (let ((_%e6645566508%_
                                               (gx#syntax-e _%hd6645266502%_)))
                                          (let ((_%lp-tl6645766515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6645566508%_)))
                                                (_%lp-hd6645666512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6645566508%_))))
                                            (_%loop6645466498%_
                                             _%lp-tl6645766515%_
                                             (cons _%lp-hd6645666512%_
                                                   _%body6645866505%_))))
                                        (let ((_%body6645966518%_
                                               (reverse _%body6645866505%_)))
                                          (_%__kont8240982410%_
                                           _%body6645966518%_
                                           _%hd6644966486%_))))))
                          (_%loop6645466498%_ _%target6645166492%_ '()))))
                     (_%__match8244982450%_
                      (lambda (_%e6642266566%_
                               _%hd6642366570%_
                               _%tl6642466573%_
                               _%e6642566576%_
                               _%hd6642666580%_
                               _%tl6642766583%_
                               _%e6642866586%_
                               _%hd6642966590%_
                               _%tl6643066593%_
                               _%e6643166596%_
                               _%hd6643266600%_
                               _%tl6643366603%_
                               _%__splice8240782408%_
                               _%target6643466606%_
                               _%tl6643666609%_)
                        (letrec ((_%loop6643766612%_
                                  (lambda (_%hd6643566616%_ _%body6644166619%_)
                                    (if (gx#stx-pair? _%hd6643566616%_)
                                        (let ((_%e6643866622%_
                                               (gx#syntax-e _%hd6643566616%_)))
                                          (let ((_%lp-tl6644066629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6643866622%_)))
                                                (_%lp-hd6643966626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6643866622%_))))
                                            (_%loop6643766612%_
                                             _%lp-tl6644066629%_
                                             (cons _%lp-hd6643966626%_
                                                   _%body6644166619%_))))
                                        (let ((_%body6644266632%_
                                               (reverse _%body6644166619%_)))
                                          (_%__kont8240582406%_
                                           _%body6644266632%_
                                           _%hd6643266600%_
                                           _%hd6642666580%_))))))
                          (_%loop6643766612%_ _%target6643466606%_ '())))))
                (if (gx#stx-pair? _%__stx8240282403%_)
                    (let ((_%e6642266566%_ (gx#syntax-e _%__stx8240282403%_)))
                      (let ((_%tl6642466573%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6642266566%_)))
                            (_%hd6642366570%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6642266566%_))))
                        (if (gx#stx-pair? _%tl6642466573%_)
                            (let ((_%e6642566576%_
                                   (gx#syntax-e _%tl6642466573%_)))
                              (let ((_%tl6642766583%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6642566576%_)))
                                    (_%hd6642666580%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6642566576%_))))
                                (if (gx#stx-pair? _%tl6642766583%_)
                                    (let ((_%e6642866586%_
                                           (gx#syntax-e _%tl6642766583%_)))
                                      (let ((_%tl6643066593%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6642866586%_)))
                                            (_%hd6642966590%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6642866586%_))))
                                        (if (gx#identifier? _%hd6642966590%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g84192_|
                                                 _%hd6642966590%_)
                                                (if (gx#stx-pair?
                                                     _%tl6643066593%_)
                                                    (let ((_%e6643166596%_
                                                           (gx#syntax-e
                                                            _%tl6643066593%_)))
                                                      (let ((_%tl6643366603%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6643166596%_)))
                    (_%hd6643266600%_
                     (let () (declare (not safe)) (##car _%e6643166596%_))))
                (if (gx#stx-pair/null? _%tl6643366603%_)
                    (let ((_%__splice8240782408%_
                           (gx#syntax-split-splice _%tl6643366603%_ '0)))
                      (let ((_%tl6643666609%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8240782408%_ '1)))
                            (_%target6643466606%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8240782408%_ '0))))
                        (if (gx#stx-null? _%tl6643666609%_)
                            (_%__match8244982450%_
                             _%e6642266566%_
                             _%hd6642366570%_
                             _%tl6642466573%_
                             _%e6642566576%_
                             _%hd6642666580%_
                             _%tl6642766583%_
                             _%e6642866586%_
                             _%hd6642966590%_
                             _%tl6643066593%_
                             _%e6643166596%_
                             _%hd6643266600%_
                             _%tl6643366603%_
                             _%__splice8240782408%_
                             _%target6643466606%_
                             _%tl6643666609%_)
                            (if (gx#stx-pair/null? _%tl6642766583%_)
                                (let ((_%__splice8241182412%_
                                       (gx#syntax-split-splice
                                        _%tl6642766583%_
                                        '0)))
                                  (let ((_%tl6645366495%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8241182412%_
                                            '1)))
                                        (_%target6645166492%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8241182412%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6645366495%_)
                                        (_%__match8246982470%_
                                         _%e6642266566%_
                                         _%hd6642366570%_
                                         _%tl6642466573%_
                                         _%e6642566576%_
                                         _%hd6642666580%_
                                         _%tl6642766583%_
                                         _%__splice8241182412%_
                                         _%target6645166492%_
                                         _%tl6645366495%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6641766465%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6641766465%_))))))
                    (if (gx#stx-pair/null? _%tl6642766583%_)
                        (let ((_%__splice8241182412%_
                               (gx#syntax-split-splice _%tl6642766583%_ '0)))
                          (let ((_%tl6645366495%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8241182412%_ '1)))
                                (_%target6645166492%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8241182412%_ '0))))
                            (if (gx#stx-null? _%tl6645366495%_)
                                (_%__match8246982470%_
                                 _%e6642266566%_
                                 _%hd6642366570%_
                                 _%tl6642466573%_
                                 _%e6642566576%_
                                 _%hd6642666580%_
                                 _%tl6642766583%_
                                 _%__splice8241182412%_
                                 _%target6645166492%_
                                 _%tl6645366495%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6641766465%_)))))
                        (let () (declare (not safe)) (_%g6641766465%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl6642766583%_)
                                                        (let ((_%__splice8241182412%_
                                                               (gx#syntax-split-splice
                                                                _%tl6642766583%_
                                                                '0)))
                                                          (let ((_%tl6645366495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8241182412%_ '1)))
                        (_%target6645166492%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8241182412%_ '0))))
                    (if (gx#stx-null? _%tl6645366495%_)
                        (_%__match8246982470%_
                         _%e6642266566%_
                         _%hd6642366570%_
                         _%tl6642466573%_
                         _%e6642566576%_
                         _%hd6642666580%_
                         _%tl6642766583%_
                         _%__splice8241182412%_
                         _%target6645166492%_
                         _%tl6645366495%_)
                        (let () (declare (not safe)) (_%g6641766465%_)))))
                (let () (declare (not safe)) (_%g6641766465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl6642766583%_)
                                                    (let ((_%__splice8241182412%_
                                                           (gx#syntax-split-splice
                                                            _%tl6642766583%_
                                                            '0)))
                                                      (let ((_%tl6645366495%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8241182412%_ '1)))
                    (_%target6645166492%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8241182412%_ '0))))
                (if (gx#stx-null? _%tl6645366495%_)
                    (_%__match8246982470%_
                     _%e6642266566%_
                     _%hd6642366570%_
                     _%tl6642466573%_
                     _%e6642566576%_
                     _%hd6642666580%_
                     _%tl6642766583%_
                     _%__splice8241182412%_
                     _%target6645166492%_
                     _%tl6645366495%_)
                    (let () (declare (not safe)) (_%g6641766465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6641766465%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl6642766583%_)
                                                (let ((_%__splice8241182412%_
                                                       (gx#syntax-split-splice
                                                        _%tl6642766583%_
                                                        '0)))
                                                  (let ((_%tl6645366495%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8241182412%_
                                                            '1)))
                                                        (_%target6645166492%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8241182412%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6645366495%_)
                                                        (_%__match8246982470%_
                                                         _%e6642266566%_
                                                         _%hd6642366570%_
                                                         _%tl6642466573%_
                                                         _%e6642566576%_
                                                         _%hd6642666580%_
                                                         _%tl6642766583%_
                                                         _%__splice8241182412%_
                                                         _%target6645166492%_
                                                         _%tl6645366495%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6641766465%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6641766465%_))))))
                                    (if (gx#stx-pair/null? _%tl6642766583%_)
                                        (let ((_%__splice8241182412%_
                                               (gx#syntax-split-splice
                                                _%tl6642766583%_
                                                '0)))
                                          (let ((_%tl6645366495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8241182412%_
                                                    '1)))
                                                (_%target6645166492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8241182412%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl6645366495%_)
                                                (_%__match8246982470%_
                                                 _%e6642266566%_
                                                 _%hd6642366570%_
                                                 _%tl6642466573%_
                                                 _%e6642566576%_
                                                 _%hd6642666580%_
                                                 _%tl6642766583%_
                                                 _%__splice8241182412%_
                                                 _%target6645166492%_
                                                 _%tl6645366495%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6641766465%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6641766465%_))))))
                            (let () (declare (not safe)) (_%g6641766465%_)))))
                    (let () (declare (not safe)) (_%g6641766465%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#def*/c|
      (lambda (_%$stx66840%_)
        (let* ((_%g6684466868%_
                (lambda (_%g6684566864%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6684566864%_)))
               (_%g6684366953%_
                (lambda (_%g6684566872%_)
                  (if (gx#stx-pair? _%g6684566872%_)
                      (let ((_%e6684866875%_ (gx#syntax-e _%g6684566872%_)))
                        (let ((_%hd6684966879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6684866875%_)))
                              (_%tl6685066882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6684866875%_))))
                          (if (gx#stx-pair? _%tl6685066882%_)
                              (let ((_%e6685166885%_
                                     (gx#syntax-e _%tl6685066882%_)))
                                (let ((_%hd6685266889%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6685166885%_)))
                                      (_%tl6685366892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6685166885%_))))
                                  (if (gx#stx-pair/null? _%tl6685366892%_)
                                      (let ((_g84193_
                                             (gx#syntax-split-splice
                                              _%tl6685366892%_
                                              '0)))
                                        (begin
                                          (let ((_g84194_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84193_)
                                                       (##vector-length
                                                        _g84193_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84194_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84194_)))
                                          (let ((_%target6685466895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84193_ 0)))
                                                (_%tl6685666898%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84193_ 1))))
                                            (if (gx#stx-null? _%tl6685666898%_)
                                                (letrec ((_%loop6685766901%_
                                                          (lambda (_%hd6685566905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause6686166908%_)
                    (if (gx#stx-pair? _%hd6685566905%_)
                        (let ((_%e6685866911%_ (gx#syntax-e _%hd6685566905%_)))
                          (let ((_%lp-hd6685966915%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6685866911%_)))
                                (_%lp-tl6686066918%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6685866911%_))))
                            (_%loop6685766901%_
                             _%lp-tl6686066918%_
                             (cons _%lp-hd6685966915%_ _%clause6686166908%_))))
                        (let ((_%clause6686266921%_
                               (reverse _%clause6686166908%_)))
                          ((lambda (_%L66925%_ _%L66927%_)
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L66927%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'case-lambda/c)
                                                     (foldr (lambda (_%g6694466947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6694566950%_)
                      (cons _%g6694466947%_ _%g6694566950%_))
                    '()
                    _%L66925%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause6686266921%_
                           _%hd6685266889%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6685766901%_
                                                   _%target6685466895%_
                                                   '()))
                                                (_%g6684466868%_
                                                 _%g6684566872%_)))))
                                      (_%g6684466868%_ _%g6684566872%_))))
                              (_%g6684466868%_ _%g6684566872%_))))
                      (_%g6684466868%_ _%g6684566872%_)))))
          (_%g6684366953%_ _%$stx66840%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#case-lambda/c|
      (lambda (_%stx66958%_)
        (letrec ((_%is-clause-signature?66961%_
                  (lambda (_%clause67495%_)
                    (let* ((_%__stx8247282473%_ _%clause67495%_)
                           (_%g6749967541%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8247282473%_))))
                      (let ((_%__kont8247582476%_
                             (lambda (_%L67673%_ _%L67675%_ _%L67676%_) '#t))
                            (_%__kont8247982480%_
                             (lambda (_%L67588%_ _%L67590%_)
                               (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                _%L67590%_))))
                        (let* ((_%__match8252782528%_
                                (lambda (_%e6752467548%_
                                         _%hd6752567552%_
                                         _%tl6752667555%_
                                         _%__splice8248182482%_
                                         _%target6752767558%_
                                         _%tl6752967561%_)
                                  (letrec ((_%loop6753067564%_
                                            (lambda (_%hd6752867568%_
                                                     _%body6753467571%_)
                                              (if (gx#stx-pair?
                                                   _%hd6752867568%_)
                                                  (let ((_%e6753167574%_
                                                         (gx#syntax-e
                                                          _%hd6752867568%_)))
                                                    (let ((_%lp-tl6753367581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6753167574%_)))
                                                          (_%lp-hd6753267578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6753167574%_))))
                                                      (_%loop6753067564%_
                                                       _%lp-tl6753367581%_
                                                       (cons _%lp-hd6753267578%_
                                                             _%body6753467571%_))))
                                                  (let ((_%body6753567584%_
                                                         (reverse _%body6753467571%_)))
                                                    (_%__kont8247982480%_
                                                     _%body6753567584%_
                                                     _%hd6752567552%_))))))
                                    (_%loop6753067564%_
                                     _%target6752767558%_
                                     '()))))
                               (_%__match8251382514%_
                                (lambda (_%e6750467613%_
                                         _%hd6750567617%_
                                         _%tl6750667620%_
                                         _%e6750767623%_
                                         _%hd6750867627%_
                                         _%tl6750967630%_
                                         _%e6751067633%_
                                         _%hd6751167637%_
                                         _%tl6751267640%_
                                         _%__splice8247782478%_
                                         _%target6751367643%_
                                         _%tl6751567646%_)
                                  (letrec ((_%loop6751667649%_
                                            (lambda (_%hd6751467653%_
                                                     _%body6752067656%_)
                                              (if (gx#stx-pair?
                                                   _%hd6751467653%_)
                                                  (let ((_%e6751767659%_
                                                         (gx#syntax-e
                                                          _%hd6751467653%_)))
                                                    (let ((_%lp-tl6751967666%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6751767659%_)))
                                                          (_%lp-hd6751867663%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6751767659%_))))
                                                      (_%loop6751667649%_
                                                       _%lp-tl6751967666%_
                                                       (cons _%lp-hd6751867663%_
                                                             _%body6752067656%_))))
                                                  (let ((_%body6752167669%_
                                                         (reverse _%body6752067656%_)))
                                                    (_%__kont8247582476%_
                                                     _%body6752167669%_
                                                     _%hd6751167637%_
                                                     _%hd6750567617%_))))))
                                    (_%loop6751667649%_
                                     _%target6751367643%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8247282473%_)
                              (let ((_%e6750467613%_
                                     (gx#syntax-e _%__stx8247282473%_)))
                                (let ((_%tl6750667620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6750467613%_)))
                                      (_%hd6750567617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6750467613%_))))
                                  (if (gx#stx-pair? _%tl6750667620%_)
                                      (let ((_%e6750767623%_
                                             (gx#syntax-e _%tl6750667620%_)))
                                        (let ((_%tl6750967630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6750767623%_)))
                                              (_%hd6750867627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6750767623%_))))
                                          (if (gx#identifier? _%hd6750867627%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g84195_|
                                                   _%hd6750867627%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6750967630%_)
                                                      (let ((_%e6751067633%_
                                                             (gx#syntax-e
                                                              _%tl6750967630%_)))
                                                        (let ((_%tl6751267640%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6751067633%_)))
                      (_%hd6751167637%_
                       (let () (declare (not safe)) (##car _%e6751067633%_))))
                  (if (gx#stx-pair/null? _%tl6751267640%_)
                      (let ((_%__splice8247782478%_
                             (gx#syntax-split-splice _%tl6751267640%_ '0)))
                        (let ((_%tl6751567646%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8247782478%_ '1)))
                              (_%target6751367643%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8247782478%_ '0))))
                          (if (gx#stx-null? _%tl6751567646%_)
                              (_%__match8251382514%_
                               _%e6750467613%_
                               _%hd6750567617%_
                               _%tl6750667620%_
                               _%e6750767623%_
                               _%hd6750867627%_
                               _%tl6750967630%_
                               _%e6751067633%_
                               _%hd6751167637%_
                               _%tl6751267640%_
                               _%__splice8247782478%_
                               _%target6751367643%_
                               _%tl6751567646%_)
                              (if (gx#stx-pair/null? _%tl6750667620%_)
                                  (let ((_%__splice8248182482%_
                                         (gx#syntax-split-splice
                                          _%tl6750667620%_
                                          '0)))
                                    (let ((_%tl6752967561%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8248182482%_
                                              '1)))
                                          (_%target6752767558%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8248182482%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6752967561%_)
                                          (_%__match8252782528%_
                                           _%e6750467613%_
                                           _%hd6750567617%_
                                           _%tl6750667620%_
                                           _%__splice8248182482%_
                                           _%target6752767558%_
                                           _%tl6752967561%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6749967541%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6749967541%_))))))
                      (if (gx#stx-pair/null? _%tl6750667620%_)
                          (let ((_%__splice8248182482%_
                                 (gx#syntax-split-splice _%tl6750667620%_ '0)))
                            (let ((_%tl6752967561%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8248182482%_ '1)))
                                  (_%target6752767558%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8248182482%_
                                      '0))))
                              (if (gx#stx-null? _%tl6752967561%_)
                                  (_%__match8252782528%_
                                   _%e6750467613%_
                                   _%hd6750567617%_
                                   _%tl6750667620%_
                                   _%__splice8248182482%_
                                   _%target6752767558%_
                                   _%tl6752967561%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6749967541%_)))))
                          (let () (declare (not safe)) (_%g6749967541%_))))))
              (if (gx#stx-pair/null? _%tl6750667620%_)
                  (let ((_%__splice8248182482%_
                         (gx#syntax-split-splice _%tl6750667620%_ '0)))
                    (let ((_%tl6752967561%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8248182482%_ '1)))
                          (_%target6752767558%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8248182482%_ '0))))
                      (if (gx#stx-null? _%tl6752967561%_)
                          (_%__match8252782528%_
                           _%e6750467613%_
                           _%hd6750567617%_
                           _%tl6750667620%_
                           _%__splice8248182482%_
                           _%target6752767558%_
                           _%tl6752967561%_)
                          (let () (declare (not safe)) (_%g6749967541%_)))))
                  (let () (declare (not safe)) (_%g6749967541%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6750667620%_)
                                                      (let ((_%__splice8248182482%_
                                                             (gx#syntax-split-splice
                                                              _%tl6750667620%_
                                                              '0)))
                                                        (let ((_%tl6752967561%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8248182482%_ '1)))
                      (_%target6752767558%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8248182482%_ '0))))
                  (if (gx#stx-null? _%tl6752967561%_)
                      (_%__match8252782528%_
                       _%e6750467613%_
                       _%hd6750567617%_
                       _%tl6750667620%_
                       _%__splice8248182482%_
                       _%target6752767558%_
                       _%tl6752967561%_)
                      (let () (declare (not safe)) (_%g6749967541%_)))))
              (let () (declare (not safe)) (_%g6749967541%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6750667620%_)
                                                  (let ((_%__splice8248182482%_
                                                         (gx#syntax-split-splice
                                                          _%tl6750667620%_
                                                          '0)))
                                                    (let ((_%tl6752967561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8248182482%_
                                                              '1)))
                                                          (_%target6752767558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8248182482%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6752967561%_)
                                                          (_%__match8252782528%_
                                                           _%e6750467613%_
                                                           _%hd6750567617%_
                                                           _%tl6750667620%_
                                                           _%__splice8248182482%_
                                                           _%target6752767558%_
                                                           _%tl6752967561%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6749967541%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6749967541%_))))))
                                      (if (gx#stx-pair/null? _%tl6750667620%_)
                                          (let ((_%__splice8248182482%_
                                                 (gx#syntax-split-splice
                                                  _%tl6750667620%_
                                                  '0)))
                                            (let ((_%tl6752967561%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8248182482%_
                                                      '1)))
                                                  (_%target6752767558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8248182482%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6752967561%_)
                                                  (_%__match8252782528%_
                                                   _%e6750467613%_
                                                   _%hd6750567617%_
                                                   _%tl6750667620%_
                                                   _%__splice8248182482%_
                                                   _%target6752767558%_
                                                   _%tl6752967561%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6749967541%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6749967541%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g6749967541%_))))))))
                 (_%clause-e66963%_
                  (lambda (_%clause67235%_)
                    (let* ((_%__stx8253082531%_ _%clause67235%_)
                           (_%g6723967281%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8253082531%_))))
                      (let ((_%__kont8253382534%_
                             (lambda (_%L67421%_ _%L67423%_ _%L67424%_)
                               (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                    _%L67424%_)
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/contract~Interface[1]#check-signature!__%|
                                        '#f
                                        '#f
                                        '#f
                                        _%stx66958%_
                                        _%L67424%_
                                        _%L67423%_))
                                     (let* ((_%g6744467452%_
                                             (lambda (_%g6744567448%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g6744567448%_)))
                                            (_%g6744367479%_
                                             (lambda (_%g6744567456%_)
                                               ((lambda (_%L67459%_)
                                                  (cons _%L67459%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'with-procedure-signature)
                            (cons (cons _%L67424%_
                                        (cons _%L67423%_ (cons '#f '())))
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'with-procedure-contract)
                                              (cons _%L67424%_
                                                    (foldr (lambda (_%g6747067473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g6747167476%_)
                     (cons _%g6747067473%_ _%g6747167476%_))
                   '()
                   _%L67421%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g6744567456%_))))
                                       (_%g6744367479%_
                                        (let ()
                                          (declare (not safe))
                                          (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                           _%L67424%_)))))
                                   (cons _%L67424%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'with-procedure-signature)
                                                     (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L67423%_ (cons '#f '())))
                   (foldr (lambda (_%g6748267485%_ _%g6748367488%_)
                            (cons _%g6748267485%_ _%g6748367488%_))
                          '()
                          _%L67421%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                            (_%__kont8253782538%_
                             (lambda (_%L67328%_ _%L67330%_)
                               (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                    _%L67330%_)
                                   (_%clause-e66963%_
                                    (cons _%L67330%_
                                          (cons (gx#datum->syntax '#f '=>)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       ':t)
                                                      (foldr (lambda (_%g6734567348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6734667351%_)
                       (cons _%g6734567348%_ _%g6734667351%_))
                     '()
                     _%L67328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%clause67235%_))))
                        (let* ((_%__match8258582586%_
                                (lambda (_%e6726467288%_
                                         _%hd6726567292%_
                                         _%tl6726667295%_
                                         _%__splice8253982540%_
                                         _%target6726767298%_
                                         _%tl6726967301%_)
                                  (letrec ((_%loop6727067304%_
                                            (lambda (_%hd6726867308%_
                                                     _%body6727467311%_)
                                              (if (gx#stx-pair?
                                                   _%hd6726867308%_)
                                                  (let ((_%e6727167314%_
                                                         (gx#syntax-e
                                                          _%hd6726867308%_)))
                                                    (let ((_%lp-tl6727367321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6727167314%_)))
                                                          (_%lp-hd6727267318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6727167314%_))))
                                                      (_%loop6727067304%_
                                                       _%lp-tl6727367321%_
                                                       (cons _%lp-hd6727267318%_
                                                             _%body6727467311%_))))
                                                  (let ((_%body6727567324%_
                                                         (reverse _%body6727467311%_)))
                                                    (_%__kont8253782538%_
                                                     _%body6727567324%_
                                                     _%hd6726567292%_))))))
                                    (_%loop6727067304%_
                                     _%target6726767298%_
                                     '()))))
                               (_%__match8257182572%_
                                (lambda (_%e6724467361%_
                                         _%hd6724567365%_
                                         _%tl6724667368%_
                                         _%e6724767371%_
                                         _%hd6724867375%_
                                         _%tl6724967378%_
                                         _%e6725067381%_
                                         _%hd6725167385%_
                                         _%tl6725267388%_
                                         _%__splice8253582536%_
                                         _%target6725367391%_
                                         _%tl6725567394%_)
                                  (letrec ((_%loop6725667397%_
                                            (lambda (_%hd6725467401%_
                                                     _%body6726067404%_)
                                              (if (gx#stx-pair?
                                                   _%hd6725467401%_)
                                                  (let ((_%e6725767407%_
                                                         (gx#syntax-e
                                                          _%hd6725467401%_)))
                                                    (let ((_%lp-tl6725967414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6725767407%_)))
                                                          (_%lp-hd6725867411%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6725767407%_))))
                                                      (_%loop6725667397%_
                                                       _%lp-tl6725967414%_
                                                       (cons _%lp-hd6725867411%_
                                                             _%body6726067404%_))))
                                                  (let ((_%body6726167417%_
                                                         (reverse _%body6726067404%_)))
                                                    (_%__kont8253382534%_
                                                     _%body6726167417%_
                                                     _%hd6725167385%_
                                                     _%hd6724567365%_))))))
                                    (_%loop6725667397%_
                                     _%target6725367391%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8253082531%_)
                              (let ((_%e6724467361%_
                                     (gx#syntax-e _%__stx8253082531%_)))
                                (let ((_%tl6724667368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6724467361%_)))
                                      (_%hd6724567365%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6724467361%_))))
                                  (if (gx#stx-pair? _%tl6724667368%_)
                                      (let ((_%e6724767371%_
                                             (gx#syntax-e _%tl6724667368%_)))
                                        (let ((_%tl6724967378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6724767371%_)))
                                              (_%hd6724867375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6724767371%_))))
                                          (if (gx#identifier? _%hd6724867375%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g84196_|
                                                   _%hd6724867375%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6724967378%_)
                                                      (let ((_%e6725067381%_
                                                             (gx#syntax-e
                                                              _%tl6724967378%_)))
                                                        (let ((_%tl6725267388%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6725067381%_)))
                      (_%hd6725167385%_
                       (let () (declare (not safe)) (##car _%e6725067381%_))))
                  (if (gx#stx-pair/null? _%tl6725267388%_)
                      (let ((_%__splice8253582536%_
                             (gx#syntax-split-splice _%tl6725267388%_ '0)))
                        (let ((_%tl6725567394%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8253582536%_ '1)))
                              (_%target6725367391%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8253582536%_ '0))))
                          (if (gx#stx-null? _%tl6725567394%_)
                              (_%__match8257182572%_
                               _%e6724467361%_
                               _%hd6724567365%_
                               _%tl6724667368%_
                               _%e6724767371%_
                               _%hd6724867375%_
                               _%tl6724967378%_
                               _%e6725067381%_
                               _%hd6725167385%_
                               _%tl6725267388%_
                               _%__splice8253582536%_
                               _%target6725367391%_
                               _%tl6725567394%_)
                              (if (gx#stx-pair/null? _%tl6724667368%_)
                                  (let ((_%__splice8253982540%_
                                         (gx#syntax-split-splice
                                          _%tl6724667368%_
                                          '0)))
                                    (let ((_%tl6726967301%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8253982540%_
                                              '1)))
                                          (_%target6726767298%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8253982540%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6726967301%_)
                                          (_%__match8258582586%_
                                           _%e6724467361%_
                                           _%hd6724567365%_
                                           _%tl6724667368%_
                                           _%__splice8253982540%_
                                           _%target6726767298%_
                                           _%tl6726967301%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6723967281%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6723967281%_))))))
                      (if (gx#stx-pair/null? _%tl6724667368%_)
                          (let ((_%__splice8253982540%_
                                 (gx#syntax-split-splice _%tl6724667368%_ '0)))
                            (let ((_%tl6726967301%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8253982540%_ '1)))
                                  (_%target6726767298%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8253982540%_
                                      '0))))
                              (if (gx#stx-null? _%tl6726967301%_)
                                  (_%__match8258582586%_
                                   _%e6724467361%_
                                   _%hd6724567365%_
                                   _%tl6724667368%_
                                   _%__splice8253982540%_
                                   _%target6726767298%_
                                   _%tl6726967301%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6723967281%_)))))
                          (let () (declare (not safe)) (_%g6723967281%_))))))
              (if (gx#stx-pair/null? _%tl6724667368%_)
                  (let ((_%__splice8253982540%_
                         (gx#syntax-split-splice _%tl6724667368%_ '0)))
                    (let ((_%tl6726967301%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8253982540%_ '1)))
                          (_%target6726767298%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8253982540%_ '0))))
                      (if (gx#stx-null? _%tl6726967301%_)
                          (_%__match8258582586%_
                           _%e6724467361%_
                           _%hd6724567365%_
                           _%tl6724667368%_
                           _%__splice8253982540%_
                           _%target6726767298%_
                           _%tl6726967301%_)
                          (let () (declare (not safe)) (_%g6723967281%_)))))
                  (let () (declare (not safe)) (_%g6723967281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6724667368%_)
                                                      (let ((_%__splice8253982540%_
                                                             (gx#syntax-split-splice
                                                              _%tl6724667368%_
                                                              '0)))
                                                        (let ((_%tl6726967301%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8253982540%_ '1)))
                      (_%target6726767298%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8253982540%_ '0))))
                  (if (gx#stx-null? _%tl6726967301%_)
                      (_%__match8258582586%_
                       _%e6724467361%_
                       _%hd6724567365%_
                       _%tl6724667368%_
                       _%__splice8253982540%_
                       _%target6726767298%_
                       _%tl6726967301%_)
                      (let () (declare (not safe)) (_%g6723967281%_)))))
              (let () (declare (not safe)) (_%g6723967281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6724667368%_)
                                                  (let ((_%__splice8253982540%_
                                                         (gx#syntax-split-splice
                                                          _%tl6724667368%_
                                                          '0)))
                                                    (let ((_%tl6726967301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8253982540%_
                                                              '1)))
                                                          (_%target6726767298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8253982540%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6726967301%_)
                                                          (_%__match8258582586%_
                                                           _%e6724467361%_
                                                           _%hd6724567365%_
                                                           _%tl6724667368%_
                                                           _%__splice8253982540%_
                                                           _%target6726767298%_
                                                           _%tl6726967301%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6723967281%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6723967281%_))))))
                                      (if (gx#stx-pair/null? _%tl6724667368%_)
                                          (let ((_%__splice8253982540%_
                                                 (gx#syntax-split-splice
                                                  _%tl6724667368%_
                                                  '0)))
                                            (let ((_%tl6726967301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8253982540%_
                                                      '1)))
                                                  (_%target6726767298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8253982540%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6726967301%_)
                                                  (_%__match8258582586%_
                                                   _%e6724467361%_
                                                   _%hd6724567365%_
                                                   _%tl6724667368%_
                                                   _%__splice8253982540%_
                                                   _%target6726767298%_
                                                   _%tl6726967301%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6723967281%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6723967281%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g6723967281%_)))))))))
          (let* ((_%__stx8258882589%_ _%stx66958%_)
                 (_%g6696666999%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8258882589%_))))
            (let ((_%__kont8259182592%_
                   (lambda (_%L67118%_)
                     (let* ((_%g6714167158%_
                             (lambda (_%g6714267154%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g6714267154%_)))
                            (_%g6714067219%_
                             (lambda (_%g6714267162%_)
                               (if (gx#stx-pair/null? _%g6714267162%_)
                                   (let ((_g84197_
                                          (gx#syntax-split-splice
                                           _%g6714267162%_
                                           '0)))
                                     (begin
                                       (let ((_g84198_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g84197_)
                                                    (##vector-length _g84197_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g84198_ 2)))
                                             (error "Context expects 2 values"
                                                    _g84198_)))
                                       (let ((_%target6714467165%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g84197_ 0)))
                                             (_%tl6714667168%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g84197_ 1))))
                                         (if (gx#stx-null? _%tl6714667168%_)
                                             (letrec ((_%loop6714767171%_
                                                       (lambda (_%hd6714567175%_
                                                                _%clause6715167178%_)
                                                         (if (gx#stx-pair?
                                                              _%hd6714567175%_)
                                                             (let ((_%e6714867181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd6714567175%_)))
                       (let ((_%lp-hd6714967185%_
                              (let ()
                                (declare (not safe))
                                (##car _%e6714867181%_)))
                             (_%lp-tl6715067188%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e6714867181%_))))
                         (_%loop6714767171%_
                          _%lp-tl6715067188%_
                          (cons _%lp-hd6714967185%_ _%clause6715167178%_))))
                     (let ((_%clause6715267191%_
                            (reverse _%clause6715167178%_)))
                       ((lambda (_%L67195%_)
                          (cons (gx#datum->syntax '#f 'case-lambda)
                                (foldr (lambda (_%g6721067213%_
                                                _%g6721167216%_)
                                         (cons _%g6721067213%_
                                               _%g6721167216%_))
                                       '()
                                       _%L67195%_)))
                        _%clause6715267191%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop6714767171%_
                                                _%target6714467165%_
                                                '()))
                                             (_%g6714167158%_
                                              _%g6714267162%_)))))
                                   (_%g6714167158%_ _%g6714267162%_)))))
                       (_%g6714067219%_
                        (map _%clause-e66963%_
                             (foldr (lambda (_%g6722267225%_ _%g6722367228%_)
                                      (cons _%g6722267225%_ _%g6722367228%_))
                                    '()
                                    _%L67118%_))))))
                  (_%__kont8259582596%_
                   (lambda (_%L67046%_)
                     (cons (gx#datum->syntax '#f 'case-lambda)
                           (foldr (lambda (_%g6706267065%_ _%g6706367068%_)
                                    (cons _%g6706267065%_ _%g6706367068%_))
                                  '()
                                  _%L67046%_)))))
              (let* ((_%__match8262782628%_
                      (lambda (_%e6698267006%_
                               _%hd6698367010%_
                               _%tl6698467013%_
                               _%__splice8259782598%_
                               _%target6698567016%_
                               _%tl6698767019%_)
                        (letrec ((_%loop6698867022%_
                                  (lambda (_%hd6698667026%_
                                           _%clause6699267029%_)
                                    (if (gx#stx-pair? _%hd6698667026%_)
                                        (let ((_%e6698967032%_
                                               (gx#syntax-e _%hd6698667026%_)))
                                          (let ((_%lp-tl6699167039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6698967032%_)))
                                                (_%lp-hd6699067036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6698967032%_))))
                                            (_%loop6698867022%_
                                             _%lp-tl6699167039%_
                                             (cons _%lp-hd6699067036%_
                                                   _%clause6699267029%_))))
                                        (let ((_%clause6699367042%_
                                               (reverse _%clause6699267029%_)))
                                          (_%__kont8259582596%_
                                           _%clause6699367042%_))))))
                          (_%loop6698867022%_ _%target6698567016%_ '()))))
                     (_%__match8261382614%_
                      (lambda (_%e6696967078%_
                               _%hd6697067082%_
                               _%tl6697167085%_
                               _%__splice8259382594%_
                               _%target6697267088%_
                               _%tl6697467091%_)
                        (letrec ((_%loop6697567094%_
                                  (lambda (_%hd6697367098%_
                                           _%clause6697967101%_)
                                    (if (gx#stx-pair? _%hd6697367098%_)
                                        (let ((_%e6697667104%_
                                               (gx#syntax-e _%hd6697367098%_)))
                                          (let ((_%lp-tl6697867111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6697667104%_)))
                                                (_%lp-hd6697767108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6697667104%_))))
                                            (_%loop6697567094%_
                                             _%lp-tl6697867111%_
                                             (cons _%lp-hd6697767108%_
                                                   _%clause6697967101%_))))
                                        (let* ((_%clause6698067114%_
                                                (reverse _%clause6697967101%_))
                                               (_%L67118%_
                                                _%clause6698067114%_))
                                          (if (ormap _%is-clause-signature?66961%_
                                                     (foldr (lambda (_%g6713267135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6713367138%_)
                      (cons _%g6713267135%_ _%g6713367138%_))
                    '()
                    _%L67118%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8259182592%_ _%L67118%_)
                                              (_%__match8262782628%_
                                               _%e6696967078%_
                                               _%hd6697067082%_
                                               _%tl6697167085%_
                                               _%__splice8259382594%_
                                               _%target6697267088%_
                                               _%tl6697467091%_)))))))
                          (_%loop6697567094%_ _%target6697267088%_ '())))))
                (if (gx#stx-pair? _%__stx8258882589%_)
                    (let ((_%e6696967078%_ (gx#syntax-e _%__stx8258882589%_)))
                      (let ((_%tl6697167085%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6696967078%_)))
                            (_%hd6697067082%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6696967078%_))))
                        (if (gx#stx-pair/null? _%tl6697167085%_)
                            (let ((_%__splice8259382594%_
                                   (gx#syntax-split-splice
                                    _%tl6697167085%_
                                    '0)))
                              (let ((_%tl6697467091%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8259382594%_
                                        '1)))
                                    (_%target6697267088%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8259382594%_
                                        '0))))
                                (if (gx#stx-null? _%tl6697467091%_)
                                    (_%__match8261382614%_
                                     _%e6696967078%_
                                     _%hd6697067082%_
                                     _%tl6697167085%_
                                     _%__splice8259382594%_
                                     _%target6697267088%_
                                     _%tl6697467091%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6696666999%_)))))
                            (let () (declare (not safe)) (_%g6696666999%_)))))
                    (let () (declare (not safe)) (_%g6696666999%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#@method|
      (lambda (_%stx67707%_)
        (let* ((_%__stx8263082631%_ _%stx67707%_)
               (_%g6771167756%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8263082631%_))))
          (let ((_%__kont8263382634%_
                 (lambda (_%L67912%_ _%L67914%_)
                   (let* ((_%str67931%_ (symbol->string (gx#stx-e _%L67914%_)))
                          (_%ix67934%_ (string-rindex _%str67931%_ '#\.))
                          (_%g6793967954%_
                           (lambda (_%g6794067950%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6794067950%_)))
                          (_%g6793868010%_
                           (lambda (_%g6794067958%_)
                             (if (gx#stx-pair? _%g6794067958%_)
                                 (let ((_%e6794367961%_
                                        (gx#syntax-e _%g6794067958%_)))
                                   (let ((_%hd6794467965%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e6794367961%_)))
                                         (_%tl6794567968%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e6794367961%_))))
                                     (if (gx#stx-pair? _%tl6794567968%_)
                                         (let ((_%e6794667971%_
                                                (gx#syntax-e
                                                 _%tl6794567968%_)))
                                           (let ((_%hd6794767975%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e6794667971%_)))
                                                 (_%tl6794867978%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e6794667971%_))))
                                             (if (gx#stx-null?
                                                  _%tl6794867978%_)
                                                 ((lambda (_%L67981%_
                                                           _%L67983%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'call-method)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '%%ref-dotted)
                              (cons _%L67983%_ '()))
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L67981%_ '()))
                              (foldr (lambda (_%g6800168004%_ _%g6800268007%_)
                                       (cons _%g6800168004%_ _%g6800268007%_))
                                     '()
                                     _%L67912%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd6794767975%_
                                                  _%hd6794467965%_)
                                                 (_%g6793967954%_
                                                  _%g6794067958%_))))
                                         (_%g6793967954%_ _%g6794067958%_))))
                                 (_%g6793967954%_ _%g6794067958%_)))))
                     (_%g6793868010%_
                      (list (gx#stx-identifier
                             _%L67914%_
                             (substring _%str67931%_ '0 _%ix67934%_))
                            (let ((__tmp84199
                                   (substring
                                    _%str67931%_
                                    (fx1+ _%ix67934%_)
                                    (string-length _%str67931%_))))
                              (declare (not safe))
                              (##string->symbol __tmp84199)))))))
                (_%__kont8263782638%_
                 (lambda (_%L67823%_ _%L67825%_ _%L67826%_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _%L67825%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L67826%_ '()))
                                     (foldr (lambda (_%g6784667849%_
                                                     _%g6784767852%_)
                                              (cons _%g6784667849%_
                                                    _%g6784767852%_))
                                            '()
                                            _%L67823%_)))))))
            (let* ((_%__match8268782688%_
                    (lambda (_%e6773367763%_
                             _%hd6773467767%_
                             _%tl6773567770%_
                             _%e6773667773%_
                             _%hd6773767777%_
                             _%tl6773867780%_
                             _%e6773967783%_
                             _%hd6774067787%_
                             _%tl6774167790%_
                             _%__splice8263982640%_
                             _%target6774267793%_
                             _%tl6774467796%_)
                      (letrec ((_%loop6774567799%_
                                (lambda (_%hd6774367803%_ _%arg6774967806%_)
                                  (if (gx#stx-pair? _%hd6774367803%_)
                                      (let ((_%e6774667809%_
                                             (gx#syntax-e _%hd6774367803%_)))
                                        (let ((_%lp-tl6774867816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6774667809%_)))
                                              (_%lp-hd6774767813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6774667809%_))))
                                          (_%loop6774567799%_
                                           _%lp-tl6774867816%_
                                           (cons _%lp-hd6774767813%_
                                                 _%arg6774967806%_))))
                                      (let ((_%arg6775067819%_
                                             (reverse _%arg6774967806%_)))
                                        (_%__kont8263782638%_
                                         _%arg6775067819%_
                                         _%hd6774067787%_
                                         _%hd6773767777%_))))))
                        (_%loop6774567799%_ _%target6774267793%_ '()))))
                   (_%__match8267382674%_
                    (lambda (_%e6773367763%_
                             _%hd6773467767%_
                             _%tl6773567770%_
                             _%e6773667773%_
                             _%hd6773767777%_
                             _%tl6773867780%_)
                      (if (gx#stx-pair? _%tl6773867780%_)
                          (let ((_%e6773967783%_
                                 (gx#syntax-e _%tl6773867780%_)))
                            (let ((_%tl6774167790%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6773967783%_)))
                                  (_%hd6774067787%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6773967783%_))))
                              (if (gx#stx-pair/null? _%tl6774167790%_)
                                  (let ((_%__splice8263982640%_
                                         (gx#syntax-split-splice
                                          _%tl6774167790%_
                                          '0)))
                                    (let ((_%tl6774467796%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8263982640%_
                                              '1)))
                                          (_%target6774267793%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8263982640%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6774467796%_)
                                          (_%__match8268782688%_
                                           _%e6773367763%_
                                           _%hd6773467767%_
                                           _%tl6773567770%_
                                           _%e6773667773%_
                                           _%hd6773767777%_
                                           _%tl6773867780%_
                                           _%e6773967783%_
                                           _%hd6774067787%_
                                           _%tl6774167790%_
                                           _%__splice8263982640%_
                                           _%target6774267793%_
                                           _%tl6774467796%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6771167756%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6771167756%_)))))
                          (let () (declare (not safe)) (_%g6771167756%_)))))
                   (_%__match8266182662%_
                    (lambda (_%e6771567862%_
                             _%hd6771667866%_
                             _%tl6771767869%_
                             _%e6771867872%_
                             _%hd6771967876%_
                             _%tl6772067879%_
                             _%__splice8263582636%_
                             _%target6772167882%_
                             _%tl6772367885%_)
                      (letrec ((_%loop6772467888%_
                                (lambda (_%hd6772267892%_ _%arg6772867895%_)
                                  (if (gx#stx-pair? _%hd6772267892%_)
                                      (let ((_%e6772567898%_
                                             (gx#syntax-e _%hd6772267892%_)))
                                        (let ((_%lp-tl6772767905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6772567898%_)))
                                              (_%lp-hd6772667902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6772567898%_))))
                                          (_%loop6772467888%_
                                           _%lp-tl6772767905%_
                                           (cons _%lp-hd6772667902%_
                                                 _%arg6772867895%_))))
                                      (let ((_%arg6772967908%_
                                             (reverse _%arg6772867895%_)))
                                        (let ((_%L67912%_ _%arg6772967908%_)
                                              (_%L67914%_ _%hd6771967876%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/contract~Using[1]#dotted-identifier?|
                                                 _%L67914%_))
                                              (_%__kont8263382634%_
                                               _%L67912%_
                                               _%L67914%_)
                                              (_%__match8267382674%_
                                               _%e6771567862%_
                                               _%hd6771667866%_
                                               _%tl6771767869%_
                                               _%e6771867872%_
                                               _%hd6771967876%_
                                               _%tl6772067879%_))))))))
                        (_%loop6772467888%_ _%target6772167882%_ '())))))
              (if (gx#stx-pair? _%__stx8263082631%_)
                  (let ((_%e6771567862%_ (gx#syntax-e _%__stx8263082631%_)))
                    (let ((_%tl6771767869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6771567862%_)))
                          (_%hd6771667866%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6771567862%_))))
                      (if (gx#stx-pair? _%tl6771767869%_)
                          (let ((_%e6771867872%_
                                 (gx#syntax-e _%tl6771767869%_)))
                            (let ((_%tl6772067879%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6771867872%_)))
                                  (_%hd6771967876%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6771867872%_))))
                              (if (gx#stx-pair/null? _%tl6772067879%_)
                                  (let ((_%__splice8263582636%_
                                         (gx#syntax-split-splice
                                          _%tl6772067879%_
                                          '0)))
                                    (let ((_%tl6772367885%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8263582636%_
                                              '1)))
                                          (_%target6772167882%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8263582636%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6772367885%_)
                                          (_%__match8266182662%_
                                           _%e6771567862%_
                                           _%hd6771667866%_
                                           _%tl6771767869%_
                                           _%e6771867872%_
                                           _%hd6771967876%_
                                           _%tl6772067879%_
                                           _%__splice8263582636%_
                                           _%target6772167882%_
                                           _%tl6772367885%_)
                                          (if (gx#stx-pair? _%tl6772067879%_)
                                              (let ((_%e6773967783%_
                                                     (gx#syntax-e
                                                      _%tl6772067879%_)))
                                                (let ((_%tl6774167790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6773967783%_)))
                                                      (_%hd6774067787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6773967783%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6774167790%_)
                                                      (let ((_%__splice8263982640%_
                                                             (gx#syntax-split-splice
                                                              _%tl6774167790%_
                                                              '0)))
                                                        (let ((_%tl6774467796%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8263982640%_ '1)))
                      (_%target6774267793%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8263982640%_ '0))))
                  (if (gx#stx-null? _%tl6774467796%_)
                      (_%__match8268782688%_
                       _%e6771567862%_
                       _%hd6771667866%_
                       _%tl6771767869%_
                       _%e6771867872%_
                       _%hd6771967876%_
                       _%tl6772067879%_
                       _%e6773967783%_
                       _%hd6774067787%_
                       _%tl6774167790%_
                       _%__splice8263982640%_
                       _%target6774267793%_
                       _%tl6774467796%_)
                      (let () (declare (not safe)) (_%g6771167756%_)))))
              (let () (declare (not safe)) (_%g6771167756%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6771167756%_))))))
                                  (if (gx#stx-pair? _%tl6772067879%_)
                                      (let ((_%e6773967783%_
                                             (gx#syntax-e _%tl6772067879%_)))
                                        (let ((_%tl6774167790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6773967783%_)))
                                              (_%hd6774067787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6773967783%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl6774167790%_)
                                              (let ((_%__splice8263982640%_
                                                     (gx#syntax-split-splice
                                                      _%tl6774167790%_
                                                      '0)))
                                                (let ((_%tl6774467796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8263982640%_
                                                          '1)))
                                                      (_%target6774267793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8263982640%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl6774467796%_)
                                                      (_%__match8268782688%_
                                                       _%e6771567862%_
                                                       _%hd6771667866%_
                                                       _%tl6771767869%_
                                                       _%e6771867872%_
                                                       _%hd6771967876%_
                                                       _%tl6772067879%_
                                                       _%e6773967783%_
                                                       _%hd6774067787%_
                                                       _%tl6774167790%_
                                                       _%__splice8263982640%_
                                                       _%target6774267793%_
                                                       _%tl6774467796%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6771167756%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6771167756%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6771167756%_))))))
                          (let () (declare (not safe)) (_%g6771167756%_)))))
                  (let () (declare (not safe)) (_%g6771167756%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmethod/c|
      (lambda (_%stx68020%_)
        (let* ((_%__stx8269082691%_ _%stx68020%_)
               (_%g6802568150%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8269082691%_))))
          (let ((_%__kont8269382694%_
                 (lambda (_%L68719%_
                          _%L68721%_
                          _%L68722%_
                          _%L68723%_
                          _%L68724%_
                          _%L68725%_
                          _%L68726%_)
                   (let* ((_%g6876268770%_
                           (lambda (_%g6876368766%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6876368766%_)))
                          (_%g6876168831%_
                           (lambda (_%g6876368774%_)
                             ((lambda (_%L68777%_)
                                (let* ((_%g6878968797%_
                                        (lambda (_%g6879068793%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g6879068793%_)))
                                       (_%g6878868819%_
                                        (lambda (_%g6879068801%_)
                                          ((lambda (_%L68804%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defmethod)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '@method~)
                                                               (cons _%L68725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L68724%_ '())))
                 (cons _%L68804%_ _%L68719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g6879068801%_))))
                                  (_%g6878868819%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'lambda/c)
                                          (cons (cons _%L68777%_ _%L68722%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'using)
                                                            (cons (cons _%L68723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%L68777%_
                                      (cons (gx#datum->syntax '#f '::-)
                                            (cons _%L68724%_ '()))))
                          (cons (cons (gx#datum->syntax '#f 'with-receiver)
                                      (cons _%L68723%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6882268825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6882368828%_)
                               (cons _%g6882268825%_ _%g6882368828%_))
                             '()
                             _%L68721%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx68020%_)))))
                              _%g6876368774%_))))
                     (_%g6876168831%_ (gx#genident _%L68723%_)))))
                (_%__kont8269782698%_
                 (lambda (_%L68398%_
                          _%L68400%_
                          _%L68401%_
                          _%L68402%_
                          _%L68403%_
                          _%L68404%_
                          _%L68405%_)
                   (let* ((_%g6844568462%_
                           (lambda (_%g6844668458%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6844668458%_)))
                          (_%g6844468580%_
                           (lambda (_%g6844668466%_)
                             (if (gx#stx-pair/null? _%g6844668466%_)
                                 (let ((_g84200_
                                        (gx#syntax-split-splice
                                         _%g6844668466%_
                                         '0)))
                                   (begin
                                     (let ((_g84201_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g84200_)
                                                  (##vector-length _g84200_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g84201_ 2)))
                                           (error "Context expects 2 values"
                                                  _g84201_)))
                                     (let ((_%target6844868469%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g84200_ 0)))
                                           (_%tl6845068472%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g84200_ 1))))
                                       (if (gx#stx-null? _%tl6845068472%_)
                                           (letrec ((_%loop6845168475%_
                                                     (lambda (_%hd6844968479%_
                                                              _%receiver6845568482%_)
                                                       (if (gx#stx-pair?
                                                            _%hd6844968479%_)
                                                           (let ((_%e6845268485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd6844968479%_)))
                     (let ((_%lp-hd6845368489%_
                            (let ()
                              (declare (not safe))
                              (##car _%e6845268485%_)))
                           (_%lp-tl6845468492%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e6845268485%_))))
                       (_%loop6845168475%_
                        _%lp-tl6845468492%_
                        (cons _%lp-hd6845368489%_ _%receiver6845568482%_))))
                   (let ((_%receiver6845668495%_
                          (reverse _%receiver6845568482%_)))
                     ((lambda (_%L68499%_)
                        (let* ((_%g6851568523%_
                                (lambda (_%g6851668519%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g6851668519%_)))
                               (_%g6851468545%_
                                (lambda (_%g6851668527%_)
                                  ((lambda (_%L68530%_)
                                     (cons (gx#datum->syntax '#f 'defmethod)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@method~)
                                                       (cons _%L68404%_
                                                             (cons _%L68403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L68530%_
                                                       _%L68398%_))))
                                   _%g6851668527%_))))
                          (_%g6851468545%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'case-lambda/c)
                                  (begin
                                    (gx#syntax-check-splice-targets
                                     _%L68400%_
                                     _%L68402%_
                                     _%L68499%_
                                     _%L68402%_
                                     _%L68401%_
                                     _%L68499%_)
                                    (foldr (lambda (_%g6854868558%_
                                                    _%g6854968561%_
                                                    _%g6855068563%_
                                                    _%g6855168565%_
                                                    _%g6855268567%_
                                                    _%g6855368569%_
                                                    _%g6855468571%_)
                                             (cons (cons (cons _%g6855068563%_
                                                               _%g6855268567%_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'using)
                             (cons (cons _%g6854968561%_
                                         (cons _%g6855068563%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '::-)
                                                     (cons _%L68403%_ '()))))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'with-receiver)
                                               (cons _%g6854968561%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons '()
                               (foldr (lambda (_%g6855568574%_ _%g6855668577%_)
                                        (cons _%g6855568574%_ _%g6855668577%_))
                                      '()
                                      _%g6854868558%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g6855468571%_))
                                           '()
                                           _%L68400%_
                                           _%L68402%_
                                           _%L68499%_
                                           _%L68402%_
                                           _%L68401%_
                                           _%L68499%_)))
                            (gx#stx-source _%stx68020%_)))))
                      _%receiver6845668495%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop6845168475%_
                                              _%target6844868469%_
                                              '()))
                                           (_%g6844568462%_
                                            _%g6844668466%_)))))
                                 (_%g6844568462%_ _%g6844668466%_)))))
                     (_%g6844468580%_
                      (map gx#genident
                           (foldr (lambda (_%g6858368586%_ _%g6858468589%_)
                                    (cons _%g6858368586%_ _%g6858468589%_))
                                  '()
                                  _%L68402%_))))))
                (_%__kont8270182702%_
                 (lambda (_%L68207%_ _%L68209%_ _%L68210%_ _%L68211%_)
                   (cons (gx#datum->syntax '#f 'defmethod)
                         (cons (cons (gx#datum->syntax '#f '@method~)
                                     (cons _%L68210%_ (cons _%L68209%_ '())))
                               _%L68207%_)))))
            (let* ((_%g6802468233%_
                    (lambda ()
                      (let ((_%e6813068157%_
                             (gx#syntax-e _%__stx8269082691%_)))
                        (let ((_%tl6813268164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6813068157%_)))
                              (_%hd6813168161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6813068157%_))))
                          (if (gx#stx-pair? _%tl6813268164%_)
                              (let ((_%e6813368167%_
                                     (gx#syntax-e _%tl6813268164%_)))
                                (let ((_%tl6813568174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6813368167%_)))
                                      (_%hd6813468171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6813368167%_))))
                                  (if (gx#stx-pair? _%hd6813468171%_)
                                      (let ((_%e6813668177%_
                                             (gx#syntax-e _%hd6813468171%_)))
                                        (let ((_%tl6813868184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6813668177%_)))
                                              (_%hd6813768181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6813668177%_))))
                                          (if (gx#stx-pair? _%tl6813868184%_)
                                              (let ((_%e6813968187%_
                                                     (gx#syntax-e
                                                      _%tl6813868184%_)))
                                                (let ((_%tl6814168194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6813968187%_)))
                                                      (_%hd6814068191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6813968187%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6814168194%_)
                                                      (let ((_%e6814268197%_
                                                             (gx#syntax-e
                                                              _%tl6814168194%_)))
                                                        (let ((_%tl6814468204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6814268197%_)))
                      (_%hd6814368201%_
                       (let () (declare (not safe)) (##car _%e6814268197%_))))
                  (if (gx#stx-null? _%tl6814468204%_)
                      (_%__kont8270182702%_
                       _%tl6813568174%_
                       _%hd6814368201%_
                       _%hd6814068191%_
                       _%hd6813768181%_)
                      (let () (declare (not safe)) (_%g6802568150%_)))))
              (let () (declare (not safe)) (_%g6802568150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6802568150%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6802568150%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6802568150%_)))))))
                   (_%__match8282782828%_
                    (lambda (_%e6807768240%_
                             _%hd6807868244%_
                             _%tl6807968247%_
                             _%e6808068250%_
                             _%hd6808168254%_
                             _%tl6808268257%_
                             _%e6808368260%_
                             _%hd6808468264%_
                             _%tl6808568267%_
                             _%e6808668270%_
                             _%hd6808768274%_
                             _%tl6808868277%_
                             _%e6808968280%_
                             _%hd6809068284%_
                             _%tl6809168287%_
                             _%e6809268290%_
                             _%hd6809368294%_
                             _%tl6809468297%_
                             _%e6809568300%_
                             _%hd6809668304%_
                             _%tl6809768307%_
                             _%__splice8269982700%_
                             _%target6809868310%_
                             _%tl6810068313%_)
                      (letrec ((_%loop6810168316%_
                                (lambda (_%hd6809968320%_
                                         _%body6810568323%_
                                         _%args6810668325%_
                                         _%self6810768327%_)
                                  (if (gx#stx-pair? _%hd6809968320%_)
                                      (let ((_%e6810268330%_
                                             (gx#syntax-e _%hd6809968320%_)))
                                        (let ((_%lp-tl6810468337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6810268330%_)))
                                              (_%lp-hd6810368334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6810268330%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6810368334%_)
                                              (let ((_%e6811168340%_
                                                     (gx#syntax-e
                                                      _%lp-hd6810368334%_)))
                                                (let ((_%tl6811368347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6811168340%_)))
                                                      (_%hd6811268344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6811168340%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd6811268344%_)
                                                      (let ((_%e6811468350%_
                                                             (gx#syntax-e
                                                              _%hd6811268344%_)))
                                                        (let ((_%tl6811668357%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6811468350%_)))
                      (_%hd6811568354%_
                       (let () (declare (not safe)) (##car _%e6811468350%_))))
                  (if (gx#stx-pair/null? _%tl6811368347%_)
                      (let ((_g84202_
                             (gx#syntax-split-splice _%tl6811368347%_ '0)))
                        (begin
                          (let ((_g84203_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g84202_)
                                       (##vector-length _g84202_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g84203_ 2)))
                                (error "Context expects 2 values" _g84203_)))
                          (let ((_%target6811768360%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g84202_ 0)))
                                (_%tl6811968363%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g84202_ 1))))
                            (if (gx#stx-null? _%tl6811968363%_)
                                (letrec ((_%loop6812068366%_
                                          (lambda (_%hd6811868370%_
                                                   _%body6812468373%_)
                                            (if (gx#stx-pair? _%hd6811868370%_)
                                                (let ((_%e6812168376%_
                                                       (gx#syntax-e
                                                        _%hd6811868370%_)))
                                                  (let ((_%lp-hd6812268380%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6812168376%_)))
                                                        (_%lp-tl6812368383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6812168376%_))))
                                                    (_%loop6812068366%_
                                                     _%lp-tl6812368383%_
                                                     (cons _%lp-hd6812268380%_
                                                           _%body6812468373%_))))
                                                (let ((_%body6812568386%_
                                                       (reverse _%body6812468373%_)))
                                                  (_%loop6810168316%_
                                                   _%lp-tl6810468337%_
                                                   (cons _%body6812568386%_
                                                         _%body6810568323%_)
                                                   (cons _%tl6811668357%_
                                                         _%args6810668325%_)
                                                   (cons _%hd6811568354%_
                                                         _%self6810768327%_)))))))
                                  (_%loop6812068366%_
                                   _%target6811768360%_
                                   '()))
                                (let ()
                                  (declare (not safe))
                                  (_%g6802468233%_))))))
                      (_%__kont8270182702%_
                       _%tl6808268257%_
                       _%hd6809068284%_
                       _%hd6808768274%_
                       _%hd6808468264%_))))
              (_%__kont8270182702%_
               _%tl6808268257%_
               _%hd6809068284%_
               _%hd6808768274%_
               _%hd6808468264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8270182702%_
                                               _%tl6808268257%_
                                               _%hd6809068284%_
                                               _%hd6808768274%_
                                               _%hd6808468264%_))))
                                      (let ((_%self6811068395%_
                                             (reverse _%self6810768327%_))
                                            (_%args6810968393%_
                                             (reverse _%args6810668325%_))
                                            (_%body6810868390%_
                                             (reverse _%body6810568323%_)))
                                        (let ((_%L68398%_ _%tl6809468297%_)
                                              (_%L68400%_ _%body6810868390%_)
                                              (_%L68401%_ _%args6810968393%_)
                                              (_%L68402%_ _%self6811068395%_)
                                              (_%L68403%_ _%hd6809068284%_)
                                              (_%L68404%_ _%hd6808768274%_)
                                              (_%L68405%_ _%hd6808468264%_))
                                          (if (and (gx#identifier-list?
                                                    (foldr (lambda (_%g6843668439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g6843768442%_)
                     (cons _%g6843668439%_ _%g6843768442%_))
                   '()
                   _%L68402%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#identifier? _%L68404%_))
                                              (_%__kont8269782698%_
                                               _%L68398%_
                                               _%L68400%_
                                               _%L68401%_
                                               _%L68402%_
                                               _%L68403%_
                                               _%L68404%_
                                               _%L68405%_)
                                              (_%__kont8270182702%_
                                               _%tl6808268257%_
                                               _%hd6809068284%_
                                               _%hd6808768274%_
                                               _%hd6808468264%_))))))))
                        (_%loop6810168316%_
                         _%target6809868310%_
                         '()
                         '()
                         '()))))
                   (_%__match8277182772%_
                    (lambda (_%e6803468599%_
                             _%hd6803568603%_
                             _%tl6803668606%_
                             _%e6803768609%_
                             _%hd6803868613%_
                             _%tl6803968616%_
                             _%e6804068619%_
                             _%hd6804168623%_
                             _%tl6804268626%_
                             _%e6804368629%_
                             _%hd6804468633%_
                             _%tl6804568636%_
                             _%e6804668639%_
                             _%hd6804768643%_
                             _%tl6804868646%_
                             _%e6804968649%_
                             _%hd6805068653%_
                             _%tl6805168656%_
                             _%e6805268659%_
                             _%hd6805368663%_
                             _%tl6805468666%_
                             _%e6805568669%_
                             _%hd6805668673%_
                             _%tl6805768676%_
                             _%e6805868679%_
                             _%hd6805968683%_
                             _%tl6806068686%_
                             _%__splice8269582696%_
                             _%target6806168689%_
                             _%tl6806368692%_)
                      (letrec ((_%loop6806468695%_
                                (lambda (_%hd6806268699%_ _%body6806868702%_)
                                  (if (gx#stx-pair? _%hd6806268699%_)
                                      (let ((_%e6806568705%_
                                             (gx#syntax-e _%hd6806268699%_)))
                                        (let ((_%lp-tl6806768712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6806568705%_)))
                                              (_%lp-hd6806668709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6806568705%_))))
                                          (_%loop6806468695%_
                                           _%lp-tl6806768712%_
                                           (cons _%lp-hd6806668709%_
                                                 _%body6806868702%_))))
                                      (let ((_%body6806968715%_
                                             (reverse _%body6806868702%_)))
                                        (let ((_%L68719%_ _%tl6805168656%_)
                                              (_%L68721%_ _%body6806968715%_)
                                              (_%L68722%_ _%tl6806068686%_)
                                              (_%L68723%_ _%hd6805968683%_)
                                              (_%L68724%_ _%hd6804768643%_)
                                              (_%L68725%_ _%hd6804468633%_)
                                              (_%L68726%_ _%hd6804168623%_))
                                          (if (and (gx#identifier? _%L68723%_)
                                                   (gx#identifier? _%L68725%_))
                                              (_%__kont8269382694%_
                                               _%L68719%_
                                               _%L68721%_
                                               _%L68722%_
                                               _%L68723%_
                                               _%L68724%_
                                               _%L68725%_
                                               _%L68726%_)
                                              (_%__kont8270182702%_
                                               _%tl6803968616%_
                                               _%hd6804768643%_
                                               _%hd6804468633%_
                                               _%hd6804168623%_))))))))
                        (_%loop6806468695%_ _%target6806168689%_ '())))))
              (if (gx#stx-pair? _%__stx8269082691%_)
                  (let ((_%e6803468599%_ (gx#syntax-e _%__stx8269082691%_)))
                    (let ((_%tl6803668606%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6803468599%_)))
                          (_%hd6803568603%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6803468599%_))))
                      (if (gx#stx-pair? _%tl6803668606%_)
                          (let ((_%e6803768609%_
                                 (gx#syntax-e _%tl6803668606%_)))
                            (let ((_%tl6803968616%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6803768609%_)))
                                  (_%hd6803868613%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6803768609%_))))
                              (if (gx#stx-pair? _%hd6803868613%_)
                                  (let ((_%e6804068619%_
                                         (gx#syntax-e _%hd6803868613%_)))
                                    (let ((_%tl6804268626%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6804068619%_)))
                                          (_%hd6804168623%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6804068619%_))))
                                      (if (gx#stx-pair? _%tl6804268626%_)
                                          (let ((_%e6804368629%_
                                                 (gx#syntax-e
                                                  _%tl6804268626%_)))
                                            (let ((_%tl6804568636%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6804368629%_)))
                                                  (_%hd6804468633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6804368629%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6804568636%_)
                                                  (let ((_%e6804668639%_
                                                         (gx#syntax-e
                                                          _%tl6804568636%_)))
                                                    (let ((_%tl6804868646%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6804668639%_)))
                                                          (_%hd6804768643%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6804668639%_))))
                                                      (if (gx#stx-null?
                                                           _%tl6804868646%_)
                                                          (if (gx#stx-pair?
                                                               _%tl6803968616%_)
                                                              (let ((_%e6804968649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl6803968616%_)))
                        (let ((_%tl6805168656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6804968649%_)))
                              (_%hd6805068653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6804968649%_))))
                          (if (gx#stx-pair? _%hd6805068653%_)
                              (let ((_%e6805268659%_
                                     (gx#syntax-e _%hd6805068653%_)))
                                (let ((_%tl6805468666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6805268659%_)))
                                      (_%hd6805368663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6805268659%_))))
                                  (if (gx#identifier? _%hd6805368663%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g84204_|
                                           _%hd6805368663%_)
                                          (if (gx#stx-pair? _%tl6805468666%_)
                                              (let ((_%e6805568669%_
                                                     (gx#syntax-e
                                                      _%tl6805468666%_)))
                                                (let ((_%tl6805768676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6805568669%_)))
                                                      (_%hd6805668673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6805568669%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd6805668673%_)
                                                      (let ((_%e6805868679%_
                                                             (gx#syntax-e
                                                              _%hd6805668673%_)))
                                                        (let ((_%tl6806068686%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6805868679%_)))
                      (_%hd6805968683%_
                       (let () (declare (not safe)) (##car _%e6805868679%_))))
                  (if (gx#stx-pair/null? _%tl6805768676%_)
                      (let ((_%__splice8269582696%_
                             (gx#syntax-split-splice _%tl6805768676%_ '0)))
                        (let ((_%tl6806368692%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8269582696%_ '1)))
                              (_%target6806168689%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8269582696%_ '0))))
                          (if (gx#stx-null? _%tl6806368692%_)
                              (_%__match8277182772%_
                               _%e6803468599%_
                               _%hd6803568603%_
                               _%tl6803668606%_
                               _%e6803768609%_
                               _%hd6803868613%_
                               _%tl6803968616%_
                               _%e6804068619%_
                               _%hd6804168623%_
                               _%tl6804268626%_
                               _%e6804368629%_
                               _%hd6804468633%_
                               _%tl6804568636%_
                               _%e6804668639%_
                               _%hd6804768643%_
                               _%tl6804868646%_
                               _%e6804968649%_
                               _%hd6805068653%_
                               _%tl6805168656%_
                               _%e6805268659%_
                               _%hd6805368663%_
                               _%tl6805468666%_
                               _%e6805568669%_
                               _%hd6805668673%_
                               _%tl6805768676%_
                               _%e6805868679%_
                               _%hd6805968683%_
                               _%tl6806068686%_
                               _%__splice8269582696%_
                               _%target6806168689%_
                               _%tl6806368692%_)
                              (_%__kont8270182702%_
                               _%tl6803968616%_
                               _%hd6804768643%_
                               _%hd6804468633%_
                               _%hd6804168623%_))))
                      (_%__kont8270182702%_
                       _%tl6803968616%_
                       _%hd6804768643%_
                       _%hd6804468633%_
                       _%hd6804168623%_))))
              (_%__kont8270182702%_
               _%tl6803968616%_
               _%hd6804768643%_
               _%hd6804468633%_
               _%hd6804168623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8270182702%_
                                               _%tl6803968616%_
                                               _%hd6804768643%_
                                               _%hd6804468633%_
                                               _%hd6804168623%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypedDefinitions[1]#_g84205_|
                                               _%hd6805368663%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl6805468666%_)
                                                  (let ((_%__splice8269982700%_
                                                         (gx#syntax-split-splice
                                                          _%tl6805468666%_
                                                          '0)))
                                                    (let ((_%tl6810068313%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8269982700%_
                                                              '1)))
                                                          (_%target6809868310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8269982700%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6810068313%_)
                                                          (_%__match8282782828%_
                                                           _%e6803468599%_
                                                           _%hd6803568603%_
                                                           _%tl6803668606%_
                                                           _%e6803768609%_
                                                           _%hd6803868613%_
                                                           _%tl6803968616%_
                                                           _%e6804068619%_
                                                           _%hd6804168623%_
                                                           _%tl6804268626%_
                                                           _%e6804368629%_
                                                           _%hd6804468633%_
                                                           _%tl6804568636%_
                                                           _%e6804668639%_
                                                           _%hd6804768643%_
                                                           _%tl6804868646%_
                                                           _%e6804968649%_
                                                           _%hd6805068653%_
                                                           _%tl6805168656%_
                                                           _%e6805268659%_
                                                           _%hd6805368663%_
                                                           _%tl6805468666%_
                                                           _%__splice8269982700%_
                                                           _%target6809868310%_
                                                           _%tl6810068313%_)
                                                          (_%__kont8270182702%_
                                                           _%tl6803968616%_
                                                           _%hd6804768643%_
                                                           _%hd6804468633%_
                                                           _%hd6804168623%_))))
                                                  (_%__kont8270182702%_
                                                   _%tl6803968616%_
                                                   _%hd6804768643%_
                                                   _%hd6804468633%_
                                                   _%hd6804168623%_))
                                              (_%__kont8270182702%_
                                               _%tl6803968616%_
                                               _%hd6804768643%_
                                               _%hd6804468633%_
                                               _%hd6804168623%_)))
                                      (_%__kont8270182702%_
                                       _%tl6803968616%_
                                       _%hd6804768643%_
                                       _%hd6804468633%_
                                       _%hd6804168623%_))))
                              (_%__kont8270182702%_
                               _%tl6803968616%_
                               _%hd6804768643%_
                               _%hd6804468633%_
                               _%hd6804168623%_))))
                      (_%__kont8270182702%_
                       _%tl6803968616%_
                       _%hd6804768643%_
                       _%hd6804468633%_
                       _%hd6804168623%_))
                  (let () (declare (not safe)) (_%g6802568150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6802568150%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6802568150%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6802568150%_)))))
                          (let () (declare (not safe)) (_%g6802568150%_)))))
                  (let () (declare (not safe)) (_%g6802568150%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-receiver|
      (lambda (_%stx68843%_)
        (let* ((_%g6884668864%_
                (lambda (_%g6884768860%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6884768860%_)))
               (_%g6884568950%_
                (lambda (_%g6884768868%_)
                  (if (gx#stx-pair? _%g6884768868%_)
                      (let ((_%e6885068871%_ (gx#syntax-e _%g6884768868%_)))
                        (let ((_%hd6885168875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6885068871%_)))
                              (_%tl6885268878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6885068871%_))))
                          (if (gx#stx-pair? _%tl6885268878%_)
                              (let ((_%e6885368881%_
                                     (gx#syntax-e _%tl6885268878%_)))
                                (let ((_%hd6885468885%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6885368881%_)))
                                      (_%tl6885568888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6885368881%_))))
                                  (if (gx#stx-pair? _%tl6885568888%_)
                                      (let ((_%e6885668891%_
                                             (gx#syntax-e _%tl6885568888%_)))
                                        (let ((_%hd6885768895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6885668891%_)))
                                              (_%tl6885868898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6885668891%_))))
                                          (if (gx#stx-null? _%tl6885868898%_)
                                              ((lambda (_%L68901%_ _%L68903%_)
                                                 (let* ((_%g6891968927%_
                                                         (lambda (_%g6892068923%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g6892068923%_)))
                                                        (_%g6891868946%_
                                                         (lambda (_%g6892068931%_)
                                                           ((lambda (_%L68934%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@receiver)
                                        (cons _%L68934%_ '()))
                                  (cons _%L68901%_ '()))))
                    _%g6892068931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g6891868946%_
                                                    (gx#core-quote-syntax
                                                     _%L68903%_))))
                                               _%hd6885768895%_
                                               _%hd6885468885%_)
                                              (_%g6884668864%_
                                               _%g6884768868%_))))
                                      (_%g6884668864%_ _%g6884768868%_))))
                              (_%g6884668864%_ _%g6884768868%_))))
                      (_%g6884668864%_ _%g6884768868%_)))))
          (_%g6884568950%_ _%stx68843%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#let/c|
      (lambda (_%stx68954%_)
        (let* ((_%__stx8287082871%_ _%stx68954%_)
               (_%g6895969055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8287082871%_))))
          (let ((_%__kont8287382874%_
                 (lambda (_%L69402%_
                          _%L69404%_
                          _%L69405%_
                          _%L69406%_
                          _%L69407%_)
                   (let* ((_%g6943769445%_
                           (lambda (_%g6943869441%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6943869441%_)))
                          (_%g6943669472%_
                           (lambda (_%g6943869449%_)
                             ((lambda (_%L69452%_)
                                (cons (cons (gx#datum->syntax '#f 'letrec)
                                            (cons (cons (cons _%L69407%_
                                                              (cons _%L69452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L69407%_ '())))
                                      (foldr (lambda (_%g6946369466%_
                                                      _%g6946469469%_)
                                               (cons _%g6946369466%_
                                                     _%g6946469469%_))
                                             '()
                                             _%L69405%_)))
                              _%g6943869449%_))))
                     (_%g6943669472%_
                      (gx#stx-wrap-source
                       (cons (gx#datum->syntax '#f 'lambda/c)
                             (cons (foldr (lambda (_%g6947769480%_
                                                   _%g6947869483%_)
                                            (cons _%g6947769480%_
                                                  _%g6947869483%_))
                                          '()
                                          _%L69406%_)
                                   (cons (gx#datum->syntax '#f '=>)
                                         (cons _%L69404%_
                                               (foldr (lambda (_%g6947569486%_
                                                               _%g6947669489%_)
                                                        (cons _%g6947569486%_
                                                              _%g6947669489%_))
                                                      '()
                                                      _%L69402%_)))))
                       (gx#stx-source _%stx68954%_))))))
                (_%__kont8287982880%_
                 (lambda (_%L69205%_ _%L69207%_ _%L69208%_ _%L69209%_)
                   (cons (gx#datum->syntax '#f 'let/c)
                         (cons _%L69209%_
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _%L69207%_
                                        _%L69208%_)
                                       (foldr (lambda (_%g6924369247%_
                                                       _%g6924469250%_
                                                       _%g6924569252%_)
                                                (cons (cons _%g6924469250%_
                                                            (cons _%g6924369247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g6924569252%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L69207%_
                                              _%L69208%_))
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6924169255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6924269258%_)
                  (cons _%g6924169255%_ _%g6924269258%_))
                '()
                _%L69205%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                (_%__kont8288582886%_
                 (lambda (_%L69072%_)
                   (cons (gx#datum->syntax '#f 'let) _%L69072%_))))
            (let* ((_%__match8293982940%_
                    (lambda (_%e6901169091%_
                             _%hd6901269095%_
                             _%tl6901369098%_
                             _%e6901469101%_
                             _%hd6901569105%_
                             _%tl6901669108%_
                             _%e6901769111%_
                             _%hd6901869115%_
                             _%tl6901969118%_
                             _%__splice8288182882%_
                             _%target6902069121%_
                             _%tl6902269124%_)
                      (letrec ((_%loop6902369127%_
                                (lambda (_%hd6902169131%_
                                         _%init6902769134%_
                                         _%var6902869136%_)
                                  (if (gx#stx-pair? _%hd6902169131%_)
                                      (let ((_%e6902469139%_
                                             (gx#syntax-e _%hd6902169131%_)))
                                        (let ((_%lp-tl6902669146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6902469139%_)))
                                              (_%lp-hd6902569143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6902469139%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6902569143%_)
                                              (let ((_%e6904069149%_
                                                     (gx#syntax-e
                                                      _%lp-hd6902569143%_)))
                                                (let ((_%tl6904269156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6904069149%_)))
                                                      (_%hd6904169153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6904069149%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6904269156%_)
                                                      (let ((_%e6904369159%_
                                                             (gx#syntax-e
                                                              _%tl6904269156%_)))
                                                        (let ((_%tl6904569166%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6904369159%_)))
                      (_%hd6904469163%_
                       (let () (declare (not safe)) (##car _%e6904369159%_))))
                  (if (gx#stx-null? _%tl6904569166%_)
                      (_%loop6902369127%_
                       _%lp-tl6902669146%_
                       (cons _%hd6904469163%_ _%init6902769134%_)
                       (cons _%hd6904169153%_ _%var6902869136%_))
                      (_%__kont8288582886%_ _%tl6901369098%_))))
              (_%__kont8288582886%_ _%tl6901369098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8288582886%_
                                               _%tl6901369098%_))))
                                      (let ((_%var6903069172%_
                                             (reverse _%var6902869136%_))
                                            (_%init6902969169%_
                                             (reverse _%init6902769134%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl6901969118%_)
                                            (let ((_%__splice8288382884%_
                                                   (gx#syntax-split-splice
                                                    _%tl6901969118%_
                                                    '0)))
                                              (let ((_%tl6903369178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8288382884%_
                                                        '1)))
                                                    (_%target6903169175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8288382884%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl6903369178%_)
                                                    (letrec ((_%loop6903469181%_
                                                              (lambda (_%hd6903269185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body6903869188%_)
                        (if (gx#stx-pair? _%hd6903269185%_)
                            (let ((_%e6903569191%_
                                   (gx#syntax-e _%hd6903269185%_)))
                              (let ((_%lp-tl6903769198%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6903569191%_)))
                                    (_%lp-hd6903669195%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6903569191%_))))
                                (_%loop6903469181%_
                                 _%lp-tl6903769198%_
                                 (cons _%lp-hd6903669195%_
                                       _%body6903869188%_))))
                            (let ((_%body6903969201%_
                                   (reverse _%body6903869188%_)))
                              (let ((_%L69205%_ _%body6903969201%_)
                                    (_%L69207%_ _%init6902969169%_)
                                    (_%L69208%_ _%var6903069172%_)
                                    (_%L69209%_ _%hd6901569105%_))
                                (if (and (gx#identifier? _%L69209%_)
                                         (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                          (foldr (lambda (_%g6923369236%_
                                                          _%g6923469239%_)
                                                   (cons _%g6923369236%_
                                                         _%g6923469239%_))
                                                 '()
                                                 _%L69208%_)))
                                    (_%__kont8287982880%_
                                     _%L69205%_
                                     _%L69207%_
                                     _%L69208%_
                                     _%L69209%_)
                                    (_%__kont8288582886%_
                                     _%tl6901369098%_))))))))
              (_%loop6903469181%_ _%target6903169175%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8288582886%_
                                                     _%tl6901369098%_))))
                                            (_%__kont8288582886%_
                                             _%tl6901369098%_)))))))
                        (_%loop6902369127%_ _%target6902069121%_ '() '()))))
                   (_%__match8291382914%_
                    (lambda (_%e6896669268%_
                             _%hd6896769272%_
                             _%tl6896869275%_
                             _%e6896969278%_
                             _%hd6897069282%_
                             _%tl6897169285%_
                             _%e6897269288%_
                             _%hd6897369292%_
                             _%tl6897469295%_
                             _%__splice8287582876%_
                             _%target6897569298%_
                             _%tl6897769301%_)
                      (letrec ((_%loop6897869304%_
                                (lambda (_%hd6897669308%_
                                         _%init6898269311%_
                                         _%var6898369313%_)
                                  (if (gx#stx-pair? _%hd6897669308%_)
                                      (let ((_%e6897969316%_
                                             (gx#syntax-e _%hd6897669308%_)))
                                        (let ((_%lp-tl6898169323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6897969316%_)))
                                              (_%lp-hd6898069320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6897969316%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6898069320%_)
                                              (let ((_%e6900169326%_
                                                     (gx#syntax-e
                                                      _%lp-hd6898069320%_)))
                                                (let ((_%tl6900369333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6900169326%_)))
                                                      (_%hd6900269330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6900169326%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6900369333%_)
                                                      (let ((_%e6900469336%_
                                                             (gx#syntax-e
                                                              _%tl6900369333%_)))
                                                        (let ((_%tl6900669343%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6900469336%_)))
                      (_%hd6900569340%_
                       (let () (declare (not safe)) (##car _%e6900469336%_))))
                  (if (gx#stx-null? _%tl6900669343%_)
                      (_%loop6897869304%_
                       _%lp-tl6898169323%_
                       (cons _%hd6900569340%_ _%init6898269311%_)
                       (cons _%hd6900269330%_ _%var6898369313%_))
                      (_%__match8293982940%_
                       _%e6896669268%_
                       _%hd6896769272%_
                       _%tl6896869275%_
                       _%e6896969278%_
                       _%hd6897069282%_
                       _%tl6897169285%_
                       _%e6897269288%_
                       _%hd6897369292%_
                       _%tl6897469295%_
                       _%__splice8287582876%_
                       _%target6897569298%_
                       _%tl6897769301%_))))
              (_%__match8293982940%_
               _%e6896669268%_
               _%hd6896769272%_
               _%tl6896869275%_
               _%e6896969278%_
               _%hd6897069282%_
               _%tl6897169285%_
               _%e6897269288%_
               _%hd6897369292%_
               _%tl6897469295%_
               _%__splice8287582876%_
               _%target6897569298%_
               _%tl6897769301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match8293982940%_
                                               _%e6896669268%_
                                               _%hd6896769272%_
                                               _%tl6896869275%_
                                               _%e6896969278%_
                                               _%hd6897069282%_
                                               _%tl6897169285%_
                                               _%e6897269288%_
                                               _%hd6897369292%_
                                               _%tl6897469295%_
                                               _%__splice8287582876%_
                                               _%target6897569298%_
                                               _%tl6897769301%_))))
                                      (let ((_%var6898569349%_
                                             (reverse _%var6898369313%_))
                                            (_%init6898469346%_
                                             (reverse _%init6898269311%_)))
                                        (if (gx#stx-pair? _%tl6897469295%_)
                                            (let ((_%e6898669352%_
                                                   (gx#syntax-e
                                                    _%tl6897469295%_)))
                                              (let ((_%tl6898869359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6898669352%_)))
                                                    (_%hd6898769356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6898669352%_))))
                                                (if (gx#identifier?
                                                     _%hd6898769356%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g84206_|
                                                         _%hd6898769356%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6898869359%_)
                                                            (let ((_%e6898969362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6898869359%_)))
                      (let ((_%tl6899169369%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6898969362%_)))
                            (_%hd6899069366%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6898969362%_))))
                        (if (gx#stx-pair/null? _%tl6899169369%_)
                            (let ((_%__splice8287782878%_
                                   (gx#syntax-split-splice
                                    _%tl6899169369%_
                                    '0)))
                              (let ((_%tl6899469375%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8287782878%_
                                        '1)))
                                    (_%target6899269372%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8287782878%_
                                        '0))))
                                (if (gx#stx-null? _%tl6899469375%_)
                                    (letrec ((_%loop6899569378%_
                                              (lambda (_%hd6899369382%_
                                                       _%body6899969385%_)
                                                (if (gx#stx-pair?
                                                     _%hd6899369382%_)
                                                    (let ((_%e6899669388%_
                                                           (gx#syntax-e
                                                            _%hd6899369382%_)))
                                                      (let ((_%lp-tl6899869395%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6899669388%_)))
                    (_%lp-hd6899769392%_
                     (let () (declare (not safe)) (##car _%e6899669388%_))))
                (_%loop6899569378%_
                 _%lp-tl6899869395%_
                 (cons _%lp-hd6899769392%_ _%body6899969385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body6900069398%_
                                                           (reverse _%body6899969385%_)))
                                                      (let ((_%L69402%_
                                                             _%body6900069398%_)
                                                            (_%L69404%_
                                                             _%hd6899069366%_)
                                                            (_%L69405%_
                                                             _%init6898469346%_)
                                                            (_%L69406%_
                                                             _%var6898569349%_)
                                                            (_%L69407%_
                                                             _%hd6897069282%_))
                                                        (if (gx#identifier?
                                                             _%L69407%_)
                                                            (_%__kont8287382874%_
                                                             _%L69402%_
                                                             _%L69404%_
                                                             _%L69405%_
                                                             _%L69406%_
                                                             _%L69407%_)
                                                            (_%__match8293982940%_
                                                             _%e6896669268%_
                                                             _%hd6896769272%_
                                                             _%tl6896869275%_
                                                             _%e6896969278%_
                                                             _%hd6897069282%_
                                                             _%tl6897169285%_
                                                             _%e6897269288%_
                                                             _%hd6897369292%_
                                                             _%tl6897469295%_
                                                             _%__splice8287582876%_
                                                             _%target6897569298%_
                                                             _%tl6897769301%_))))))))
                                      (_%loop6899569378%_
                                       _%target6899269372%_
                                       '()))
                                    (_%__match8293982940%_
                                     _%e6896669268%_
                                     _%hd6896769272%_
                                     _%tl6896869275%_
                                     _%e6896969278%_
                                     _%hd6897069282%_
                                     _%tl6897169285%_
                                     _%e6897269288%_
                                     _%hd6897369292%_
                                     _%tl6897469295%_
                                     _%__splice8287582876%_
                                     _%target6897569298%_
                                     _%tl6897769301%_))))
                            (_%__match8293982940%_
                             _%e6896669268%_
                             _%hd6896769272%_
                             _%tl6896869275%_
                             _%e6896969278%_
                             _%hd6897069282%_
                             _%tl6897169285%_
                             _%e6897269288%_
                             _%hd6897369292%_
                             _%tl6897469295%_
                             _%__splice8287582876%_
                             _%target6897569298%_
                             _%tl6897769301%_))))
                    (_%__match8293982940%_
                     _%e6896669268%_
                     _%hd6896769272%_
                     _%tl6896869275%_
                     _%e6896969278%_
                     _%hd6897069282%_
                     _%tl6897169285%_
                     _%e6897269288%_
                     _%hd6897369292%_
                     _%tl6897469295%_
                     _%__splice8287582876%_
                     _%target6897569298%_
                     _%tl6897769301%_))
                (_%__match8293982940%_
                 _%e6896669268%_
                 _%hd6896769272%_
                 _%tl6896869275%_
                 _%e6896969278%_
                 _%hd6897069282%_
                 _%tl6897169285%_
                 _%e6897269288%_
                 _%hd6897369292%_
                 _%tl6897469295%_
                 _%__splice8287582876%_
                 _%target6897569298%_
                 _%tl6897769301%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match8293982940%_
                                                     _%e6896669268%_
                                                     _%hd6896769272%_
                                                     _%tl6896869275%_
                                                     _%e6896969278%_
                                                     _%hd6897069282%_
                                                     _%tl6897169285%_
                                                     _%e6897269288%_
                                                     _%hd6897369292%_
                                                     _%tl6897469295%_
                                                     _%__splice8287582876%_
                                                     _%target6897569298%_
                                                     _%tl6897769301%_))))
                                            (_%__match8293982940%_
                                             _%e6896669268%_
                                             _%hd6896769272%_
                                             _%tl6896869275%_
                                             _%e6896969278%_
                                             _%hd6897069282%_
                                             _%tl6897169285%_
                                             _%e6897269288%_
                                             _%hd6897369292%_
                                             _%tl6897469295%_
                                             _%__splice8287582876%_
                                             _%target6897569298%_
                                             _%tl6897769301%_)))))))
                        (_%loop6897869304%_ _%target6897569298%_ '() '())))))
              (if (gx#stx-pair? _%__stx8287082871%_)
                  (let ((_%e6896669268%_ (gx#syntax-e _%__stx8287082871%_)))
                    (let ((_%tl6896869275%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6896669268%_)))
                          (_%hd6896769272%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6896669268%_))))
                      (if (gx#stx-pair? _%tl6896869275%_)
                          (let ((_%e6896969278%_
                                 (gx#syntax-e _%tl6896869275%_)))
                            (let ((_%tl6897169285%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6896969278%_)))
                                  (_%hd6897069282%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6896969278%_))))
                              (if (gx#stx-pair? _%tl6897169285%_)
                                  (let ((_%e6897269288%_
                                         (gx#syntax-e _%tl6897169285%_)))
                                    (let ((_%tl6897469295%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6897269288%_)))
                                          (_%hd6897369292%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6897269288%_))))
                                      (if (gx#stx-pair/null? _%hd6897369292%_)
                                          (let ((_%__splice8287582876%_
                                                 (gx#syntax-split-splice
                                                  _%hd6897369292%_
                                                  '0)))
                                            (let ((_%tl6897769301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8287582876%_
                                                      '1)))
                                                  (_%target6897569298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8287582876%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6897769301%_)
                                                  (_%__match8291382914%_
                                                   _%e6896669268%_
                                                   _%hd6896769272%_
                                                   _%tl6896869275%_
                                                   _%e6896969278%_
                                                   _%hd6897069282%_
                                                   _%tl6897169285%_
                                                   _%e6897269288%_
                                                   _%hd6897369292%_
                                                   _%tl6897469295%_
                                                   _%__splice8287582876%_
                                                   _%target6897569298%_
                                                   _%tl6897769301%_)
                                                  (_%__kont8288582886%_
                                                   _%tl6896869275%_))))
                                          (_%__kont8288582886%_
                                           _%tl6896869275%_))))
                                  (_%__kont8288582886%_ _%tl6896869275%_))))
                          (_%__kont8288582886%_ _%tl6896869275%_))))
                  (let () (declare (not safe)) (_%g6895969055%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defclass/c|
      (lambda (_%stx69500%_)
        (letrec ((_%generate69503%_
                  (lambda (_%hd76674%_ _%slots76676%_ _%body76677%_)
                    (let* ((_%__stx8294882949%_ _%hd76674%_)
                           (_%g7668176703%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8294882949%_))))
                      (let ((_%__kont8295182952%_
                             (lambda (_%L76779%_ _%L76781%_)
                               (_%generate-defclass69524%_
                                _%L76781%_
                                (foldr (lambda (_%g7680376806%_
                                                _%g7680476809%_)
                                         (cons _%g7680376806%_
                                               _%g7680476809%_))
                                       '()
                                       _%L76779%_)
                                _%slots76676%_
                                _%body76677%_)))
                            (_%__kont8295582956%_
                             (lambda (_%L76721%_)
                               (_%generate-defclass69524%_
                                _%L76721%_
                                '()
                                _%slots76676%_
                                _%body76677%_)))
                            (_%__kont8295782958%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad class head"
                                _%stx69500%_
                                _%hd76674%_))))
                        (let* ((_%g7667976732%_
                                (lambda ()
                                  (let ((_%L76721%_ _%__stx8294882949%_))
                                    (if (gx#identifier? _%L76721%_)
                                        (_%__kont8295582956%_ _%L76721%_)
                                        (_%__kont8295782958%_)))))
                               (_%__match8297382974%_
                                (lambda (_%e7668576739%_
                                         _%hd7668676743%_
                                         _%tl7668776746%_
                                         _%__splice8295382954%_
                                         _%target7668876749%_
                                         _%tl7669076752%_)
                                  (letrec ((_%loop7669176755%_
                                            (lambda (_%hd7668976759%_
                                                     _%super7669576762%_)
                                              (if (gx#stx-pair?
                                                   _%hd7668976759%_)
                                                  (let ((_%e7669276765%_
                                                         (gx#syntax-e
                                                          _%hd7668976759%_)))
                                                    (let ((_%lp-tl7669476772%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7669276765%_)))
                                                          (_%lp-hd7669376769%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7669276765%_))))
                                                      (_%loop7669176755%_
                                                       _%lp-tl7669476772%_
                                                       (cons _%lp-hd7669376769%_
                                                             _%super7669576762%_))))
                                                  (let ((_%super7669676775%_
                                                         (reverse _%super7669576762%_)))
                                                    (let ((_%L76779%_
                                                           _%super7669676775%_)
                                                          (_%L76781%_
                                                           _%hd7668676743%_))
                                                      (if (and (gx#identifier?
                                                                _%L76781%_)
                                                               (andmap gerbil/core/mop~MOP-2#syntax-local-class-type-info?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr (lambda (_%g7679576798%_ _%g7679676801%_)
                                        (cons _%g7679576798%_ _%g7679676801%_))
                                      '()
                                      _%L76779%_)))
                  (_%__kont8295182952%_ _%L76779%_ _%L76781%_)
                  (let () (declare (not safe)) (_%g7667976732%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop7669176755%_
                                     _%target7668876749%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8294882949%_)
                              (let ((_%e7668576739%_
                                     (gx#syntax-e _%__stx8294882949%_)))
                                (let ((_%tl7668776746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7668576739%_)))
                                      (_%hd7668676743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7668576739%_))))
                                  (if (gx#stx-pair/null? _%tl7668776746%_)
                                      (let ((_%__splice8295382954%_
                                             (gx#syntax-split-splice
                                              _%tl7668776746%_
                                              '0)))
                                        (let ((_%tl7669076752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8295382954%_
                                                  '1)))
                                              (_%target7668876749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8295382954%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7669076752%_)
                                              (_%__match8297382974%_
                                               _%e7668576739%_
                                               _%hd7668676743%_
                                               _%tl7668776746%_
                                               _%__splice8295382954%_
                                               _%target7668876749%_
                                               _%tl7669076752%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7667976732%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7667976732%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g7667976732%_))))))))
                 (_%check-typedef-body!69505%_
                  (lambda (_%body76665%_)
                    (letrec ((_%body-opt?76668%_
                              (lambda (_%key76671%_)
                                (let ((__tmp84207 (gx#stx-e _%key76671%_)))
                                  (declare (not safe))
                                  (##memq __tmp84207
                                          '(id:
                                            struct:
                                            name:
                                            constructor:
                                            transparent:
                                            final:
                                            print:
                                            equal:
                                            metaclass:))))))
                      (if (gx#stx-plist? _%body76665%_ _%body-opt?76668%_)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"invalid defclass body"
                           _%stx69500%_
                           _%body76665%_)))))
                 (_%slot-name69506%_
                  (lambda (_%slot-spec76662%_)
                    (gx#stx-e
                     (if (gx#identifier? _%slot-spec76662%_)
                         _%slot-spec76662%_
                         (gx#stx-car _%slot-spec76662%_)))))
                 (_%slot-contract69507%_
                  (lambda (_%slot-spec76543%_)
                    (let* ((_%__stx8297682977%_ _%slot-spec76543%_)
                           (_%g7654876569%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8297682977%_))))
                      (let ((_%__kont8297982980%_ (lambda (_%L76649%_) '#f))
                            (_%__kont8298182982%_
                             (lambda (_%L76627%_ _%L76629%_) '#f))
                            (_%__kont8298382984%_
                             (lambda (_%L76586%_ _%L76588%_) _%L76586%_)))
                        (let* ((_%g7654676642%_
                                (lambda ()
                                  (if (gx#stx-pair? _%__stx8297682977%_)
                                      (let ((_%e7655376607%_
                                             (gx#syntax-e
                                              _%__stx8297682977%_)))
                                        (let ((_%tl7655576614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7655376607%_)))
                                              (_%hd7655476611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7655376607%_))))
                                          (if (gx#stx-pair? _%tl7655576614%_)
                                              (let ((_%e7655676617%_
                                                     (gx#syntax-e
                                                      _%tl7655576614%_)))
                                                (let ((_%tl7655876624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e7655676617%_)))
                                                      (_%hd7655776621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e7655676617%_))))
                                                  (if (gx#stx-null?
                                                       _%tl7655876624%_)
                                                      (_%__kont8298182982%_
                                                       _%hd7655776621%_
                                                       _%hd7655476611%_)
                                                      (_%__kont8298382984%_
                                                       _%tl7655576614%_
                                                       _%hd7655476611%_))))
                                              (_%__kont8298382984%_
                                               _%tl7655576614%_
                                               _%hd7655476611%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7654876569%_)))))
                               (_%L76649%_ _%__stx8297682977%_))
                          (if (gx#identifier? _%L76649%_)
                              (_%__kont8297982980%_ _%L76649%_)
                              (let ()
                                (declare (not safe))
                                (_%g7654676642%_))))))))
                 (_%slot-contract-normalize69508%_
                  (lambda (_%slot-spec76532%_)
                    (let ((_%contract7653476536%_
                           (_%slot-contract69507%_ _%slot-spec76532%_)))
                      (if _%contract7653476536%_
                          (let ((_%contract76540%_ _%contract7653476536%_))
                            (_%contract-normalize69509%_ _%contract76540%_))
                          '#f))))
                 (_%contract-normalize69509%_
                  (lambda (_%contract76277%_)
                    (let* ((_%__stx8300883009%_ _%contract76277%_)
                           (_%g7628376327%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8300883009%_))))
                      (let ((_%__kont8301183012%_
                             (lambda (_%L76503%_)
                               (_%contract-normalize69509%_
                                (foldr (lambda (_%g7651976522%_
                                                _%g7652076525%_)
                                         (cons _%g7651976522%_
                                               _%g7652076525%_))
                                       '()
                                       _%L76503%_))))
                            (_%__kont8301583016%_
                             (lambda (_%L76427%_ _%L76429%_)
                               (cons (gx#datum->syntax '#f ':~)
                                     (cons (cons (gx#datum->syntax '#f '?)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'or)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'not)
                           (cons _%L76429%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (gx#datum->syntax '#f ':?)
                                                 (cons _%L76427%_ '()))))))
                            (_%__kont8301783018%_ (lambda (_%L76365%_) '#f))
                            (_%__kont8301983020%_
                             (lambda () _%contract76277%_)))
                        (let* ((_%g7628076446%_
                                (lambda ()
                                  (if (gx#stx-pair? _%__stx8300883009%_)
                                      (let ((_%e7630376387%_
                                             (gx#syntax-e
                                              _%__stx8300883009%_)))
                                        (let ((_%tl7630576394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7630376387%_)))
                                              (_%hd7630476391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7630376387%_))))
                                          (if (gx#identifier? _%hd7630476391%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g84208_|
                                                   _%hd7630476391%_)
                                                  (if (gx#stx-pair?
                                                       _%tl7630576394%_)
                                                      (let ((_%e7630676397%_
                                                             (gx#syntax-e
                                                              _%tl7630576394%_)))
                                                        (let ((_%tl7630876404%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e7630676397%_)))
                      (_%hd7630776401%_
                       (let () (declare (not safe)) (##car _%e7630676397%_))))
                  (if (gx#stx-pair? _%tl7630876404%_)
                      (let ((_%e7630976407%_ (gx#syntax-e _%tl7630876404%_)))
                        (let ((_%tl7631176414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7630976407%_)))
                              (_%hd7631076411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7630976407%_))))
                          (if (gx#identifier? _%hd7631076411%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~TypedDefinitions[1]#_g84209_|
                                   _%hd7631076411%_)
                                  (if (gx#stx-pair? _%tl7631176414%_)
                                      (let ((_%e7631276417%_
                                             (gx#syntax-e _%tl7631176414%_)))
                                        (let ((_%tl7631476424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7631276417%_)))
                                              (_%hd7631376421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7631276417%_))))
                                          (if (gx#stx-null? _%tl7631476424%_)
                                              (_%__kont8301583016%_
                                               _%hd7631376421%_
                                               _%hd7630776401%_)
                                              (_%__kont8301983020%_))))
                                      (_%__kont8301983020%_))
                                  (_%__kont8301983020%_))
                              (_%__kont8301983020%_))))
                      (_%__kont8301983020%_))))
              (_%__kont8301983020%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g84210_|
                                                       _%hd7630476391%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7630576394%_)
                                                          (let ((_%e7631976355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7630576394%_)))
                    (let ((_%tl7632176362%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7631976355%_)))
                          (_%hd7632076359%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7631976355%_))))
                      (if (gx#stx-null? _%tl7632176362%_)
                          (_%__kont8301783018%_ _%hd7632076359%_)
                          (_%__kont8301983020%_))))
                  (_%__kont8301983020%_))
              (_%__kont8301983020%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8301983020%_))))
                                      (_%__kont8301983020%_))))
                               (_%__match8304783048%_
                                (lambda (_%__splice8301383014%_
                                         _%target7628676453%_
                                         _%tl7628876456%_
                                         _%e7629576459%_
                                         _%hd7629676463%_
                                         _%tl7629776466%_
                                         _%e7629876469%_
                                         _%hd7629976473%_
                                         _%tl7630076476%_)
                                  (letrec ((_%loop7628976479%_
                                            (lambda (_%hd7628776483%_
                                                     _%pre7629376486%_)
                                              (if (gx#stx-pair?
                                                   _%hd7628776483%_)
                                                  (let ((_%e7629076489%_
                                                         (gx#syntax-e
                                                          _%hd7628776483%_)))
                                                    (let ((_%lp-tl7629276496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7629076489%_)))
                                                          (_%lp-hd7629176493%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7629076489%_))))
                                                      (_%loop7628976479%_
                                                       _%lp-tl7629276496%_
                                                       (cons _%lp-hd7629176493%_
                                                             _%pre7629376486%_))))
                                                  (let ((_%pre7629476499%_
                                                         (reverse _%pre7629376486%_)))
                                                    (_%__kont8301183012%_
                                                     _%pre7629476499%_))))))
                                    (_%loop7628976479%_
                                     _%target7628676453%_
                                     '())))))
                          (if (gx#stx-pair/null? _%__stx8300883009%_)
                              (if (let ((__tmp84211
                                         (gx#stx-length _%__stx8300883009%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp84211 '2))
                                  (let ((_%__splice8301383014%_
                                         (gx#syntax-split-splice
                                          _%__stx8300883009%_
                                          '2)))
                                    (let ((_%tl7628876456%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8301383014%_
                                              '1)))
                                          (_%target7628676453%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8301383014%_
                                              '0))))
                                      (if (gx#stx-pair? _%tl7628876456%_)
                                          (let ((_%e7629576459%_
                                                 (gx#syntax-e
                                                  _%tl7628876456%_)))
                                            (let ((_%tl7629776466%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7629576459%_)))
                                                  (_%hd7629676463%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7629576459%_))))
                                              (if (gx#identifier?
                                                   _%hd7629676463%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g84212_|
                                                       _%hd7629676463%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7629776466%_)
                                                          (let ((_%e7629876469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7629776466%_)))
                    (let ((_%tl7630076476%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7629876469%_)))
                          (_%hd7629976473%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7629876469%_))))
                      (if (gx#stx-null? _%tl7630076476%_)
                          (_%__match8304783048%_
                           _%__splice8301383014%_
                           _%target7628676453%_
                           _%tl7628876456%_
                           _%e7629576459%_
                           _%hd7629676463%_
                           _%tl7629776466%_
                           _%e7629876469%_
                           _%hd7629976473%_
                           _%tl7630076476%_)
                          (let () (declare (not safe)) (_%g7628076446%_)))))
                  (let () (declare (not safe)) (_%g7628076446%_)))
              (let () (declare (not safe)) (_%g7628076446%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7628076446%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7628076446%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7628076446%_)))
                              (let ()
                                (declare (not safe))
                                (_%g7628076446%_))))))))
                 (_%slot-contract-type69510%_
                  (lambda (_%slot-spec76266%_)
                    (let ((_%contract7626876270%_
                           (_%slot-contract69507%_ _%slot-spec76266%_)))
                      (if _%contract7626876270%_
                          (let ((_%contract76274%_ _%contract7626876270%_))
                            (_%contract-type69511%_ _%contract76274%_))
                          '#f))))
                 (_%contract-type69511%_
                  (lambda (_%contract76074%_)
                    (let* ((_%__stx8310283103%_ _%contract76074%_)
                           (_%g7607976111%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8310283103%_))))
                      (let ((_%__kont8310583106%_
                             (lambda (_%L76233%_ _%L76235%_ _%L76236%_)
                               _%L76235%_))
                            (_%__kont8310783108%_
                             (lambda (_%L76169%_
                                      _%L76171%_
                                      _%L76172%_
                                      _%L76173%_)
                               _%L76171%_))
                            (_%__kont8310983110%_ (lambda () '#f)))
                        (let* ((_%__match8315183152%_
                                (lambda (_%e7609476129%_
                                         _%hd7609576133%_
                                         _%tl7609676136%_
                                         _%e7609776139%_
                                         _%hd7609876143%_
                                         _%tl7609976146%_
                                         _%e7610076149%_
                                         _%hd7610176153%_
                                         _%tl7610276156%_
                                         _%e7610376159%_
                                         _%hd7610476163%_
                                         _%tl7610576166%_)
                                  (let ((_%L76169%_ _%tl7610576166%_)
                                        (_%L76171%_ _%hd7610476163%_)
                                        (_%L76172%_ _%hd7610176153%_)
                                        (_%L76173%_ _%hd7609876143%_))
                                    (if (and (gx#identifier? _%L76172%_)
                                             (or (gx#free-identifier=?
                                                  _%L76172%_
                                                  (gx#datum->syntax '#f ':))
                                                 (gx#free-identifier=?
                                                  _%L76172%_
                                                  (gx#datum->syntax '#f ':?))
                                                 (gx#free-identifier=?
                                                  _%L76172%_
                                                  (gx#datum->syntax '#f ':-))
                                                 (gx#free-identifier=?
                                                  _%L76172%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '::-))))
                                        (_%__kont8310783108%_
                                         _%L76169%_
                                         _%L76171%_
                                         _%L76172%_
                                         _%L76173%_)
                                        (_%__kont8310983110%_)))))
                               (_%__match8312383124%_
                                (lambda (_%e7608476213%_
                                         _%hd7608576217%_
                                         _%tl7608676220%_
                                         _%e7608776223%_
                                         _%hd7608876227%_
                                         _%tl7608976230%_)
                                  (let ((_%L76233%_ _%tl7608976230%_)
                                        (_%L76235%_ _%hd7608876227%_)
                                        (_%L76236%_ _%hd7608576217%_))
                                    (if (and (gx#identifier? _%L76236%_)
                                             (or (gx#free-identifier=?
                                                  _%L76236%_
                                                  (gx#datum->syntax '#f ':))
                                                 (gx#free-identifier=?
                                                  _%L76236%_
                                                  (gx#datum->syntax '#f ':?))
                                                 (gx#free-identifier=?
                                                  _%L76236%_
                                                  (gx#datum->syntax '#f ':-))
                                                 (gx#free-identifier=?
                                                  _%L76236%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '::-))))
                                        (_%__kont8310583106%_
                                         _%L76233%_
                                         _%L76235%_
                                         _%L76236%_)
                                        (if (gx#identifier? _%hd7608576217%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g84213_|
                                                 _%hd7608576217%_)
                                                (if (gx#stx-pair?
                                                     _%tl7608976230%_)
                                                    (let ((_%e7610076149%_
                                                           (gx#syntax-e
                                                            _%tl7608976230%_)))
                                                      (let ((_%tl7610276156%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e7610076149%_)))
                    (_%hd7610176153%_
                     (let () (declare (not safe)) (##car _%e7610076149%_))))
                (if (gx#stx-pair? _%tl7610276156%_)
                    (let ((_%e7610376159%_ (gx#syntax-e _%tl7610276156%_)))
                      (let ((_%tl7610576166%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7610376159%_)))
                            (_%hd7610476163%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7610376159%_))))
                        (_%__match8315183152%_
                         _%e7608476213%_
                         _%hd7608576217%_
                         _%tl7608676220%_
                         _%e7608776223%_
                         _%hd7608876227%_
                         _%tl7608976230%_
                         _%e7610076149%_
                         _%hd7610176153%_
                         _%tl7610276156%_
                         _%e7610376159%_
                         _%hd7610476163%_
                         _%tl7610576166%_)))
                    (_%__kont8310983110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8310983110%_))
                                                (_%__kont8310983110%_))
                                            (_%__kont8310983110%_)))))))
                          (if (gx#stx-pair? _%__stx8310283103%_)
                              (let ((_%e7608476213%_
                                     (gx#syntax-e _%__stx8310283103%_)))
                                (let ((_%tl7608676220%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7608476213%_)))
                                      (_%hd7608576217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7608476213%_))))
                                  (if (gx#stx-pair? _%tl7608676220%_)
                                      (let ((_%e7608776223%_
                                             (gx#syntax-e _%tl7608676220%_)))
                                        (let ((_%tl7608976230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7608776223%_)))
                                              (_%hd7608876227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7608776223%_))))
                                          (_%__match8312383124%_
                                           _%e7608476213%_
                                           _%hd7608576217%_
                                           _%tl7608676220%_
                                           _%e7608776223%_
                                           _%hd7608876227%_
                                           _%tl7608976230%_)))
                                      (_%__kont8310983110%_))))
                              (_%__kont8310983110%_)))))))
                 (_%slot-contract-predicate69512%_
                  (lambda (_%slot-spec76063%_)
                    (let ((_%contract7606576067%_
                           (_%slot-contract69507%_ _%slot-spec76063%_)))
                      (if _%contract7606576067%_
                          (let ((_%contract76071%_ _%contract7606576067%_))
                            (_%contract-predicate69513%_ _%contract76071%_))
                          '#f))))
                 (_%contract-predicate69513%_
                  (lambda (_%contract75985%_)
                    (let* ((_%__stx8315483155%_ _%contract75985%_)
                           (_%g7598976004%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8315483155%_))))
                      (let ((_%__kont8315783158%_
                             (lambda (_%L76042%_ _%L76044%_) _%L76044%_))
                            (_%__kont8315983160%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx8315483155%_)
                            (let ((_%e7599376022%_
                                   (gx#syntax-e _%__stx8315483155%_)))
                              (let ((_%tl7599576029%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e7599376022%_)))
                                    (_%hd7599476026%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e7599376022%_))))
                                (if (gx#identifier? _%hd7599476026%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~TypedDefinitions[1]#_g84214_|
                                         _%hd7599476026%_)
                                        (if (gx#stx-pair? _%tl7599576029%_)
                                            (let ((_%e7599676032%_
                                                   (gx#syntax-e
                                                    _%tl7599576029%_)))
                                              (let ((_%tl7599876039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7599676032%_)))
                                                    (_%hd7599776036%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7599676032%_))))
                                                (_%__kont8315783158%_
                                                 _%tl7599876039%_
                                                 _%hd7599776036%_)))
                                            (_%__kont8315983160%_))
                                        (_%__kont8315983160%_))
                                    (_%__kont8315983160%_))))
                            (_%__kont8315983160%_))))))
                 (_%slot-default69514%_
                  (lambda (_%slot-spec75813%_)
                    (let* ((_%__stx8318083181%_ _%slot-spec75813%_)
                           (_%g7581875850%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8318083181%_))))
                      (let ((_%__kont8318383184%_
                             (lambda (_%L75966%_ _%L75968%_) _%L75966%_))
                            (_%__kont8318583186%_
                             (lambda (_%L75918%_ _%L75920%_) _%L75918%_))
                            (_%__kont8318983190%_ (lambda () '#f)))
                        (let* ((_%__match8323183232%_
                                (lambda (_%__splice8318783188%_
                                         _%target7583075868%_
                                         _%tl7583275871%_
                                         _%e7583975874%_
                                         _%hd7584075878%_
                                         _%tl7584175881%_
                                         _%e7584275884%_
                                         _%hd7584375888%_
                                         _%tl7584475891%_)
                                  (letrec ((_%loop7583375894%_
                                            (lambda (_%hd7583175898%_
                                                     _%id7583775901%_)
                                              (if (gx#stx-pair?
                                                   _%hd7583175898%_)
                                                  (let ((_%e7583475904%_
                                                         (gx#syntax-e
                                                          _%hd7583175898%_)))
                                                    (let ((_%lp-tl7583675911%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7583475904%_)))
                                                          (_%lp-hd7583575908%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7583475904%_))))
                                                      (_%loop7583375894%_
                                                       _%lp-tl7583675911%_
                                                       (cons _%lp-hd7583575908%_
                                                             _%id7583775901%_))))
                                                  (let ((_%id7583875914%_
                                                         (reverse _%id7583775901%_)))
                                                    (_%__kont8318583186%_
                                                     _%hd7584375888%_
                                                     _%id7583875914%_))))))
                                    (_%loop7583375894%_
                                     _%target7583075868%_
                                     '()))))
                               (_%g7581675939%_
                                (lambda ()
                                  (if (gx#stx-pair/null? _%__stx8318083181%_)
                                      (if (let ((__tmp84215
                                                 (gx#stx-length
                                                  _%__stx8318083181%_)))
                                            (declare (not safe))
                                            (##fx>= __tmp84215 '2))
                                          (let ((_%__splice8318783188%_
                                                 (gx#syntax-split-splice
                                                  _%__stx8318083181%_
                                                  '2)))
                                            (let ((_%tl7583275871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8318783188%_
                                                      '1)))
                                                  (_%target7583075868%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8318783188%_
                                                      '0))))
                                              (if (gx#stx-pair?
                                                   _%tl7583275871%_)
                                                  (let ((_%e7583975874%_
                                                         (gx#syntax-e
                                                          _%tl7583275871%_)))
                                                    (let ((_%tl7584175881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7583975874%_)))
                                                          (_%hd7584075878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7583975874%_))))
                                                      (if (gx#identifier?
                                                           _%hd7584075878%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/contract~TypedDefinitions[1]#_g84216_|
                                                               _%hd7584075878%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl7584175881%_)
                          (let ((_%e7584275884%_
                                 (gx#syntax-e _%tl7584175881%_)))
                            (let ((_%tl7584475891%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7584275884%_)))
                                  (_%hd7584375888%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7584275884%_))))
                              (if (gx#stx-null? _%tl7584475891%_)
                                  (_%__match8323183232%_
                                   _%__splice8318783188%_
                                   _%target7583075868%_
                                   _%tl7583275871%_
                                   _%e7583975874%_
                                   _%hd7584075878%_
                                   _%tl7584175881%_
                                   _%e7584275884%_
                                   _%hd7584375888%_
                                   _%tl7584475891%_)
                                  (_%__kont8318983190%_))))
                          (_%__kont8318983190%_))
                      (_%__kont8318983190%_))
                  (_%__kont8318983190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8318983190%_))))
                                          (_%__kont8318983190%_))
                                      (_%__kont8318983190%_)))))
                          (if (gx#stx-pair? _%__stx8318083181%_)
                              (let ((_%e7582275946%_
                                     (gx#syntax-e _%__stx8318083181%_)))
                                (let ((_%tl7582475953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7582275946%_)))
                                      (_%hd7582375950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7582275946%_))))
                                  (if (gx#stx-pair? _%tl7582475953%_)
                                      (let ((_%e7582575956%_
                                             (gx#syntax-e _%tl7582475953%_)))
                                        (let ((_%tl7582775963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7582575956%_)))
                                              (_%hd7582675960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7582575956%_))))
                                          (if (gx#stx-null? _%tl7582775963%_)
                                              (_%__kont8318383184%_
                                               _%hd7582675960%_
                                               _%hd7582375950%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7581675939%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7581675939%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g7581675939%_))))))))
                 (_%infer-slot-type69515%_
                  (lambda (_%slot75711%_ _%type-a75713%_ _%type-b75714%_)
                    (if (not _%type-a75713%_)
                        _%type-b75714%_
                        (if (not _%type-b75714%_)
                            _%type-a75713%_
                            (if (gx#free-identifier=?
                                 _%type-a75713%_
                                 _%type-b75714%_)
                                _%type-a75713%_
                                (let _%again75724%_ ((_%klass-a75727%_
                                                      (gx#syntax-local-value
                                                       _%type-a75713%_))
                                                     (_%klass-b75729%_
                                                      (gx#syntax-local-value
                                                       _%type-b75714%_)))
                                  (if (eq? _%klass-a75727%_ _%klass-b75729%_)
                                      _%type-a75713%_
                                      (if (let ()
                                            (declare (not safe))
                                            (class-instance?
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             _%klass-a75727%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (class-instance?
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 _%klass-b75729%_))
                                              (if (eq? (let ((__obj83945
                                                              _%klass-a75727%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-direct-instance-of?
                        __obj83945
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj83945 '1 '#f '#f))
                     (unchecked-slot-ref __obj83945 'id)))
               (let ((__obj83946 _%klass-b75729%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj83946
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj83946 '1 '#f '#f))
                     (unchecked-slot-ref __obj83946 'id))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-a75713%_
                                                  (if (member _%type-a75713%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/contract~ClassMeta#!class-precedence-list
                         _%klass-b75729%_))
                      gx#free-identifier=?)
              _%type-b75714%_
              (if (member _%type-b75714%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             _%klass-a75727%_))
                          gx#free-identifier=?)
                  _%type-a75713%_
                  (gx#raise-syntax-error
                   '#f
                   '"incompatible slot types"
                   _%stx69500%_
                   _%slot75711%_
                   _%type-a75713%_
                   _%type-b75714%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                     _%klass-b75729%_))
                                                  (let ((_%$e75747%_
                                                         (gx#syntax-local-value
                                                          (let ((__obj83943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%klass-b75729%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj83943
                           'gerbil/core/contract~TypeReference#type-reference::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj83943 '1 '#f '#f))
                        (unchecked-slot-ref __obj83943 'identifier)))
                  false)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%$e75747%_
                                                        ((lambda (_%klass-b75751%_)
                                                           (_%again75724%_
                                                            _%klass-a75727%_
                                                            _%klass-b75751%_))
                                                         _%$e75747%_)
                                                        (if (gx#free-identifier=?
                                                             _%type-a75713%_
                                                             (let ((__obj83944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%klass-b75729%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj83944
                              'gerbil/core/contract~TypeReference#type-reference::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref __obj83944 '1 '#f '#f))
                           (unchecked-slot-ref __obj83944 'identifier))))
                    _%type-a75713%_
                    (gx#raise-syntax-error
                     '#f
                     '"cannot resolve type reference to determine slot type compatibility"
                     _%stx69500%_
                     _%slot75711%_
                     _%type-a75713%_
                     _%type-b75714%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"incompatible slot types"
                                                   _%stx69500%_
                                                   _%slot75711%_
                                                   _%type-a75713%_
                                                   _%type-b75714%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (class-instance?
                                                 gerbil/core/contract~InterfaceInfo#interface-info::t
                                                 _%klass-a75727%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                                     _%klass-b75729%_))
                                                  (if (member _%type-a75713%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
                         _%klass-b75729%_)))
              _%type-b75714%_
              (if (member _%type-b75714%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
                             _%klass-a75727%_)))
                  _%type-a75713%_
                  (gx#raise-syntax-error
                   '#f
                   '"incompatible slot types"
                   _%stx69500%_
                   _%slot75711%_
                   _%type-a75713%_
                   _%type-b75714%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                         _%klass-b75729%_))
                                                      (let ((_%$e75772%_
                                                             (gx#syntax-local-value
                                                              (let ((__obj83941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%klass-b75729%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj83941
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj83941
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj83941 'identifier)))
                      false)))
                (if _%$e75772%_
                    ((lambda (_%klass-b75776%_)
                       (_%again75724%_ _%klass-a75727%_ _%klass-b75776%_))
                     _%$e75772%_)
                    (if (gx#free-identifier=?
                         _%type-a75713%_
                         (let ((__obj83942 _%klass-b75729%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj83942
                                  'gerbil/core/contract~TypeReference#type-reference::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj83942
                                  '1
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj83942 'identifier))))
                        _%type-a75713%_
                        (gx#raise-syntax-error
                         '#f
                         '"cannot resolve type reference to determine slot type compatibility"
                         _%stx69500%_
                         _%slot75711%_
                         _%type-a75713%_
                         _%type-b75714%_))))
              (gx#raise-syntax-error
               '#f
               '"incompatible slot types"
               _%stx69500%_
               _%slot75711%_
               _%type-a75713%_
               _%type-b75714%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                     _%klass-a75727%_))
                                                  (let ((_%$e75787%_
                                                         (gx#syntax-local-value
                                                          (let ((__obj83936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%klass-a75727%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj83936
                           'gerbil/core/contract~TypeReference#type-reference::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj83936 '1 '#f '#f))
                        (unchecked-slot-ref __obj83936 'identifier)))
                  false)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%$e75787%_
                                                        ((lambda (_%klass-a75791%_)
                                                           (_%again75724%_
                                                            _%klass-a75791%_
                                                            _%klass-b75729%_))
                                                         _%$e75787%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (class-instance?
                                                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                               _%klass-b75729%_))
                                                            (let ((_%$e75796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-local-value
                            (let ((__obj83938 _%klass-b75729%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj83938
                                     'gerbil/core/contract~TypeReference#type-reference::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj83938
                                     '1
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref __obj83938 'identifier)))
                            false)))
                      (if _%$e75796%_
                          ((lambda (_%klass-b75800%_)
                             (_%again75724%_
                              _%klass-a75727%_
                              _%klass-b75800%_))
                           _%$e75796%_)
                          (if (gx#free-identifier=?
                               (let ((__obj83939 _%klass-a75727%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj83939
                                        'gerbil/core/contract~TypeReference#type-reference::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj83939
                                        '1
                                        '#f
                                        '#f))
                                     (unchecked-slot-ref
                                      __obj83939
                                      'identifier)))
                               (let ((__obj83940 _%klass-b75729%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj83940
                                        'gerbil/core/contract~TypeReference#type-reference::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj83940
                                        '1
                                        '#f
                                        '#f))
                                     (unchecked-slot-ref
                                      __obj83940
                                      'identifier))))
                              _%type-a75713%_
                              (gx#raise-syntax-error
                               '#f
                               '"cannot resolve type reference to determine slot type compatibility"
                               _%stx69500%_
                               _%slot75711%_
                               _%type-a75713%_
                               _%type-b75714%_))))
                    (if (gx#free-identifier=?
                         _%type-b75714%_
                         (let ((__obj83937 _%klass-a75727%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj83937
                                  'gerbil/core/contract~TypeReference#type-reference::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj83937
                                  '1
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj83937 'identifier))))
                        _%type-b75714%_
                        (gx#raise-syntax-error
                         '#f
                         '"cannot resolve type reference to determine slot type compatibility"
                         _%stx69500%_
                         _%slot75711%_
                         _%type-a75713%_
                         _%type-b75714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"unexpected slot type"
                                                   _%stx69500%_
                                                   _%slot75711%_
                                                   _%type-a75713%_
                                                   _%klass-a75727%_)))))))))))
                 (_%get-mixin-slots69516%_
                  (lambda (_%super75582%_)
                    (letrec* ((_%tab75585%_ (make-hash-table-eq)))
                      (let _%loop75588%_ ((_%rest75591%_ _%super75582%_)
                                          (_%result75593%_ '()))
                        (let* ((_%rest7559475602%_ _%rest75591%_)
                               (_%else7559675614%_
                                (lambda ()
                                  (values (reverse! _%result75593%_)
                                          _%tab75585%_)))
                               (_%K7559875695%_
                                (lambda (_%rest75618%_ _%type-id75620%_)
                                  (let* ((_%klass75622%_
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                             _%stx69500%_
                                             _%type-id75620%_)))
                                         (_%slots75625%_
                                          (let ((__obj83947 _%klass75622%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj83947
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj83947
                                                   '4
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj83947
                                                 'slots)))))
                                    (let _%loop-inner75630%_ ((_%rest-slots75633%_
                                                               _%slots75625%_)
                                                              (_%result75635%_
                                                               _%result75593%_))
                                      (let* ((_%rest-slots7563675644%_
                                              _%rest-slots75633%_)
                                             (_%else7563875656%_
                                              (lambda ()
                                                (_%loop75588%_
                                                 (foldr cons
                                                        _%rest75618%_
                                                        (let ((__obj83948
                                                               _%klass75622%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj83948
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj83948 '3 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj83948
                       'super))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%result75635%_)))
                                             (_%K7564075679%_
                                              (lambda (_%rest-slots75660%_
                                                       _%slot75662%_)
                                                (let ((_%slot-type75664%_
                                                       (hash-ref
                                                        _%tab75585%_
                                                        _%slot75662%_
                                                        absent-value)))
                                                  (if (eq? _%slot-type75664%_
                                                           absent-value)
                                                      (let ()
                                                        (hash-put!
                                                         _%tab75585%_
                                                         _%slot75662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                            _%klass75622%_
                                                            _%slot75662%_)))
                                                        (_%loop-inner75630%_
                                                         _%rest-slots75660%_
                                                         (cons _%slot75662%_
                                                               _%result75635%_)))
                                                      (if (not _%slot-type75664%_)
                                                          (let ()
                                                            (hash-put!
                                                             _%tab75585%_
                                                             _%slot75662%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (|gerbil/core/contract~Using[1]#!class-slot-type|
                        _%klass75622%_
                        _%slot75662%_)))
                    (_%loop-inner75630%_ _%rest-slots75660%_ _%result75635%_))
                  (let* ((_%other-slot-type75673%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                             _%klass75622%_
                             _%slot75662%_)))
                         (_%slot-type75676%_
                          (_%infer-slot-type69515%_
                           _%slot75662%_
                           _%other-slot-type75673%_
                           _%slot-type75664%_)))
                    (hash-put! _%tab75585%_ _%slot75662%_ _%slot-type75676%_)
                    (_%loop-inner75630%_
                     _%rest-slots75660%_
                     _%result75635%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (pair? _%rest-slots7563675644%_)
                                            (let ((_%hd7564175683%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-slots7563675644%_)))
                                                  (_%tl7564275686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-slots7563675644%_))))
                                              (let* ((_%slot75689%_
                                                      _%hd7564175683%_)
                                                     (_%rest-slots75692%_
                                                      _%tl7564275686%_))
                                                (_%K7564075679%_
                                                 _%rest-slots75692%_
                                                 _%slot75689%_)))
                                            (_%else7563875656%_))))))))
                          (if (pair? _%rest7559475602%_)
                              (let ((_%hd7559975699%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest7559475602%_)))
                                    (_%tl7560075702%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest7559475602%_))))
                                (let* ((_%type-id75705%_ _%hd7559975699%_)
                                       (_%rest75708%_ _%tl7560075702%_))
                                  (_%K7559875695%_
                                   _%rest75708%_
                                   _%type-id75705%_)))
                              (_%else7559675614%_)))))))
                 (_%get-slot-table69517%_
                  (lambda (_%slots75525%_
                           _%mixin-slots75527%_
                           _%super75528%_
                           _%contract-e75529%_
                           _%getf75530%_
                           _%mixf75531%_)
                    (letrec* ((_%tab75533%_ (make-hash-table-eq)))
                      (for-each
                       (lambda (_%slot75536%_)
                         (for-each
                          (lambda (_%super-type75539%_)
                            (let* ((_%klass75542%_
                                    (gx#syntax-local-value
                                     _%super-type75539%_))
                                   (_%$e75545%_
                                    (hash-get _%tab75533%_ _%slot75536%_)))
                              (if _%$e75545%_
                                  ((lambda (_%a75549%_)
                                     (let ((_%$e75552%_
                                            (_%getf75530%_
                                             _%klass75542%_
                                             _%slot75536%_)))
                                       (if _%$e75552%_
                                           ((lambda (_%b75556%_)
                                              (hash-put!
                                               _%tab75533%_
                                               _%slot75536%_
                                               (_%mixf75531%_
                                                _%slot75536%_
                                                _%a75549%_
                                                _%b75556%_)))
                                            _%$e75552%_)
                                           '#!void)))
                                   _%$e75545%_)
                                  (let ((_%$e75559%_
                                         (_%getf75530%_
                                          _%klass75542%_
                                          _%slot75536%_)))
                                    (if _%$e75559%_
                                        ((lambda (_%a75563%_)
                                           (hash-put!
                                            _%tab75533%_
                                            _%slot75536%_
                                            _%a75563%_))
                                         _%$e75559%_)
                                        '#!void)))))
                          _%super75528%_))
                       _%mixin-slots75527%_)
                      (for-each
                       (lambda (_%slot-spec75566%_)
                         (let ((_%slot75569%_
                                (_%slot-name69506%_ _%slot-spec75566%_))
                               (_%a75571%_
                                (_%contract-e75529%_ _%slot-spec75566%_)))
                           (if _%a75571%_
                               (let ((_%$e75573%_
                                      (hash-get _%tab75533%_ _%slot75569%_)))
                                 (if _%$e75573%_
                                     ((lambda (_%b75577%_)
                                        (hash-put!
                                         _%tab75533%_
                                         _%slot75569%_
                                         (_%mixf75531%_
                                          _%slot75569%_
                                          _%a75571%_
                                          _%b75577%_)))
                                      _%$e75573%_)
                                     (hash-put!
                                      _%tab75533%_
                                      _%slot75569%_
                                      _%a75571%_)))
                               '#!void)))
                       _%slots75525%_)
                      _%tab75533%_)))
                 (_%get-slot-contracts69518%_
                  (lambda (_%slots73961%_
                           _%mixin-slots73963%_
                           _%super73964%_
                           _%slot-type-table73965%_)
                    (_%get-slot-table69517%_
                     _%slots73961%_
                     _%mixin-slots73963%_
                     _%super73964%_
                     _%slot-contract-normalize69508%_
                     |gerbil/core/contract~Using[1]#!class-slot-contract|
                     (lambda (_%slot73967%_ _%a73969%_ _%b73970%_)
                       (let* ((_%__stx8350283503%_ _%a73969%_)
                              (_%g7403274085%_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx8350283503%_))))
                         (let ((_%__kont8350583506%_
                                (lambda ()
                                  (let* ((_%__stx8347083471%_ _%b73970%_)
                                         (_%g7535575373%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8347083471%_))))
                                    (let ((_%__kont8347383474%_
                                           (lambda (_%L75467%_)
                                             (let* ((_%g7548675494%_
                                                     (lambda (_%g7548775490%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7548775490%_)))
                                                    (_%g7548575513%_
                                                     (lambda (_%g7548775498%_)
                                                       ((lambda (_%L75501%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':)
                        (cons _%L75501%_ '())))
                _%g7548775498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7548575513%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_)))))
                                          (_%__kont8347583476%_
                                           (lambda (_%L75400%_)
                                             (let* ((_%g7541975427%_
                                                     (lambda (_%g7542075423%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7542075423%_)))
                                                    (_%g7541875446%_
                                                     (lambda (_%g7542075431%_)
                                                       ((lambda (_%L75434%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75400%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L75434%_ '())))))
                _%g7542075431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7541875446%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_))))))
                                      (let ((_%__match8348383484%_
                                             (lambda (_%e7535875457%_
                                                      _%hd7535975461%_
                                                      _%tl7536075464%_)
                                               (let ((_%L75467%_
                                                      _%hd7535975461%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L75467%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L75467%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L75467%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8347383474%_
                                                      _%L75467%_)
                                                     (if (gx#identifier?
                                                          _%hd7535975461%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/contract~TypedDefinitions[1]#_g84217_|
                                                              _%hd7535975461%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%tl7536075464%_)
                         (let ((_%e7536575390%_
                                (gx#syntax-e _%tl7536075464%_)))
                           (let ((_%tl7536775397%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7536575390%_)))
                                 (_%hd7536675394%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7536575390%_))))
                             (_%__kont8347583476%_ _%hd7536675394%_)))
                         (let () (declare (not safe)) (_%g7535575373%_)))
                     (let () (declare (not safe)) (_%g7535575373%_)))
                 (let () (declare (not safe)) (_%g7535575373%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair? _%__stx8347083471%_)
                                            (let ((_%e7535875457%_
                                                   (gx#syntax-e
                                                    _%__stx8347083471%_)))
                                              (let ((_%tl7536075464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7535875457%_)))
                                                    (_%hd7535975461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7535875457%_))))
                                                (_%__match8348383484%_
                                                 _%e7535875457%_
                                                 _%hd7535975461%_
                                                 _%tl7536075464%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g7535575373%_))))))))
                               (_%__kont8350783508%_
                                (lambda ()
                                  (let* ((_%__stx8342283423%_ _%b73970%_)
                                         (_%g7515175171%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8342283423%_))))
                                    (let ((_%__kont8342583426%_
                                           (lambda ()
                                             (let* ((_%g7529375301%_
                                                     (lambda (_%g7529475297%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7529475297%_)))
                                                    (_%g7529275325%_
                                                     (lambda (_%g7529475305%_)
                                                       ((lambda (_%L75308%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':?)
                        (cons _%L75308%_ '())))
                _%g7529475305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7529275325%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_)))))
                                          (_%__kont8342783428%_
                                           (lambda (_%L75219%_)
                                             (let* ((_%g7524175249%_
                                                     (lambda (_%g7524275245%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7524275245%_)))
                                                    (_%g7524075268%_
                                                     (lambda (_%g7524275253%_)
                                                       ((lambda (_%L75256%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75219%_
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L75256%_ '())))))
                _%g7524275253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7524075268%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_)))))
                                          (_%__kont8342983430%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69500%_
                                              _%slot73967%_
                                              _%a73969%_
                                              _%b73970%_))))
                                      (if (gx#stx-pair? _%__stx8342283423%_)
                                          (let ((_%e7515375279%_
                                                 (gx#syntax-e
                                                  _%__stx8342283423%_)))
                                            (let ((_%tl7515575286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7515375279%_)))
                                                  (_%hd7515475283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7515375279%_))))
                                              (if (gx#identifier?
                                                   _%hd7515475283%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g84218_|
                                                       _%hd7515475283%_)
                                                      (_%__kont8342583426%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypedDefinitions[1]#_g84219_|
                                                           _%hd7515475283%_)
                                                          (if (gx#stx-pair?
                                                               _%tl7515575286%_)
                                                              (let ((_%e7516075199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl7515575286%_)))
                        (let ((_%tl7516275206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7516075199%_)))
                              (_%hd7516175203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7516075199%_))))
                          (if (gx#stx-pair? _%tl7516275206%_)
                              (let ((_%e7516375209%_
                                     (gx#syntax-e _%tl7516275206%_)))
                                (let ((_%tl7516575216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7516375209%_)))
                                      (_%hd7516475213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7516375209%_))))
                                  (if (gx#identifier? _%hd7516475213%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g84220_|
                                           _%hd7516475213%_)
                                          (_%__kont8342783428%_
                                           _%hd7516175203%_)
                                          (_%__kont8342983430%_))
                                      (_%__kont8342983430%_))))
                              (_%__kont8342983430%_))))
                      (_%__kont8342983430%_))
                  (_%__kont8342983430%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8342983430%_))))
                                          (_%__kont8342983430%_))))))
                               (_%__kont8350983510%_
                                (lambda ()
                                  (let* ((_%__stx8339083391%_ _%b73970%_)
                                         (_%g7495974978%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8339083391%_))))
                                    (let ((_%__kont8339383394%_
                                           (lambda (_%L75074%_)
                                             (let* ((_%g7509375101%_
                                                     (lambda (_%g7509475097%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7509475097%_)))
                                                    (_%g7509275120%_
                                                     (lambda (_%g7509475105%_)
                                                       ((lambda (_%L75108%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':-)
                        (cons _%L75108%_ '())))
                _%g7509475105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7509275120%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_)))))
                                          (_%__kont8339583396%_
                                           (lambda (_%L75005%_ _%L75007%_)
                                             (let* ((_%g7502675034%_
                                                     (lambda (_%g7502775030%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7502775030%_)))
                                                    (_%g7502575053%_
                                                     (lambda (_%g7502775038%_)
                                                       ((lambda (_%L75041%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75007%_
                              (cons (gx#datum->syntax '#f ':-)
                                    (cons _%L75041%_ '())))))
                _%g7502775038%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7502575053%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_))))))
                                      (let ((_%__match8340383404%_
                                             (lambda (_%e7496275064%_
                                                      _%hd7496375068%_
                                                      _%tl7496475071%_)
                                               (let ((_%L75074%_
                                                      _%hd7496375068%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L75074%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L75074%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L75074%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8339383394%_
                                                      _%L75074%_)
                                                     (if (gx#identifier?
                                                          _%hd7496375068%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/contract~TypedDefinitions[1]#_g84221_|
                                                              _%hd7496375068%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%tl7496475071%_)
                         (let ((_%e7497074995%_
                                (gx#syntax-e _%tl7496475071%_)))
                           (let ((_%tl7497275002%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7497074995%_)))
                                 (_%hd7497174999%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7497074995%_))))
                             (_%__kont8339583396%_
                              _%tl7497275002%_
                              _%hd7497174999%_)))
                         (let () (declare (not safe)) (_%g7495974978%_)))
                     (let () (declare (not safe)) (_%g7495974978%_)))
                 (let () (declare (not safe)) (_%g7495974978%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair? _%__stx8339083391%_)
                                            (let ((_%e7496275064%_
                                                   (gx#syntax-e
                                                    _%__stx8339083391%_)))
                                              (let ((_%tl7496475071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7496275064%_)))
                                                    (_%hd7496375068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7496275064%_))))
                                                (_%__match8340383404%_
                                                 _%e7496275064%_
                                                 _%hd7496375068%_
                                                 _%tl7496475071%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g7495974978%_))))))))
                               (_%__kont8351183512%_
                                (lambda (_%L74786%_)
                                  (let* ((_%__stx8336483365%_ _%b73970%_)
                                         (_%g7480274816%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8336483365%_))))
                                    (let ((_%__kont8336783368%_
                                           (lambda (_%L74889%_)
                                             (let* ((_%g7490274910%_
                                                     (lambda (_%g7490374906%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7490374906%_)))
                                                    (_%g7490174929%_
                                                     (lambda (_%g7490374914%_)
                                                       ((lambda (_%L74917%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74786%_
                                                      (cons _%L74889%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74917%_ '())))))
                _%g7490374914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7490174929%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_)))))
                                          (_%__kont8336983370%_
                                           (lambda ()
                                             (let* ((_%g7482774835%_
                                                     (lambda (_%g7482874831%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7482874831%_)))
                                                    (_%g7482674858%_
                                                     (lambda (_%g7482874839%_)
                                                       ((lambda (_%L74842%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74786%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74842%_ '())))))
                _%g7482874839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7482674858%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_))))))
                                      (if (gx#stx-pair? _%__stx8336483365%_)
                                          (let ((_%e7480574869%_
                                                 (gx#syntax-e
                                                  _%__stx8336483365%_)))
                                            (let ((_%tl7480774876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7480574869%_)))
                                                  (_%hd7480674873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7480574869%_))))
                                              (if (gx#identifier?
                                                   _%hd7480674873%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g84222_|
                                                       _%hd7480674873%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7480774876%_)
                                                          (let ((_%e7480874879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7480774876%_)))
                    (let ((_%tl7481074886%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7480874879%_)))
                          (_%hd7480974883%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7480874879%_))))
                      (_%__kont8336783368%_ _%hd7480974883%_)))
                  (_%__kont8336983370%_))
              (_%__kont8336983370%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8336983370%_))))
                                          (_%__kont8336983370%_))))))
                               (_%__kont8351383514%_
                                (lambda (_%L74507%_)
                                  (let* ((_%__stx8329883299%_ _%b73970%_)
                                         (_%g7452574552%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8329883299%_))))
                                    (let ((_%__kont8330183302%_
                                           (lambda ()
                                             (let* ((_%g7470974717%_
                                                     (lambda (_%g7471074713%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7471074713%_)))
                                                    (_%g7470874741%_
                                                     (lambda (_%g7471074721%_)
                                                       ((lambda (_%L74724%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74507%_
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L74724%_ '())))))
                _%g7471074721%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7470874741%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_)))))
                                          (_%__kont8330383304%_
                                           (lambda (_%L74642%_)
                                             (let* ((_%g7465774665%_
                                                     (lambda (_%g7465874661%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7465874661%_)))
                                                    (_%g7465674684%_
                                                     (lambda (_%g7465874669%_)
                                                       ((lambda (_%L74672%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74507%_
                                                      (cons _%L74642%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L74672%_ '())))))
                _%g7465874669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7465674684%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_)))))
                                          (_%__kont8330583306%_
                                           (lambda (_%L74590%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69500%_
                                              _%slot73967%_
                                              _%a73969%_
                                              _%b73970%_)))
                                          (_%__kont8330783308%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69500%_
                                              _%slot73967%_
                                              _%a73969%_
                                              _%b73970%_))))
                                      (if (gx#stx-pair? _%__stx8329883299%_)
                                          (let ((_%e7452774695%_
                                                 (gx#syntax-e
                                                  _%__stx8329883299%_)))
                                            (let ((_%tl7452974702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7452774695%_)))
                                                  (_%hd7452874699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7452774695%_))))
                                              (if (gx#identifier?
                                                   _%hd7452874699%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g84223_|
                                                       _%hd7452874699%_)
                                                      (_%__kont8330183302%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypedDefinitions[1]#_g84224_|
                                                           _%hd7452874699%_)
                                                          (if (gx#stx-pair?
                                                               _%tl7452974702%_)
                                                              (let ((_%e7453474622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl7452974702%_)))
                        (let ((_%tl7453674629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7453474622%_)))
                              (_%hd7453574626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7453474622%_))))
                          (if (gx#stx-pair? _%tl7453674629%_)
                              (let ((_%e7453774632%_
                                     (gx#syntax-e _%tl7453674629%_)))
                                (let ((_%tl7453974639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7453774632%_)))
                                      (_%hd7453874636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7453774632%_))))
                                  (if (gx#identifier? _%hd7453874636%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g84225_|
                                           _%hd7453874636%_)
                                          (_%__kont8330383304%_
                                           _%hd7453574626%_)
                                          (_%__kont8330583306%_
                                           _%hd7453574626%_))
                                      (_%__kont8330583306%_
                                       _%hd7453574626%_))))
                              (_%__kont8330583306%_ _%hd7453574626%_))))
                      (_%__kont8330783308%_))
                  (_%__kont8330783308%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8330783308%_))))
                                          (_%__kont8330783308%_))))))
                               (_%__kont8351583516%_
                                (lambda (_%L74324%_)
                                  (let* ((_%__stx8326683267%_ _%b73970%_)
                                         (_%g7434074358%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8326683267%_))))
                                    (let ((_%__kont8326983270%_
                                           (lambda (_%L74447%_)
                                             (let ((_%$e74458%_
                                                    (gx#free-identifier=?
                                                     _%L74447%_
                                                     (gx#datum->syntax
                                                      '#f
                                                      ':))))
                                               (if _%$e74458%_
                                                   _%$e74458%_
                                                   (let ((_%$e74462%_
                                                          (gx#free-identifier=?
                                                           _%L74447%_
                                                           (gx#datum->syntax
                                                            '#f
                                                            ':?))))
                                                     (if _%$e74462%_
                                                         _%$e74462%_
                                                         (gx#free-identifier=?
                                                          _%L74447%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-))))))))
                                          (_%__kont8327183272%_
                                           (lambda (_%L74385%_)
                                             (let* ((_%g7439974407%_
                                                     (lambda (_%g7440074403%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7440074403%_)))
                                                    (_%g7439874426%_
                                                     (lambda (_%g7440074411%_)
                                                       ((lambda (_%L74414%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74324%_
                                                      (cons _%L74385%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':-)
                                    (cons _%L74414%_ '())))))
                _%g7440074411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7439874426%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_))))))
                                      (if (gx#stx-pair? _%__stx8326683267%_)
                                          (let ((_%e7434374437%_
                                                 (gx#syntax-e
                                                  _%__stx8326683267%_)))
                                            (let ((_%tl7434574444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7434374437%_)))
                                                  (_%hd7434474441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7434374437%_))))
                                              (_%__kont8326983270%_
                                               _%hd7434474441%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7434074358%_)))))))
                               (_%__kont8351783518%_
                                (lambda (_%L74112%_)
                                  (let* ((_%__stx8323483235%_ _%b73970%_)
                                         (_%g7412674144%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8323483235%_))))
                                    (let ((_%__kont8323783238%_
                                           (lambda (_%L74227%_ _%L74229%_)
                                             (let* ((_%g7425274260%_
                                                     (lambda (_%g7425374256%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7425374256%_)))
                                                    (_%g7425174279%_
                                                     (lambda (_%g7425374264%_)
                                                       ((lambda (_%L74267%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74112%_
                                                      (cons _%L74229%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74267%_ '())))))
                _%g7425374264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7425174279%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_)))))
                                          (_%__kont8323983240%_
                                           (lambda ()
                                             (let* ((_%g7415574163%_
                                                     (lambda (_%g7415674159%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7415674159%_)))
                                                    (_%g7415474186%_
                                                     (lambda (_%g7415674167%_)
                                                       ((lambda (_%L74170%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74112%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74170%_ '())))))
                _%g7415674167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7415474186%_
                                                (hash-ref
                                                 _%slot-type-table73965%_
                                                 _%slot73967%_))))))
                                      (let ((_%__match8326383264%_
                                             (lambda (_%e7413074197%_
                                                      _%hd7413174201%_
                                                      _%tl7413274204%_
                                                      _%e7413374207%_
                                                      _%hd7413474211%_
                                                      _%tl7413574214%_
                                                      _%e7413674217%_
                                                      _%hd7413774221%_
                                                      _%tl7413874224%_)
                                               (let ((_%L74227%_
                                                      _%hd7413774221%_)
                                                     (_%L74229%_
                                                      _%hd7413474211%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L74227%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L74227%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L74227%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8323783238%_
                                                      _%L74227%_
                                                      _%L74229%_)
                                                     (_%__kont8323983240%_))))))
                                        (if (gx#stx-pair? _%__stx8323483235%_)
                                            (let ((_%e7413074197%_
                                                   (gx#syntax-e
                                                    _%__stx8323483235%_)))
                                              (let ((_%tl7413274204%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7413074197%_)))
                                                    (_%hd7413174201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7413074197%_))))
                                                (if (gx#identifier?
                                                     _%hd7413174201%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g84226_|
                                                         _%hd7413174201%_)
                                                        (if (gx#stx-pair?
                                                             _%tl7413274204%_)
                                                            (let ((_%e7413374207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl7413274204%_)))
                      (let ((_%tl7413574214%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7413374207%_)))
                            (_%hd7413474211%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7413374207%_))))
                        (if (gx#stx-pair? _%tl7413574214%_)
                            (let ((_%e7413674217%_
                                   (gx#syntax-e _%tl7413574214%_)))
                              (let ((_%tl7413874224%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e7413674217%_)))
                                    (_%hd7413774221%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e7413674217%_))))
                                (_%__match8326383264%_
                                 _%e7413074197%_
                                 _%hd7413174201%_
                                 _%tl7413274204%_
                                 _%e7413374207%_
                                 _%hd7413474211%_
                                 _%tl7413574214%_
                                 _%e7413674217%_
                                 _%hd7413774221%_
                                 _%tl7413874224%_)))
                            (_%__kont8323983240%_))))
                    (_%__kont8323983240%_))
                (_%__kont8323983240%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8323983240%_))))
                                            (_%__kont8323983240%_))))))))
                           (if (gx#stx-pair? _%__stx8350283503%_)
                               (let ((_%e7403475340%_
                                      (gx#syntax-e _%__stx8350283503%_)))
                                 (let ((_%tl7403675347%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7403475340%_)))
                                       (_%hd7403575344%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7403475340%_))))
                                   (if (gx#identifier? _%hd7403575344%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/contract~TypedDefinitions[1]#_g84227_|
                                            _%hd7403575344%_)
                                           (_%__kont8350583506%_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core/contract~TypedDefinitions[1]#_g84228_|
                                                _%hd7403575344%_)
                                               (_%__kont8350783508%_)
                                               (if (gx#free-identifier=?
                                                    |gerbil/core/contract~TypedDefinitions[1]#_g84229_|
                                                    _%hd7403575344%_)
                                                   (_%__kont8350983510%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/contract~TypedDefinitions[1]#_g84230_|
                                                        _%hd7403575344%_)
                                                       (if (gx#stx-pair?
                                                            _%tl7403675347%_)
                                                           (let ((_%e7404774766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl7403675347%_)))
                     (let ((_%tl7404974773%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e7404774766%_)))
                           (_%hd7404874770%_
                            (let ()
                              (declare (not safe))
                              (##car _%e7404774766%_))))
                       (if (gx#stx-pair? _%tl7404974773%_)
                           (let ((_%e7405074776%_
                                  (gx#syntax-e _%tl7404974773%_)))
                             (let ((_%tl7405274783%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e7405074776%_)))
                                   (_%hd7405174780%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e7405074776%_))))
                               (if (gx#identifier? _%hd7405174780%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/contract~TypedDefinitions[1]#_g84231_|
                                        _%hd7405174780%_)
                                       (_%__kont8351183512%_ _%hd7404874770%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/contract~TypedDefinitions[1]#_g84232_|
                                            _%hd7405174780%_)
                                           (_%__kont8351383514%_
                                            _%hd7404874770%_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core/contract~TypedDefinitions[1]#_g84233_|
                                                _%hd7405174780%_)
                                               (_%__kont8351583516%_
                                                _%hd7404874770%_)
                                               (_%__kont8351783518%_
                                                _%hd7404874770%_))))
                                   (_%__kont8351783518%_ _%hd7404874770%_))))
                           (_%__kont8351783518%_ _%hd7404874770%_))))
                   (let () (declare (not safe)) (_%g7403274085%_)))
               (let () (declare (not safe)) (_%g7403274085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ()
                                         (declare (not safe))
                                         (_%g7403274085%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g7403274085%_)))))))))
                 (_%get-slot-defaults69519%_
                  (lambda (_%slots73951%_ _%mixin-slots73953%_ _%super73954%_)
                    (_%get-slot-table69517%_
                     _%slots73951%_
                     _%mixin-slots73953%_
                     _%super73954%_
                     _%slot-default69514%_
                     |gerbil/core/contract~Using[1]#!class-slot-default|
                     (lambda (_%slot73956%_ _%a73958%_ _%b73959%_)
                       _%a73958%_))))
                 (_%update-slot-types!69520%_
                  (lambda (_%slots73921%_ _%slot-type-table73923%_)
                    (for-each
                     (lambda (_%slot-spec73925%_)
                       (let* ((_%slot73928%_
                               (_%slot-name69506%_ _%slot-spec73925%_))
                              (_%slot-type7393073932%_
                               (_%slot-contract-type69510%_
                                _%slot-spec73925%_)))
                         (if _%slot-type7393073932%_
                             (let* ((_%slot-type73936%_
                                     _%slot-type7393073932%_)
                                    (_%$e73939%_
                                     (hash-get
                                      _%slot-type-table73923%_
                                      _%slot73928%_)))
                               (if _%$e73939%_
                                   ((lambda (_%other-slot-type73943%_)
                                      (let ((_%slot-type73946%_
                                             (_%infer-slot-type69515%_
                                              _%slot73928%_
                                              _%other-slot-type73943%_
                                              _%slot-type73936%_)))
                                        (hash-put!
                                         _%slot-type-table73923%_
                                         _%slot73928%_
                                         _%slot-type73946%_)))
                                    _%$e73939%_)
                                   (hash-put!
                                    _%slot-type-table73923%_
                                    _%slot73928%_
                                    _%slot-type73936%_)))
                             '#f)))
                     _%slots73921%_)))
                 (_%syntax-local-value/context69521%_
                  (lambda (_%id73915%_)
                    (gx#syntax-local-value
                     _%id73915%_
                     (lambda (_%id73918%_)
                       (gx#raise-syntax-error
                        '#f
                        '"not a class meta type binding"
                        _%stx69500%_
                        _%id73918%_)))))
                 (_%order-slots69522%_
                  (lambda (_%slots73846%_ _%super73848%_)
                    (let ((_g84234_
                           (c4-linearize
                            '()
                            _%super73848%_
                            'get-precedence-list:
                            (lambda (_%klass-id73850%_)
                              (cons _%klass-id73850%_
                                    (let ((__tmp84236
                                           (_%syntax-local-value/context69521%_
                                            _%klass-id73850%_)))
                                      (declare (not safe))
                                      (gerbil/core/contract~ClassMeta#!class-precedence-list
                                       __tmp84236))))
                            'struct:
                            (lambda (_%klass-id73853%_)
                              (let ((__obj83949
                                     (_%syntax-local-value/context69521%_
                                      _%klass-id73853%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj83949
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj83949
                                       '7
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj83949
                                     'struct?))))
                            'eq:
                            gx#free-identifier=?
                            'get-name:
                            gx#stx-e)))
                      (begin
                        (let ((_g84235_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g84234_)
                                     (##vector-length _g84234_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g84235_ 2)))
                              (error "Context expects 2 values" _g84235_)))
                        (let ((_%precedence-list73856%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g84234_ 0)))
                              (_%base-struct73858%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g84234_ 1))))
                          (let* ((_%base-fields73872%_
                                  (if _%base-struct73858%_
                                      (let* ((_%klass73860%_
                                              (gx#syntax-local-value
                                               _%base-struct73858%_))
                                             (_%$e73863%_
                                              (let ((__obj83950
                                                     _%klass73860%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj83950
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj83950
                                                       '6
                                                       '#f
                                                       '#f))
                                                    (class-slot-ref
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj83950
                                                     'ordered-slots)))))
                                        (if _%$e73863%_
                                            _%$e73863%_
                                            (let ((_%ordered73869%_
                                                   (_%order-slots69522%_
                                                    (let ((__obj83951
                                                           _%klass73860%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj83951
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj83951
                                                             '4
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj83951
                                                           'slots)))
                                                    (let ((__obj83952
                                                           _%klass73860%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj83952
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj83952
                                                             '3
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj83952
                                                           'super))))))
                                              (let ((__obj83953
                                                     _%klass73860%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj83953
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-set!
                                                       __obj83953
                                                       _%ordered73869%_
                                                       '6
                                                       '#f
                                                       '#f))
                                                    (class-slot-set!
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj83953
                                                     'ordered-slots
                                                     _%ordered73869%_)))
                                              _%ordered73869%_)))
                                      '()))
                                 (_%r-fields73875%_
                                  (reverse _%base-fields73872%_))
                                 (_%seen-slots73886%_
                                  (let ((_%tab73878%_ (make-hash-table-eq)))
                                    (for-each
                                     (lambda (_%g7388073882%_)
                                       (hash-put!
                                        _%tab73878%_
                                        _%g7388073882%_
                                        '#t))
                                     _%base-fields73872%_)
                                    _%tab73878%_))
                                 (_%process-slot73892%_
                                  (lambda (_%slot73889%_)
                                    (if (hash-get
                                         _%seen-slots73886%_
                                         _%slot73889%_)
                                        '#!void
                                        (begin
                                          (hash-put!
                                           _%seen-slots73886%_
                                           _%slot73889%_
                                           '#t)
                                          (set! _%r-fields73875%_
                                                (cons _%slot73889%_
                                                      _%r-fields73875%_)))))))
                            (for-each
                             (lambda (_%mixin73897%_)
                               (let ((_%klass73900%_
                                      (gx#syntax-local-value _%mixin73897%_)))
                                 (if (let ((__obj83954 _%klass73900%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj83954
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj83954
                                              '7
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj83954
                                            'struct?)))
                                     '#!void
                                     (let ((_%$e73903%_
                                            (let ((__obj83955 _%klass73900%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     __obj83955
                                                     'gerbil.core#class-type-info::t))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     __obj83955
                                                     '6
                                                     '#f
                                                     '#f))
                                                  (class-slot-ref
                                                   gerbil/core/mop~MOP-2#class-type-info::t
                                                   __obj83955
                                                   'ordered-slots)))))
                                       (if _%$e73903%_
                                           ((lambda (_%ordered73907%_)
                                              (for-each
                                               _%process-slot73892%_
                                               _%ordered73907%_))
                                            _%$e73903%_)
                                           (let ((_%ordered73912%_
                                                  (_%order-slots69522%_
                                                   (let ((__obj83956
                                                          _%klass73900%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj83956
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj83956
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj83956
                                                          'slots)))
                                                   (let ((__obj83957
                                                          _%klass73900%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj83957
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj83957
                                                            '3
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj83957
                                                          'super))))))
                                             (let ((__obj83958 _%klass73900%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      __obj83958
                                                      'gerbil.core#class-type-info::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-set!
                                                      __obj83958
                                                      _%ordered73912%_
                                                      '6
                                                      '#f
                                                      '#f))
                                                   (class-slot-set!
                                                    gerbil/core/mop~MOP-2#class-type-info::t
                                                    __obj83958
                                                    'ordered-slots
                                                    _%ordered73912%_)))
                                             (for-each
                                              _%process-slot73892%_
                                              _%ordered73912%_)))))))
                             _%precedence-list73856%_)
                            (for-each _%process-slot73892%_ _%slots73846%_)
                            (reverse _%r-fields73875%_)))))))
                 (_%wrap69523%_
                  (lambda (_%e-stx73843%_)
                    (gx#stx-wrap-source
                     _%e-stx73843%_
                     (gx#stx-source _%stx69500%_))))
                 (_%generate-defclass69524%_
                  (lambda (_%id69658%_
                           _%super-ref69660%_
                           _%slots69661%_
                           _%body69662%_)
                    (letrec ((_%make-id69664%_
                              (lambda _%args73840%_
                                (apply gx#stx-identifier
                                       _%id69658%_
                                       _%args73840%_))))
                      (gx#check-duplicate-identifiers
                       (map _%slot-name69506%_ _%slots69661%_)
                       _%stx69500%_)
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~Interface[1]#check-signature-spec!__%|
                         '#f
                         absent-value
                         '#f
                         _%stx69500%_
                         _%slots69661%_))
                      (_%check-typedef-body!69505%_ _%body69662%_)
                      (let ((_g84237_
                             (_%get-mixin-slots69516%_ _%super-ref69660%_)))
                        (begin
                          (let ((_g84238_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g84237_)
                                       (##vector-length _g84237_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g84238_ 2)))
                                (error "Context expects 2 values" _g84238_)))
                          (let ((_%mixin-slots69667%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g84237_ 0)))
                                (_%slot-type-table69669%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g84237_ 1))))
                            (let* ((_%slot-contract-table69671%_
                                    (_%get-slot-contracts69518%_
                                     _%slots69661%_
                                     _%mixin-slots69667%_
                                     _%super-ref69660%_
                                     _%slot-type-table69669%_))
                                   (_%slot-default-table69674%_
                                    (_%get-slot-defaults69519%_
                                     _%slots69661%_
                                     _%mixin-slots69667%_
                                     _%super-ref69660%_))
                                   (_%ordered-slots69677%_
                                    (_%order-slots69522%_
                                     (map _%slot-name69506%_ _%slots69661%_)
                                     _%super-ref69660%_)))
                              (_%update-slot-types!69520%_
                               _%slots69661%_
                               _%slot-type-table69669%_)
                              (let* ((_%slots69682%_
                                      (map _%slot-name69506%_ _%slots69661%_))
                                     (_%mixin-slots69688%_
                                      (filter (lambda (_%slot69685%_)
                                                (not (memq _%slot69685%_
                                                           _%slots69682%_)))
                                              _%mixin-slots69667%_))
                                     (_%name69691%_
                                      (symbol->string (gx#stx-e _%id69658%_)))
                                     (_%super69694%_
                                      (map gx#syntax-local-value
                                           _%super-ref69660%_))
                                     (_%struct?69697%_
                                      (gx#stx-getq 'struct: _%body69662%_))
                                     (_%g6970069708%_
                                      (lambda (_%g6970169704%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g6970169704%_)))
                                     (_%g6969973836%_
                                      (lambda (_%g6970169712%_)
                                        ((lambda (_%L69715%_)
                                           (let* ((_%g6973869746%_
                                                   (lambda (_%g6973969742%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g6973969742%_)))
                                                  (_%g6973773832%_
                                                   (lambda (_%g6973969750%_)
                                                     ((lambda (_%L69753%_)
                                                        (let* ((_%g6976669774%_
                                                                (lambda (_%g6976769770%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g6976769770%_)))
                       (_%g6976573828%_
                        (lambda (_%g6976769778%_)
                          ((lambda (_%L69781%_)
                             (let* ((_%g6979469802%_
                                     (lambda (_%g6979569798%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6979569798%_)))
                                    (_%g6979373824%_
                                     (lambda (_%g6979569806%_)
                                       ((lambda (_%L69809%_)
                                          (let* ((_%g6982269830%_
                                                  (lambda (_%g6982369826%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g6982369826%_)))
                                                 (_%g6982173820%_
                                                  (lambda (_%g6982369834%_)
                                                    ((lambda (_%L69837%_)
                                                       (let* ((_%g6985069867%_
                                                               (lambda (_%g6985169863%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g6985169863%_)))
                      (_%g6984973816%_
                       (lambda (_%g6985169871%_)
                         (if (gx#stx-pair/null? _%g6985169871%_)
                             (let ((_g84239_
                                    (gx#syntax-split-splice
                                     _%g6985169871%_
                                     '0)))
                               (begin
                                 (let ((_g84240_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g84239_)
                                              (##vector-length _g84239_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g84240_ 2)))
                                       (error "Context expects 2 values"
                                              _g84240_)))
                                 (let ((_%target6985369874%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g84239_ 0)))
                                       (_%tl6985569877%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g84239_ 1))))
                                   (if (gx#stx-null? _%tl6985569877%_)
                                       (letrec ((_%loop6985669880%_
                                                 (lambda (_%hd6985469884%_
                                                          _%slot6986069887%_)
                                                   (if (gx#stx-pair?
                                                        _%hd6985469884%_)
                                                       (let ((_%e6985769890%_
                                                              (gx#syntax-e
                                                               _%hd6985469884%_)))
                                                         (let ((_%lp-hd6985869894%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e6985769890%_)))
                       (_%lp-tl6985969897%_
                        (let () (declare (not safe)) (##cdr _%e6985769890%_))))
                   (_%loop6985669880%_
                    _%lp-tl6985969897%_
                    (cons _%lp-hd6985869894%_ _%slot6986069887%_))))
               (let ((_%slot6986169900%_ (reverse _%slot6986069887%_)))
                 ((lambda (_%L69904%_)
                    (let* ((_%g6992169938%_
                            (lambda (_%g6992269934%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6992269934%_)))
                           (_%g6992073812%_
                            (lambda (_%g6992269942%_)
                              (if (gx#stx-pair/null? _%g6992269942%_)
                                  (let ((_g84241_
                                         (gx#syntax-split-splice
                                          _%g6992269942%_
                                          '0)))
                                    (begin
                                      (let ((_g84242_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84241_)
                                                   (##vector-length _g84241_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84242_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84242_)))
                                      (let ((_%target6992469945%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g84241_ 0)))
                                            (_%tl6992669948%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g84241_ 1))))
                                        (if (gx#stx-null? _%tl6992669948%_)
                                            (letrec ((_%loop6992769951%_
                                                      (lambda (_%hd6992569955%_
                                                               _%ordered-slot6993169958%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6992569955%_)
                                                            (let ((_%e6992869961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6992569955%_)))
                      (let ((_%lp-hd6992969965%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6992869961%_)))
                            (_%lp-tl6993069968%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6992869961%_))))
                        (_%loop6992769951%_
                         _%lp-tl6993069968%_
                         (cons _%lp-hd6992969965%_
                               _%ordered-slot6993169958%_))))
                    (let ((_%ordered-slot6993269971%_
                           (reverse _%ordered-slot6993169958%_)))
                      ((lambda (_%L69975%_)
                         (let* ((_%g6999270009%_
                                 (lambda (_%g6999370005%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g6999370005%_)))
                                (_%g6999173803%_
                                 (lambda (_%g6999370013%_)
                                   (if (gx#stx-pair/null? _%g6999370013%_)
                                       (let ((_g84243_
                                              (gx#syntax-split-splice
                                               _%g6999370013%_
                                               '0)))
                                         (begin
                                           (let ((_g84244_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g84243_)
                                                        (##vector-length
                                                         _g84243_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g84244_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g84244_)))
                                           (let ((_%target6999570016%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g84243_ 0)))
                                                 (_%tl6999770019%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g84243_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl6999770019%_)
                                                 (letrec ((_%loop6999870022%_
                                                           (lambda (_%hd6999670026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%getf7000270029%_)
                     (if (gx#stx-pair? _%hd6999670026%_)
                         (let ((_%e6999970032%_
                                (gx#syntax-e _%hd6999670026%_)))
                           (let ((_%lp-hd7000070036%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e6999970032%_)))
                                 (_%lp-tl7000170039%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e6999970032%_))))
                             (_%loop6999870022%_
                              _%lp-tl7000170039%_
                              (cons _%lp-hd7000070036%_ _%getf7000270029%_))))
                         (let ((_%getf7000370042%_
                                (reverse _%getf7000270029%_)))
                           ((lambda (_%L70046%_)
                              (let* ((_%g7006370080%_
                                      (lambda (_%g7006470076%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7006470076%_)))
                                     (_%g7006273794%_
                                      (lambda (_%g7006470084%_)
                                        (if (gx#stx-pair/null? _%g7006470084%_)
                                            (let ((_g84245_
                                                   (gx#syntax-split-splice
                                                    _%g7006470084%_
                                                    '0)))
                                              (begin
                                                (let ((_g84246_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g84245_)
                                                             (##vector-length
                                                              _g84245_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g84246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g84246_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target7006670087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g84245_
                                                          0)))
                                                      (_%tl7006870090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g84245_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl7006870090%_)
                                                      (letrec ((_%loop7006970093%_
                                                                (lambda (_%hd7006770097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%setf7007370100%_)
                          (if (gx#stx-pair? _%hd7006770097%_)
                              (let ((_%e7007070103%_
                                     (gx#syntax-e _%hd7006770097%_)))
                                (let ((_%lp-hd7007170107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7007070103%_)))
                                      (_%lp-tl7007270110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7007070103%_))))
                                  (_%loop7006970093%_
                                   _%lp-tl7007270110%_
                                   (cons _%lp-hd7007170107%_
                                         _%setf7007370100%_))))
                              (let ((_%setf7007470113%_
                                     (reverse _%setf7007370100%_)))
                                ((lambda (_%L70117%_)
                                   (let* ((_%g7013470151%_
                                           (lambda (_%g7013570147%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g7013570147%_)))
                                          (_%g7013373785%_
                                           (lambda (_%g7013570155%_)
                                             (if (gx#stx-pair/null?
                                                  _%g7013570155%_)
                                                 (let ((_g84247_
                                                        (gx#syntax-split-splice
                                                         _%g7013570155%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g84248_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g84247_)
                          (##vector-length _g84247_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g84248_ 2)))
                   (error "Context expects 2 values" _g84248_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target7013770158%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g84247_
                                                               0)))
                                                           (_%tl7013970161%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g84247_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl7013970161%_)
                                                           (letrec ((_%loop7014070164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd7013870168%_ _%rawsetf7014470171%_)
                               (if (gx#stx-pair? _%hd7013870168%_)
                                   (let ((_%e7014170174%_
                                          (gx#syntax-e _%hd7013870168%_)))
                                     (let ((_%lp-hd7014270178%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7014170174%_)))
                                           (_%lp-tl7014370181%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7014170174%_))))
                                       (_%loop7014070164%_
                                        _%lp-tl7014370181%_
                                        (cons _%lp-hd7014270178%_
                                              _%rawsetf7014470171%_))))
                                   (let ((_%rawsetf7014570184%_
                                          (reverse _%rawsetf7014470171%_)))
                                     ((lambda (_%L70188%_)
                                        (let* ((_%g7020570222%_
                                                (lambda (_%g7020670218%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7020670218%_)))
                                               (_%g7020473781%_
                                                (lambda (_%g7020670226%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g7020670226%_)
                                                      (let ((_g84249_
                                                             (gx#syntax-split-splice
                                                              _%g7020670226%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g84250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g84249_)
                               (##vector-length _g84249_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g84250_ 2)))
                        (error "Context expects 2 values" _g84250_)))
                  (let ((_%target7020870229%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g84249_ 0)))
                        (_%tl7021070232%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g84249_ 1))))
                    (if (gx#stx-null? _%tl7021070232%_)
                        (letrec ((_%loop7021170235%_
                                  (lambda (_%hd7020970239%_
                                           _%mixin-slot7021570242%_)
                                    (if (gx#stx-pair? _%hd7020970239%_)
                                        (let ((_%e7021270245%_
                                               (gx#syntax-e _%hd7020970239%_)))
                                          (let ((_%lp-hd7021370249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7021270245%_)))
                                                (_%lp-tl7021470252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7021270245%_))))
                                            (_%loop7021170235%_
                                             _%lp-tl7021470252%_
                                             (cons _%lp-hd7021370249%_
                                                   _%mixin-slot7021570242%_))))
                                        (let ((_%mixin-slot7021670255%_
                                               (reverse _%mixin-slot7021570242%_)))
                                          ((lambda (_%L70259%_)
                                             (let* ((_%g7027670293%_
                                                     (lambda (_%g7027770289%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7027770289%_)))
                                                    (_%g7027573772%_
                                                     (lambda (_%g7027770297%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g7027770297%_)
                                                           (let ((_g84251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g7027770297%_ '0)))
                     (begin
                       (let ((_g84252_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g84251_)
                                    (##vector-length _g84251_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g84252_ 2)))
                             (error "Context expects 2 values" _g84252_)))
                       (let ((_%target7027970300%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g84251_ 0)))
                             (_%tl7028170303%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g84251_ 1))))
                         (if (gx#stx-null? _%tl7028170303%_)
                             (letrec ((_%loop7028270306%_
                                       (lambda (_%hd7028070310%_
                                                _%mixin-getf7028670313%_)
                                         (if (gx#stx-pair? _%hd7028070310%_)
                                             (let ((_%e7028370316%_
                                                    (gx#syntax-e
                                                     _%hd7028070310%_)))
                                               (let ((_%lp-hd7028470320%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7028370316%_)))
                                                     (_%lp-tl7028570323%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7028370316%_))))
                                                 (_%loop7028270306%_
                                                  _%lp-tl7028570323%_
                                                  (cons _%lp-hd7028470320%_
                                                        _%mixin-getf7028670313%_))))
                                             (let ((_%mixin-getf7028770326%_
                                                    (reverse _%mixin-getf7028670313%_)))
                                               ((lambda (_%L70330%_)
                                                  (let* ((_%g7034770364%_
                                                          (lambda (_%g7034870360%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g7034870360%_)))
                                                         (_%g7034673763%_
                                                          (lambda (_%g7034870368%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g7034870368%_)
                        (let ((_g84253_
                               (gx#syntax-split-splice _%g7034870368%_ '0)))
                          (begin
                            (let ((_g84254_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g84253_)
                                         (##vector-length _g84253_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g84254_ 2)))
                                  (error "Context expects 2 values" _g84254_)))
                            (let ((_%target7035070371%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g84253_ 0)))
                                  (_%tl7035270374%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g84253_ 1))))
                              (if (gx#stx-null? _%tl7035270374%_)
                                  (letrec ((_%loop7035370377%_
                                            (lambda (_%hd7035170381%_
                                                     _%mixin-setf7035770384%_)
                                              (if (gx#stx-pair?
                                                   _%hd7035170381%_)
                                                  (let ((_%e7035470387%_
                                                         (gx#syntax-e
                                                          _%hd7035170381%_)))
                                                    (let ((_%lp-hd7035570391%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7035470387%_)))
                                                          (_%lp-tl7035670394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7035470387%_))))
                                                      (_%loop7035370377%_
                                                       _%lp-tl7035670394%_
                                                       (cons _%lp-hd7035570391%_
                                                             _%mixin-setf7035770384%_))))
                                                  (let ((_%mixin-setf7035870397%_
                                                         (reverse _%mixin-setf7035770384%_)))
                                                    ((lambda (_%L70401%_)
                                                       (let* ((_%g7041870435%_
                                                               (lambda (_%g7041970431%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7041970431%_)))
                      (_%g7041773754%_
                       (lambda (_%g7041970439%_)
                         (if (gx#stx-pair/null? _%g7041970439%_)
                             (let ((_g84255_
                                    (gx#syntax-split-splice
                                     _%g7041970439%_
                                     '0)))
                               (begin
                                 (let ((_g84256_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g84255_)
                                              (##vector-length _g84255_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g84256_ 2)))
                                       (error "Context expects 2 values"
                                              _g84256_)))
                                 (let ((_%target7042170442%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g84255_ 0)))
                                       (_%tl7042370445%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g84255_ 1))))
                                   (if (gx#stx-null? _%tl7042370445%_)
                                       (letrec ((_%loop7042470448%_
                                                 (lambda (_%hd7042270452%_
                                                          _%mixin-rawsetf7042870455%_)
                                                   (if (gx#stx-pair?
                                                        _%hd7042270452%_)
                                                       (let ((_%e7042570458%_
                                                              (gx#syntax-e
                                                               _%hd7042270452%_)))
                                                         (let ((_%lp-hd7042670462%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e7042570458%_)))
                       (_%lp-tl7042770465%_
                        (let () (declare (not safe)) (##cdr _%e7042570458%_))))
                   (_%loop7042470448%_
                    _%lp-tl7042770465%_
                    (cons _%lp-hd7042670462%_ _%mixin-rawsetf7042870455%_))))
               (let ((_%mixin-rawsetf7042970468%_
                      (reverse _%mixin-rawsetf7042870455%_)))
                 ((lambda (_%L70472%_)
                    (let* ((_%g7048970506%_
                            (lambda (_%g7049070502%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7049070502%_)))
                           (_%g7048873737%_
                            (lambda (_%g7049070510%_)
                              (if (gx#stx-pair/null? _%g7049070510%_)
                                  (let ((_g84257_
                                         (gx#syntax-split-splice
                                          _%g7049070510%_
                                          '0)))
                                    (begin
                                      (let ((_g84258_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84257_)
                                                   (##vector-length _g84257_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84258_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84258_)))
                                      (let ((_%target7049270513%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g84257_ 0)))
                                            (_%tl7049470516%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g84257_ 1))))
                                        (if (gx#stx-null? _%tl7049470516%_)
                                            (letrec ((_%loop7049570519%_
                                                      (lambda (_%hd7049370523%_
                                                               _%ugetf7049970526%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7049370523%_)
                                                            (let ((_%e7049670529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7049370523%_)))
                      (let ((_%lp-hd7049770533%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7049670529%_)))
                            (_%lp-tl7049870536%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7049670529%_))))
                        (_%loop7049570519%_
                         _%lp-tl7049870536%_
                         (cons _%lp-hd7049770533%_ _%ugetf7049970526%_))))
                    (let ((_%ugetf7050070539%_ (reverse _%ugetf7049970526%_)))
                      ((lambda (_%L70543%_)
                         (let* ((_%g7056070577%_
                                 (lambda (_%g7056170573%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7056170573%_)))
                                (_%g7055973720%_
                                 (lambda (_%g7056170581%_)
                                   (if (gx#stx-pair/null? _%g7056170581%_)
                                       (let ((_g84259_
                                              (gx#syntax-split-splice
                                               _%g7056170581%_
                                               '0)))
                                         (begin
                                           (let ((_g84260_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g84259_)
                                                        (##vector-length
                                                         _g84259_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g84260_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g84260_)))
                                           (let ((_%target7056370584%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g84259_ 0)))
                                                 (_%tl7056570587%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g84259_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7056570587%_)
                                                 (letrec ((_%loop7056670590%_
                                                           (lambda (_%hd7056470594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%usetf7057070597%_)
                     (if (gx#stx-pair? _%hd7056470594%_)
                         (let ((_%e7056770600%_
                                (gx#syntax-e _%hd7056470594%_)))
                           (let ((_%lp-hd7056870604%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7056770600%_)))
                                 (_%lp-tl7056970607%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7056770600%_))))
                             (_%loop7056670590%_
                              _%lp-tl7056970607%_
                              (cons _%lp-hd7056870604%_ _%usetf7057070597%_))))
                         (let ((_%usetf7057170610%_
                                (reverse _%usetf7057070597%_)))
                           ((lambda (_%L70614%_)
                              (let* ((_%g7063170648%_
                                      (lambda (_%g7063270644%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7063270644%_)))
                                     (_%g7063073703%_
                                      (lambda (_%g7063270652%_)
                                        (if (gx#stx-pair/null? _%g7063270652%_)
                                            (let ((_g84261_
                                                   (gx#syntax-split-splice
                                                    _%g7063270652%_
                                                    '0)))
                                              (begin
                                                (let ((_g84262_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g84261_)
                                                             (##vector-length
                                                              _g84261_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g84262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g84262_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target7063470655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g84261_
                                                          0)))
                                                      (_%tl7063670658%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g84261_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl7063670658%_)
                                                      (letrec ((_%loop7063770661%_
                                                                (lambda (_%hd7063570665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%mixin-ugetf7064170668%_)
                          (if (gx#stx-pair? _%hd7063570665%_)
                              (let ((_%e7063870671%_
                                     (gx#syntax-e _%hd7063570665%_)))
                                (let ((_%lp-hd7063970675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7063870671%_)))
                                      (_%lp-tl7064070678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7063870671%_))))
                                  (_%loop7063770661%_
                                   _%lp-tl7064070678%_
                                   (cons _%lp-hd7063970675%_
                                         _%mixin-ugetf7064170668%_))))
                              (let ((_%mixin-ugetf7064270681%_
                                     (reverse _%mixin-ugetf7064170668%_)))
                                ((lambda (_%L70685%_)
                                   (let* ((_%g7070270719%_
                                           (lambda (_%g7070370715%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g7070370715%_)))
                                          (_%g7070173686%_
                                           (lambda (_%g7070370723%_)
                                             (if (gx#stx-pair/null?
                                                  _%g7070370723%_)
                                                 (let ((_g84263_
                                                        (gx#syntax-split-splice
                                                         _%g7070370723%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g84264_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g84263_)
                          (##vector-length _g84263_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g84264_ 2)))
                   (error "Context expects 2 values" _g84264_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target7070570726%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g84263_
                                                               0)))
                                                           (_%tl7070770729%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g84263_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl7070770729%_)
                                                           (letrec ((_%loop7070870732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd7070670736%_
                                      _%mixin-usetf7071270739%_)
                               (if (gx#stx-pair? _%hd7070670736%_)
                                   (let ((_%e7070970742%_
                                          (gx#syntax-e _%hd7070670736%_)))
                                     (let ((_%lp-hd7071070746%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7070970742%_)))
                                           (_%lp-tl7071170749%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7070970742%_))))
                                       (_%loop7070870732%_
                                        _%lp-tl7071170749%_
                                        (cons _%lp-hd7071070746%_
                                              _%mixin-usetf7071270739%_))))
                                   (let ((_%mixin-usetf7071370752%_
                                          (reverse _%mixin-usetf7071270739%_)))
                                     ((lambda (_%L70756%_)
                                        (let* ((_%type-slots70918%_
                                                (if (gx#stx-null?
                                                     _%slots69682%_)
                                                    '()
                                                    (cons 'slots:
                                                          (cons (map (lambda (_%slot70777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%getf70779%_
                                      _%setf70780%_
                                      _%rawsetf70781%_)
                               (let* ((_%g7078370806%_
                                       (lambda (_%g7078470802%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7078470802%_)))
                                      (_%g7078270882%_
                                       (lambda (_%g7078470810%_)
                                         (if (gx#stx-pair? _%g7078470810%_)
                                             (let ((_%e7078970813%_
                                                    (gx#syntax-e
                                                     _%g7078470810%_)))
                                               (let ((_%hd7079070817%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7078970813%_)))
                                                     (_%tl7079170820%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7078970813%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl7079170820%_)
                                                     (let ((_%e7079270823%_
                                                            (gx#syntax-e
                                                             _%tl7079170820%_)))
                                                       (let ((_%hd7079370827%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7079270823%_)))
                     (_%tl7079470830%_
                      (let () (declare (not safe)) (##cdr _%e7079270823%_))))
                 (if (gx#stx-pair? _%tl7079470830%_)
                     (let ((_%e7079570833%_ (gx#syntax-e _%tl7079470830%_)))
                       (let ((_%hd7079670837%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7079570833%_)))
                             (_%tl7079770840%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7079570833%_))))
                         (if (gx#stx-pair? _%tl7079770840%_)
                             (let ((_%e7079870843%_
                                    (gx#syntax-e _%tl7079770840%_)))
                               (let ((_%hd7079970847%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7079870843%_)))
                                     (_%tl7080070850%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7079870843%_))))
                                 (if (gx#stx-null? _%tl7080070850%_)
                                     ((lambda (_%L70853%_
                                               _%L70855%_
                                               _%L70856%_
                                               _%L70857%_)
                                        (if (hash-get
                                             _%slot-contract-table69671%_
                                             (gx#stx-e _%L70857%_))
                                            (cons _%L70857%_
                                                  (cons _%L70856%_
                                                        (cons _%L70853%_ '())))
                                            (cons _%L70857%_
                                                  (cons _%L70856%_
                                                        (cons _%L70855%_
                                                              '())))))
                                      _%hd7079970847%_
                                      _%hd7079670837%_
                                      _%hd7079370827%_
                                      _%hd7079070817%_)
                                     (_%g7078370806%_ _%g7078470810%_))))
                             (_%g7078370806%_ _%g7078470810%_))))
                     (_%g7078370806%_ _%g7078470810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7078370806%_
                                                      _%g7078470810%_))))
                                             (_%g7078370806%_
                                              _%g7078470810%_)))))
                                 (_%g7078270882%_
                                  (list _%slot70777%_
                                        _%getf70779%_
                                        _%setf70780%_
                                        _%rawsetf70781%_))))
                             (foldr (lambda (_%g7088570888%_ _%g7088670891%_)
                                      (cons _%g7088570888%_ _%g7088670891%_))
                                    '()
                                    _%L69904%_)
                             (foldr (lambda (_%g7089370896%_ _%g7089470899%_)
                                      (cons _%g7089370896%_ _%g7089470899%_))
                                    '()
                                    _%L70046%_)
                             (foldr (lambda (_%g7090170904%_ _%g7090270907%_)
                                      (cons _%g7090170904%_ _%g7090270907%_))
                                    '()
                                    _%L70117%_)
                             (foldr (lambda (_%g7090970912%_ _%g7091070915%_)
                                      (cons _%g7090970912%_ _%g7091070915%_))
                                    '()
                                    _%L70188%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-mixin-slots71065%_
                                                (if (gx#stx-null?
                                                     _%mixin-slots69688%_)
                                                    '()
                                                    (cons 'mixin:
                                                          (cons (map (lambda (_%slot70925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%getf70927%_
                                      _%setf70928%_
                                      _%rawsetf70929%_)
                               (let* ((_%g7093170954%_
                                       (lambda (_%g7093270950%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7093270950%_)))
                                      (_%g7093071029%_
                                       (lambda (_%g7093270958%_)
                                         (if (gx#stx-pair? _%g7093270958%_)
                                             (let ((_%e7093770961%_
                                                    (gx#syntax-e
                                                     _%g7093270958%_)))
                                               (let ((_%hd7093870965%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7093770961%_)))
                                                     (_%tl7093970968%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7093770961%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl7093970968%_)
                                                     (let ((_%e7094070971%_
                                                            (gx#syntax-e
                                                             _%tl7093970968%_)))
                                                       (let ((_%hd7094170975%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7094070971%_)))
                     (_%tl7094270978%_
                      (let () (declare (not safe)) (##cdr _%e7094070971%_))))
                 (if (gx#stx-pair? _%tl7094270978%_)
                     (let ((_%e7094370981%_ (gx#syntax-e _%tl7094270978%_)))
                       (let ((_%hd7094470985%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7094370981%_)))
                             (_%tl7094570988%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7094370981%_))))
                         (if (gx#stx-pair? _%tl7094570988%_)
                             (let ((_%e7094670991%_
                                    (gx#syntax-e _%tl7094570988%_)))
                               (let ((_%hd7094770995%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7094670991%_)))
                                     (_%tl7094870998%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7094670991%_))))
                                 (if (gx#stx-null? _%tl7094870998%_)
                                     ((lambda (_%L71001%_
                                               _%L71003%_
                                               _%L71004%_
                                               _%L71005%_)
                                        (if (hash-get
                                             _%slot-contract-table69671%_
                                             (gx#stx-e _%L71005%_))
                                            (cons _%L71005%_
                                                  (cons _%L71004%_
                                                        (cons _%L71001%_ '())))
                                            (cons _%L71005%_
                                                  (cons _%L71004%_
                                                        (cons _%L71003%_
                                                              '())))))
                                      _%hd7094770995%_
                                      _%hd7094470985%_
                                      _%hd7094170975%_
                                      _%hd7093870965%_)
                                     (_%g7093170954%_ _%g7093270958%_))))
                             (_%g7093170954%_ _%g7093270958%_))))
                     (_%g7093170954%_ _%g7093270958%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7093170954%_
                                                      _%g7093270958%_))))
                                             (_%g7093170954%_
                                              _%g7093270958%_)))))
                                 (_%g7093071029%_
                                  (list _%slot70925%_
                                        _%getf70927%_
                                        _%setf70928%_
                                        _%rawsetf70929%_))))
                             (foldr (lambda (_%g7103271035%_ _%g7103371038%_)
                                      (cons _%g7103271035%_ _%g7103371038%_))
                                    '()
                                    _%L70259%_)
                             (foldr (lambda (_%g7104071043%_ _%g7104171046%_)
                                      (cons _%g7104071043%_ _%g7104171046%_))
                                    '()
                                    _%L70330%_)
                             (foldr (lambda (_%g7104871051%_ _%g7104971054%_)
                                      (cons _%g7104871051%_ _%g7104971054%_))
                                    '()
                                    _%L70401%_)
                             (foldr (lambda (_%g7105671059%_ _%g7105771062%_)
                                      (cons _%g7105671059%_ _%g7105771062%_))
                                    '()
                                    _%L70472%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-name71072%_
                                                (cons 'name:
                                                      (cons (let ((_%$e71068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'name: _%body69662%_)))
                      (if _%$e71068%_ _%$e71068%_ _%id69658%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-id71079%_
                                                (cons 'id:
                                                      (cons (let ((_%$e71075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'id: _%body69662%_)))
                      (if _%$e71075%_
                          _%$e71075%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                             _%L69715%_))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-constructor71094%_
                                                (let ((_%$e71090%_
                                                       (let ((_%e7108171083%_
                                                              (gx#stx-getq
                                                               'constructor:
                                                               _%body69662%_)))
                                                         (if _%e7108171083%_
                                                             (let ((_%e71087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e7108171083%_))
                       (cons 'constructor: (cons _%e71087%_ '())))
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e71090%_
                                                      _%$e71090%_
                                                      '())))
                                               (_%properties71148%_
                                                (let* ((_%properties71097%_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'transparent:
                                                              _%body69662%_))
                                                            (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          '())
                    '()))
               (_%properties71120%_
                (let ((_%$e71100%_
                       (gx#stx-e (gx#stx-getq 'print: _%body69662%_))))
                  (if _%$e71100%_
                      ((lambda (_%print71104%_)
                         (let ((_%print71115%_
                                (if (eq? _%print71104%_ '#t)
                                    (foldr (lambda (_%g7110671109%_
                                                    _%g7110771112%_)
                                             (cons _%g7110671109%_
                                                   _%g7110771112%_))
                                           '()
                                           _%L69904%_)
                                    _%print71104%_)))
                           (cons (cons 'print: _%print71115%_)
                                 _%properties71097%_)))
                       _%$e71100%_)
                      _%properties71097%_)))
               (_%properties71143%_
                (let ((_%$e71123%_
                       (gx#stx-e (gx#stx-getq 'equal: _%body69662%_))))
                  (if _%$e71123%_
                      ((lambda (_%equal71127%_)
                         (let ((_%equal71138%_
                                (if (eq? _%equal71127%_ '#t)
                                    (foldr (lambda (_%g7112971132%_
                                                    _%g7113071135%_)
                                             (cons _%g7112971132%_
                                                   _%g7113071135%_))
                                           '()
                                           _%L69904%_)
                                    _%equal71127%_)))
                           (cons (cons 'equal: _%equal71138%_)
                                 _%properties71120%_)))
                       _%$e71123%_)
                      _%properties71120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%properties71143%_))
                                               (_%type-properties71186%_
                                                (if (null? _%properties71148%_)
                                                    '()
                                                    (let* ((_%g7115171159%_
                                                            (lambda (_%g7115271155%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g7115271155%_)))
                                                           (_%g7115071182%_
                                                            (lambda (_%g7115271163%_)
                                                              ((lambda (_%L71166%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'properties:
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L71166%_ '()))
                                     '())))
                       _%g7115271163%_))))
              (_%g7115071182%_ _%properties71148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%metaclass71198%_
                                                (let ((_%$e71189%_
                                                       (gx#stx-getq
                                                        'metaclass:
                                                        _%body69662%_)))
                                                  (if _%$e71189%_
                                                      ((lambda (_%metaclass71193%_)
                                                         (if (gx#identifier?
                                                              _%metaclass71193%_)
                                                             _%metaclass71193%_
                                                             '#f))
                                                       _%$e71189%_)
                                                      '#f)))
                                               (_%final?71201%_
                                                (gx#stx-e
                                                 (gx#stx-getq
                                                  'final:
                                                  _%body69662%_)))
                                               (_%type-struct71204%_
                                                (cons 'struct:
                                                      (cons _%struct?69697%_
                                                            '())))
                                               (_%type-final71207%_
                                                (cons 'final:
                                                      (cons _%final?71201%_
                                                            '())))
                                               (_%type-metaclass71210%_
                                                (if _%metaclass71198%_
                                                    (cons 'metaclass:
                                                          (cons _%metaclass71198%_
                                                                '()))
                                                    '()))
                                               (_%g7121371230%_
                                                (lambda (_%g7121471226%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7121471226%_)))
                                               (_%g7121273682%_
                                                (lambda (_%g7121471234%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g7121471234%_)
                                                      (let ((_g84265_
                                                             (gx#syntax-split-splice
                                                              _%g7121471234%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g84266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g84265_)
                               (##vector-length _g84265_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g84266_ 2)))
                        (error "Context expects 2 values" _g84266_)))
                  (let ((_%target7121671237%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g84265_ 0)))
                        (_%tl7121871240%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g84265_ 1))))
                    (if (gx#stx-null? _%tl7121871240%_)
                        (letrec ((_%loop7121971243%_
                                  (lambda (_%hd7121771247%_
                                           _%type-body7122371250%_)
                                    (if (gx#stx-pair? _%hd7121771247%_)
                                        (let ((_%e7122071253%_
                                               (gx#syntax-e _%hd7121771247%_)))
                                          (let ((_%lp-hd7122171257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7122071253%_)))
                                                (_%lp-tl7122271260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7122071253%_))))
                                            (_%loop7121971243%_
                                             _%lp-tl7122271260%_
                                             (cons _%lp-hd7122171257%_
                                                   _%type-body7122371250%_))))
                                        (let ((_%type-body7122471263%_
                                               (reverse _%type-body7122371250%_)))
                                          ((lambda (_%L71267%_)
                                             (let* ((_%g7128871296%_
                                                     (lambda (_%g7128971292%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7128971292%_)))
                                                    (_%g7128773670%_
                                                     (lambda (_%g7128971300%_)
                                                       ((lambda (_%L71303%_)
                                                          (let* ((_%g7131671324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g7131771320%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g7131771320%_)))
                         (_%g7131573658%_
                          (lambda (_%g7131771328%_)
                            ((lambda (_%L71331%_)
                               (let* ((_%g7134471352%_
                                       (lambda (_%g7134571348%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7134571348%_)))
                                      (_%g7134373587%_
                                       (lambda (_%g7134571356%_)
                                         ((lambda (_%L71359%_)
                                            (let* ((_%g7137271380%_
                                                    (lambda (_%g7137371376%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g7137371376%_)))
                                                   (_%g7137173552%_
                                                    (lambda (_%g7137371384%_)
                                                      ((lambda (_%L71387%_)
                                                         (let* ((_%g7140071408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g7140171404%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g7140171404%_)))
                        (_%g7139973466%_
                         (lambda (_%g7140171412%_)
                           ((lambda (_%L71415%_)
                              (let* ((_%g7142871436%_
                                      (lambda (_%g7142971432%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7142971432%_)))
                                     (_%g7142773454%_
                                      (lambda (_%g7142971440%_)
                                        ((lambda (_%L71443%_)
                                           (let* ((_%g7145671464%_
                                                   (lambda (_%g7145771460%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g7145771460%_)))
                                                  (_%g7145573442%_
                                                   (lambda (_%g7145771468%_)
                                                     ((lambda (_%L71471%_)
                                                        (let* ((_%g7148471492%_
                                                                (lambda (_%g7148571488%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g7148571488%_)))
                       (_%g7148373328%_
                        (lambda (_%g7148571496%_)
                          ((lambda (_%L71499%_)
                             (let* ((_%g7151271520%_
                                     (lambda (_%g7151371516%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g7151371516%_)))
                                    (_%g7151173217%_
                                     (lambda (_%g7151371524%_)
                                       ((lambda (_%L71527%_)
                                          (let* ((_%g7154071548%_
                                                  (lambda (_%g7154171544%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g7154171544%_)))
                                                 (_%g7153973106%_
                                                  (lambda (_%g7154171552%_)
                                                    ((lambda (_%L71555%_)
                                                       (let* ((_%g7156871576%_
                                                               (lambda (_%g7156971572%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7156971572%_)))
                      (_%g7156773102%_
                       (lambda (_%g7156971580%_)
                         ((lambda (_%L71583%_)
                            (let* ((_%g7159671604%_
                                    (lambda (_%g7159771600%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g7159771600%_)))
                                   (_%g7159573098%_
                                    (lambda (_%g7159771608%_)
                                      ((lambda (_%L71611%_)
                                         (let* ((_%g7162471632%_
                                                 (lambda (_%g7162571628%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g7162571628%_)))
                                                (_%g7162373063%_
                                                 (lambda (_%g7162571636%_)
                                                   ((lambda (_%L71639%_)
                                                      (let* ((_%g7165271660%_
                                                              (lambda (_%g7165371656%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g7165371656%_)))
                     (_%g7165172992%_
                      (lambda (_%g7165371664%_)
                        ((lambda (_%L71667%_)
                           (let* ((_%g7168071688%_
                                   (lambda (_%g7168171684%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g7168171684%_)))
                                  (_%g7167972988%_
                                   (lambda (_%g7168171692%_)
                                     ((lambda (_%L71695%_)
                                        (let* ((_%g7170871716%_
                                                (lambda (_%g7170971712%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7170971712%_)))
                                               (_%g7170772984%_
                                                (lambda (_%g7170971720%_)
                                                  ((lambda (_%L71723%_)
                                                     (let* ((_%g7173671744%_
                                                             (lambda (_%g7173771740%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g7173771740%_)))
                                                            (_%g7173572980%_
                                                             (lambda (_%g7173771748%_)
                                                               ((lambda (_%L71751%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g7176471772%_
                                  (lambda (_%g7176571768%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g7176571768%_)))
                                 (_%g7176372954%_
                                  (lambda (_%g7176571776%_)
                                    ((lambda (_%L71779%_)
                                       (let* ((_%g7179271800%_
                                               (lambda (_%g7179371796%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g7179371796%_)))
                                              (_%g7179172928%_
                                               (lambda (_%g7179371804%_)
                                                 ((lambda (_%L71807%_)
                                                    (let* ((_%g7182071828%_
                                                            (lambda (_%g7182171824%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g7182171824%_)))
                                                           (_%g7181972902%_
                                                            (lambda (_%g7182171832%_)
                                                              ((lambda (_%L71835%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%map-slot-usetf71853%_
                                 (lambda (_%slot71848%_
                                          _%setf71850%_
                                          _%rawsetf71851%_)
                                   (cons 'cons
                                         (cons (cons 'quote
                                                     (cons _%slot71848%_ '()))
                                               (cons (if (hash-get
                                                          _%slot-contract-table69671%_
                                                          (gx#stx-e
                                                           _%slot71848%_))
                                                         (cons 'quote-syntax
                                                               (cons (gx#stx-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rawsetf71851%_
                              '"&"
                              _%rawsetf71851%_)
                             '()))
                 (cons 'quote-syntax (cons _%setf71850%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                                (_%g7185671864%_
                                 (lambda (_%g7185771860%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7185771860%_)))
                                (_%g7185572684%_
                                 (lambda (_%g7185771868%_)
                                   ((lambda (_%L71871%_)
                                      (let* ((_%g7188571893%_
                                              (lambda (_%g7188671889%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g7188671889%_)))
                                             (_%g7188472680%_
                                              (lambda (_%g7188671897%_)
                                                ((lambda (_%L71900%_)
                                                   (let* ((_%g7191371921%_
                                                           (lambda (_%g7191471917%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g7191471917%_)))
                                                          (_%g7191272166%_
                                                           (lambda (_%g7191471925%_)
                                                             ((lambda (_%L71928%_)
                                                                (let* ((_%g7194171958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g7194271954%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g7194271954%_)))
                               (_%g7194072022%_
                                (lambda (_%g7194271962%_)
                                  (if (gx#stx-pair/null? _%g7194271962%_)
                                      (let ((_g84267_
                                             (gx#syntax-split-splice
                                              _%g7194271962%_
                                              '0)))
                                        (begin
                                          (let ((_g84268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84267_)
                                                       (##vector-length
                                                        _g84267_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84268_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84268_)))
                                          (let ((_%target7194471965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84267_ 0)))
                                                (_%tl7194671968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84267_ 1))))
                                            (if (gx#stx-null? _%tl7194671968%_)
                                                (letrec ((_%loop7194771971%_
                                                          (lambda (_%hd7194571975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%defsetf7195171978%_)
                    (if (gx#stx-pair? _%hd7194571975%_)
                        (let ((_%e7194871981%_ (gx#syntax-e _%hd7194571975%_)))
                          (let ((_%lp-hd7194971985%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7194871981%_)))
                                (_%lp-tl7195071988%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7194871981%_))))
                            (_%loop7194771971%_
                             _%lp-tl7195071988%_
                             (cons _%lp-hd7194971985%_
                                   _%defsetf7195171978%_))))
                        (let ((_%defsetf7195271991%_
                               (reverse _%defsetf7195171978%_)))
                          ((lambda (_%L71995%_)
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _%L71331%_
                                         (cons _%L71900%_
                                               (cons _%L71928%_
                                                     (foldr (lambda (_%g7201372016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g7201472019%_)
                      (cons _%g7201372016%_ _%g7201472019%_))
                    '()
                    _%L71995%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _%defsetf7195271991%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7194771971%_
                                                   _%target7194471965%_
                                                   '()))
                                                (_%g7194171958%_
                                                 _%g7194271962%_)))))
                                      (_%g7194171958%_ _%g7194271962%_)))))
                          (_%g7194072022%_
                           (let ((__tmp84269
                                  (map (lambda (_%slot72026%_
                                                _%setf72028%_
                                                _%rawsetf72029%_)
                                         (let ((_%contract7203072032%_
                                                (hash-get
                                                 _%slot-contract-table69671%_
                                                 (gx#stx-e _%slot72026%_))))
                                           (if _%contract7203072032%_
                                               (let* ((_%contract72036%_
                                                       _%contract7203072032%_)
                                                      (_%g7203972062%_
                                                       (lambda (_%g7204072058%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g7204072058%_)))
                                                      (_%g7203872138%_
                                                       (lambda (_%g7204072066%_)
                                                         (if (gx#stx-pair?
                                                              _%g7204072066%_)
                                                             (let ((_%e7204572069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%g7204072066%_)))
                       (let ((_%hd7204672073%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7204572069%_)))
                             (_%tl7204772076%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7204572069%_))))
                         (if (gx#stx-pair? _%tl7204772076%_)
                             (let ((_%e7204872079%_
                                    (gx#syntax-e _%tl7204772076%_)))
                               (let ((_%hd7204972083%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7204872079%_)))
                                     (_%tl7205072086%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7204872079%_))))
                                 (if (gx#stx-pair? _%tl7205072086%_)
                                     (let ((_%e7205172089%_
                                            (gx#syntax-e _%tl7205072086%_)))
                                       (let ((_%hd7205272093%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7205172089%_)))
                                             (_%tl7205372096%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7205172089%_))))
                                         (if (gx#stx-pair? _%tl7205372096%_)
                                             (let ((_%e7205472099%_
                                                    (gx#syntax-e
                                                     _%tl7205372096%_)))
                                               (let ((_%hd7205572103%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7205472099%_)))
                                                     (_%tl7205672106%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7205472099%_))))
                                                 (if (gx#stx-null?
                                                      _%tl7205672106%_)
                                                     ((lambda (_%L72109%_
                                                               _%L72111%_
                                                               _%L72112%_
                                                               _%L72113%_)
                                                        (_%wrap69523%_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'def/c)
                                                               (cons (cons _%L72111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f '$obj)
                                               (cons (gx#datum->syntax '#f ':)
                                                     (cons _%L69715%_ '())))
                                         (cons _%L72113%_ '())))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons (gx#datum->syntax '#f ':void)
                                         (cons (cons _%L72109%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           (cons _%L72112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))
              _%hd7205572103%_
              _%hd7205272093%_
              _%hd7204972083%_
              _%hd7204672073%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7203972062%_
                                                      _%g7204072066%_))))
                                             (_%g7203972062%_
                                              _%g7204072066%_))))
                                     (_%g7203972062%_ _%g7204072066%_))))
                             (_%g7203972062%_ _%g7204072066%_))))
                     (_%g7203972062%_ _%g7204072066%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7203872138%_
                                                  (list (cons _%slot72026%_
                                                              _%contract72036%_)
                                                        _%slot72026%_
                                                        _%setf72028%_
                                                        (gx#stx-identifier
                                                         _%rawsetf72029%_
                                                         '"&"
                                                         _%rawsetf72029%_))))
                                               '#f)))
                                       (foldr (lambda (_%g7214172144%_
                                                       _%g7214272147%_)
                                                (cons _%g7214172144%_
                                                      _%g7214272147%_))
                                              '()
                                              _%L69904%_)
                                       (foldr (lambda (_%g7214972152%_
                                                       _%g7215072155%_)
                                                (cons _%g7214972152%_
                                                      _%g7215072155%_))
                                              '()
                                              _%L70117%_)
                                       (foldr (lambda (_%g7215772160%_
                                                       _%g7215872163%_)
                                                (cons _%g7215772160%_
                                                      _%g7215872163%_))
                                              '()
                                              _%L70188%_))))
                             (declare (not safe))
                             (##filter identity __tmp84269)))))
                      _%g7191471925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7191272166%_
                                                      (if (or (not (null? _%type-constructor71094%_))
                                                              (and (zero? (hash-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%slot-contract-table69671%_))
                           (zero? (hash-length _%slot-default-table69674%_)))
                      _%metaclass71198%_)
                  (cons (gx#datum->syntax '#f 'begin) '())
                  (if (and _%struct?69697%_
                           (zero? (hash-length _%slot-default-table69674%_)))
                      (let* ((_%g7218272197%_
                              (lambda (_%g7218372193%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g7218372193%_)))
                             (_%g7218172251%_
                              (lambda (_%g7218372201%_)
                                (if (gx#stx-pair? _%g7218372201%_)
                                    (let ((_%e7218672204%_
                                           (gx#syntax-e _%g7218372201%_)))
                                      (let ((_%hd7218772208%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7218672204%_)))
                                            (_%tl7218872211%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7218672204%_))))
                                        (if (gx#stx-pair? _%tl7218872211%_)
                                            (let ((_%e7218972214%_
                                                   (gx#syntax-e
                                                    _%tl7218872211%_)))
                                              (let ((_%hd7219072218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7218972214%_)))
                                                    (_%tl7219172221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7218972214%_))))
                                                (if (gx#stx-null?
                                                     _%tl7219172221%_)
                                                    ((lambda (_%L72224%_
                                                              _%L72226%_)
                                                       (_%wrap69523%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def/c)
                                                              (cons (cons _%L69781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%L72226%_)
                            (cons (gx#datum->syntax '#f '=>)
                                  (cons _%L69715%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L72224%_ '()))
                  (cons (cons (gx#datum->syntax '#f '##structure)
                              (cons _%L72224%_
                                    (foldr (lambda (_%g7224272245%_
                                                    _%g7224372248%_)
                                             (cons _%g7224272245%_
                                                   _%g7224372248%_))
                                           '()
                                           _%L69975%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd7219072218%_
                                                     _%hd7218772208%_)
                                                    (_%g7218272197%_
                                                     _%g7218372201%_))))
                                            (_%g7218272197%_
                                             _%g7218372201%_))))
                                    (_%g7218272197%_ _%g7218372201%_)))))
                        (_%g7218172251%_
                         (list (foldr (lambda (_%slot72255%_ _%r72257%_)
                                        (let ((_%$e72259%_
                                               (hash-get
                                                _%slot-contract-table69671%_
                                                (gx#stx-e _%slot72255%_))))
                                          (if _%$e72259%_
                                              ((lambda (_%contract72263%_)
                                                 (let* ((_%g7226672290%_
                                                         (lambda (_%g7226772286%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g7226772286%_)))
                                                        (_%g7226572380%_
                                                         (lambda (_%g7226772294%_)
                                                           (if (gx#stx-pair?
                                                                _%g7226772294%_)
                                                               (let ((_%e7227072297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g7226772294%_)))
                         (let ((_%hd7227172301%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e7227072297%_)))
                               (_%tl7227272304%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e7227072297%_))))
                           (if (gx#stx-pair? _%tl7227272304%_)
                               (let ((_%e7227372307%_
                                      (gx#syntax-e _%tl7227272304%_)))
                                 (let ((_%hd7227472311%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7227372307%_)))
                                       (_%tl7227572314%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7227372307%_))))
                                   (if (gx#stx-pair/null? _%hd7227472311%_)
                                       (let ((_g84270_
                                              (gx#syntax-split-splice
                                               _%hd7227472311%_
                                               '0)))
                                         (begin
                                           (let ((_g84271_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g84270_)
                                                        (##vector-length
                                                         _g84270_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g84271_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g84271_)))
                                           (let ((_%target7227672317%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g84270_ 0)))
                                                 (_%tl7227872320%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g84270_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7227872320%_)
                                                 (letrec ((_%loop7227972323%_
                                                           (lambda (_%hd7227772327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%contract7228372330%_)
                     (if (gx#stx-pair? _%hd7227772327%_)
                         (let ((_%e7228072333%_
                                (gx#syntax-e _%hd7227772327%_)))
                           (let ((_%lp-hd7228172337%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7228072333%_)))
                                 (_%lp-tl7228272340%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7228072333%_))))
                             (_%loop7227972323%_
                              _%lp-tl7228272340%_
                              (cons _%lp-hd7228172337%_
                                    _%contract7228372330%_))))
                         (let ((_%contract7228472343%_
                                (reverse _%contract7228372330%_)))
                           (if (gx#stx-null? _%tl7227572314%_)
                               ((lambda (_%L72347%_ _%L72349%_)
                                  (cons (cons _%L72349%_
                                              (foldr (lambda (_%g7237172374%_
                                                              _%g7237272377%_)
                                                       (cons _%g7237172374%_
                                                             _%g7237272377%_))
                                                     '()
                                                     _%L72347%_))
                                        _%r72257%_))
                                _%contract7228472343%_
                                _%hd7227172301%_)
                               (_%g7226672290%_ _%g7226772294%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7227972323%_
                                                    _%target7227672317%_
                                                    '()))
                                                 (_%g7226672290%_
                                                  _%g7226772294%_)))))
                                       (_%g7226672290%_ _%g7226772294%_))))
                               (_%g7226672290%_ _%g7226772294%_))))
                       (_%g7226672290%_ _%g7226772294%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g7226572380%_
                                                    (list _%slot72255%_
                                                          _%contract72263%_))))
                                               _%$e72259%_)
                                              (cons _%slot72255%_
                                                    _%r72257%_))))
                                      '()
                                      (foldr (lambda (_%g7238572388%_
                                                      _%g7238672391%_)
                                               (cons _%g7238572388%_
                                                     _%g7238672391%_))
                                             '()
                                             _%L69975%_))
                               (gx#core-quote-syntax _%L69753%_))))
                      (let* ((_%g7239672411%_
                              (lambda (_%g7239772407%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g7239772407%_)))
                             (_%g7239572464%_
                              (lambda (_%g7239772415%_)
                                (if (gx#stx-pair? _%g7239772415%_)
                                    (let ((_%e7240072418%_
                                           (gx#syntax-e _%g7239772415%_)))
                                      (let ((_%hd7240172422%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7240072418%_)))
                                            (_%tl7240272425%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7240072418%_))))
                                        (if (gx#stx-pair? _%tl7240272425%_)
                                            (let ((_%e7240372428%_
                                                   (gx#syntax-e
                                                    _%tl7240272425%_)))
                                              (let ((_%hd7240472432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7240372428%_)))
                                                    (_%tl7240572435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7240372428%_))))
                                                (if (gx#stx-null?
                                                     _%tl7240572435%_)
                                                    ((lambda (_%L72438%_
                                                              _%L72440%_)
                                                       (_%wrap69523%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def/c)
                                                              (cons (cons _%L69781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%L72440%_)
                            (cons (gx#datum->syntax '#f '=>)
                                  (cons _%L69715%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L72438%_ '()))
                  (cons (cons (gx#datum->syntax '#f '##structure)
                              (cons _%L72438%_
                                    (foldr (lambda (_%g7245572458%_
                                                    _%g7245672461%_)
                                             (cons _%g7245572458%_
                                                   _%g7245672461%_))
                                           '()
                                           _%L69975%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd7240472432%_
                                                     _%hd7240172422%_)
                                                    (_%g7239672411%_
                                                     _%g7239772415%_))))
                                            (_%g7239672411%_
                                             _%g7239772415%_))))
                                    (_%g7239672411%_ _%g7239772415%_)))))
                        (_%g7239572464%_
                         (list (foldr (lambda (_%slot72468%_ _%r72470%_)
                                        (let* ((_%default72472%_
                                                (hash-get
                                                 _%slot-default-table69674%_
                                                 (gx#stx-e _%slot72468%_)))
                                               (_%$e72475%_
                                                (hash-get
                                                 _%slot-contract-table69671%_
                                                 (gx#stx-e _%slot72468%_))))
                                          (if _%$e72475%_
                                              ((lambda (_%contract72479%_)
                                                 (let* ((_%g7248272519%_
                                                         (lambda (_%g7248372515%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g7248372515%_)))
                                                        (_%g7248172666%_
                                                         (lambda (_%g7248372523%_)
                                                           (if (gx#stx-pair?
                                                                _%g7248372523%_)
                                                               (let ((_%e7248772526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g7248372523%_)))
                         (let ((_%hd7248872530%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e7248772526%_)))
                               (_%tl7248972533%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e7248772526%_))))
                           (if (gx#stx-pair? _%tl7248972533%_)
                               (let ((_%e7249072536%_
                                      (gx#syntax-e _%tl7248972533%_)))
                                 (let ((_%hd7249172540%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7249072536%_)))
                                       (_%tl7249272543%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7249072536%_))))
                                   (if (gx#stx-pair/null? _%hd7249172540%_)
                                       (let ((_g84272_
                                              (gx#syntax-split-splice
                                               _%hd7249172540%_
                                               '0)))
                                         (begin
                                           (let ((_g84273_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g84272_)
                                                        (##vector-length
                                                         _g84272_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g84273_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g84273_)))
                                           (let ((_%target7249372546%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g84272_ 0)))
                                                 (_%tl7249572549%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g84272_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7249572549%_)
                                                 (letrec ((_%loop7249672552%_
                                                           (lambda (_%hd7249472556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%contract7250072559%_)
                     (if (gx#stx-pair? _%hd7249472556%_)
                         (let ((_%e7249772562%_
                                (gx#syntax-e _%hd7249472556%_)))
                           (let ((_%lp-hd7249872566%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7249772562%_)))
                                 (_%lp-tl7249972569%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7249772562%_))))
                             (_%loop7249672552%_
                              _%lp-tl7249972569%_
                              (cons _%lp-hd7249872566%_
                                    _%contract7250072559%_))))
                         (let ((_%contract7250172572%_
                                (reverse _%contract7250072559%_)))
                           (if (gx#stx-pair? _%tl7249272543%_)
                               (let ((_%e7250272576%_
                                      (gx#syntax-e _%tl7249272543%_)))
                                 (let ((_%hd7250372580%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7250272576%_)))
                                       (_%tl7250472583%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7250272576%_))))
                                   (if (gx#stx-pair/null? _%hd7250372580%_)
                                       (let ((_g84274_
                                              (gx#syntax-split-splice
                                               _%hd7250372580%_
                                               '0)))
                                         (begin
                                           (let ((_g84275_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g84274_)
                                                        (##vector-length
                                                         _g84274_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g84275_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g84275_)))
                                           (let ((_%target7250572586%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g84274_ 0)))
                                                 (_%tl7250772589%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g84274_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7250772589%_)
                                                 (letrec ((_%loop7250872592%_
                                                           (lambda (_%hd7250672596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%default7251272599%_)
                     (if (gx#stx-pair? _%hd7250672596%_)
                         (let ((_%e7250972602%_
                                (gx#syntax-e _%hd7250672596%_)))
                           (let ((_%lp-hd7251072606%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7250972602%_)))
                                 (_%lp-tl7251172609%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7250972602%_))))
                             (_%loop7250872592%_
                              _%lp-tl7251172609%_
                              (cons _%lp-hd7251072606%_
                                    _%default7251272599%_))))
                         (let ((_%default7251372612%_
                                (reverse _%default7251272599%_)))
                           (if (gx#stx-null? _%tl7250472583%_)
                               ((lambda (_%L72616%_ _%L72618%_ _%L72619%_)
                                  (cons (symbol->keyword (gx#stx-e _%L72619%_))
                                        (cons (cons _%L72619%_
                                                    (foldr (lambda (_%g7264972654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g7265072657%_)
                     (cons _%g7264972654%_ _%g7265072657%_))
                   (foldr (lambda (_%g7265172660%_ _%g7265272663%_)
                            (cons _%g7265172660%_ _%g7265272663%_))
                          '()
                          _%L72616%_)
                   _%L72618%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%r72470%_)))
                                _%default7251372612%_
                                _%contract7250172572%_
                                _%hd7248872530%_)
                               (_%g7248272519%_ _%g7248372523%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7250872592%_
                                                    _%target7250572586%_
                                                    '()))
                                                 (_%g7248272519%_
                                                  _%g7248372523%_)))))
                                       (_%g7248272519%_ _%g7248372523%_))))
                               (_%g7248272519%_ _%g7248372523%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7249672552%_
                                                    _%target7249372546%_
                                                    '()))
                                                 (_%g7248272519%_
                                                  _%g7248372523%_)))))
                                       (_%g7248272519%_ _%g7248372523%_))))
                               (_%g7248272519%_ _%g7248372523%_))))
                       (_%g7248272519%_ _%g7248372523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g7248172666%_
                                                    (list _%slot72468%_
                                                          _%contract72479%_
                                                          (if _%default72472%_
                                                              (cons ':=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%default72472%_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$e72475%_)
                                              (cons (symbol->keyword
                                                     (gx#stx-e _%slot72468%_))
                                                    (cons (cons _%slot72468%_
                                                                (cons _%default72472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%r72470%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()
                                      (foldr (lambda (_%g7267172674%_
                                                      _%g7267272677%_)
                                               (cons _%g7267172674%_
                                                     _%g7267272677%_))
                                             '()
                                             _%L69975%_))
                               (gx#core-quote-syntax _%L69753%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g7188671897%_))))
                                        (_%g7188472680%_
                                         (_%wrap69523%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%L69715%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'make-class-type-info)
                          (cons 'id:
                                (cons _%L71359%_
                                      (cons 'name:
                                            (cons _%L71387%_
                                                  (cons 'slots:
                                                        (cons _%L71443%_
                                                              (cons 'ordered-slots:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L71471%_
                                  (cons 'super:
                                        (cons _%L71415%_
                                              (cons 'struct?:
                                                    (cons _%L71583%_
                                                          (cons 'final?:
                                                                (cons _%L71611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'metaclass:
                                    (cons _%L71639%_
                                          (cons 'constructor-method:
                                                (cons _%L71667%_
                                                      (cons 'type-descriptor:
                                                            (cons _%L71695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'constructor:
                                (cons _%L71723%_
                                      (cons 'predicate:
                                            (cons _%L71751%_
                                                  (cons 'accessors:
                                                        (cons _%L71779%_
                                                              (cons 'mutators:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L71835%_
                                  (cons 'unchecked-accessors:
                                        (cons _%L71807%_
                                              (cons 'unchecked-mutators:
                                                    (cons _%L71871%_
                                                          (cons 'slot-types:
                                                                (cons _%L71499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slot-contracts:
                                    (cons _%L71527%_
                                          (cons 'slot-defaults:
                                                (cons _%L71555%_
                                                      '())))))))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g7185771868%_))))
                           (_%g7185572684%_
                            (let* ((_%g7268872721%_
                                    (lambda (_%g7268972717%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g7268972717%_)))
                                   (_%g7268772850%_
                                    (lambda (_%g7268972725%_)
                                      (if (gx#stx-pair? _%g7268972725%_)
                                          (let ((_%e7269272728%_
                                                 (gx#syntax-e
                                                  _%g7268972725%_)))
                                            (let ((_%hd7269372732%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7269272728%_)))
                                                  (_%tl7269472735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7269272728%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd7269372732%_)
                                                  (let ((_g84276_
                                                         (gx#syntax-split-splice
                                                          _%hd7269372732%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84277_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84276_)
                           (##vector-length _g84276_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84277_ 2)))
                    (error "Context expects 2 values" _g84277_)))
              (let ((_%target7269572738%_
                     (let () (declare (not safe)) (##vector-ref _g84276_ 0)))
                    (_%tl7269772741%_
                     (let () (declare (not safe)) (##vector-ref _g84276_ 1))))
                (if (gx#stx-null? _%tl7269772741%_)
                    (letrec ((_%loop7269872744%_
                              (lambda (_%hd7269672748%_
                                       _%slot-usetf7270272751%_)
                                (if (gx#stx-pair? _%hd7269672748%_)
                                    (let ((_%e7269972754%_
                                           (gx#syntax-e _%hd7269672748%_)))
                                      (let ((_%lp-hd7270072758%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7269972754%_)))
                                            (_%lp-tl7270172761%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7269972754%_))))
                                        (_%loop7269872744%_
                                         _%lp-tl7270172761%_
                                         (cons _%lp-hd7270072758%_
                                               _%slot-usetf7270272751%_))))
                                    (let ((_%slot-usetf7270372764%_
                                           (reverse _%slot-usetf7270272751%_)))
                                      (if (gx#stx-pair? _%tl7269472735%_)
                                          (let ((_%e7270472768%_
                                                 (gx#syntax-e
                                                  _%tl7269472735%_)))
                                            (let ((_%hd7270572772%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7270472768%_)))
                                                  (_%tl7270672775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7270472768%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd7270572772%_)
                                                  (let ((_g84278_
                                                         (gx#syntax-split-splice
                                                          _%hd7270572772%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84279_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84278_)
                           (##vector-length _g84278_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84279_ 2)))
                    (error "Context expects 2 values" _g84279_)))
              (let ((_%target7270772778%_
                     (let () (declare (not safe)) (##vector-ref _g84278_ 0)))
                    (_%tl7270972781%_
                     (let () (declare (not safe)) (##vector-ref _g84278_ 1))))
                (if (gx#stx-null? _%tl7270972781%_)
                    (letrec ((_%loop7271072784%_
                              (lambda (_%hd7270872788%_
                                       _%mixin-slot-usetf7271472791%_)
                                (if (gx#stx-pair? _%hd7270872788%_)
                                    (let ((_%e7271172794%_
                                           (gx#syntax-e _%hd7270872788%_)))
                                      (let ((_%lp-hd7271272798%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7271172794%_)))
                                            (_%lp-tl7271372801%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7271172794%_))))
                                        (_%loop7271072784%_
                                         _%lp-tl7271372801%_
                                         (cons _%lp-hd7271272798%_
                                               _%mixin-slot-usetf7271472791%_))))
                                    (let ((_%mixin-slot-usetf7271572804%_
                                           (reverse _%mixin-slot-usetf7271472791%_)))
                                      (if (gx#stx-null? _%tl7270672775%_)
                                          ((lambda (_%L72808%_ _%L72810%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (foldr (lambda (_%g7283372838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g7283472841%_)
                    (cons _%g7283372838%_ _%g7283472841%_))
                  (foldr (lambda (_%g7283572844%_ _%g7283672847%_)
                           (cons _%g7283572844%_ _%g7283672847%_))
                         '()
                         _%L72808%_)
                  _%L72810%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-slot-usetf7271572804%_
                                           _%slot-usetf7270372764%_)
                                          (_%g7268872721%_
                                           _%g7268972725%_)))))))
                      (_%loop7271072784%_ _%target7270772778%_ '()))
                    (_%g7268872721%_ _%g7268972725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7268872721%_
                                                   _%g7268972725%_))))
                                          (_%g7268872721%_
                                           _%g7268972725%_)))))))
                      (_%loop7269872744%_ _%target7269572738%_ '()))
                    (_%g7268872721%_ _%g7268972725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7268872721%_
                                                   _%g7268972725%_))))
                                          (_%g7268872721%_ _%g7268972725%_)))))
                              (_%g7268772850%_
                               (list (map _%map-slot-usetf71853%_
                                          (foldr (lambda (_%g7285372856%_
                                                          _%g7285472859%_)
                                                   (cons _%g7285372856%_
                                                         _%g7285472859%_))
                                                 '()
                                                 _%L69904%_)
                                          (foldr (lambda (_%g7286172864%_
                                                          _%g7286272867%_)
                                                   (cons _%g7286172864%_
                                                         _%g7286272867%_))
                                                 '()
                                                 _%L70614%_)
                                          (foldr (lambda (_%g7286972872%_
                                                          _%g7287072875%_)
                                                   (cons _%g7286972872%_
                                                         _%g7287072875%_))
                                                 '()
                                                 _%L70188%_))
                                     (map _%map-slot-usetf71853%_
                                          (foldr (lambda (_%g7287772880%_
                                                          _%g7287872883%_)
                                                   (cons _%g7287772880%_
                                                         _%g7287872883%_))
                                                 '()
                                                 _%L70259%_)
                                          (foldr (lambda (_%g7288572888%_
                                                          _%g7288672891%_)
                                                   (cons _%g7288572888%_
                                                         _%g7288672891%_))
                                                 '()
                                                 _%L70756%_)
                                          (foldr (lambda (_%g7289372896%_
                                                          _%g7289472899%_)
                                                   (cons _%g7289372896%_
                                                         _%g7289472899%_))
                                                 '()
                                                 _%L70472%_))))))))
                       _%g7182171832%_))))
              (_%g7181972902%_
               (cons (gx#datum->syntax '#f '@list)
                     (begin
                       (gx#syntax-check-splice-targets _%L70117%_ _%L69904%_)
                       (foldr (lambda (_%g7290572912%_
                                       _%g7290672915%_
                                       _%g7290772917%_)
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%g7290672915%_
                                                              '()))
                                                  (cons '::
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%g7290572912%_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%g7290772917%_))
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%L70401%_
                                 _%L70259%_)
                                (foldr (lambda (_%g7290872920%_
                                                _%g7290972923%_
                                                _%g7291072925%_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g7290972923%_ '()))
                   (cons '::
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g7290872920%_ '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g7291072925%_))
                                       '()
                                       _%L70401%_
                                       _%L70259%_))
                              _%L70117%_
                              _%L69904%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g7179371804%_))))
                                         (_%g7179172928%_
                                          (cons (gx#datum->syntax '#f '@list)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L70543%_
                                                   _%L69904%_)
                                                  (foldr (lambda (_%g7293172938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g7293272941%_
                          _%g7293372943%_)
                   (cons (cons (gx#datum->syntax '#f '@list)
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g7293272941%_ '()))
                                     (cons '::
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _%g7293172938%_
                                                             '()))
                                                 '()))))
                         _%g7293372943%_))
                 (begin
                   (gx#syntax-check-splice-targets _%L70685%_ _%L70259%_)
                   (foldr (lambda (_%g7293472946%_
                                   _%g7293572949%_
                                   _%g7293672951%_)
                            (cons (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g7293572949%_ '()))
                                              (cons '::
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _%g7293472946%_ '()))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%g7293672951%_))
                          '()
                          _%L70685%_
                          _%L70259%_))
                 _%L70543%_
                 _%L69904%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g7176571776%_))))
                            (_%g7176372954%_
                             (cons (gx#datum->syntax '#f '@list)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _%L70046%_
                                      _%L69904%_)
                                     (foldr (lambda (_%g7295772964%_
                                                     _%g7295872967%_
                                                     _%g7295972969%_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%g7295872967%_ '()))
                        (cons '::
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g7295772964%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g7295972969%_))
                                            (begin
                                              (gx#syntax-check-splice-targets
                                               _%L70330%_
                                               _%L70259%_)
                                              (foldr (lambda (_%g7296072972%_
                                                              _%g7296172975%_
                                                              _%g7296272977%_)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%g7296172975%_ '()))
                                 (cons '::
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote-syntax)
                                                   (cons _%g7296072972%_ '()))
                                             '()))))
                     _%g7296272977%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _%L70330%_
                                                     _%L70259%_))
                                            _%L70046%_
                                            _%L69904%_))))))
                        _%g7173771748%_))))
               (_%g7173572980%_
                (cons (gx#datum->syntax '#f 'quote-syntax)
                      (cons _%L69809%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g7170971720%_))))
                                          (_%g7170772984%_
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _%L69781%_ '())))))
                                      _%g7168171692%_))))
                             (_%g7167972988%_
                              (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _%L69753%_ '())))))
                         _%g7165371664%_))))
                (_%g7165172992%_
                 (if (null? _%type-constructor71094%_)
                     '#f
                     (let* ((_%g7299673011%_
                             (lambda (_%g7299773007%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g7299773007%_)))
                            (_%g7299573059%_
                             (lambda (_%g7299773015%_)
                               (if (gx#stx-pair? _%g7299773015%_)
                                   (let ((_%e7299973018%_
                                          (gx#syntax-e _%g7299773015%_)))
                                     (let ((_%hd7300073022%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7299973018%_)))
                                           (_%tl7300173025%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7299973018%_))))
                                       (if (gx#stx-datum? _%hd7300073022%_)
                                           (let ((_%e7300273028%_
                                                  (gx#stx-e _%hd7300073022%_)))
                                             (if (equal? _%e7300273028%_
                                                         'constructor:)
                                                 (if (gx#stx-pair?
                                                      _%tl7300173025%_)
                                                     (let ((_%e7300373032%_
                                                            (gx#syntax-e
                                                             _%tl7300173025%_)))
                                                       (let ((_%hd7300473036%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7300373032%_)))
                     (_%tl7300573039%_
                      (let () (declare (not safe)) (##cdr _%e7300373032%_))))
                 (if (gx#stx-null? _%tl7300573039%_)
                     ((lambda (_%L73042%_)
                        (cons (gx#datum->syntax '#f 'quote)
                              (cons _%L73042%_ '())))
                      _%hd7300473036%_)
                     (_%g7299673011%_ _%g7299773015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7299673011%_
                                                      _%g7299773015%_))
                                                 (_%g7299673011%_
                                                  _%g7299773015%_)))
                                           (_%g7299673011%_ _%g7299773015%_))))
                                   (_%g7299673011%_ _%g7299773015%_)))))
                       (_%g7299573059%_ _%type-constructor71094%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g7162571636%_))))
                                           (_%g7162373063%_
                                            (if _%metaclass71198%_
                                                (let* ((_%g7306773075%_
                                                        (lambda (_%g7306873071%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g7306873071%_)))
                                                       (_%g7306673094%_
                                                        (lambda (_%g7306873079%_)
                                                          ((lambda (_%L73082%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote-syntax)
                           (cons _%L73082%_ '())))
                   _%g7306873079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7306673094%_
                                                   _%metaclass71198%_))
                                                '#f))))
                                       _%g7159771608%_))))
                              (_%g7159573098%_ _%final?71201%_)))
                          _%g7156971580%_))))
                 (_%g7156773102%_ _%struct?69697%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g7154171552%_))))
                                            (_%g7153973106%_
                                             (let* ((_%g7311073133%_
                                                     (lambda (_%g7311173129%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7311173129%_)))
                                                    (_%g7310973213%_
                                                     (lambda (_%g7311173137%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g7311173137%_)
                                                           (let ((_g84280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g7311173137%_ '0)))
                     (begin
                       (let ((_g84281_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g84280_)
                                    (##vector-length _g84280_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g84281_ 2)))
                             (error "Context expects 2 values" _g84281_)))
                       (let ((_%target7311473140%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g84280_ 0)))
                             (_%tl7311673143%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g84280_ 1))))
                         (if (gx#stx-null? _%tl7311673143%_)
                             (letrec ((_%loop7311773146%_
                                       (lambda (_%hd7311573150%_
                                                _%default7312173153%_
                                                _%slot7312273155%_)
                                         (if (gx#stx-pair? _%hd7311573150%_)
                                             (let ((_%e7311873158%_
                                                    (gx#syntax-e
                                                     _%hd7311573150%_)))
                                               (let ((_%lp-hd7311973162%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7311873158%_)))
                                                     (_%lp-tl7312073165%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7311873158%_))))
                                                 (if (gx#stx-pair?
                                                      _%lp-hd7311973162%_)
                                                     (let ((_%e7312573168%_
                                                            (gx#syntax-e
                                                             _%lp-hd7311973162%_)))
                                                       (let ((_%hd7312673172%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7312573168%_)))
                     (_%tl7312773175%_
                      (let () (declare (not safe)) (##cdr _%e7312573168%_))))
                 (_%loop7311773146%_
                  _%lp-tl7312073165%_
                  (cons _%tl7312773175%_ _%default7312173153%_)
                  (cons _%hd7312673172%_ _%slot7312273155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7311073133%_
                                                      _%g7311173137%_))))
                                             (let ((_%default7312373178%_
                                                    (reverse _%default7312173153%_))
                                                   (_%slot7312473181%_
                                                    (reverse _%slot7312273155%_)))
                                               ((lambda (_%L73184%_ _%L73186%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        (begin
                                                          (gx#syntax-check-splice-targets
                                                           _%L73184%_
                                                           _%L73186%_)
                                                          (foldr (lambda (_%g7320173205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g7320273208%_
                                  _%g7320373210%_)
                           (cons (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g7320273208%_ '()))
                                             (cons '::
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g7320173205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%g7320373210%_))
                         '()
                         _%L73184%_
                         _%L73186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%default7312373178%_
                                                _%slot7312473181%_))))))
                               (_%loop7311773146%_
                                _%target7311473140%_
                                '()
                                '()))
                             (_%g7311073133%_ _%g7311173137%_)))))
                   (_%g7311073133%_ _%g7311173137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7310973213%_
                                                (hash->list
                                                 _%slot-default-table69674%_))))))
                                        _%g7151371524%_))))
                               (_%g7151173217%_
                                (let* ((_%g7322173244%_
                                        (lambda (_%g7322273240%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g7322273240%_)))
                                       (_%g7322073324%_
                                        (lambda (_%g7322273248%_)
                                          (if (gx#stx-pair/null?
                                               _%g7322273248%_)
                                              (let ((_g84282_
                                                     (gx#syntax-split-splice
                                                      _%g7322273248%_
                                                      '0)))
                                                (begin
                                                  (let ((_g84283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g84282_)
                                                               (##vector-length
                                                                _g84282_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g84283_ 2)))
                (error "Context expects 2 values" _g84283_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target7322573251%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g84282_
                                                            0)))
                                                        (_%tl7322773254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g84282_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl7322773254%_)
                                                        (letrec ((_%loop7322873257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd7322673261%_
                                   _%contract7323273264%_
                                   _%slot7323373266%_)
                            (if (gx#stx-pair? _%hd7322673261%_)
                                (let ((_%e7322973269%_
                                       (gx#syntax-e _%hd7322673261%_)))
                                  (let ((_%lp-hd7323073273%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7322973269%_)))
                                        (_%lp-tl7323173276%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7322973269%_))))
                                    (if (gx#stx-pair? _%lp-hd7323073273%_)
                                        (let ((_%e7323673279%_
                                               (gx#syntax-e
                                                _%lp-hd7323073273%_)))
                                          (let ((_%hd7323773283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7323673279%_)))
                                                (_%tl7323873286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7323673279%_))))
                                            (_%loop7322873257%_
                                             _%lp-tl7323173276%_
                                             (cons _%tl7323873286%_
                                                   _%contract7323273264%_)
                                             (cons _%hd7323773283%_
                                                   _%slot7323373266%_))))
                                        (_%g7322173244%_ _%g7322273248%_))))
                                (let ((_%contract7323473289%_
                                       (reverse _%contract7323273264%_))
                                      (_%slot7323573292%_
                                       (reverse _%slot7323373266%_)))
                                  ((lambda (_%L73295%_ _%L73297%_)
                                     (cons (gx#datum->syntax '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _%L73295%_
                                              _%L73297%_)
                                             (foldr (lambda (_%g7331273316%_
                                                             _%g7331373319%_
                                                             _%g7331473321%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '@list)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g7331373319%_ '()))
                                (cons '::
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g7331273316%_ '()))
                                            '()))))
                    _%g7331473321%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _%L73295%_
                                                    _%L73297%_))))
                                   _%contract7323473289%_
                                   _%slot7323573292%_))))))
                  (_%loop7322873257%_ _%target7322573251%_ '() '()))
                (_%g7322173244%_ _%g7322273248%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7322173244%_
                                               _%g7322273248%_)))))
                                  (_%g7322073324%_
                                   (hash->list
                                    _%slot-contract-table69671%_))))))
                           _%g7148571496%_))))
                  (_%g7148373328%_
                   (let* ((_%g7333273355%_
                           (lambda (_%g7333373351%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7333373351%_)))
                          (_%g7333173435%_
                           (lambda (_%g7333373359%_)
                             (if (gx#stx-pair/null? _%g7333373359%_)
                                 (let ((_g84284_
                                        (gx#syntax-split-splice
                                         _%g7333373359%_
                                         '0)))
                                   (begin
                                     (let ((_g84285_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g84284_)
                                                  (##vector-length _g84284_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g84285_ 2)))
                                           (error "Context expects 2 values"
                                                  _g84285_)))
                                     (let ((_%target7333673362%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g84284_ 0)))
                                           (_%tl7333873365%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g84284_ 1))))
                                       (if (gx#stx-null? _%tl7333873365%_)
                                           (letrec ((_%loop7333973368%_
                                                     (lambda (_%hd7333773372%_
                                                              _%type7334373375%_
                                                              _%slot7334473377%_)
                                                       (if (gx#stx-pair?
                                                            _%hd7333773372%_)
                                                           (let ((_%e7334073380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd7333773372%_)))
                     (let ((_%lp-hd7334173384%_
                            (let ()
                              (declare (not safe))
                              (##car _%e7334073380%_)))
                           (_%lp-tl7334273387%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e7334073380%_))))
                       (if (gx#stx-pair? _%lp-hd7334173384%_)
                           (let ((_%e7334773390%_
                                  (gx#syntax-e _%lp-hd7334173384%_)))
                             (let ((_%hd7334873394%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e7334773390%_)))
                                   (_%tl7334973397%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e7334773390%_))))
                               (_%loop7333973368%_
                                _%lp-tl7334273387%_
                                (cons _%tl7334973397%_ _%type7334373375%_)
                                (cons _%hd7334873394%_ _%slot7334473377%_))))
                           (_%g7333273355%_ _%g7333373359%_))))
                   (let ((_%type7334573400%_ (reverse _%type7334373375%_))
                         (_%slot7334673403%_ (reverse _%slot7334473377%_)))
                     ((lambda (_%L73406%_ _%L73408%_)
                        (cons (gx#datum->syntax '#f '@list)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%L73406%_
                                 _%L73408%_)
                                (foldr (lambda (_%g7342373427%_
                                                _%g7342473430%_
                                                _%g7342573432%_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g7342473430%_ '()))
                   (cons '::
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g7342373427%_ '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g7342573432%_))
                                       '()
                                       _%L73406%_
                                       _%L73408%_))))
                      _%type7334573400%_
                      _%slot7334673403%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop7333973368%_
                                              _%target7333673362%_
                                              '()
                                              '()))
                                           (_%g7333273355%_
                                            _%g7333373359%_)))))
                                 (_%g7333273355%_ _%g7333373359%_)))))
                     (_%g7333173435%_
                      (filter (lambda (_%st73439%_) (cdr _%st73439%_))
                              (hash->list _%slot-type-table69669%_)))))))
              _%g7145771468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g7145573442%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons (foldr (lambda (_%g7344573448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g7344673451%_)
                           (cons _%g7344573448%_ _%g7344673451%_))
                         '()
                         _%L69975%_)
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g7142971440%_))))
                                (_%g7142773454%_
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons (foldr (lambda (_%g7345773460%_
                                                             _%g7345873463%_)
                                                      (cons _%g7345773460%_
                                                            _%g7345873463%_))
                                                    '()
                                                    _%L69904%_)
                                             '())))))
                            _%g7140171412%_))))
                   (_%g7139973466%_
                    (let* ((_%g7347073487%_
                            (lambda (_%g7347173483%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7347173483%_)))
                           (_%g7346973548%_
                            (lambda (_%g7347173491%_)
                              (if (gx#stx-pair/null? _%g7347173491%_)
                                  (let ((_g84286_
                                         (gx#syntax-split-splice
                                          _%g7347173491%_
                                          '0)))
                                    (begin
                                      (let ((_g84287_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84286_)
                                                   (##vector-length _g84286_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84287_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84287_)))
                                      (let ((_%target7347373494%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g84286_ 0)))
                                            (_%tl7347573497%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g84286_ 1))))
                                        (if (gx#stx-null? _%tl7347573497%_)
                                            (letrec ((_%loop7347673500%_
                                                      (lambda (_%hd7347473504%_
                                                               _%super-id7348073507%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7347473504%_)
                                                            (let ((_%e7347773510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7347473504%_)))
                      (let ((_%lp-hd7347873514%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7347773510%_)))
                            (_%lp-tl7347973517%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7347773510%_))))
                        (_%loop7347673500%_
                         _%lp-tl7347973517%_
                         (cons _%lp-hd7347873514%_ _%super-id7348073507%_))))
                    (let ((_%super-id7348173520%_
                           (reverse _%super-id7348073507%_)))
                      ((lambda (_%L73524%_)
                         (cons (gx#datum->syntax '#f '@list)
                               (foldr (lambda (_%g7353973542%_ _%g7354073545%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax)
                                                    (cons _%g7353973542%_ '()))
                                              _%g7354073545%_))
                                      '()
                                      _%L73524%_)))
                       _%super-id7348173520%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7347673500%_
                                               _%target7347373494%_
                                               '()))
                                            (_%g7347073487%_
                                             _%g7347173491%_)))))
                                  (_%g7347073487%_ _%g7347173491%_)))))
                      (_%g7346973548%_ _%super-ref69660%_)))))
               _%g7137371384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7137173552%_
                                               (let* ((_%g7355673564%_
                                                       (lambda (_%g7355773560%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g7355773560%_)))
                                                      (_%g7355573583%_
                                                       (lambda (_%g7355773568%_)
                                                         ((lambda (_%L73571%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L73571%_ '())))
                  _%g7355773568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7355573583%_
                                                  (gx#stx-car
                                                   (gx#stx-cdr
                                                    _%type-name71072%_)))))))
                                          _%g7134571356%_))))
                                 (_%g7134373587%_
                                  (let* ((_%g7359173606%_
                                          (lambda (_%g7359273602%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g7359273602%_)))
                                         (_%g7359073654%_
                                          (lambda (_%g7359273610%_)
                                            (if (gx#stx-pair? _%g7359273610%_)
                                                (let ((_%e7359473613%_
                                                       (gx#syntax-e
                                                        _%g7359273610%_)))
                                                  (let ((_%hd7359573617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e7359473613%_)))
                                                        (_%tl7359673620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e7359473613%_))))
                                                    (if (gx#stx-datum?
                                                         _%hd7359573617%_)
                                                        (let ((_%e7359773623%_
                                                               (gx#stx-e
                                                                _%hd7359573617%_)))
                                                          (if (equal? _%e7359773623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'id:)
                      (if (gx#stx-pair? _%tl7359673620%_)
                          (let ((_%e7359873627%_
                                 (gx#syntax-e _%tl7359673620%_)))
                            (let ((_%hd7359973631%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7359873627%_)))
                                  (_%tl7360073634%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7359873627%_))))
                              (if (gx#stx-null? _%tl7360073634%_)
                                  ((lambda (_%L73637%_)
                                     (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L73637%_ '())))
                                   _%hd7359973631%_)
                                  (_%g7359173606%_ _%g7359273610%_))))
                          (_%g7359173606%_ _%g7359273610%_))
                      (_%g7359173606%_ _%g7359273610%_)))
                (_%g7359173606%_ _%g7359273610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g7359173606%_
                                                 _%g7359273610%_)))))
                                    (_%g7359073654%_ _%type-id71079%_)))))
                             _%g7131771328%_))))
                    (_%g7131573658%_
                     (_%wrap69523%_
                      (cons (gx#datum->syntax '#f 'defclass-type)
                            (cons _%L69753%_
                                  (cons _%L69837%_
                                        (cons _%L71303%_
                                              (cons _%L69809%_
                                                    (foldr (lambda (_%g7366173664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g7366273667%_)
                     (cons _%g7366173664%_ _%g7366273667%_))
                   '()
                   _%L71267%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                _%g7128971300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7128773670%_
                                                (if (or (not (null? _%type-constructor71094%_))
                                                        (and (zero? (hash-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%slot-contract-table69671%_))
                     (zero? (hash-length _%slot-default-table69674%_)))
                _%metaclass71198%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%L69781%_
                                                    '#f))))
                                           _%type-body7122471263%_))))))
                          (_%loop7121971243%_ _%target7121671237%_ '()))
                        (_%g7121371230%_ _%g7121471234%_)))))
              (_%g7121371230%_ _%g7121471234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g7121273682%_
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _%type-mixin-slots71065%_
                                                           _%type-slots70918%_)
                                                    _%type-properties71186%_)
                                             _%type-metaclass71210%_)
                                      _%type-final71207%_)
                               _%type-struct71204%_)
                        _%type-constructor71094%_)
                 _%type-name71072%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-id71079%_))))
                                      _%mixin-usetf7071370752%_))))))
                     (_%loop7070870732%_ _%target7070570726%_ '()))
                   (_%g7070270719%_ _%g7070370723%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7070270719%_
                                                  _%g7070370723%_)))))
                                     (_%g7070173686%_
                                      (gx#stx-map
                                       (lambda (_%g7368973691%_)
                                         (_%make-id69664%_
                                          '"&"
                                          _%g7368973691%_))
                                       (foldr (lambda (_%g7369473697%_
                                                       _%g7369573700%_)
                                                (cons _%g7369473697%_
                                                      _%g7369573700%_))
                                              '()
                                              _%L70401%_)))))
                                 _%mixin-ugetf7064270681%_))))))
                (_%loop7063770661%_ _%target7063470655%_ '()))
              (_%g7063170648%_ _%g7063270652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g7063170648%_
                                             _%g7063270652%_)))))
                                (_%g7063073703%_
                                 (gx#stx-map
                                  (lambda (_%g7370673708%_)
                                    (_%make-id69664%_ '"&" _%g7370673708%_))
                                  (foldr (lambda (_%g7371173714%_
                                                  _%g7371273717%_)
                                           (cons _%g7371173714%_
                                                 _%g7371273717%_))
                                         '()
                                         _%L70330%_)))))
                            _%usetf7057170610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7056670590%_
                                                    _%target7056370584%_
                                                    '()))
                                                 (_%g7056070577%_
                                                  _%g7056170581%_)))))
                                       (_%g7056070577%_ _%g7056170581%_)))))
                           (_%g7055973720%_
                            (gx#stx-map
                             (lambda (_%g7372373725%_)
                               (_%make-id69664%_ '"&" _%g7372373725%_))
                             (foldr (lambda (_%g7372873731%_ _%g7372973734%_)
                                      (cons _%g7372873731%_ _%g7372973734%_))
                                    '()
                                    _%L70117%_)))))
                       _%ugetf7050070539%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7049570519%_
                                               _%target7049270513%_
                                               '()))
                                            (_%g7048970506%_
                                             _%g7049070510%_)))))
                                  (_%g7048970506%_ _%g7049070510%_)))))
                      (_%g7048873737%_
                       (gx#stx-map
                        (lambda (_%g7374073742%_)
                          (_%make-id69664%_ '"&" _%g7374073742%_))
                        (foldr (lambda (_%g7374573748%_ _%g7374673751%_)
                                 (cons _%g7374573748%_ _%g7374673751%_))
                               '()
                               _%L70046%_)))))
                  _%mixin-rawsetf7042970468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop7042470448%_
                                          _%target7042170442%_
                                          '()))
                                       (_%g7041870435%_ _%g7041970439%_)))))
                             (_%g7041870435%_ _%g7041970439%_)))))
                 (_%g7041773754%_
                  (gx#stx-map
                   (lambda (_%g7375773759%_)
                     (_%make-id69664%_
                      _%name69691%_
                      '"-unchecked-"
                      _%g7375773759%_
                      '"-set!"))
                   _%mixin-slots69688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-setf7035870397%_))))))
                                    (_%loop7035370377%_
                                     _%target7035070371%_
                                     '()))
                                  (_%g7034770364%_ _%g7034870368%_)))))
                        (_%g7034770364%_ _%g7034870368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g7034673763%_
                                                     (gx#stx-map
                                                      (lambda (_%g7376673768%_)
                                                        (_%make-id69664%_
                                                         _%name69691%_
                                                         '"-"
                                                         _%g7376673768%_
                                                         '"-set!"))
                                                      _%mixin-slots69688%_))))
                                                _%mixin-getf7028770326%_))))))
                               (_%loop7028270306%_ _%target7027970300%_ '()))
                             (_%g7027670293%_ _%g7027770297%_)))))
                   (_%g7027670293%_ _%g7027770297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7027573772%_
                                                (gx#stx-map
                                                 (lambda (_%g7377573777%_)
                                                   (_%make-id69664%_
                                                    _%name69691%_
                                                    '"-"
                                                    _%g7377573777%_))
                                                 _%mixin-slots69688%_))))
                                           _%mixin-slot7021670255%_))))))
                          (_%loop7021170235%_ _%target7020870229%_ '()))
                        (_%g7020570222%_ _%g7020670226%_)))))
              (_%g7020570222%_ _%g7020670226%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g7020473781%_
                                           _%mixin-slots69688%_)))
                                      _%rawsetf7014570184%_))))))
                     (_%loop7014070164%_ _%target7013770158%_ '()))
                   (_%g7013470151%_ _%g7013570155%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7013470151%_
                                                  _%g7013570155%_)))))
                                     (_%g7013373785%_
                                      (gx#stx-map
                                       (lambda (_%g7378873790%_)
                                         (_%make-id69664%_
                                          _%name69691%_
                                          '"-unchecked-"
                                          _%g7378873790%_
                                          '"-set!"))
                                       _%slots69682%_))))
                                 _%setf7007470113%_))))))
                (_%loop7006970093%_ _%target7006670087%_ '()))
              (_%g7006370080%_ _%g7006470084%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g7006370080%_
                                             _%g7006470084%_)))))
                                (_%g7006273794%_
                                 (gx#stx-map
                                  (lambda (_%g7379773799%_)
                                    (_%make-id69664%_
                                     _%name69691%_
                                     '"-"
                                     _%g7379773799%_
                                     '"-set!"))
                                  _%slots69682%_))))
                            _%getf7000370042%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop6999870022%_
                                                    _%target6999570016%_
                                                    '()))
                                                 (_%g6999270009%_
                                                  _%g6999370013%_)))))
                                       (_%g6999270009%_ _%g6999370013%_)))))
                           (_%g6999173803%_
                            (gx#stx-map
                             (lambda (_%g7380673808%_)
                               (_%make-id69664%_
                                _%name69691%_
                                '"-"
                                _%g7380673808%_))
                             _%slots69682%_))))
                       _%ordered-slot6993269971%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop6992769951%_
                                               _%target6992469945%_
                                               '()))
                                            (_%g6992169938%_
                                             _%g6992269942%_)))))
                                  (_%g6992169938%_ _%g6992269942%_)))))
                      (_%g6992073812%_ _%ordered-slots69677%_)))
                  _%slot6986169900%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop6985669880%_
                                          _%target6985369874%_
                                          '()))
                                       (_%g6985069867%_ _%g6985169871%_)))))
                             (_%g6985069867%_ _%g6985169871%_)))))
                 (_%g6984973816%_ _%slots69682%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g6982369834%_))))
                                            (_%g6982173820%_
                                             (map gerbil/core/mop~MOP-2#!class-type-descriptor
                                                  _%super69694%_))))
                                        _%g6979569806%_))))
                               (_%g6979373824%_
                                (_%make-id69664%_ _%name69691%_ '"?"))))
                           _%g6976769778%_))))
                  (_%g6976573828%_ (_%make-id69664%_ '"make-" _%name69691%_))))
              _%g6973969750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g6973773832%_
                                              (_%make-id69664%_
                                               _%name69691%_
                                               '"::t"))))
                                         _%g6970169712%_))))
                                (_%g6969973836%_ _%id69658%_))))))))))
          (let* ((_%g6952669554%_
                  (lambda (_%g6952769550%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g6952769550%_)))
                 (_%g6952569654%_
                  (lambda (_%g6952769558%_)
                    (if (gx#stx-pair? _%g6952769558%_)
                        (let ((_%e6953169561%_ (gx#syntax-e _%g6952769558%_)))
                          (let ((_%hd6953269565%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6953169561%_)))
                                (_%tl6953369568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6953169561%_))))
                            (if (gx#stx-pair? _%tl6953369568%_)
                                (let ((_%e6953469571%_
                                       (gx#syntax-e _%tl6953369568%_)))
                                  (let ((_%hd6953569575%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6953469571%_)))
                                        (_%tl6953669578%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6953469571%_))))
                                    (if (gx#stx-pair? _%tl6953669578%_)
                                        (let ((_%e6953769581%_
                                               (gx#syntax-e _%tl6953669578%_)))
                                          (let ((_%hd6953869585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6953769581%_)))
                                                (_%tl6953969588%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6953769581%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd6953869585%_)
                                                (let ((_g84288_
                                                       (gx#syntax-split-splice
                                                        _%hd6953869585%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g84289_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g84288_)
                         (##vector-length _g84288_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g84289_ 2)))
                  (error "Context expects 2 values" _g84289_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target6954069591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g84288_
                                                              0)))
                                                          (_%tl6954269594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g84288_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl6954269594%_)
                                                          (letrec ((_%loop6954369597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd6954169601%_ _%slot6954769604%_)
                              (if (gx#stx-pair? _%hd6954169601%_)
                                  (let ((_%e6954469607%_
                                         (gx#syntax-e _%hd6954169601%_)))
                                    (let ((_%lp-hd6954569611%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6954469607%_)))
                                          (_%lp-tl6954669614%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6954469607%_))))
                                      (_%loop6954369597%_
                                       _%lp-tl6954669614%_
                                       (cons _%lp-hd6954569611%_
                                             _%slot6954769604%_))))
                                  (let ((_%slot6954869617%_
                                         (reverse _%slot6954769604%_)))
                                    ((lambda (_%L69621%_ _%L69623%_ _%L69624%_)
                                       (_%generate69503%_
                                        _%L69624%_
                                        (foldr (lambda (_%g6964569648%_
                                                        _%g6964669651%_)
                                                 (cons _%g6964569648%_
                                                       _%g6964669651%_))
                                               '()
                                               _%L69623%_)
                                        _%L69621%_))
                                     _%tl6953969588%_
                                     _%slot6954869617%_
                                     _%hd6953569575%_))))))
                    (_%loop6954369597%_ _%target6954069591%_ '()))
                  (_%g6952669554%_ _%g6952769558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g6952669554%_
                                                 _%g6952769558%_))))
                                        (_%g6952669554%_ _%g6952769558%_))))
                                (_%g6952669554%_ _%g6952769558%_))))
                        (_%g6952669554%_ _%g6952769558%_)))))
            (_%g6952569654%_ _%stx69500%_)))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defstruct/c|
      (lambda (_%$stx76846%_)
        (let* ((_%g7685076869%_
                (lambda (_%g7685176865%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7685176865%_)))
               (_%g7684976926%_
                (lambda (_%g7685176873%_)
                  (if (gx#stx-pair? _%g7685176873%_)
                      (let ((_%e7685576876%_ (gx#syntax-e _%g7685176873%_)))
                        (let ((_%hd7685676880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7685576876%_)))
                              (_%tl7685776883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7685576876%_))))
                          (if (gx#stx-pair? _%tl7685776883%_)
                              (let ((_%e7685876886%_
                                     (gx#syntax-e _%tl7685776883%_)))
                                (let ((_%hd7685976890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7685876886%_)))
                                      (_%tl7686076893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7685876886%_))))
                                  (if (gx#stx-pair? _%tl7686076893%_)
                                      (let ((_%e7686176896%_
                                             (gx#syntax-e _%tl7686076893%_)))
                                        (let ((_%hd7686276900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7686176896%_)))
                                              (_%tl7686376903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7686176896%_))))
                                          ((lambda (_%L76906%_
                                                    _%L76908%_
                                                    _%L76909%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass/c)
                                                   (cons _%L76909%_
                                                         (cons _%L76908%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L76906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl7686376903%_
                                           _%hd7686276900%_
                                           _%hd7685976890%_)))
                                      (_%g7685076869%_ _%g7685176873%_))))
                              (_%g7685076869%_ _%g7685176873%_))))
                      (_%g7685076869%_ _%g7685176873%_)))))
          (_%g7684976926%_ _%$stx76846%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do/c|
      (lambda (_%stx76930%_)
        (let* ((_%g7693377004%_
                (lambda (_%g7693477000%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7693477000%_)))
               (_%g7693277370%_
                (lambda (_%g7693477008%_)
                  (if (gx#stx-pair? _%g7693477008%_)
                      (let ((_%e7694177011%_ (gx#syntax-e _%g7693477008%_)))
                        (let ((_%hd7694277015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7694177011%_)))
                              (_%tl7694377018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7694177011%_))))
                          (if (gx#stx-pair? _%tl7694377018%_)
                              (let ((_%e7694477021%_
                                     (gx#syntax-e _%tl7694377018%_)))
                                (let ((_%hd7694577025%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7694477021%_)))
                                      (_%tl7694677028%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7694477021%_))))
                                  (if (gx#stx-pair/null? _%hd7694577025%_)
                                      (let ((_g84290_
                                             (gx#syntax-split-splice
                                              _%hd7694577025%_
                                              '0)))
                                        (begin
                                          (let ((_g84291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84290_)
                                                       (##vector-length
                                                        _g84290_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84291_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84291_)))
                                          (let ((_%target7694777031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84290_ 0)))
                                                (_%tl7694977034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84290_ 1))))
                                            (if (gx#stx-null? _%tl7694977034%_)
                                                (letrec ((_%loop7695077037%_
                                                          (lambda (_%hd7694877041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step7695477044%_
                           _%init7695577046%_
                           _%var/c7695677048%_)
                    (if (gx#stx-pair? _%hd7694877041%_)
                        (let ((_%e7695177051%_ (gx#syntax-e _%hd7694877041%_)))
                          (let ((_%lp-hd7695277055%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7695177051%_)))
                                (_%lp-tl7695377058%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7695177051%_))))
                            (if (gx#stx-pair? _%lp-hd7695277055%_)
                                (let ((_%e7698477061%_
                                       (gx#syntax-e _%lp-hd7695277055%_)))
                                  (let ((_%hd7698577065%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7698477061%_)))
                                        (_%tl7698677068%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7698477061%_))))
                                    (if (gx#stx-pair? _%tl7698677068%_)
                                        (let ((_%e7698777071%_
                                               (gx#syntax-e _%tl7698677068%_)))
                                          (let ((_%hd7698877075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7698777071%_)))
                                                (_%tl7698977078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7698777071%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl7698977078%_)
                                                (let ((_g84292_
                                                       (gx#syntax-split-splice
                                                        _%tl7698977078%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g84293_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g84292_)
                         (##vector-length _g84292_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g84293_ 2)))
                  (error "Context expects 2 values" _g84293_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target7699077081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g84292_
                                                              0)))
                                                          (_%tl7699277084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g84292_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl7699277084%_)
                                                          (letrec ((_%loop7699377087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd7699177091%_ _%step7699777094%_)
                              (if (gx#stx-pair? _%hd7699177091%_)
                                  (let ((_%e7699477097%_
                                         (gx#syntax-e _%hd7699177091%_)))
                                    (let ((_%lp-hd7699577101%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7699477097%_)))
                                          (_%lp-tl7699677104%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7699477097%_))))
                                      (_%loop7699377087%_
                                       _%lp-tl7699677104%_
                                       (cons _%lp-hd7699577101%_
                                             _%step7699777094%_))))
                                  (let ((_%step7699877107%_
                                         (reverse _%step7699777094%_)))
                                    (_%loop7695077037%_
                                     _%lp-tl7695377058%_
                                     (cons _%step7699877107%_
                                           _%step7695477044%_)
                                     (cons _%hd7698877075%_ _%init7695577046%_)
                                     (cons _%hd7698577065%_
                                           _%var/c7695677048%_)))))))
                    (_%loop7699377087%_ _%target7699077081%_ '()))
                  (_%g7693377004%_ _%g7693477008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g7693377004%_
                                                 _%g7693477008%_))))
                                        (_%g7693377004%_ _%g7693477008%_))))
                                (_%g7693377004%_ _%g7693477008%_))))
                        (let ((_%step7695777111%_ (reverse _%step7695477044%_))
                              (_%init7695877114%_ (reverse _%init7695577046%_))
                              (_%var/c7695977116%_
                               (reverse _%var/c7695677048%_)))
                          (if (gx#stx-pair? _%tl7694677028%_)
                              (let ((_%e7696077119%_
                                     (gx#syntax-e _%tl7694677028%_)))
                                (let ((_%hd7696177123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7696077119%_)))
                                      (_%tl7696277126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7696077119%_))))
                                  (if (gx#stx-pair? _%hd7696177123%_)
                                      (let ((_%e7696377129%_
                                             (gx#syntax-e _%hd7696177123%_)))
                                        (let ((_%hd7696477133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7696377129%_)))
                                              (_%tl7696577136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7696377129%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl7696577136%_)
                                              (let ((_g84294_
                                                     (gx#syntax-split-splice
                                                      _%tl7696577136%_
                                                      '0)))
                                                (begin
                                                  (let ((_g84295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g84294_)
                                                               (##vector-length
                                                                _g84294_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g84295_ 2)))
                (error "Context expects 2 values" _g84295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target7696677139%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g84294_
                                                            0)))
                                                        (_%tl7696877142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g84294_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl7696877142%_)
                                                        (letrec ((_%loop7696977145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd7696777149%_ _%fini7697377152%_)
                            (if (gx#stx-pair? _%hd7696777149%_)
                                (let ((_%e7697077155%_
                                       (gx#syntax-e _%hd7696777149%_)))
                                  (let ((_%lp-hd7697177159%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7697077155%_)))
                                        (_%lp-tl7697277162%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7697077155%_))))
                                    (_%loop7696977145%_
                                     _%lp-tl7697277162%_
                                     (cons _%lp-hd7697177159%_
                                           _%fini7697377152%_))))
                                (let ((_%fini7697477165%_
                                       (reverse _%fini7697377152%_)))
                                  (if (gx#stx-pair/null? _%tl7696277126%_)
                                      (let ((_g84296_
                                             (gx#syntax-split-splice
                                              _%tl7696277126%_
                                              '0)))
                                        (begin
                                          (let ((_g84297_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84296_)
                                                       (##vector-length
                                                        _g84296_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84297_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84297_)))
                                          (let ((_%target7697577169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84296_ 0)))
                                                (_%tl7697777172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g84296_ 1))))
                                            (if (gx#stx-null? _%tl7697777172%_)
                                                (letrec ((_%loop7697877175%_
                                                          (lambda (_%hd7697677179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body7698277182%_)
                    (if (gx#stx-pair? _%hd7697677179%_)
                        (let ((_%e7697977185%_ (gx#syntax-e _%hd7697677179%_)))
                          (let ((_%lp-hd7698077189%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7697977185%_)))
                                (_%lp-tl7698177192%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7697977185%_))))
                            (_%loop7697877175%_
                             _%lp-tl7698177192%_
                             (cons _%lp-hd7698077189%_ _%body7698277182%_))))
                        (let ((_%body7698377195%_
                               (reverse _%body7698277182%_)))
                          ((lambda (_%L77199%_
                                    _%L77201%_
                                    _%L77202%_
                                    _%L77203%_
                                    _%L77204%_
                                    _%L77205%_)
                             (let* ((_%g7723977256%_
                                     (lambda (_%g7724077252%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g7724077252%_)))
                                    (_%g7723877355%_
                                     (lambda (_%g7724077260%_)
                                       (if (gx#stx-pair/null? _%g7724077260%_)
                                           (let ((_g84298_
                                                  (gx#syntax-split-splice
                                                   _%g7724077260%_
                                                   '0)))
                                             (begin
                                               (let ((_g84299_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g84298_)
                                                            (##vector-length
                                                             _g84298_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g84299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g84299_)))
                                               (let ((_%target7724277263%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g84298_
                                                         0)))
                                                     (_%tl7724477266%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g84298_
                                                         1))))
                                                 (if (gx#stx-null?
                                                      _%tl7724477266%_)
                                                     (letrec ((_%loop7724577269%_
                                                               (lambda (_%hd7724377273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%var7724977276%_)
                         (if (gx#stx-pair? _%hd7724377273%_)
                             (let ((_%e7724677279%_
                                    (gx#syntax-e _%hd7724377273%_)))
                               (let ((_%lp-hd7724777283%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7724677279%_)))
                                     (_%lp-tl7724877286%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7724677279%_))))
                                 (_%loop7724577269%_
                                  _%lp-tl7724877286%_
                                  (cons _%lp-hd7724777283%_
                                        _%var7724977276%_))))
                             (let ((_%var7725077289%_
                                    (reverse _%var7724977276%_)))
                               ((lambda (_%L77293%_)
                                  (cons (gx#datum->syntax '#f 'let/c)
                                        (cons (gx#datum->syntax '#f '$loop)
                                              (cons (begin
                                                      (gx#syntax-check-splice-targets
                                                       _%L77204%_
                                                       _%L77205%_)
                                                      (foldr (lambda (_%g7731777321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g7731877324%_
                              _%g7731977326%_)
                       (cons (cons _%g7731877324%_ (cons _%g7731777321%_ '()))
                             _%g7731977326%_))
                     '()
                     _%L77204%_
                     _%L77205%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons _%L77202%_
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'do-loop-result)
                                          (foldr (lambda (_%g7731577329%_
                                                          _%g7731677332%_)
                                                   (cons _%g7731577329%_
                                                         _%g7731677332%_))
                                                 '()
                                                 _%L77201%_))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (foldr (lambda (_%g7730877335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g7730977338%_)
                       (cons _%g7730877335%_ _%g7730977338%_))
                     (cons (cons (gx#datum->syntax '#f '$loop)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L77203%_
                                    _%L77293%_)
                                   (foldr (lambda (_%g7731077341%_
                                                   _%g7731177344%_
                                                   _%g7731277346%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'do-loop-step)
                                                        (cons _%g7731177344%_
                                                              (foldr (lambda (_%g7731377349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g7731477352%_)
                               (cons _%g7731377349%_ _%g7731477352%_))
                             '()
                             _%g7731077341%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g7731277346%_))
                                          '()
                                          _%L77203%_
                                          _%L77293%_)))
                           '())
                     _%L77199%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%var7725077289%_))))))
               (_%loop7724577269%_ _%target7724277263%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7723977256%_
                                                      _%g7724077260%_)))))
                                           (_%g7723977256%_
                                            _%g7724077260%_)))))
                               (_%g7723877355%_
                                (map (lambda (_%b77359%_)
                                       (if (gx#identifier? _%b77359%_)
                                           _%b77359%_
                                           (gx#stx-car _%b77359%_)))
                                     (foldr (lambda (_%g7736177364%_
                                                     _%g7736277367%_)
                                              (cons _%g7736177364%_
                                                    _%g7736277367%_))
                                            '()
                                            _%L77205%_)))))
                           _%body7698377195%_
                           _%fini7697477165%_
                           _%hd7696477133%_
                           _%step7695777111%_
                           _%init7695877114%_
                           _%var/c7695977116%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7697877175%_
                                                   _%target7697577169%_
                                                   '()))
                                                (_%g7693377004%_
                                                 _%g7693477008%_)))))
                                      (_%g7693377004%_ _%g7693477008%_)))))))
                  (_%loop7696977145%_ _%target7696677139%_ '()))
                (_%g7693377004%_ _%g7693477008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7693377004%_
                                               _%g7693477008%_))))
                                      (_%g7693377004%_ _%g7693477008%_))))
                              (_%g7693377004%_ _%g7693477008%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7695077037%_
                                                   _%target7694777031%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g7693377004%_
                                                 _%g7693477008%_)))))
                                      (_%g7693377004%_ _%g7693477008%_))))
                              (_%g7693377004%_ _%g7693477008%_))))
                      (_%g7693377004%_ _%g7693477008%_)))))
          (_%g7693277370%_ _%stx76930%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do-loop-result|
      (lambda (_%$stx77379%_)
        (let* ((_%__stx8364683647%_ _%$stx77379%_)
               (_%g7738577419%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8364683647%_))))
          (let ((_%__kont8364983650%_ (lambda () '#!void))
                (_%__kont8365183652%_ (lambda (_%L77531%_) _%L77531%_))
                (_%__kont8365383654%_
                 (lambda (_%L77476%_ _%L77478%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (cons _%L77478%_
                               (foldr (lambda (_%g7749577498%_ _%g7749677501%_)
                                        (cons _%g7749577498%_ _%g7749677501%_))
                                      '()
                                      _%L77476%_))))))
            (let ((_%__match8369983700%_
                   (lambda (_%e7739977426%_
                            _%hd7740077430%_
                            _%tl7740177433%_
                            _%e7740277436%_
                            _%hd7740377440%_
                            _%tl7740477443%_
                            _%__splice8365583656%_
                            _%target7740577446%_
                            _%tl7740777449%_)
                     (letrec ((_%loop7740877452%_
                               (lambda (_%hd7740677456%_ _%rest7741277459%_)
                                 (if (gx#stx-pair? _%hd7740677456%_)
                                     (let ((_%e7740977462%_
                                            (gx#syntax-e _%hd7740677456%_)))
                                       (let ((_%lp-tl7741177469%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7740977462%_)))
                                             (_%lp-hd7741077466%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7740977462%_))))
                                         (_%loop7740877452%_
                                          _%lp-tl7741177469%_
                                          (cons _%lp-hd7741077466%_
                                                _%rest7741277459%_))))
                                     (let ((_%rest7741377472%_
                                            (reverse _%rest7741277459%_)))
                                       (_%__kont8365383654%_
                                        _%rest7741377472%_
                                        _%hd7740377440%_))))))
                       (_%loop7740877452%_ _%target7740577446%_ '())))))
              (if (gx#stx-pair? _%__stx8364683647%_)
                  (let ((_%e7738777551%_ (gx#syntax-e _%__stx8364683647%_)))
                    (let ((_%tl7738977558%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7738777551%_)))
                          (_%hd7738877555%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7738777551%_))))
                      (if (gx#stx-null? _%tl7738977558%_)
                          (_%__kont8364983650%_)
                          (if (gx#stx-pair? _%tl7738977558%_)
                              (let ((_%e7739477521%_
                                     (gx#syntax-e _%tl7738977558%_)))
                                (let ((_%tl7739677528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7739477521%_)))
                                      (_%hd7739577525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7739477521%_))))
                                  (if (gx#stx-null? _%tl7739677528%_)
                                      (_%__kont8365183652%_ _%hd7739577525%_)
                                      (if (gx#stx-pair/null? _%tl7739677528%_)
                                          (let ((_%__splice8365583656%_
                                                 (gx#syntax-split-splice
                                                  _%tl7739677528%_
                                                  '0)))
                                            (let ((_%tl7740777449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8365583656%_
                                                      '1)))
                                                  (_%target7740577446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8365583656%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl7740777449%_)
                                                  (_%__match8369983700%_
                                                   _%e7738777551%_
                                                   _%hd7738877555%_
                                                   _%tl7738977558%_
                                                   _%e7739477521%_
                                                   _%hd7739577525%_
                                                   _%tl7739677528%_
                                                   _%__splice8365583656%_
                                                   _%target7740577446%_
                                                   _%tl7740777449%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7738577419%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7738577419%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g7738577419%_))))))
                  (let () (declare (not safe)) (_%g7738577419%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do-loop-step|
      (lambda (_%$stx77570%_)
        (let* ((_%__stx8370283703%_ _%$stx77570%_)
               (_%g7757677622%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8370283703%_))))
          (let ((_%__kont8370583706%_ (lambda (_%L77802%_) _%L77802%_))
                (_%__kont8370783708%_
                 (lambda (_%L77758%_ _%L77760%_) _%L77758%_))
                (_%__kont8370983710%_
                 (lambda (_%L77689%_ _%L77691%_ _%L77692%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (cons _%L77691%_
                               (foldr (lambda (_%g7771277715%_ _%g7771377718%_)
                                        (cons _%g7771277715%_ _%g7771377718%_))
                                      '()
                                      _%L77689%_))))))
            (let ((_%__match8377383774%_
                   (lambda (_%e7759977629%_
                            _%hd7760077633%_
                            _%tl7760177636%_
                            _%e7760277639%_
                            _%hd7760377643%_
                            _%tl7760477646%_
                            _%e7760577649%_
                            _%hd7760677653%_
                            _%tl7760777656%_
                            _%__splice8371183712%_
                            _%target7760877659%_
                            _%tl7761077662%_)
                     (letrec ((_%loop7761177665%_
                               (lambda (_%hd7760977669%_ _%rest7761577672%_)
                                 (if (gx#stx-pair? _%hd7760977669%_)
                                     (let ((_%e7761277675%_
                                            (gx#syntax-e _%hd7760977669%_)))
                                       (let ((_%lp-tl7761477682%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7761277675%_)))
                                             (_%lp-hd7761377679%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7761277675%_))))
                                         (_%loop7761177665%_
                                          _%lp-tl7761477682%_
                                          (cons _%lp-hd7761377679%_
                                                _%rest7761577672%_))))
                                     (let ((_%rest7761677685%_
                                            (reverse _%rest7761577672%_)))
                                       (_%__kont8370983710%_
                                        _%rest7761677685%_
                                        _%hd7760677653%_
                                        _%hd7760377643%_))))))
                       (_%loop7761177665%_ _%target7760877659%_ '())))))
              (if (gx#stx-pair? _%__stx8370283703%_)
                  (let ((_%e7757977782%_ (gx#syntax-e _%__stx8370283703%_)))
                    (let ((_%tl7758177789%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7757977782%_)))
                          (_%hd7758077786%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7757977782%_))))
                      (if (gx#stx-pair? _%tl7758177789%_)
                          (let ((_%e7758277792%_
                                 (gx#syntax-e _%tl7758177789%_)))
                            (let ((_%tl7758477799%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7758277792%_)))
                                  (_%hd7758377796%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7758277792%_))))
                              (if (gx#stx-null? _%tl7758477799%_)
                                  (_%__kont8370583706%_ _%hd7758377796%_)
                                  (if (gx#stx-pair? _%tl7758477799%_)
                                      (let ((_%e7759377748%_
                                             (gx#syntax-e _%tl7758477799%_)))
                                        (let ((_%tl7759577755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7759377748%_)))
                                              (_%hd7759477752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7759377748%_))))
                                          (if (gx#stx-null? _%tl7759577755%_)
                                              (_%__kont8370783708%_
                                               _%hd7759477752%_
                                               _%hd7758377796%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl7759577755%_)
                                                  (let ((_%__splice8371183712%_
                                                         (gx#syntax-split-splice
                                                          _%tl7759577755%_
                                                          '0)))
                                                    (let ((_%tl7761077662%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8371183712%_
                                                              '1)))
                                                          (_%target7760877659%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8371183712%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl7761077662%_)
                                                          (_%__match8377383774%_
                                                           _%e7757977782%_
                                                           _%hd7758077786%_
                                                           _%tl7758177789%_
                                                           _%e7758277792%_
                                                           _%hd7758377796%_
                                                           _%tl7758477799%_
                                                           _%e7759377748%_
                                                           _%hd7759477752%_
                                                           _%tl7759577755%_
                                                           _%__splice8371183712%_
                                                           _%target7760877659%_
                                                           _%tl7761077662%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g7757677622%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7757677622%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7757677622%_))))))
                          (let () (declare (not safe)) (_%g7757677622%_)))))
                  (let () (declare (not safe)) (_%g7757677622%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do-while/c|
      (lambda (_%$stx77820%_)
        (let* ((_%g7782477847%_
                (lambda (_%g7782577843%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7782577843%_)))
               (_%g7782377918%_
                (lambda (_%g7782577851%_)
                  (if (gx#stx-pair? _%g7782577851%_)
                      (let ((_%e7783077854%_ (gx#syntax-e _%g7782577851%_)))
                        (let ((_%hd7783177858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7783077854%_)))
                              (_%tl7783277861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7783077854%_))))
                          (if (gx#stx-pair? _%tl7783277861%_)
                              (let ((_%e7783377864%_
                                     (gx#syntax-e _%tl7783277861%_)))
                                (let ((_%hd7783477868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7783377864%_)))
                                      (_%tl7783577871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7783377864%_))))
                                  (if (gx#stx-pair? _%tl7783577871%_)
                                      (let ((_%e7783677874%_
                                             (gx#syntax-e _%tl7783577871%_)))
                                        (let ((_%hd7783777878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7783677874%_)))
                                              (_%tl7783877881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7783677874%_))))
                                          (if (gx#stx-pair? _%hd7783777878%_)
                                              (let ((_%e7783977884%_
                                                     (gx#syntax-e
                                                      _%hd7783777878%_)))
                                                (let ((_%hd7784077888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e7783977884%_)))
                                                      (_%tl7784177891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e7783977884%_))))
                                                  ((lambda (_%L77894%_
                                                            _%L77896%_
                                                            _%L77897%_
                                                            _%L77898%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do/c)
                                                           (cons _%L77898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _%L77897%_ '()))
                                     _%L77896%_)
                               _%L77894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl7783877881%_
                                                   _%tl7784177891%_
                                                   _%hd7784077888%_
                                                   _%hd7783477868%_)))
                                              (_%g7782477847%_
                                               _%g7782577851%_))))
                                      (_%g7782477847%_ _%g7782577851%_))))
                              (_%g7782477847%_ _%g7782577851%_))))
                      (_%g7782477847%_ _%g7782577851%_)))))
          (_%g7782377918%_ _%$stx77820%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmutable*|
      (lambda (_%stx77922%_)
        (let* ((_%__stx8377683777%_ _%stx77922%_)
               (_%g7792677960%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8377683777%_))))
          (let ((_%__kont8377983780%_
                 (lambda (_%L78062%_ _%L78064%_ _%L78065%_ _%L78066%_)
                   (let* ((_%g7809378108%_
                           (lambda (_%g7809478104%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7809478104%_)))
                          (_%g7809278153%_
                           (lambda (_%g7809478112%_)
                             (if (gx#stx-pair? _%g7809478112%_)
                                 (let ((_%e7809778115%_
                                        (gx#syntax-e _%g7809478112%_)))
                                   (let ((_%hd7809878119%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e7809778115%_)))
                                         (_%tl7809978122%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e7809778115%_))))
                                     (if (gx#stx-pair? _%tl7809978122%_)
                                         (let ((_%e7810078125%_
                                                (gx#syntax-e
                                                 _%tl7809978122%_)))
                                           (let ((_%hd7810178129%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e7810078125%_)))
                                                 (_%tl7810278132%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e7810078125%_))))
                                             (if (gx#stx-null?
                                                  _%tl7810278132%_)
                                                 ((lambda (_%L78135%_
                                                           _%L78137%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'def)
                              (cons _%L78137%_ (cons _%L78065%_ '())))
                        (cons (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _%L78066%_ '())
                                          (cons _%L78137%_ '())))
                              (cons (cons (gx#datum->syntax '#f 'def/c)
                                          (cons (cons _%L78135%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'new-value)
                          (cons _%L78064%_ _%L78062%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'set!)
                                                            (cons _%L78137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'new-value) '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd7810178129%_
                                                  _%hd7809878119%_)
                                                 (_%g7809378108%_
                                                  _%g7809478112%_))))
                                         (_%g7809378108%_ _%g7809478112%_))))
                                 (_%g7809378108%_ _%g7809478112%_)))))
                     (_%g7809278153%_
                      (list (gx#stx-identifier _%L78066%_ '"__" _%L78066%_)
                            (gx#stx-identifier
                             _%L78066%_
                             _%L78066%_
                             '"-set!"))))))
                (_%__kont8378183782%_
                 (lambda (_%L77997%_ _%L77999%_)
                   (cons (gx#datum->syntax '#f 'defmutable*)
                         (cons _%L77999%_
                               (cons _%L77997%_
                                     (cons (gx#datum->syntax '#f ':)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 '()))))))))
            (let ((_%__match8380783808%_
                   (lambda (_%e7793278022%_
                            _%hd7793378026%_
                            _%tl7793478029%_
                            _%e7793578032%_
                            _%hd7793678036%_
                            _%tl7793778039%_
                            _%e7793878042%_
                            _%hd7793978046%_
                            _%tl7794078049%_
                            _%e7794178052%_
                            _%hd7794278056%_
                            _%tl7794378059%_)
                     (let ((_%L78062%_ _%tl7794378059%_)
                           (_%L78064%_ _%hd7794278056%_)
                           (_%L78065%_ _%hd7793978046%_)
                           (_%L78066%_ _%hd7793678036%_))
                       (if (and (gx#identifier? _%L78066%_)
                                (gx#identifier? _%L78064%_)
                                (or (gx#free-identifier=?
                                     _%L78064%_
                                     (gx#datum->syntax '#f ':))
                                    (gx#free-identifier=?
                                     _%L78064%_
                                     (gx#datum->syntax '#f ':?))
                                    (gx#free-identifier=?
                                     _%L78064%_
                                     (gx#datum->syntax '#f ':~))))
                           (_%__kont8377983780%_
                            _%L78062%_
                            _%L78064%_
                            _%L78065%_
                            _%L78066%_)
                           (let () (declare (not safe)) (_%g7792677960%_)))))))
              (if (gx#stx-pair? _%__stx8377683777%_)
                  (let ((_%e7793278022%_ (gx#syntax-e _%__stx8377683777%_)))
                    (let ((_%tl7793478029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7793278022%_)))
                          (_%hd7793378026%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7793278022%_))))
                      (if (gx#stx-pair? _%tl7793478029%_)
                          (let ((_%e7793578032%_
                                 (gx#syntax-e _%tl7793478029%_)))
                            (let ((_%tl7793778039%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7793578032%_)))
                                  (_%hd7793678036%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7793578032%_))))
                              (if (gx#stx-pair? _%tl7793778039%_)
                                  (let ((_%e7793878042%_
                                         (gx#syntax-e _%tl7793778039%_)))
                                    (let ((_%tl7794078049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7793878042%_)))
                                          (_%hd7793978046%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7793878042%_))))
                                      (if (gx#stx-pair? _%tl7794078049%_)
                                          (let ((_%e7794178052%_
                                                 (gx#syntax-e
                                                  _%tl7794078049%_)))
                                            (let ((_%tl7794378059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7794178052%_)))
                                                  (_%hd7794278056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7794178052%_))))
                                              (_%__match8380783808%_
                                               _%e7793278022%_
                                               _%hd7793378026%_
                                               _%tl7793478029%_
                                               _%e7793578032%_
                                               _%hd7793678036%_
                                               _%tl7793778039%_
                                               _%e7793878042%_
                                               _%hd7793978046%_
                                               _%tl7794078049%_
                                               _%e7794178052%_
                                               _%hd7794278056%_
                                               _%tl7794378059%_)))
                                          (if (gx#stx-null? _%tl7794078049%_)
                                              (_%__kont8378183782%_
                                               _%hd7793978046%_
                                               _%hd7793678036%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7792677960%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7792677960%_)))))
                          (let () (declare (not safe)) (_%g7792677960%_)))))
                  (let () (declare (not safe)) (_%g7792677960%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmutable|
      (lambda (_%stx78161%_)
        (let* ((_%__stx8383083831%_ _%stx78161%_)
               (_%g7816578199%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8383083831%_))))
          (let ((_%__kont8383383834%_
                 (lambda (_%L78301%_ _%L78303%_ _%L78304%_ _%L78305%_)
                   (let* ((_%g7833278347%_
                           (lambda (_%g7833378343%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7833378343%_)))
                          (_%g7833178392%_
                           (lambda (_%g7833378351%_)
                             (if (gx#stx-pair? _%g7833378351%_)
                                 (let ((_%e7833678354%_
                                        (gx#syntax-e _%g7833378351%_)))
                                   (let ((_%hd7833778358%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e7833678354%_)))
                                         (_%tl7833878361%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e7833678354%_))))
                                     (if (gx#stx-pair? _%tl7833878361%_)
                                         (let ((_%e7833978364%_
                                                (gx#syntax-e
                                                 _%tl7833878361%_)))
                                           (let ((_%hd7834078368%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e7833978364%_)))
                                                 (_%tl7834178371%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e7833978364%_))))
                                             (if (gx#stx-null?
                                                  _%tl7834178371%_)
                                                 ((lambda (_%L78374%_
                                                           _%L78376%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'def)
                              (cons _%L78376%_ (cons _%L78304%_ '())))
                        (cons (cons (gx#datum->syntax '#f 'def/c)
                                    (cons (cons _%L78374%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'new-value)
                                                            (cons _%L78303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L78301%_))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'set!)
                                                      (cons _%L78376%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'new-value)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'defsyntax)
                                          (cons _%L78305%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'identifier-rules)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'set!)
                                (cons (gx#datum->syntax '#f '%%set-dotted!)
                                      '()))
                          (cons (cons (cons (gx#datum->syntax '#f 'set!)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'the-var)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'new-value)
                                                        '())))
                                      (cons (cons _%L78374%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'new-value)
                                                        '()))
                                            '()))
                                (cons (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '%%set-dotted!)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'the-var)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'new-value)
                                                              '())))
                                            (cons (cons _%L78374%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'new-value)
                                                              '()))
                                                  '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'the-var)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'identifier?)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons (gx#datum->syntax '#f 'the-var) '()))
                            '()))
                (cons _%L78376%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'the-var)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'arg)
                            (cons (gx#datum->syntax '#f '...) '())))
                (cons (cons _%L78376%_
                            (cons (gx#datum->syntax '#f 'arg)
                                  (cons (gx#datum->syntax '#f '...) '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd7834078368%_
                                                  _%hd7833778358%_)
                                                 (_%g7833278347%_
                                                  _%g7833378351%_))))
                                         (_%g7833278347%_ _%g7833378351%_))))
                                 (_%g7833278347%_ _%g7833378351%_)))))
                     (_%g7833178392%_
                      (list (gx#stx-identifier _%L78305%_ '"__" _%L78305%_)
                            (gx#stx-identifier
                             _%L78305%_
                             _%L78305%_
                             '"-set!"))))))
                (_%__kont8383583836%_
                 (lambda (_%L78236%_ _%L78238%_)
                   (cons (gx#datum->syntax '#f 'defmutable)
                         (cons _%L78238%_
                               (cons _%L78236%_
                                     (cons (gx#datum->syntax '#f ':)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 '()))))))))
            (let ((_%__match8386183862%_
                   (lambda (_%e7817178261%_
                            _%hd7817278265%_
                            _%tl7817378268%_
                            _%e7817478271%_
                            _%hd7817578275%_
                            _%tl7817678278%_
                            _%e7817778281%_
                            _%hd7817878285%_
                            _%tl7817978288%_
                            _%e7818078291%_
                            _%hd7818178295%_
                            _%tl7818278298%_)
                     (let ((_%L78301%_ _%tl7818278298%_)
                           (_%L78303%_ _%hd7818178295%_)
                           (_%L78304%_ _%hd7817878285%_)
                           (_%L78305%_ _%hd7817578275%_))
                       (if (and (gx#identifier? _%L78305%_)
                                (gx#identifier? _%L78303%_)
                                (or (gx#free-identifier=?
                                     _%L78303%_
                                     (gx#datum->syntax '#f ':))
                                    (gx#free-identifier=?
                                     _%L78303%_
                                     (gx#datum->syntax '#f ':?))
                                    (gx#free-identifier=?
                                     _%L78303%_
                                     (gx#datum->syntax '#f ':~))))
                           (_%__kont8383383834%_
                            _%L78301%_
                            _%L78303%_
                            _%L78304%_
                            _%L78305%_)
                           (let () (declare (not safe)) (_%g7816578199%_)))))))
              (if (gx#stx-pair? _%__stx8383083831%_)
                  (let ((_%e7817178261%_ (gx#syntax-e _%__stx8383083831%_)))
                    (let ((_%tl7817378268%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7817178261%_)))
                          (_%hd7817278265%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7817178261%_))))
                      (if (gx#stx-pair? _%tl7817378268%_)
                          (let ((_%e7817478271%_
                                 (gx#syntax-e _%tl7817378268%_)))
                            (let ((_%tl7817678278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7817478271%_)))
                                  (_%hd7817578275%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7817478271%_))))
                              (if (gx#stx-pair? _%tl7817678278%_)
                                  (let ((_%e7817778281%_
                                         (gx#syntax-e _%tl7817678278%_)))
                                    (let ((_%tl7817978288%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7817778281%_)))
                                          (_%hd7817878285%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7817778281%_))))
                                      (if (gx#stx-pair? _%tl7817978288%_)
                                          (let ((_%e7818078291%_
                                                 (gx#syntax-e
                                                  _%tl7817978288%_)))
                                            (let ((_%tl7818278298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7818078291%_)))
                                                  (_%hd7818178295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7818078291%_))))
                                              (_%__match8386183862%_
                                               _%e7817178261%_
                                               _%hd7817278265%_
                                               _%tl7817378268%_
                                               _%e7817478271%_
                                               _%hd7817578275%_
                                               _%tl7817678278%_
                                               _%e7817778281%_
                                               _%hd7817878285%_
                                               _%tl7817978288%_
                                               _%e7818078291%_
                                               _%hd7818178295%_
                                               _%tl7818278298%_)))
                                          (if (gx#stx-null? _%tl7817978288%_)
                                              (_%__kont8383583836%_
                                               _%hd7817878285%_
                                               _%hd7817578275%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7816578199%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7816578199%_)))))
                          (let () (declare (not safe)) (_%g7816578199%_)))))
                  (let () (declare (not safe)) (_%g7816578199%_))))))))))
