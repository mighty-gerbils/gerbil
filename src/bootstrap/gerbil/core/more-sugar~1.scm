(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g228506_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g228509_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g228510_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g228511_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g228512_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-sugar[1]#setq-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setq-macro::t
       'setq-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setq-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setq-macro|
      (lambda _%$args223839%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args223839%_)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setf-macro::t
       'setf-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setf-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setf-macro|
      (lambda _%$args223835%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args223835%_)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
      (lambda (_%stx223832%_)
        (if (gx#identifier? _%stx223832%_)
            (let ((__tmp228469 (gx#syntax-local-value _%stx223832%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp228469))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx223829%_)
        (if (gx#identifier? _%stx223829%_)
            (let ((__tmp228470 (gx#syntax-local-value _%stx223829%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp228470))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx223456%_)
        (let* ((_%__stx227998227999%_ _%stx223456%_)
               (_%g223462223525%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx227998227999%_))))
          (let ((_%__kont228001228002%_
                 (lambda (_%g223464223806%_ _%g223465223808%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g223465223808%_)
                    _%stx223456%_)))
                (_%__kont228003228004%_
                 (lambda (_%g223478223695%_
                          _%g223479223697%_
                          _%g223480223698%_)
                   (let* ((_%g223720223728%_
                           (lambda (_%g223721223724%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g223721223724%_)))
                          (_%g223719223755%_
                           (lambda (_%g223721223732%_)
                             ((lambda (_%g223722223735%_)
                                (cons _%g223722223735%_
                                      (foldr (lambda (_%g223746223749%_
                                                      _%g223747223752%_)
                                               (cons _%g223746223749%_
                                                     _%g223747223752%_))
                                             (cons _%g223478223695%_ '())
                                             _%g223479223697%_)))
                              _%g223721223732%_))))
                     (_%g223719223755%_
                      (gx#stx-identifier
                       _%g223480223698%_
                       _%g223480223698%_
                       '"-set!")))))
                (_%__kont228007228008%_
                 (lambda (_%g223502223607%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g223502223607%_)
                    _%stx223456%_)))
                (_%__kont228009228010%_
                 (lambda (_%g223509223562%_ _%g223510223564%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g223510223564%_
                               (cons _%g223509223562%_ '()))))))
            (let* ((_%__match228097228098%_
                    (lambda (_%e223511223532%_
                             _%hd223512223536%_
                             _%tl223513223539%_
                             _%e223514223542%_
                             _%hd223515223546%_
                             _%tl223516223549%_
                             _%e223517223552%_
                             _%hd223518223556%_
                             _%tl223519223559%_)
                      (let ((_%g223509223562%_ _%hd223518223556%_)
                            (_%g223510223564%_ _%hd223515223546%_))
                        (if (gx#identifier? _%g223510223564%_)
                            (_%__kont228009228010%_
                             _%g223509223562%_
                             _%g223510223564%_)
                            (let ()
                              (declare (not safe))
                              (_%g223462223525%_))))))
                   (_%__match228077228078%_
                    (lambda (_%e223503223587%_
                             _%hd223504223591%_
                             _%tl223505223594%_
                             _%e223506223597%_
                             _%hd223507223601%_
                             _%tl223508223604%_)
                      (let ((_%g223502223607%_ _%hd223507223601%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g223502223607%_)
                            (_%__kont228007228008%_ _%g223502223607%_)
                            (if (gx#stx-pair? _%tl223508223604%_)
                                (let ((_%e223517223552%_
                                       (gx#syntax-e _%tl223508223604%_)))
                                  (let ((_%tl223519223559%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e223517223552%_)))
                                        (_%hd223518223556%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e223517223552%_))))
                                    (if (gx#stx-null? _%tl223519223559%_)
                                        (_%__match228097228098%_
                                         _%e223503223587%_
                                         _%hd223504223591%_
                                         _%tl223505223594%_
                                         _%e223506223597%_
                                         _%hd223507223601%_
                                         _%tl223508223604%_
                                         _%e223517223552%_
                                         _%hd223518223556%_
                                         _%tl223519223559%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g223462223525%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g223462223525%_)))))))
                   (_%__match228065228066%_
                    (lambda (_%e223481223627%_
                             _%hd223482223631%_
                             _%tl223483223634%_
                             _%e223484223637%_
                             _%hd223485223641%_
                             _%tl223486223644%_
                             _%e223487223647%_
                             _%hd223488223651%_
                             _%tl223489223654%_
                             _%__splice228005228006%_
                             _%target223490223657%_
                             _%tl223492223660%_)
                      (letrec ((_%loop223493223663%_
                                (lambda (_%hd223491223667%_
                                         _%arg223497223670%_)
                                  (if (gx#stx-pair? _%hd223491223667%_)
                                      (let ((_%e223494223672%_
                                             (gx#syntax-e _%hd223491223667%_)))
                                        (let ((_%lp-tl223496223679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e223494223672%_)))
                                              (_%lp-hd223495223676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e223494223672%_))))
                                          (_%loop223493223663%_
                                           _%lp-tl223496223679%_
                                           (cons _%lp-hd223495223676%_
                                                 _%arg223497223670%_))))
                                      (let ((_%arg223498223682%_
                                             (reverse _%arg223497223670%_)))
                                        (if (gx#stx-pair? _%tl223486223644%_)
                                            (let ((_%e223499223685%_
                                                   (gx#syntax-e
                                                    _%tl223486223644%_)))
                                              (let ((_%tl223501223692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e223499223685%_)))
                                                    (_%hd223500223689%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e223499223685%_))))
                                                (if (gx#stx-null?
                                                     _%tl223501223692%_)
                                                    (let ((_%g223478223695%_
                                                           _%hd223500223689%_)
                                                          (_%g223479223697%_
                                                           _%arg223498223682%_)
                                                          (_%g223480223698%_
                                                           _%hd223488223651%_))
                                                      (if (gx#identifier?
                                                           _%g223480223698%_)
                                                          (_%__kont228003228004%_
                                                           _%g223478223695%_
                                                           _%g223479223697%_
                                                           _%g223480223698%_)
                                                          (_%__match228077228078%_
                                                           _%e223481223627%_
                                                           _%hd223482223631%_
                                                           _%tl223483223634%_
                                                           _%e223484223637%_
                                                           _%hd223485223641%_
                                                           _%tl223486223644%_)))
                                                    (_%__match228077228078%_
                                                     _%e223481223627%_
                                                     _%hd223482223631%_
                                                     _%tl223483223634%_
                                                     _%e223484223637%_
                                                     _%hd223485223641%_
                                                     _%tl223486223644%_))))
                                            (_%__match228077228078%_
                                             _%e223481223627%_
                                             _%hd223482223631%_
                                             _%tl223483223634%_
                                             _%e223484223637%_
                                             _%hd223485223641%_
                                             _%tl223486223644%_)))))))
                        (_%loop223493223663%_ _%target223490223657%_ '())))))
              (if (gx#stx-pair? _%__stx227998227999%_)
                  (let ((_%e223466223766%_
                         (gx#syntax-e _%__stx227998227999%_)))
                    (let ((_%tl223468223773%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223466223766%_)))
                          (_%hd223467223770%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223466223766%_))))
                      (if (gx#stx-pair? _%tl223468223773%_)
                          (let ((_%e223469223776%_
                                 (gx#syntax-e _%tl223468223773%_)))
                            (let ((_%tl223471223783%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223469223776%_)))
                                  (_%hd223470223780%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223469223776%_))))
                              (if (gx#stx-pair? _%hd223470223780%_)
                                  (let ((_%e223472223786%_
                                         (gx#syntax-e _%hd223470223780%_)))
                                    (let ((_%tl223474223793%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223472223786%_)))
                                          (_%hd223473223790%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223472223786%_))))
                                      (if (gx#stx-pair? _%tl223471223783%_)
                                          (let ((_%e223475223796%_
                                                 (gx#syntax-e
                                                  _%tl223471223783%_)))
                                            (let ((_%tl223477223803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e223475223796%_)))
                                                  (_%hd223476223800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e223475223796%_))))
                                              (if (gx#stx-null?
                                                   _%tl223477223803%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g223464223806%_
                                                             _%hd223476223800%_)
                                                            (_%g223465223808%_
                                                             _%hd223473223790%_))
                                                        (_%__kont228001228002%_
                                                         _%g223464223806%_
                                                         _%g223465223808%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl223474223793%_)
                                                          (let ((_%__splice228005228006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%tl223474223793%_
                          '0)))
                    (let ((_%tl223492223660%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice228005228006%_ '1)))
                          (_%target223490223657%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice228005228006%_ '0))))
                      (if (gx#stx-null? _%tl223492223660%_)
                          (_%__match228065228066%_
                           _%e223466223766%_
                           _%hd223467223770%_
                           _%tl223468223773%_
                           _%e223469223776%_
                           _%hd223470223780%_
                           _%tl223471223783%_
                           _%e223472223786%_
                           _%hd223473223790%_
                           _%tl223474223793%_
                           _%__splice228005228006%_
                           _%target223490223657%_
                           _%tl223492223660%_)
                          (_%__match228077228078%_
                           _%e223466223766%_
                           _%hd223467223770%_
                           _%tl223468223773%_
                           _%e223469223776%_
                           _%hd223470223780%_
                           _%tl223471223783%_))))
                  (_%__match228077228078%_
                   _%e223466223766%_
                   _%hd223467223770%_
                   _%tl223468223773%_
                   _%e223469223776%_
                   _%hd223470223780%_
                   _%tl223471223783%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl223474223793%_)
                                                      (let ((_%__splice228005228006%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl223474223793%_
                                                              '0)))
                                                        (let ((_%tl223492223660%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice228005228006%_ '1)))
                      (_%target223490223657%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice228005228006%_ '0))))
                  (if (gx#stx-null? _%tl223492223660%_)
                      (_%__match228065228066%_
                       _%e223466223766%_
                       _%hd223467223770%_
                       _%tl223468223773%_
                       _%e223469223776%_
                       _%hd223470223780%_
                       _%tl223471223783%_
                       _%e223472223786%_
                       _%hd223473223790%_
                       _%tl223474223793%_
                       _%__splice228005228006%_
                       _%target223490223657%_
                       _%tl223492223660%_)
                      (_%__match228077228078%_
                       _%e223466223766%_
                       _%hd223467223770%_
                       _%tl223468223773%_
                       _%e223469223776%_
                       _%hd223470223780%_
                       _%tl223471223783%_))))
              (_%__match228077228078%_
               _%e223466223766%_
               _%hd223467223770%_
               _%tl223468223773%_
               _%e223469223776%_
               _%hd223470223780%_
               _%tl223471223783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl223474223793%_)
                                              (let ((_%__splice228005228006%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl223474223793%_
                                                      '0)))
                                                (let ((_%tl223492223660%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice228005228006%_
                                                          '1)))
                                                      (_%target223490223657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice228005228006%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl223492223660%_)
                                                      (_%__match228065228066%_
                                                       _%e223466223766%_
                                                       _%hd223467223770%_
                                                       _%tl223468223773%_
                                                       _%e223469223776%_
                                                       _%hd223470223780%_
                                                       _%tl223471223783%_
                                                       _%e223472223786%_
                                                       _%hd223473223790%_
                                                       _%tl223474223793%_
                                                       _%__splice228005228006%_
                                                       _%target223490223657%_
                                                       _%tl223492223660%_)
                                                      (_%__match228077228078%_
                                                       _%e223466223766%_
                                                       _%hd223467223770%_
                                                       _%tl223468223773%_
                                                       _%e223469223776%_
                                                       _%hd223470223780%_
                                                       _%tl223471223783%_))))
                                              (_%__match228077228078%_
                                               _%e223466223766%_
                                               _%hd223467223770%_
                                               _%tl223468223773%_
                                               _%e223469223776%_
                                               _%hd223470223780%_
                                               _%tl223471223783%_)))))
                                  (_%__match228077228078%_
                                   _%e223466223766%_
                                   _%hd223467223770%_
                                   _%tl223468223773%_
                                   _%e223469223776%_
                                   _%hd223470223780%_
                                   _%tl223471223783%_))))
                          (let () (declare (not safe)) (_%g223462223525%_)))))
                  (let () (declare (not safe)) (_%g223462223525%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx223844%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx223844%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx223847%_)
        (let* ((_%g223850223874%_
                (lambda (_%g223851223870%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g223851223870%_)))
               (_%g223849224048%_
                (lambda (_%g223851223878%_)
                  (if (gx#stx-pair? _%g223851223878%_)
                      (let ((_%e223854223881%_
                             (gx#syntax-e _%g223851223878%_)))
                        (let ((_%hd223855223885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223854223881%_)))
                              (_%tl223856223888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223854223881%_))))
                          (if (gx#stx-pair/null? _%tl223856223888%_)
                              (if (let ((__tmp228471
                                         (gx#stx-length _%tl223856223888%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp228471 '1))
                                  (let ((_g228472_
                                         (gx#syntax-split-splice
                                          _%tl223856223888%_
                                          '1)))
                                    (begin
                                      (let ((_g228473_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g228472_)
                                                   (##values-length _g228472_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g228473_ 2)))
                                            (error "Context expects 2 values"
                                                   _g228473_)))
                                      (let ((_%target223857223891%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g228472_ 0)))
                                            (_%tl223859223894%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g228472_ 1))))
                                        (if (gx#stx-pair? _%tl223859223894%_)
                                            (let ((_%e223866223897%_
                                                   (gx#syntax-e
                                                    _%tl223859223894%_)))
                                              (let ((_%hd223867223901%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e223866223897%_)))
                                                    (_%tl223868223904%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e223866223897%_))))
                                                (if (gx#stx-null?
                                                     _%tl223868223904%_)
                                                    (letrec ((_%loop223860223907%_
                                                              (lambda (_%hd223858223911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt223864223914%_)
                        (if (gx#stx-pair? _%hd223858223911%_)
                            (let ((_%e223861223916%_
                                   (gx#syntax-e _%hd223858223911%_)))
                              (let ((_%lp-hd223862223920%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e223861223916%_)))
                                    (_%lp-tl223863223923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e223861223916%_))))
                                (_%loop223860223907%_
                                 _%lp-tl223863223923%_
                                 (cons _%lp-hd223862223920%_
                                       _%tgt223864223914%_))))
                            (let ((_%tgt223865223926%_
                                   (reverse _%tgt223864223914%_)))
                              ((lambda (_%g223852223929%_ _%g223853223931%_)
                                 (let* ((_%g223949223966%_
                                         (lambda (_%g223950223962%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g223950223962%_)))
                                        (_%g223948224036%_
                                         (lambda (_%g223950223970%_)
                                           (if (gx#stx-pair/null?
                                                _%g223950223970%_)
                                               (let ((_g228474_
                                                      (gx#syntax-split-splice
                                                       _%g223950223970%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g228475_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g228474_)
                        (##values-length _g228474_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g228475_ 2)))
                 (error "Context expects 2 values" _g228475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target223952223973%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g228474_
                                                             0)))
                                                         (_%tl223954223976%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g228474_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl223954223976%_)
                                                         (letrec ((_%loop223955223979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd223953223983%_ _%$e223959223986%_)
                             (if (gx#stx-pair? _%hd223953223983%_)
                                 (let ((_%e223956223988%_
                                        (gx#syntax-e _%hd223953223983%_)))
                                   (let ((_%lp-hd223957223992%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e223956223988%_)))
                                         (_%lp-tl223958223995%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e223956223988%_))))
                                     (_%loop223955223979%_
                                      _%lp-tl223958223995%_
                                      (cons _%lp-hd223957223992%_
                                            _%$e223959223986%_))))
                                 (let ((_%$e223960223998%_
                                        (reverse _%$e223959223986%_)))
                                   ((lambda (_%g223951224001%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g224016224022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g224017224025%_)
                               (cons _%g224016224022%_ _%g224017224025%_))
                             '()
                             _%g223951224001%_)
                      (cons _%g223852223929%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g223951224001%_
                                                     _%g223853223931%_)
                                                    (foldr (lambda (_%g224018224028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g224019224031%_
                            _%g224020224033%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g224019224031%_
                                       (cons _%g224018224028%_ '())))
                           _%g224020224033%_))
                   '()
                   _%g223951224001%_
                   _%g223853223931%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e223960223998%_))))))
                   (_%loop223955223979%_ _%target223952223973%_ '()))
                 (_%g223949223966%_ _%g223950223970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g223949223966%_
                                                _%g223950223970%_)))))
                                   (_%g223948224036%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g224039224042%_
                                                     _%g224040224045%_)
                                              (cons _%g224039224042%_
                                                    _%g224040224045%_))
                                            '()
                                            _%g223853223931%_)))))
                               _%hd223867223901%_
                               _%tgt223865223926%_))))))
              (_%loop223860223907%_ _%target223857223891%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g223850223874%_
                                                     _%g223851223878%_))))
                                            (_%g223850223874%_
                                             _%g223851223878%_)))))
                                  (_%g223850223874%_ _%g223851223878%_))
                              (_%g223850223874%_ _%g223851223878%_))))
                      (_%g223850223874%_ _%g223851223878%_)))))
          (_%g223849224048%_ _%stx223847%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx224054%_)
        (let* ((_%__stx228100228101%_ _%$stx224054%_)
               (_%g224060224148%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx228100228101%_))))
          (let ((_%__kont228103228104%_
                 (lambda (_%g224062224488%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g224504224507%_
                                               _%g224505224510%_)
                                        (cons _%g224504224507%_
                                              _%g224505224510%_))
                                      '()
                                      _%g224062224488%_)))))
                (_%__kont228107228108%_
                 (lambda (_%g224078224398%_
                          _%g224079224400%_
                          _%g224080224401%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g224424224427%_
                                                           _%g224425224430%_)
                                                    (cons _%g224424224427%_
                                                          _%g224425224430%_))
                                                  '()
                                                  _%g224078224398%_)))
                               (cons _%g224080224401%_
                                     (cons _%g224079224400%_ '()))))))
                (_%__kont228111228112%_
                 (lambda (_%g224105224261%_
                          _%g224106224263%_
                          _%g224107224264%_
                          _%g224108224265%_
                          _%g224109224266%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g224109224266%_
                                                       (cons (foldr (lambda (_%g224296224301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g224297224304%_)
                              (cons _%g224296224301%_ _%g224297224304%_))
                            '()
                            _%g224106224263%_)
                     (foldr (lambda (_%g224298224307%_ _%g224299224310%_)
                              (cons _%g224298224307%_ _%g224299224310%_))
                            '()
                            _%g224105224261%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g224108224265%_
                                     (cons _%g224107224264%_ '())))))))
            (let* ((_%__match228221228222%_
                    (lambda (_%e224110224155%_
                             _%hd224111224159%_
                             _%tl224112224162%_
                             _%e224113224165%_
                             _%hd224114224169%_
                             _%tl224115224172%_
                             _%e224116224175%_
                             _%hd224117224179%_
                             _%tl224118224182%_
                             _%e224119224185%_
                             _%hd224120224189%_
                             _%tl224121224192%_
                             _%e224122224195%_
                             _%hd224123224199%_
                             _%tl224124224202%_
                             _%__splice228113228114%_
                             _%target224125224205%_
                             _%tl224127224208%_)
                      (letrec ((_%loop224128224211%_
                                (lambda (_%hd224126224215%_
                                         _%rest224132224218%_)
                                  (if (gx#stx-pair? _%hd224126224215%_)
                                      (let ((_%e224129224220%_
                                             (gx#syntax-e _%hd224126224215%_)))
                                        (let ((_%lp-tl224131224227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e224129224220%_)))
                                              (_%lp-hd224130224224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e224129224220%_))))
                                          (_%loop224128224211%_
                                           _%lp-tl224131224227%_
                                           (cons _%lp-hd224130224224%_
                                                 _%rest224132224218%_))))
                                      (let ((_%rest224133224230%_
                                             (reverse _%rest224132224218%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl224115224172%_)
                                            (let ((_%__splice228115228116%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl224115224172%_
                                                    '0)))
                                              (let ((_%tl224136224236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice228115228116%_
                                                        '1)))
                                                    (_%target224134224233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice228115228116%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl224136224236%_)
                                                    (letrec ((_%loop224137224239%_
                                                              (lambda (_%hd224135224243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body224141224246%_)
                        (if (gx#stx-pair? _%hd224135224243%_)
                            (let ((_%e224138224248%_
                                   (gx#syntax-e _%hd224135224243%_)))
                              (let ((_%lp-tl224140224255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e224138224248%_)))
                                    (_%lp-hd224139224252%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e224138224248%_))))
                                (_%loop224137224239%_
                                 _%lp-tl224140224255%_
                                 (cons _%lp-hd224139224252%_
                                       _%body224141224246%_))))
                            (let ((_%body224142224258%_
                                   (reverse _%body224141224246%_)))
                              (_%__kont228111228112%_
                               _%body224142224258%_
                               _%rest224133224230%_
                               _%hd224123224199%_
                               _%hd224120224189%_
                               _%hd224111224159%_))))))
              (_%loop224137224239%_ _%target224134224233%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g224060224148%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g224060224148%_))))))))
                        (_%loop224128224211%_ _%target224125224205%_ '()))))
                   (_%__match228181228182%_
                    (lambda (_%e224081224320%_
                             _%hd224082224324%_
                             _%tl224083224327%_
                             _%e224084224330%_
                             _%hd224085224334%_
                             _%tl224086224337%_
                             _%e224087224340%_
                             _%hd224088224344%_
                             _%tl224089224347%_
                             _%e224090224350%_
                             _%hd224091224354%_
                             _%tl224092224357%_
                             _%e224093224360%_
                             _%hd224094224364%_
                             _%tl224095224367%_
                             _%__splice228109228110%_
                             _%target224096224370%_
                             _%tl224098224373%_)
                      (letrec ((_%loop224099224376%_
                                (lambda (_%hd224097224380%_
                                         _%body224103224383%_)
                                  (if (gx#stx-pair? _%hd224097224380%_)
                                      (let ((_%e224100224385%_
                                             (gx#syntax-e _%hd224097224380%_)))
                                        (let ((_%lp-tl224102224392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e224100224385%_)))
                                              (_%lp-hd224101224389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e224100224385%_))))
                                          (_%loop224099224376%_
                                           _%lp-tl224102224392%_
                                           (cons _%lp-hd224101224389%_
                                                 _%body224103224383%_))))
                                      (let ((_%body224104224395%_
                                             (reverse _%body224103224383%_)))
                                        (_%__kont228107228108%_
                                         _%body224104224395%_
                                         _%hd224094224364%_
                                         _%hd224091224354%_))))))
                        (_%loop224099224376%_ _%target224096224370%_ '()))))
                   (_%__match228139228140%_
                    (lambda (_%e224063224440%_
                             _%hd224064224444%_
                             _%tl224065224447%_
                             _%e224066224450%_
                             _%hd224067224454%_
                             _%tl224068224457%_
                             _%__splice228105228106%_
                             _%target224069224460%_
                             _%tl224071224463%_)
                      (letrec ((_%loop224072224466%_
                                (lambda (_%hd224070224470%_
                                         _%body224076224473%_)
                                  (if (gx#stx-pair? _%hd224070224470%_)
                                      (let ((_%e224073224475%_
                                             (gx#syntax-e _%hd224070224470%_)))
                                        (let ((_%lp-tl224075224482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e224073224475%_)))
                                              (_%lp-hd224074224479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e224073224475%_))))
                                          (_%loop224072224466%_
                                           _%lp-tl224075224482%_
                                           (cons _%lp-hd224074224479%_
                                                 _%body224076224473%_))))
                                      (let ((_%body224077224485%_
                                             (reverse _%body224076224473%_)))
                                        (_%__kont228103228104%_
                                         _%body224077224485%_))))))
                        (_%loop224072224466%_ _%target224069224460%_ '())))))
              (if (gx#stx-pair? _%__stx228100228101%_)
                  (let ((_%e224063224440%_
                         (gx#syntax-e _%__stx228100228101%_)))
                    (let ((_%tl224065224447%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e224063224440%_)))
                          (_%hd224064224444%_
                           (let ()
                             (declare (not safe))
                             (##car _%e224063224440%_))))
                      (if (gx#stx-pair? _%tl224065224447%_)
                          (let ((_%e224066224450%_
                                 (gx#syntax-e _%tl224065224447%_)))
                            (let ((_%tl224068224457%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e224066224450%_)))
                                  (_%hd224067224454%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e224066224450%_))))
                              (if (gx#stx-null? _%hd224067224454%_)
                                  (if (gx#stx-pair/null? _%tl224068224457%_)
                                      (let ((_%__splice228105228106%_
                                             (gx#syntax-split-splice->vector
                                              _%tl224068224457%_
                                              '0)))
                                        (let ((_%tl224071224463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice228105228106%_
                                                  '1)))
                                              (_%target224069224460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice228105228106%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl224071224463%_)
                                              (_%__match228139228140%_
                                               _%e224063224440%_
                                               _%hd224064224444%_
                                               _%tl224065224447%_
                                               _%e224066224450%_
                                               _%hd224067224454%_
                                               _%tl224068224457%_
                                               _%__splice228105228106%_
                                               _%target224069224460%_
                                               _%tl224071224463%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g224060224148%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g224060224148%_)))
                                  (if (gx#stx-pair? _%hd224067224454%_)
                                      (let ((_%e224087224340%_
                                             (gx#syntax-e _%hd224067224454%_)))
                                        (let ((_%tl224089224347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e224087224340%_)))
                                              (_%hd224088224344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e224087224340%_))))
                                          (if (gx#stx-pair? _%hd224088224344%_)
                                              (let ((_%e224090224350%_
                                                     (gx#syntax-e
                                                      _%hd224088224344%_)))
                                                (let ((_%tl224092224357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e224090224350%_)))
                                                      (_%hd224091224354%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e224090224350%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl224092224357%_)
                                                      (let ((_%e224093224360%_
                                                             (gx#syntax-e
                                                              _%tl224092224357%_)))
                                                        (let ((_%tl224095224367%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e224093224360%_)))
                      (_%hd224094224364%_
                       (let ()
                         (declare (not safe))
                         (##car _%e224093224360%_))))
                  (if (gx#stx-null? _%tl224095224367%_)
                      (if (gx#stx-null? _%tl224089224347%_)
                          (if (gx#stx-pair/null? _%tl224068224457%_)
                              (let ((_%__splice228109228110%_
                                     (gx#syntax-split-splice->vector
                                      _%tl224068224457%_
                                      '0)))
                                (let ((_%tl224098224373%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice228109228110%_
                                          '1)))
                                      (_%target224096224370%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice228109228110%_
                                          '0))))
                                  (if (gx#stx-null? _%tl224098224373%_)
                                      (_%__match228181228182%_
                                       _%e224063224440%_
                                       _%hd224064224444%_
                                       _%tl224065224447%_
                                       _%e224066224450%_
                                       _%hd224067224454%_
                                       _%tl224068224457%_
                                       _%e224087224340%_
                                       _%hd224088224344%_
                                       _%tl224089224347%_
                                       _%e224090224350%_
                                       _%hd224091224354%_
                                       _%tl224092224357%_
                                       _%e224093224360%_
                                       _%hd224094224364%_
                                       _%tl224095224367%_
                                       _%__splice228109228110%_
                                       _%target224096224370%_
                                       _%tl224098224373%_)
                                      (if (gx#stx-pair/null?
                                           _%tl224089224347%_)
                                          (let ((_%__splice228113228114%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl224089224347%_
                                                  '0)))
                                            (let ((_%tl224127224208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice228113228114%_
                                                      '1)))
                                                  (_%target224125224205%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice228113228114%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl224127224208%_)
                                                  (_%__match228221228222%_
                                                   _%e224063224440%_
                                                   _%hd224064224444%_
                                                   _%tl224065224447%_
                                                   _%e224066224450%_
                                                   _%hd224067224454%_
                                                   _%tl224068224457%_
                                                   _%e224087224340%_
                                                   _%hd224088224344%_
                                                   _%tl224089224347%_
                                                   _%e224090224350%_
                                                   _%hd224091224354%_
                                                   _%tl224092224357%_
                                                   _%e224093224360%_
                                                   _%hd224094224364%_
                                                   _%tl224095224367%_
                                                   _%__splice228113228114%_
                                                   _%target224125224205%_
                                                   _%tl224127224208%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g224060224148%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g224060224148%_))))))
                              (if (gx#stx-pair/null? _%tl224089224347%_)
                                  (let ((_%__splice228113228114%_
                                         (gx#syntax-split-splice->vector
                                          _%tl224089224347%_
                                          '0)))
                                    (let ((_%tl224127224208%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice228113228114%_
                                              '1)))
                                          (_%target224125224205%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice228113228114%_
                                              '0))))
                                      (if (gx#stx-null? _%tl224127224208%_)
                                          (_%__match228221228222%_
                                           _%e224063224440%_
                                           _%hd224064224444%_
                                           _%tl224065224447%_
                                           _%e224066224450%_
                                           _%hd224067224454%_
                                           _%tl224068224457%_
                                           _%e224087224340%_
                                           _%hd224088224344%_
                                           _%tl224089224347%_
                                           _%e224090224350%_
                                           _%hd224091224354%_
                                           _%tl224092224357%_
                                           _%e224093224360%_
                                           _%hd224094224364%_
                                           _%tl224095224367%_
                                           _%__splice228113228114%_
                                           _%target224125224205%_
                                           _%tl224127224208%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g224060224148%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g224060224148%_))))
                          (if (gx#stx-pair/null? _%tl224089224347%_)
                              (let ((_%__splice228113228114%_
                                     (gx#syntax-split-splice->vector
                                      _%tl224089224347%_
                                      '0)))
                                (let ((_%tl224127224208%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice228113228114%_
                                          '1)))
                                      (_%target224125224205%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice228113228114%_
                                          '0))))
                                  (if (gx#stx-null? _%tl224127224208%_)
                                      (_%__match228221228222%_
                                       _%e224063224440%_
                                       _%hd224064224444%_
                                       _%tl224065224447%_
                                       _%e224066224450%_
                                       _%hd224067224454%_
                                       _%tl224068224457%_
                                       _%e224087224340%_
                                       _%hd224088224344%_
                                       _%tl224089224347%_
                                       _%e224090224350%_
                                       _%hd224091224354%_
                                       _%tl224092224357%_
                                       _%e224093224360%_
                                       _%hd224094224364%_
                                       _%tl224095224367%_
                                       _%__splice228113228114%_
                                       _%target224125224205%_
                                       _%tl224127224208%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g224060224148%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g224060224148%_))))
                      (let () (declare (not safe)) (_%g224060224148%_)))))
              (let () (declare (not safe)) (_%g224060224148%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g224060224148%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g224060224148%_))))))
                          (let () (declare (not safe)) (_%g224060224148%_)))))
                  (let () (declare (not safe)) (_%g224060224148%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx224521%_)
        (let* ((_%g224525224549%_
                (lambda (_%g224526224545%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g224526224545%_)))
               (_%g224524224632%_
                (lambda (_%g224526224553%_)
                  (if (gx#stx-pair? _%g224526224553%_)
                      (let ((_%e224529224556%_
                             (gx#syntax-e _%g224526224553%_)))
                        (let ((_%hd224530224560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e224529224556%_)))
                              (_%tl224531224563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e224529224556%_))))
                          (if (gx#stx-pair? _%tl224531224563%_)
                              (let ((_%e224532224566%_
                                     (gx#syntax-e _%tl224531224563%_)))
                                (let ((_%hd224533224570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e224532224566%_)))
                                      (_%tl224534224573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e224532224566%_))))
                                  (if (gx#stx-pair/null? _%tl224534224573%_)
                                      (let ((_g228476_
                                             (gx#syntax-split-splice
                                              _%tl224534224573%_
                                              '0)))
                                        (begin
                                          (let ((_g228477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228476_)
                                                       (##values-length
                                                        _g228476_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228477_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228477_)))
                                          (let ((_%target224535224576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g228476_ 0)))
                                                (_%tl224537224579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g228476_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl224537224579%_)
                                                (letrec ((_%loop224538224582%_
                                                          (lambda (_%hd224536224586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body224542224589%_)
                    (if (gx#stx-pair? _%hd224536224586%_)
                        (let ((_%e224539224591%_
                               (gx#syntax-e _%hd224536224586%_)))
                          (let ((_%lp-hd224540224595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e224539224591%_)))
                                (_%lp-tl224541224598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e224539224591%_))))
                            (_%loop224538224582%_
                             _%lp-tl224541224598%_
                             (cons _%lp-hd224540224595%_
                                   _%body224542224589%_))))
                        (let ((_%body224543224601%_
                               (reverse _%body224542224589%_)))
                          ((lambda (_%g224527224604%_ _%g224528224606%_)
                             (if (gx#identifier? _%g224528224606%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g224528224606%_
                                                               '())
                                                         (foldr (lambda (_%g224623224626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g224624224629%_)
                          (cons _%g224623224626%_ _%g224624224629%_))
                        '()
                        _%g224527224604%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g224525224549%_ _%g224526224553%_)))
                           _%body224543224601%_
                           _%hd224533224570%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop224538224582%_
                                                   _%target224535224576%_
                                                   '()))
                                                (_%g224525224549%_
                                                 _%g224526224553%_)))))
                                      (_%g224525224549%_ _%g224526224553%_))))
                              (_%g224525224549%_ _%g224526224553%_))))
                      (_%g224525224549%_ _%g224526224553%_)))))
          (_%g224524224632%_ _%$stx224521%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx224637%_)
        (let* ((_%g224641224669%_
                (lambda (_%g224642224665%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g224642224665%_)))
               (_%g224640224766%_
                (lambda (_%g224642224673%_)
                  (if (gx#stx-pair? _%g224642224673%_)
                      (let ((_%e224646224676%_
                             (gx#syntax-e _%g224642224673%_)))
                        (let ((_%hd224647224680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e224646224676%_)))
                              (_%tl224648224683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e224646224676%_))))
                          (if (gx#stx-pair? _%tl224648224683%_)
                              (let ((_%e224649224686%_
                                     (gx#syntax-e _%tl224648224683%_)))
                                (let ((_%hd224650224690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e224649224686%_)))
                                      (_%tl224651224693%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e224649224686%_))))
                                  (if (gx#stx-pair? _%tl224651224693%_)
                                      (let ((_%e224652224696%_
                                             (gx#syntax-e _%tl224651224693%_)))
                                        (let ((_%hd224653224700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e224652224696%_)))
                                              (_%tl224654224703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e224652224696%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl224654224703%_)
                                              (let ((_g228478_
                                                     (gx#syntax-split-splice
                                                      _%tl224654224703%_
                                                      '0)))
                                                (begin
                                                  (let ((_g228479_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g228478_)
                                                               (##values-length
                                                                _g228478_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g228479_ 2)))
                (error "Context expects 2 values" _g228479_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target224655224706%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g228478_
                                                            0)))
                                                        (_%tl224657224709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g228478_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl224657224709%_)
                                                        (letrec ((_%loop224658224712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd224656224716%_ _%rest224662224719%_)
                            (if (gx#stx-pair? _%hd224656224716%_)
                                (let ((_%e224659224721%_
                                       (gx#syntax-e _%hd224656224716%_)))
                                  (let ((_%lp-hd224660224725%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e224659224721%_)))
                                        (_%lp-tl224661224728%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e224659224721%_))))
                                    (_%loop224658224712%_
                                     _%lp-tl224661224728%_
                                     (cons _%lp-hd224660224725%_
                                           _%rest224662224719%_))))
                                (let ((_%rest224663224731%_
                                       (reverse _%rest224662224719%_)))
                                  ((lambda (_%g224643224734%_
                                            _%g224644224736%_
                                            _%g224645224737%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g224645224737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g224644224736%_
                                 (foldr (lambda (_%g224757224760%_
                                                 _%g224758224763%_)
                                          (cons _%g224757224760%_
                                                _%g224758224763%_))
                                        '()
                                        _%g224643224734%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest224663224731%_
                                   _%hd224653224700%_
                                   _%hd224650224690%_))))))
                  (_%loop224658224712%_ _%target224655224706%_ '()))
                (_%g224641224669%_ _%g224642224673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g224641224669%_
                                               _%g224642224673%_))))
                                      (_%g224641224669%_ _%g224642224673%_))))
                              (_%g224641224669%_ _%g224642224673%_))))
                      (_%g224641224669%_ _%g224642224673%_)))))
          (_%g224640224766%_ _%$stx224637%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx224771%_)
        (let* ((_%g224775224846%_
                (lambda (_%g224776224842%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g224776224842%_)))
               (_%g224774225123%_
                (lambda (_%g224776224850%_)
                  (if (gx#stx-pair? _%g224776224850%_)
                      (let ((_%e224783224853%_
                             (gx#syntax-e _%g224776224850%_)))
                        (let ((_%hd224784224857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e224783224853%_)))
                              (_%tl224785224860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e224783224853%_))))
                          (if (gx#stx-pair? _%tl224785224860%_)
                              (let ((_%e224786224863%_
                                     (gx#syntax-e _%tl224785224860%_)))
                                (let ((_%hd224787224867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e224786224863%_)))
                                      (_%tl224788224870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e224786224863%_))))
                                  (if (gx#stx-pair/null? _%hd224787224867%_)
                                      (let ((_g228480_
                                             (gx#syntax-split-splice
                                              _%hd224787224867%_
                                              '0)))
                                        (begin
                                          (let ((_g228481_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228480_)
                                                       (##values-length
                                                        _g228480_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228481_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228481_)))
                                          (let ((_%target224789224873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g228480_ 0)))
                                                (_%tl224791224876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g228480_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl224791224876%_)
                                                (letrec ((_%loop224792224879%_
                                                          (lambda (_%hd224790224883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step224796224886%_
                           _%init224797224887%_
                           _%var224798224888%_)
                    (if (gx#stx-pair? _%hd224790224883%_)
                        (let ((_%e224793224890%_
                               (gx#syntax-e _%hd224790224883%_)))
                          (let ((_%lp-hd224794224894%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e224793224890%_)))
                                (_%lp-tl224795224897%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e224793224890%_))))
                            (if (gx#stx-pair? _%lp-hd224794224894%_)
                                (let ((_%e224802224900%_
                                       (gx#syntax-e _%lp-hd224794224894%_)))
                                  (let ((_%hd224803224904%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e224802224900%_)))
                                        (_%tl224804224907%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e224802224900%_))))
                                    (if (gx#stx-pair? _%tl224804224907%_)
                                        (let ((_%e224805224910%_
                                               (gx#syntax-e
                                                _%tl224804224907%_)))
                                          (let ((_%hd224806224914%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e224805224910%_)))
                                                (_%tl224807224917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e224805224910%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl224807224917%_)
                                                (let ((_g228482_
                                                       (gx#syntax-split-splice
                                                        _%tl224807224917%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g228483_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g228482_)
                         (##values-length _g228482_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g228483_ 2)))
                  (error "Context expects 2 values" _g228483_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target224808224920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g228482_
                                                              0)))
                                                          (_%tl224810224923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g228482_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl224810224923%_)
                                                          (letrec ((_%loop224811224926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd224809224930%_ _%step224815224933%_)
                              (if (gx#stx-pair? _%hd224809224930%_)
                                  (let ((_%e224812224935%_
                                         (gx#syntax-e _%hd224809224930%_)))
                                    (let ((_%lp-hd224813224939%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e224812224935%_)))
                                          (_%lp-tl224814224942%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e224812224935%_))))
                                      (_%loop224811224926%_
                                       _%lp-tl224814224942%_
                                       (cons _%lp-hd224813224939%_
                                             _%step224815224933%_))))
                                  (let ((_%step224816224945%_
                                         (reverse _%step224815224933%_)))
                                    (_%loop224792224879%_
                                     _%lp-tl224795224897%_
                                     (cons _%step224816224945%_
                                           _%step224796224886%_)
                                     (cons _%hd224806224914%_
                                           _%init224797224887%_)
                                     (cons _%hd224803224904%_
                                           _%var224798224888%_)))))))
                    (_%loop224811224926%_ _%target224808224920%_ '()))
                  (_%g224775224846%_ _%g224776224850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g224775224846%_
                                                 _%g224776224850%_))))
                                        (_%g224775224846%_
                                         _%g224776224850%_))))
                                (_%g224775224846%_ _%g224776224850%_))))
                        (let ((_%step224799224948%_
                               (reverse _%step224796224886%_))
                              (_%init224800224950%_
                               (reverse _%init224797224887%_))
                              (_%var224801224951%_
                               (reverse _%var224798224888%_)))
                          (if (gx#stx-pair? _%tl224788224870%_)
                              (let ((_%e224817224953%_
                                     (gx#syntax-e _%tl224788224870%_)))
                                (let ((_%hd224818224957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e224817224953%_)))
                                      (_%tl224819224960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e224817224953%_))))
                                  (if (gx#stx-pair? _%hd224818224957%_)
                                      (let ((_%e224820224963%_
                                             (gx#syntax-e _%hd224818224957%_)))
                                        (let ((_%hd224821224967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e224820224963%_)))
                                              (_%tl224822224970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e224820224963%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl224822224970%_)
                                              (let ((_g228484_
                                                     (gx#syntax-split-splice
                                                      _%tl224822224970%_
                                                      '0)))
                                                (begin
                                                  (let ((_g228485_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g228484_)
                                                               (##values-length
                                                                _g228484_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g228485_ 2)))
                (error "Context expects 2 values" _g228485_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target224823224973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g228484_
                                                            0)))
                                                        (_%tl224825224976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g228484_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl224825224976%_)
                                                        (letrec ((_%loop224826224979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd224824224983%_ _%fini224830224986%_)
                            (if (gx#stx-pair? _%hd224824224983%_)
                                (let ((_%e224827224988%_
                                       (gx#syntax-e _%hd224824224983%_)))
                                  (let ((_%lp-hd224828224992%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e224827224988%_)))
                                        (_%lp-tl224829224995%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e224827224988%_))))
                                    (_%loop224826224979%_
                                     _%lp-tl224829224995%_
                                     (cons _%lp-hd224828224992%_
                                           _%fini224830224986%_))))
                                (let ((_%fini224831224998%_
                                       (reverse _%fini224830224986%_)))
                                  (if (gx#stx-pair/null? _%tl224819224960%_)
                                      (let ((_g228486_
                                             (gx#syntax-split-splice
                                              _%tl224819224960%_
                                              '0)))
                                        (begin
                                          (let ((_g228487_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228486_)
                                                       (##values-length
                                                        _g228486_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228487_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228487_)))
                                          (let ((_%target224832225001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g228486_ 0)))
                                                (_%tl224834225004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g228486_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl224834225004%_)
                                                (letrec ((_%loop224835225007%_
                                                          (lambda (_%hd224833225011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body224839225014%_)
                    (if (gx#stx-pair? _%hd224833225011%_)
                        (let ((_%e224836225016%_
                               (gx#syntax-e _%hd224833225011%_)))
                          (let ((_%lp-hd224837225020%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e224836225016%_)))
                                (_%lp-tl224838225023%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e224836225016%_))))
                            (_%loop224835225007%_
                             _%lp-tl224838225023%_
                             (cons _%lp-hd224837225020%_
                                   _%body224839225014%_))))
                        (let ((_%body224840225026%_
                               (reverse _%body224839225014%_)))
                          ((lambda (_%g224777225029%_
                                    _%g224778225031%_
                                    _%g224779225032%_
                                    _%g224780225033%_
                                    _%g224781225034%_
                                    _%g224782225035%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g225068225071%_
                                                  _%g225069225074%_)
                                           (cons _%g225068225071%_
                                                 _%g225069225074%_))
                                         '()
                                         _%g224782225035%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g224781225034%_
                                                      _%g224782225035%_)
                                                     (foldr (lambda (_%g225076225089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g225077225092%_
                             _%g225078225094%_)
                      (cons (cons _%g225077225092%_
                                  (cons _%g225076225089%_ '()))
                            _%g225078225094%_))
                    '()
                    _%g224781225034%_
                    _%g224782225035%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g224779225032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g225079225097%_
                                                               _%g225080225100%_)
                                                        (cons _%g225079225097%_
                                                              _%g225080225100%_))
                                                      '()
                                                      _%g224778225031%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g225081225103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g225082225106%_)
                      (cons _%g225081225103%_ _%g225082225106%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g224780225033%_
                                   _%g224782225035%_)
                                  (foldr (lambda (_%g225083225109%_
                                                  _%g225084225112%_
                                                  _%g225085225114%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g225084225112%_
                                                             (foldr (lambda (_%g225086225117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g225087225120%_)
                              (cons _%g225086225117%_ _%g225087225120%_))
                            '()
                            _%g225083225109%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g225085225114%_))
                                         '()
                                         _%g224780225033%_
                                         _%g224782225035%_)))
                          '())
                    _%g224777225029%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g224775224846%_ _%g224776224850%_)))
                           _%body224840225026%_
                           _%fini224831224998%_
                           _%hd224821224967%_
                           _%step224799224948%_
                           _%init224800224950%_
                           _%var224801224951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop224835225007%_
                                                   _%target224832225001%_
                                                   '()))
                                                (_%g224775224846%_
                                                 _%g224776224850%_)))))
                                      (_%g224775224846%_
                                       _%g224776224850%_)))))))
                  (_%loop224826224979%_ _%target224823224973%_ '()))
                (_%g224775224846%_ _%g224776224850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g224775224846%_
                                               _%g224776224850%_))))
                                      (_%g224775224846%_ _%g224776224850%_))))
                              (_%g224775224846%_ _%g224776224850%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop224792224879%_
                                                   _%target224789224873%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g224775224846%_
                                                 _%g224776224850%_)))))
                                      (_%g224775224846%_ _%g224776224850%_))))
                              (_%g224775224846%_ _%g224776224850%_))))
                      (_%g224775224846%_ _%g224776224850%_)))))
          (_%g224774225123%_ _%$stx224771%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx225131%_)
        (let* ((_%g225135225206%_
                (lambda (_%g225136225202%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g225136225202%_)))
               (_%g225134225483%_
                (lambda (_%g225136225210%_)
                  (if (gx#stx-pair? _%g225136225210%_)
                      (let ((_%e225143225213%_
                             (gx#syntax-e _%g225136225210%_)))
                        (let ((_%hd225144225217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e225143225213%_)))
                              (_%tl225145225220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e225143225213%_))))
                          (if (gx#stx-pair? _%tl225145225220%_)
                              (let ((_%e225146225223%_
                                     (gx#syntax-e _%tl225145225220%_)))
                                (let ((_%hd225147225227%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e225146225223%_)))
                                      (_%tl225148225230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e225146225223%_))))
                                  (if (gx#stx-pair/null? _%hd225147225227%_)
                                      (let ((_g228488_
                                             (gx#syntax-split-splice
                                              _%hd225147225227%_
                                              '0)))
                                        (begin
                                          (let ((_g228489_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228488_)
                                                       (##values-length
                                                        _g228488_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228489_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228489_)))
                                          (let ((_%target225149225233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g228488_ 0)))
                                                (_%tl225151225236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g228488_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl225151225236%_)
                                                (letrec ((_%loop225152225239%_
                                                          (lambda (_%hd225150225243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step225156225246%_
                           _%init225157225247%_
                           _%var225158225248%_)
                    (if (gx#stx-pair? _%hd225150225243%_)
                        (let ((_%e225153225250%_
                               (gx#syntax-e _%hd225150225243%_)))
                          (let ((_%lp-hd225154225254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225153225250%_)))
                                (_%lp-tl225155225257%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225153225250%_))))
                            (if (gx#stx-pair? _%lp-hd225154225254%_)
                                (let ((_%e225162225260%_
                                       (gx#syntax-e _%lp-hd225154225254%_)))
                                  (let ((_%hd225163225264%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225162225260%_)))
                                        (_%tl225164225267%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225162225260%_))))
                                    (if (gx#stx-pair? _%tl225164225267%_)
                                        (let ((_%e225165225270%_
                                               (gx#syntax-e
                                                _%tl225164225267%_)))
                                          (let ((_%hd225166225274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e225165225270%_)))
                                                (_%tl225167225277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e225165225270%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl225167225277%_)
                                                (let ((_g228490_
                                                       (gx#syntax-split-splice
                                                        _%tl225167225277%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g228491_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g228490_)
                         (##values-length _g228490_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g228491_ 2)))
                  (error "Context expects 2 values" _g228491_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target225168225280%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g228490_
                                                              0)))
                                                          (_%tl225170225283%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g228490_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl225170225283%_)
                                                          (letrec ((_%loop225171225286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd225169225290%_ _%step225175225293%_)
                              (if (gx#stx-pair? _%hd225169225290%_)
                                  (let ((_%e225172225295%_
                                         (gx#syntax-e _%hd225169225290%_)))
                                    (let ((_%lp-hd225173225299%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e225172225295%_)))
                                          (_%lp-tl225174225302%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e225172225295%_))))
                                      (_%loop225171225286%_
                                       _%lp-tl225174225302%_
                                       (cons _%lp-hd225173225299%_
                                             _%step225175225293%_))))
                                  (let ((_%step225176225305%_
                                         (reverse _%step225175225293%_)))
                                    (_%loop225152225239%_
                                     _%lp-tl225155225257%_
                                     (cons _%step225176225305%_
                                           _%step225156225246%_)
                                     (cons _%hd225166225274%_
                                           _%init225157225247%_)
                                     (cons _%hd225163225264%_
                                           _%var225158225248%_)))))))
                    (_%loop225171225286%_ _%target225168225280%_ '()))
                  (_%g225135225206%_ _%g225136225210%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g225135225206%_
                                                 _%g225136225210%_))))
                                        (_%g225135225206%_
                                         _%g225136225210%_))))
                                (_%g225135225206%_ _%g225136225210%_))))
                        (let ((_%step225159225308%_
                               (reverse _%step225156225246%_))
                              (_%init225160225310%_
                               (reverse _%init225157225247%_))
                              (_%var225161225311%_
                               (reverse _%var225158225248%_)))
                          (if (gx#stx-pair? _%tl225148225230%_)
                              (let ((_%e225177225313%_
                                     (gx#syntax-e _%tl225148225230%_)))
                                (let ((_%hd225178225317%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e225177225313%_)))
                                      (_%tl225179225320%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e225177225313%_))))
                                  (if (gx#stx-pair? _%hd225178225317%_)
                                      (let ((_%e225180225323%_
                                             (gx#syntax-e _%hd225178225317%_)))
                                        (let ((_%hd225181225327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e225180225323%_)))
                                              (_%tl225182225330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e225180225323%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl225182225330%_)
                                              (let ((_g228492_
                                                     (gx#syntax-split-splice
                                                      _%tl225182225330%_
                                                      '0)))
                                                (begin
                                                  (let ((_g228493_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g228492_)
                                                               (##values-length
                                                                _g228492_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g228493_ 2)))
                (error "Context expects 2 values" _g228493_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target225183225333%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g228492_
                                                            0)))
                                                        (_%tl225185225336%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g228492_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl225185225336%_)
                                                        (letrec ((_%loop225186225339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd225184225343%_ _%fini225190225346%_)
                            (if (gx#stx-pair? _%hd225184225343%_)
                                (let ((_%e225187225348%_
                                       (gx#syntax-e _%hd225184225343%_)))
                                  (let ((_%lp-hd225188225352%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225187225348%_)))
                                        (_%lp-tl225189225355%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225187225348%_))))
                                    (_%loop225186225339%_
                                     _%lp-tl225189225355%_
                                     (cons _%lp-hd225188225352%_
                                           _%fini225190225346%_))))
                                (let ((_%fini225191225358%_
                                       (reverse _%fini225190225346%_)))
                                  (if (gx#stx-pair/null? _%tl225179225320%_)
                                      (let ((_g228494_
                                             (gx#syntax-split-splice
                                              _%tl225179225320%_
                                              '0)))
                                        (begin
                                          (let ((_g228495_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228494_)
                                                       (##values-length
                                                        _g228494_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228495_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228495_)))
                                          (let ((_%target225192225361%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g228494_ 0)))
                                                (_%tl225194225364%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g228494_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl225194225364%_)
                                                (letrec ((_%loop225195225367%_
                                                          (lambda (_%hd225193225371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body225199225374%_)
                    (if (gx#stx-pair? _%hd225193225371%_)
                        (let ((_%e225196225376%_
                               (gx#syntax-e _%hd225193225371%_)))
                          (let ((_%lp-hd225197225380%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225196225376%_)))
                                (_%lp-tl225198225383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225196225376%_))))
                            (_%loop225195225367%_
                             _%lp-tl225198225383%_
                             (cons _%lp-hd225197225380%_
                                   _%body225199225374%_))))
                        (let ((_%body225200225386%_
                               (reverse _%body225199225374%_)))
                          ((lambda (_%g225137225389%_
                                    _%g225138225391%_
                                    _%g225139225392%_
                                    _%g225140225393%_
                                    _%g225141225394%_
                                    _%g225142225395%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g225428225431%_
                                                  _%g225429225434%_)
                                           (cons _%g225428225431%_
                                                 _%g225429225434%_))
                                         '()
                                         _%g225142225395%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g225141225394%_
                                                      _%g225142225395%_)
                                                     (foldr (lambda (_%g225436225449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g225437225452%_
                             _%g225438225454%_)
                      (cons (cons _%g225437225452%_
                                  (cons _%g225436225449%_ '()))
                            _%g225438225454%_))
                    '()
                    _%g225141225394%_
                    _%g225142225395%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g225439225457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g225440225460%_)
                    (cons _%g225439225457%_ _%g225440225460%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g225139225392%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g225140225393%_
                                                   _%g225142225395%_)
                                                  (foldr (lambda (_%g225441225463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g225442225466%_
                          _%g225443225468%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g225442225466%_
                                     (foldr (lambda (_%g225444225471%_
                                                     _%g225445225474%_)
                                              (cons _%g225444225471%_
                                                    _%g225445225474%_))
                                            '()
                                            _%g225441225463%_)))
                         _%g225443225468%_))
                 '()
                 _%g225140225393%_
                 _%g225142225395%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g225446225477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g225447225480%_)
                             (cons _%g225446225477%_ _%g225447225480%_))
                           '()
                           _%g225138225391%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g225137225389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g225135225206%_ _%g225136225210%_)))
                           _%body225200225386%_
                           _%fini225191225358%_
                           _%hd225181225327%_
                           _%step225159225308%_
                           _%init225160225310%_
                           _%var225161225311%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop225195225367%_
                                                   _%target225192225361%_
                                                   '()))
                                                (_%g225135225206%_
                                                 _%g225136225210%_)))))
                                      (_%g225135225206%_
                                       _%g225136225210%_)))))))
                  (_%loop225186225339%_ _%target225183225333%_ '()))
                (_%g225135225206%_ _%g225136225210%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g225135225206%_
                                               _%g225136225210%_))))
                                      (_%g225135225206%_ _%g225136225210%_))))
                              (_%g225135225206%_ _%g225136225210%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop225152225239%_
                                                   _%target225149225233%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g225135225206%_
                                                 _%g225136225210%_)))))
                                      (_%g225135225206%_ _%g225136225210%_))))
                              (_%g225135225206%_ _%g225136225210%_))))
                      (_%g225135225206%_ _%g225136225210%_)))))
          (_%g225134225483%_ _%$stx225131%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx225491%_)
        (let* ((_%g225495225519%_
                (lambda (_%g225496225515%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g225496225515%_)))
               (_%g225494225602%_
                (lambda (_%g225496225523%_)
                  (if (gx#stx-pair? _%g225496225523%_)
                      (let ((_%e225499225526%_
                             (gx#syntax-e _%g225496225523%_)))
                        (let ((_%hd225500225530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e225499225526%_)))
                              (_%tl225501225533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e225499225526%_))))
                          (if (gx#stx-pair? _%tl225501225533%_)
                              (let ((_%e225502225536%_
                                     (gx#syntax-e _%tl225501225533%_)))
                                (let ((_%hd225503225540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e225502225536%_)))
                                      (_%tl225504225543%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e225502225536%_))))
                                  (if (gx#stx-pair/null? _%tl225504225543%_)
                                      (let ((_g228496_
                                             (gx#syntax-split-splice
                                              _%tl225504225543%_
                                              '0)))
                                        (begin
                                          (let ((_g228497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228496_)
                                                       (##values-length
                                                        _g228496_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228497_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228497_)))
                                          (let ((_%target225505225546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g228496_ 0)))
                                                (_%tl225507225549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g228496_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl225507225549%_)
                                                (letrec ((_%loop225508225552%_
                                                          (lambda (_%hd225506225556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body225512225559%_)
                    (if (gx#stx-pair? _%hd225506225556%_)
                        (let ((_%e225509225561%_
                               (gx#syntax-e _%hd225506225556%_)))
                          (let ((_%lp-hd225510225565%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225509225561%_)))
                                (_%lp-tl225511225568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225509225561%_))))
                            (_%loop225508225552%_
                             _%lp-tl225511225568%_
                             (cons _%lp-hd225510225565%_
                                   _%body225512225559%_))))
                        (let ((_%body225513225571%_
                               (reverse _%body225512225559%_)))
                          ((lambda (_%g225497225574%_ _%g225498225576%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g225498225576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g225593225596%_ _%g225594225599%_)
                                  (cons _%g225593225596%_ _%g225594225599%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g225497225574%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body225513225571%_
                           _%hd225503225540%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop225508225552%_
                                                   _%target225505225546%_
                                                   '()))
                                                (_%g225495225519%_
                                                 _%g225496225523%_)))))
                                      (_%g225495225519%_ _%g225496225523%_))))
                              (_%g225495225519%_ _%g225496225523%_))))
                      (_%g225495225519%_ _%g225496225523%_)))))
          (_%g225494225602%_ _%$stx225491%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx225607%_)
        (let* ((_%g225611225635%_
                (lambda (_%g225612225631%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g225612225631%_)))
               (_%g225610225718%_
                (lambda (_%g225612225639%_)
                  (if (gx#stx-pair? _%g225612225639%_)
                      (let ((_%e225615225642%_
                             (gx#syntax-e _%g225612225639%_)))
                        (let ((_%hd225616225646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e225615225642%_)))
                              (_%tl225617225649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e225615225642%_))))
                          (if (gx#stx-pair? _%tl225617225649%_)
                              (let ((_%e225618225652%_
                                     (gx#syntax-e _%tl225617225649%_)))
                                (let ((_%hd225619225656%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e225618225652%_)))
                                      (_%tl225620225659%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e225618225652%_))))
                                  (if (gx#stx-pair/null? _%tl225620225659%_)
                                      (let ((_g228498_
                                             (gx#syntax-split-splice
                                              _%tl225620225659%_
                                              '0)))
                                        (begin
                                          (let ((_g228499_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228498_)
                                                       (##values-length
                                                        _g228498_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228499_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228499_)))
                                          (let ((_%target225621225662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g228498_ 0)))
                                                (_%tl225623225665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g228498_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl225623225665%_)
                                                (letrec ((_%loop225624225668%_
                                                          (lambda (_%hd225622225672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body225628225675%_)
                    (if (gx#stx-pair? _%hd225622225672%_)
                        (let ((_%e225625225677%_
                               (gx#syntax-e _%hd225622225672%_)))
                          (let ((_%lp-hd225626225681%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225625225677%_)))
                                (_%lp-tl225627225684%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225625225677%_))))
                            (_%loop225624225668%_
                             _%lp-tl225627225684%_
                             (cons _%lp-hd225626225681%_
                                   _%body225628225675%_))))
                        (let ((_%body225629225687%_
                               (reverse _%body225628225675%_)))
                          ((lambda (_%g225613225690%_ _%g225614225692%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g225614225692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g225709225712%_ _%g225710225715%_)
                                  (cons _%g225709225712%_ _%g225710225715%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g225613225690%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body225629225687%_
                           _%hd225619225656%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop225624225668%_
                                                   _%target225621225662%_
                                                   '()))
                                                (_%g225611225635%_
                                                 _%g225612225639%_)))))
                                      (_%g225611225635%_ _%g225612225639%_))))
                              (_%g225611225635%_ _%g225612225639%_))))
                      (_%g225611225635%_ _%g225612225639%_)))))
          (_%g225610225718%_ _%$stx225607%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx225723%_)
        (let ((_%g225726225733%_
               (lambda (_%g225727225729%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g225727225729%_))))
          (_%g225726225733%_ _%$stx225723%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx225737%_)
        (let ((_%g225740225747%_
               (lambda (_%g225741225743%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g225741225743%_))))
          (_%g225740225747%_ _%$stx225737%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx225751%_)
        (letrec ((_%generate-thunk225754%_
                  (lambda (_%body227073%_)
                    (if (null? _%body227073%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx225751%_)
                        (let* ((_%g227076227093%_
                                (lambda (_%g227077227089%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g227077227089%_)))
                               (_%g227075227152%_
                                (lambda (_%g227077227097%_)
                                  (if (gx#stx-pair/null? _%g227077227097%_)
                                      (let ((_g228500_
                                             (gx#syntax-split-splice
                                              _%g227077227097%_
                                              '0)))
                                        (begin
                                          (let ((_g228501_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228500_)
                                                       (##values-length
                                                        _g228500_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228501_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228501_)))
                                          (let ((_%target227079227100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g228500_ 0)))
                                                (_%tl227081227103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g228500_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl227081227103%_)
                                                (letrec ((_%loop227082227106%_
                                                          (lambda (_%hd227080227110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e227086227113%_)
                    (if (gx#stx-pair? _%hd227080227110%_)
                        (let ((_%e227083227115%_
                               (gx#syntax-e _%hd227080227110%_)))
                          (let ((_%lp-hd227084227119%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227083227115%_)))
                                (_%lp-tl227085227122%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227083227115%_))))
                            (_%loop227082227106%_
                             _%lp-tl227085227122%_
                             (cons _%lp-hd227084227119%_ _%e227086227113%_))))
                        (let ((_%e227087227125%_ (reverse _%e227086227113%_)))
                          ((lambda (_%g227078227128%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g227143227146%_
                                                         _%g227144227149%_)
                                                  (cons _%g227143227146%_
                                                        _%g227144227149%_))
                                                '()
                                                _%g227078227128%_))))
                           _%e227087227125%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop227082227106%_
                                                   _%target227079227100%_
                                                   '()))
                                                (_%g227076227093%_
                                                 _%g227077227097%_)))))
                                      (_%g227076227093%_ _%g227077227097%_)))))
                          (_%g227075227152%_ (reverse _%body227073%_))))))
                 (_%generate-fini225756%_
                  (lambda (_%thunk226956%_ _%fini226958%_)
                    (let* ((_%g226960226984%_
                            (lambda (_%g226961226980%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g226961226980%_)))
                           (_%g226959227069%_
                            (lambda (_%g226961226988%_)
                              (if (gx#stx-pair? _%g226961226988%_)
                                  (let ((_%e226964226991%_
                                         (gx#syntax-e _%g226961226988%_)))
                                    (let ((_%hd226965226995%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226964226991%_)))
                                          (_%tl226966226998%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226964226991%_))))
                                      (if (gx#stx-pair? _%tl226966226998%_)
                                          (let ((_%e226967227001%_
                                                 (gx#syntax-e
                                                  _%tl226966226998%_)))
                                            (let ((_%hd226968227005%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226967227001%_)))
                                                  (_%tl226969227008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226967227001%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd226968227005%_)
                                                  (let ((_g228502_
                                                         (gx#syntax-split-splice
                                                          _%hd226968227005%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g228503_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g228502_)
                           (##values-length _g228502_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g228503_ 2)))
                    (error "Context expects 2 values" _g228503_)))
              (let ((_%target226970227011%_
                     (let () (declare (not safe)) (##values-ref _g228502_ 0)))
                    (_%tl226972227014%_
                     (let () (declare (not safe)) (##values-ref _g228502_ 1))))
                (if (gx#stx-null? _%tl226972227014%_)
                    (letrec ((_%loop226973227017%_
                              (lambda (_%hd226971227021%_ _%e226977227024%_)
                                (if (gx#stx-pair? _%hd226971227021%_)
                                    (let ((_%e226974227026%_
                                           (gx#syntax-e _%hd226971227021%_)))
                                      (let ((_%lp-hd226975227030%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e226974227026%_)))
                                            (_%lp-tl226976227033%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e226974227026%_))))
                                        (_%loop226973227017%_
                                         _%lp-tl226976227033%_
                                         (cons _%lp-hd226975227030%_
                                               _%e226977227024%_))))
                                    (let ((_%e226978227036%_
                                           (reverse _%e226977227024%_)))
                                      (if (gx#stx-null? _%tl226969227008%_)
                                          ((lambda (_%g226962227039%_
                                                    _%g226963227041%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g226963227041%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g227060227063%_
                                                   _%g227061227066%_)
                                            (cons _%g227060227063%_
                                                  _%g227061227066%_))
                                          '()
                                          _%g226962227039%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e226978227036%_
                                           _%hd226965226995%_)
                                          (_%g226960226984%_
                                           _%g226961226988%_)))))))
                      (_%loop226973227017%_ _%target226970227011%_ '()))
                    (_%g226960226984%_ _%g226961226988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g226960226984%_
                                                   _%g226961226988%_))))
                                          (_%g226960226984%_
                                           _%g226961226988%_))))
                                  (_%g226960226984%_ _%g226961226988%_)))))
                      (_%g226959227069%_
                       (list _%thunk226956%_ _%fini226958%_)))))
                 (_%generate-catch225757%_
                  (lambda (_%handlers226371%_ _%thunk226373%_)
                    (let* ((_%g226375226383%_
                            (lambda (_%g226376226379%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g226376226379%_)))
                           (_%g226374226952%_
                            (lambda (_%g226376226387%_)
                              ((lambda (_%g226377226390%_)
                                 (let _%lp226402%_ ((_%rest226405%_
                                                     _%handlers226371%_)
                                                    (_%clauses226407%_ '()))
                                   (let* ((_%rest226408226416%_ _%rest226405%_)
                                          (_%else226410226547%_
                                           (lambda ()
                                             (let* ((_%g226428226452%_
                                                     (lambda (_%g226429226448%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g226429226448%_)))
                                                    (_%g226427226543%_
                                                     (lambda (_%g226429226456%_)
                                                       (if (gx#stx-pair?
                                                            _%g226429226456%_)
                                                           (let ((_%e226432226459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g226429226456%_)))
                     (let ((_%hd226433226463%_
                            (let ()
                              (declare (not safe))
                              (##car _%e226432226459%_)))
                           (_%tl226434226466%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e226432226459%_))))
                       (if (gx#stx-pair/null? _%hd226433226463%_)
                           (let ((_g228504_
                                  (gx#syntax-split-splice
                                   _%hd226433226463%_
                                   '0)))
                             (begin
                               (let ((_g228505_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g228504_)
                                            (##values-length _g228504_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g228505_ 2)))
                                     (error "Context expects 2 values"
                                            _g228505_)))
                               (let ((_%target226435226469%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g228504_ 0)))
                                     (_%tl226437226472%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g228504_ 1))))
                                 (if (gx#stx-null? _%tl226437226472%_)
                                     (letrec ((_%loop226438226475%_
                                               (lambda (_%hd226436226479%_
                                                        _%clause226442226482%_)
                                                 (if (gx#stx-pair?
                                                      _%hd226436226479%_)
                                                     (let ((_%e226439226484%_
                                                            (gx#syntax-e
                                                             _%hd226436226479%_)))
                                                       (let ((_%lp-hd226440226488%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e226439226484%_)))
                     (_%lp-tl226441226491%_
                      (let () (declare (not safe)) (##cdr _%e226439226484%_))))
                 (_%loop226438226475%_
                  _%lp-tl226441226491%_
                  (cons _%lp-hd226440226488%_ _%clause226442226482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause226443226494%_
                                                            (reverse _%clause226442226482%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl226434226466%_)
                                                           (let ((_%e226444226497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl226434226466%_)))
                     (let ((_%hd226445226501%_
                            (let ()
                              (declare (not safe))
                              (##car _%e226444226497%_)))
                           (_%tl226446226504%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e226444226497%_))))
                       (if (gx#stx-null? _%tl226446226504%_)
                           ((lambda (_%g226430226507%_ _%g226431226509%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g226377226390%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g226534226537%_ _%g226535226540%_)
                                   (cons _%g226534226537%_ _%g226535226540%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g226377226390%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g226431226509%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g226430226507%_ '()))))
                            _%hd226445226501%_
                            _%clause226443226494%_)
                           (_%g226428226452%_ _%g226429226456%_))))
                   (_%g226428226452%_ _%g226429226456%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop226438226475%_
                                        _%target226435226469%_
                                        '()))
                                     (_%g226428226452%_ _%g226429226456%_)))))
                           (_%g226428226452%_ _%g226429226456%_))))
                   (_%g226428226452%_ _%g226429226456%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g226427226543%_
                                                (list _%clauses226407%_
                                                      _%thunk226373%_)))))
                                          (_%K226412226936%_
                                           (lambda (_%rest226551%_
                                                    _%hd226553%_)
                                             (let* ((_%__stx228224228225%_
                                                     _%hd226553%_)
                                                    (_%g226558226628%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx228224228225%_))))
                                               (let ((_%__kont228227228228%_
                                                      (lambda (_%g226560226915%_
                                                               _%g226561226917%_)
                                                        (_%lp226402%_
                                                         _%rest226551%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g226561226917%_ '()))
                                   (cons _%g226377226390%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g226560226915%_ '())))
                       _%clauses226407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont228229228230%_
                                                      (lambda (_%g226571226847%_
                                                               _%g226572226849%_
                                                               _%g226573226850%_)
                                                        (_%lp226402%_
                                                         _%rest226551%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g226573226850%_ '()))
                                   (cons _%g226377226390%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g226572226849%_
                                                           (cons _%g226377226390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g226869226872%_
                                                               _%g226870226875%_)
                                                        (cons _%g226869226872%_
                                                              _%g226870226875%_))
                                                      '()
                                                      _%g226571226847%_)))
                                   '()))
                       _%clauses226407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont228233228234%_
                                                      (lambda (_%g226592226755%_
                                                               _%g226593226757%_)
                                                        (_%lp226402%_
                                                         _%rest226551%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g226593226757%_
                                                           (cons _%g226377226390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g226773226776%_
                                                               _%g226774226779%_)
                                                        (cons _%g226773226776%_
                                                              _%g226774226779%_))
                                                      '()
                                                      _%g226592226755%_)))
                                   '()))
                       _%clauses226407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont228237228238%_
                                                      (lambda (_%g226609226673%_
                                                               _%g226610226675%_)
                                                        (_%lp226402%_
                                                         _%rest226551%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g226691226694%_
                                                         _%g226692226697%_)
                                                  (cons _%g226691226694%_
                                                        _%g226692226697%_))
                                                '()
                                                _%g226609226673%_))
                                   '()))
                       _%clauses226407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match228329228330%_
                                                         (lambda (_%e226611226635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd226612226639%_
                          _%tl226613226642%_
                          _%__splice228239228240%_
                          _%target226614226645%_
                          _%tl226616226648%_)
                   (letrec ((_%loop226617226651%_
                             (lambda (_%hd226615226655%_ _%body226621226658%_)
                               (if (gx#stx-pair? _%hd226615226655%_)
                                   (let ((_%e226618226660%_
                                          (gx#syntax-e _%hd226615226655%_)))
                                     (let ((_%lp-tl226620226667%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e226618226660%_)))
                                           (_%lp-hd226619226664%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e226618226660%_))))
                                       (_%loop226617226651%_
                                        _%lp-tl226620226667%_
                                        (cons _%lp-hd226619226664%_
                                              _%body226621226658%_))))
                                   (let ((_%body226622226670%_
                                          (reverse _%body226621226658%_)))
                                     (let ((_%g226609226673%_
                                            _%body226622226670%_)
                                           (_%g226610226675%_
                                            _%hd226612226639%_))
                                       (if (gx#underscore? _%g226610226675%_)
                                           (_%__kont228237228238%_
                                            _%g226609226673%_
                                            _%g226610226675%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g226558226628%_)))))))))
                     (_%loop226617226651%_ _%target226614226645%_ '()))))
                (_%__match228315228316%_
                 (lambda (_%e226594226707%_
                          _%hd226595226711%_
                          _%tl226596226714%_
                          _%e226597226717%_
                          _%hd226598226721%_
                          _%tl226599226724%_
                          _%__splice228235228236%_
                          _%target226600226727%_
                          _%tl226602226730%_)
                   (letrec ((_%loop226603226733%_
                             (lambda (_%hd226601226737%_ _%body226607226740%_)
                               (if (gx#stx-pair? _%hd226601226737%_)
                                   (let ((_%e226604226742%_
                                          (gx#syntax-e _%hd226601226737%_)))
                                     (let ((_%lp-tl226606226749%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e226604226742%_)))
                                           (_%lp-hd226605226746%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e226604226742%_))))
                                       (_%loop226603226733%_
                                        _%lp-tl226606226749%_
                                        (cons _%lp-hd226605226746%_
                                              _%body226607226740%_))))
                                   (let ((_%body226608226752%_
                                          (reverse _%body226607226740%_)))
                                     (let ((_%g226592226755%_
                                            _%body226608226752%_)
                                           (_%g226593226757%_
                                            _%hd226598226721%_))
                                       (if (gx#identifier? _%g226593226757%_)
                                           (_%__kont228233228234%_
                                            _%g226592226755%_
                                            _%g226593226757%_)
                                           (_%__match228329228330%_
                                            _%e226594226707%_
                                            _%hd226595226711%_
                                            _%tl226596226714%_
                                            _%__splice228235228236%_
                                            _%target226600226727%_
                                            _%tl226602226730%_))))))))
                     (_%loop226603226733%_ _%target226600226727%_ '()))))
                (_%__match228293228294%_
                 (lambda (_%e226574226789%_
                          _%hd226575226793%_
                          _%tl226576226796%_
                          _%e226577226799%_
                          _%hd226578226803%_
                          _%tl226579226806%_
                          _%e226580226809%_
                          _%hd226581226813%_
                          _%tl226582226816%_
                          _%__splice228231228232%_
                          _%target226583226819%_
                          _%tl226585226822%_)
                   (letrec ((_%loop226586226825%_
                             (lambda (_%hd226584226829%_ _%body226590226832%_)
                               (if (gx#stx-pair? _%hd226584226829%_)
                                   (let ((_%e226587226834%_
                                          (gx#syntax-e _%hd226584226829%_)))
                                     (let ((_%lp-tl226589226841%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e226587226834%_)))
                                           (_%lp-hd226588226838%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e226587226834%_))))
                                       (_%loop226586226825%_
                                        _%lp-tl226589226841%_
                                        (cons _%lp-hd226588226838%_
                                              _%body226590226832%_))))
                                   (let ((_%body226591226844%_
                                          (reverse _%body226590226832%_)))
                                     (let ((_%g226571226847%_
                                            _%body226591226844%_)
                                           (_%g226572226849%_
                                            _%hd226581226813%_)
                                           (_%g226573226850%_
                                            _%hd226578226803%_))
                                       (if (gx#identifier? _%g226572226849%_)
                                           (_%__kont228229228230%_
                                            _%g226571226847%_
                                            _%g226572226849%_
                                            _%g226573226850%_)
                                           (_%__match228329228330%_
                                            _%e226574226789%_
                                            _%hd226575226793%_
                                            _%tl226576226796%_
                                            _%__splice228231228232%_
                                            _%target226583226819%_
                                            _%tl226585226822%_))))))))
                     (_%loop226586226825%_ _%target226583226819%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx228224228225%_)
                                                       (let ((_%e226562226885%_
                                                              (gx#syntax-e
                                                               _%__stx228224228225%_)))
                                                         (let ((_%tl226564226892%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e226562226885%_)))
                       (_%hd226563226889%_
                        (let ()
                          (declare (not safe))
                          (##car _%e226562226885%_))))
                   (if (gx#stx-pair? _%tl226564226892%_)
                       (let ((_%e226565226895%_
                              (gx#syntax-e _%tl226564226892%_)))
                         (let ((_%tl226567226902%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e226565226895%_)))
                               (_%hd226566226899%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e226565226895%_))))
                           (if (gx#identifier? _%hd226566226899%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g228506_|
                                    _%hd226566226899%_)
                                   (if (gx#stx-pair? _%tl226567226902%_)
                                       (let ((_%e226568226905%_
                                              (gx#syntax-e
                                               _%tl226567226902%_)))
                                         (let ((_%tl226570226912%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e226568226905%_)))
                                               (_%hd226569226909%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e226568226905%_))))
                                           (if (gx#stx-null?
                                                _%tl226570226912%_)
                                               (_%__kont228227228228%_
                                                _%hd226569226909%_
                                                _%hd226563226889%_)
                                               (if (gx#stx-pair?
                                                    _%hd226563226889%_)
                                                   (let ((_%e226577226799%_
                                                          (gx#syntax-e
                                                           _%hd226563226889%_)))
                                                     (let ((_%tl226579226806%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e226577226799%_)))
                                                           (_%hd226578226803%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e226577226799%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl226579226806%_)
                                                           (let ((_%e226580226809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl226579226806%_)))
                     (let ((_%tl226582226816%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e226580226809%_)))
                           (_%hd226581226813%_
                            (let ()
                              (declare (not safe))
                              (##car _%e226580226809%_))))
                       (if (gx#stx-null? _%tl226582226816%_)
                           (if (gx#stx-pair/null? _%tl226564226892%_)
                               (let ((_%__splice228231228232%_
                                      (gx#syntax-split-splice->vector
                                       _%tl226564226892%_
                                       '0)))
                                 (let ((_%tl226585226822%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice228231228232%_
                                           '1)))
                                       (_%target226583226819%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice228231228232%_
                                           '0))))
                                   (if (gx#stx-null? _%tl226585226822%_)
                                       (_%__match228293228294%_
                                        _%e226562226885%_
                                        _%hd226563226889%_
                                        _%tl226564226892%_
                                        _%e226577226799%_
                                        _%hd226578226803%_
                                        _%tl226579226806%_
                                        _%e226580226809%_
                                        _%hd226581226813%_
                                        _%tl226582226816%_
                                        _%__splice228231228232%_
                                        _%target226583226819%_
                                        _%tl226585226822%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g226558226628%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g226558226628%_)))
                           (if (gx#stx-pair/null? _%tl226564226892%_)
                               (let ((_%__splice228239228240%_
                                      (gx#syntax-split-splice->vector
                                       _%tl226564226892%_
                                       '0)))
                                 (let ((_%tl226616226648%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice228239228240%_
                                           '1)))
                                       (_%target226614226645%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice228239228240%_
                                           '0))))
                                   (if (gx#stx-null? _%tl226616226648%_)
                                       (_%__match228329228330%_
                                        _%e226562226885%_
                                        _%hd226563226889%_
                                        _%tl226564226892%_
                                        _%__splice228239228240%_
                                        _%target226614226645%_
                                        _%tl226616226648%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g226558226628%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g226558226628%_))))))
                   (if (gx#stx-null? _%tl226579226806%_)
                       (if (gx#stx-pair/null? _%tl226564226892%_)
                           (let ((_%__splice228235228236%_
                                  (gx#syntax-split-splice->vector
                                   _%tl226564226892%_
                                   '0)))
                             (let ((_%tl226602226730%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice228235228236%_
                                       '1)))
                                   (_%target226600226727%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice228235228236%_
                                       '0))))
                               (if (gx#stx-null? _%tl226602226730%_)
                                   (_%__match228315228316%_
                                    _%e226562226885%_
                                    _%hd226563226889%_
                                    _%tl226564226892%_
                                    _%e226577226799%_
                                    _%hd226578226803%_
                                    _%tl226579226806%_
                                    _%__splice228235228236%_
                                    _%target226600226727%_
                                    _%tl226602226730%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g226558226628%_)))))
                           (let () (declare (not safe)) (_%g226558226628%_)))
                       (if (gx#stx-pair/null? _%tl226564226892%_)
                           (let ((_%__splice228239228240%_
                                  (gx#syntax-split-splice->vector
                                   _%tl226564226892%_
                                   '0)))
                             (let ((_%tl226616226648%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice228239228240%_
                                       '1)))
                                   (_%target226614226645%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice228239228240%_
                                       '0))))
                               (if (gx#stx-null? _%tl226616226648%_)
                                   (_%__match228329228330%_
                                    _%e226562226885%_
                                    _%hd226563226889%_
                                    _%tl226564226892%_
                                    _%__splice228239228240%_
                                    _%target226614226645%_
                                    _%tl226616226648%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g226558226628%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g226558226628%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl226564226892%_)
                                                       (let ((_%__splice228239228240%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl226564226892%_
                                                               '0)))
                                                         (let ((_%tl226616226648%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice228239228240%_ '1)))
                       (_%target226614226645%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice228239228240%_ '0))))
                   (if (gx#stx-null? _%tl226616226648%_)
                       (_%__match228329228330%_
                        _%e226562226885%_
                        _%hd226563226889%_
                        _%tl226564226892%_
                        _%__splice228239228240%_
                        _%target226614226645%_
                        _%tl226616226648%_)
                       (let () (declare (not safe)) (_%g226558226628%_)))))
               (let () (declare (not safe)) (_%g226558226628%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd226563226889%_)
                                           (let ((_%e226577226799%_
                                                  (gx#syntax-e
                                                   _%hd226563226889%_)))
                                             (let ((_%tl226579226806%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e226577226799%_)))
                                                   (_%hd226578226803%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e226577226799%_))))
                                               (if (gx#stx-pair?
                                                    _%tl226579226806%_)
                                                   (let ((_%e226580226809%_
                                                          (gx#syntax-e
                                                           _%tl226579226806%_)))
                                                     (let ((_%tl226582226816%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e226580226809%_)))
                                                           (_%hd226581226813%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e226580226809%_))))
                                                       (if (gx#stx-null?
                                                            _%tl226582226816%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl226564226892%_)
                                                               (let ((_%__splice228231228232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl226564226892%_
                               '0)))
                         (let ((_%tl226585226822%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice228231228232%_ '1)))
                               (_%target226583226819%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice228231228232%_ '0))))
                           (if (gx#stx-null? _%tl226585226822%_)
                               (_%__match228293228294%_
                                _%e226562226885%_
                                _%hd226563226889%_
                                _%tl226564226892%_
                                _%e226577226799%_
                                _%hd226578226803%_
                                _%tl226579226806%_
                                _%e226580226809%_
                                _%hd226581226813%_
                                _%tl226582226816%_
                                _%__splice228231228232%_
                                _%target226583226819%_
                                _%tl226585226822%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g226558226628%_)))))
                       (let () (declare (not safe)) (_%g226558226628%_)))
                   (if (gx#stx-pair/null? _%tl226564226892%_)
                       (let ((_%__splice228239228240%_
                              (gx#syntax-split-splice->vector
                               _%tl226564226892%_
                               '0)))
                         (let ((_%tl226616226648%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice228239228240%_ '1)))
                               (_%target226614226645%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice228239228240%_ '0))))
                           (if (gx#stx-null? _%tl226616226648%_)
                               (_%__match228329228330%_
                                _%e226562226885%_
                                _%hd226563226889%_
                                _%tl226564226892%_
                                _%__splice228239228240%_
                                _%target226614226645%_
                                _%tl226616226648%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g226558226628%_)))))
                       (let () (declare (not safe)) (_%g226558226628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl226579226806%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl226564226892%_)
                                                           (let ((_%__splice228235228236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl226564226892%_
                           '0)))
                     (let ((_%tl226602226730%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice228235228236%_ '1)))
                           (_%target226600226727%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice228235228236%_ '0))))
                       (if (gx#stx-null? _%tl226602226730%_)
                           (_%__match228315228316%_
                            _%e226562226885%_
                            _%hd226563226889%_
                            _%tl226564226892%_
                            _%e226577226799%_
                            _%hd226578226803%_
                            _%tl226579226806%_
                            _%__splice228235228236%_
                            _%target226600226727%_
                            _%tl226602226730%_)
                           (let () (declare (not safe)) (_%g226558226628%_)))))
                   (let () (declare (not safe)) (_%g226558226628%_)))
               (if (gx#stx-pair/null? _%tl226564226892%_)
                   (let ((_%__splice228239228240%_
                          (gx#syntax-split-splice->vector
                           _%tl226564226892%_
                           '0)))
                     (let ((_%tl226616226648%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice228239228240%_ '1)))
                           (_%target226614226645%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice228239228240%_ '0))))
                       (if (gx#stx-null? _%tl226616226648%_)
                           (_%__match228329228330%_
                            _%e226562226885%_
                            _%hd226563226889%_
                            _%tl226564226892%_
                            _%__splice228239228240%_
                            _%target226614226645%_
                            _%tl226616226648%_)
                           (let () (declare (not safe)) (_%g226558226628%_)))))
                   (let () (declare (not safe)) (_%g226558226628%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl226564226892%_)
                                               (let ((_%__splice228239228240%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl226564226892%_
                                                       '0)))
                                                 (let ((_%tl226616226648%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice228239228240%_
                                                           '1)))
                                                       (_%target226614226645%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice228239228240%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl226616226648%_)
                                                       (_%__match228329228330%_
                                                        _%e226562226885%_
                                                        _%hd226563226889%_
                                                        _%tl226564226892%_
                                                        _%__splice228239228240%_
                                                        _%target226614226645%_
                                                        _%tl226616226648%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g226558226628%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g226558226628%_)))))
                                   (if (gx#stx-pair? _%hd226563226889%_)
                                       (let ((_%e226577226799%_
                                              (gx#syntax-e
                                               _%hd226563226889%_)))
                                         (let ((_%tl226579226806%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e226577226799%_)))
                                               (_%hd226578226803%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e226577226799%_))))
                                           (if (gx#stx-pair?
                                                _%tl226579226806%_)
                                               (let ((_%e226580226809%_
                                                      (gx#syntax-e
                                                       _%tl226579226806%_)))
                                                 (let ((_%tl226582226816%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e226580226809%_)))
                                                       (_%hd226581226813%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e226580226809%_))))
                                                   (if (gx#stx-null?
                                                        _%tl226582226816%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl226564226892%_)
                                                           (let ((_%__splice228231228232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl226564226892%_
                           '0)))
                     (let ((_%tl226585226822%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice228231228232%_ '1)))
                           (_%target226583226819%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice228231228232%_ '0))))
                       (if (gx#stx-null? _%tl226585226822%_)
                           (_%__match228293228294%_
                            _%e226562226885%_
                            _%hd226563226889%_
                            _%tl226564226892%_
                            _%e226577226799%_
                            _%hd226578226803%_
                            _%tl226579226806%_
                            _%e226580226809%_
                            _%hd226581226813%_
                            _%tl226582226816%_
                            _%__splice228231228232%_
                            _%target226583226819%_
                            _%tl226585226822%_)
                           (let () (declare (not safe)) (_%g226558226628%_)))))
                   (let () (declare (not safe)) (_%g226558226628%_)))
               (if (gx#stx-pair/null? _%tl226564226892%_)
                   (let ((_%__splice228239228240%_
                          (gx#syntax-split-splice->vector
                           _%tl226564226892%_
                           '0)))
                     (let ((_%tl226616226648%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice228239228240%_ '1)))
                           (_%target226614226645%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice228239228240%_ '0))))
                       (if (gx#stx-null? _%tl226616226648%_)
                           (_%__match228329228330%_
                            _%e226562226885%_
                            _%hd226563226889%_
                            _%tl226564226892%_
                            _%__splice228239228240%_
                            _%target226614226645%_
                            _%tl226616226648%_)
                           (let () (declare (not safe)) (_%g226558226628%_)))))
                   (let () (declare (not safe)) (_%g226558226628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl226579226806%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl226564226892%_)
                                                       (let ((_%__splice228235228236%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl226564226892%_
                                                               '0)))
                                                         (let ((_%tl226602226730%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice228235228236%_ '1)))
                       (_%target226600226727%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice228235228236%_ '0))))
                   (if (gx#stx-null? _%tl226602226730%_)
                       (_%__match228315228316%_
                        _%e226562226885%_
                        _%hd226563226889%_
                        _%tl226564226892%_
                        _%e226577226799%_
                        _%hd226578226803%_
                        _%tl226579226806%_
                        _%__splice228235228236%_
                        _%target226600226727%_
                        _%tl226602226730%_)
                       (let () (declare (not safe)) (_%g226558226628%_)))))
               (let () (declare (not safe)) (_%g226558226628%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl226564226892%_)
                                                       (let ((_%__splice228239228240%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl226564226892%_
                                                               '0)))
                                                         (let ((_%tl226616226648%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice228239228240%_ '1)))
                       (_%target226614226645%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice228239228240%_ '0))))
                   (if (gx#stx-null? _%tl226616226648%_)
                       (_%__match228329228330%_
                        _%e226562226885%_
                        _%hd226563226889%_
                        _%tl226564226892%_
                        _%__splice228239228240%_
                        _%target226614226645%_
                        _%tl226616226648%_)
                       (let () (declare (not safe)) (_%g226558226628%_)))))
               (let () (declare (not safe)) (_%g226558226628%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null?
                                            _%tl226564226892%_)
                                           (let ((_%__splice228239228240%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl226564226892%_
                                                   '0)))
                                             (let ((_%tl226616226648%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice228239228240%_
                                                       '1)))
                                                   (_%target226614226645%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice228239228240%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl226616226648%_)
                                                   (_%__match228329228330%_
                                                    _%e226562226885%_
                                                    _%hd226563226889%_
                                                    _%tl226564226892%_
                                                    _%__splice228239228240%_
                                                    _%target226614226645%_
                                                    _%tl226616226648%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g226558226628%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g226558226628%_)))))
                               (if (gx#stx-pair? _%hd226563226889%_)
                                   (let ((_%e226577226799%_
                                          (gx#syntax-e _%hd226563226889%_)))
                                     (let ((_%tl226579226806%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e226577226799%_)))
                                           (_%hd226578226803%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e226577226799%_))))
                                       (if (gx#stx-pair? _%tl226579226806%_)
                                           (let ((_%e226580226809%_
                                                  (gx#syntax-e
                                                   _%tl226579226806%_)))
                                             (let ((_%tl226582226816%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e226580226809%_)))
                                                   (_%hd226581226813%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e226580226809%_))))
                                               (if (gx#stx-null?
                                                    _%tl226582226816%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl226564226892%_)
                                                       (let ((_%__splice228231228232%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl226564226892%_
                                                               '0)))
                                                         (let ((_%tl226585226822%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice228231228232%_ '1)))
                       (_%target226583226819%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice228231228232%_ '0))))
                   (if (gx#stx-null? _%tl226585226822%_)
                       (_%__match228293228294%_
                        _%e226562226885%_
                        _%hd226563226889%_
                        _%tl226564226892%_
                        _%e226577226799%_
                        _%hd226578226803%_
                        _%tl226579226806%_
                        _%e226580226809%_
                        _%hd226581226813%_
                        _%tl226582226816%_
                        _%__splice228231228232%_
                        _%target226583226819%_
                        _%tl226585226822%_)
                       (let () (declare (not safe)) (_%g226558226628%_)))))
               (let () (declare (not safe)) (_%g226558226628%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl226564226892%_)
                                                       (let ((_%__splice228239228240%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl226564226892%_
                                                               '0)))
                                                         (let ((_%tl226616226648%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice228239228240%_ '1)))
                       (_%target226614226645%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice228239228240%_ '0))))
                   (if (gx#stx-null? _%tl226616226648%_)
                       (_%__match228329228330%_
                        _%e226562226885%_
                        _%hd226563226889%_
                        _%tl226564226892%_
                        _%__splice228239228240%_
                        _%target226614226645%_
                        _%tl226616226648%_)
                       (let () (declare (not safe)) (_%g226558226628%_)))))
               (let () (declare (not safe)) (_%g226558226628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null?
                                                _%tl226579226806%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl226564226892%_)
                                                   (let ((_%__splice228235228236%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl226564226892%_
                                                           '0)))
                                                     (let ((_%tl226602226730%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice228235228236%_
                                                               '1)))
                                                           (_%target226600226727%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice228235228236%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl226602226730%_)
                                                           (_%__match228315228316%_
                                                            _%e226562226885%_
                                                            _%hd226563226889%_
                                                            _%tl226564226892%_
                                                            _%e226577226799%_
                                                            _%hd226578226803%_
                                                            _%tl226579226806%_
                                                            _%__splice228235228236%_
                                                            _%target226600226727%_
                                                            _%tl226602226730%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g226558226628%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g226558226628%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl226564226892%_)
                                                   (let ((_%__splice228239228240%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl226564226892%_
                                                           '0)))
                                                     (let ((_%tl226616226648%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice228239228240%_
                                                               '1)))
                                                           (_%target226614226645%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice228239228240%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl226616226648%_)
                                                           (_%__match228329228330%_
                                                            _%e226562226885%_
                                                            _%hd226563226889%_
                                                            _%tl226564226892%_
                                                            _%__splice228239228240%_
                                                            _%target226614226645%_
                                                            _%tl226616226648%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g226558226628%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g226558226628%_)))))))
                                   (if (gx#stx-pair/null? _%tl226564226892%_)
                                       (let ((_%__splice228239228240%_
                                              (gx#syntax-split-splice->vector
                                               _%tl226564226892%_
                                               '0)))
                                         (let ((_%tl226616226648%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice228239228240%_
                                                   '1)))
                                               (_%target226614226645%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice228239228240%_
                                                   '0))))
                                           (if (gx#stx-null?
                                                _%tl226616226648%_)
                                               (_%__match228329228330%_
                                                _%e226562226885%_
                                                _%hd226563226889%_
                                                _%tl226564226892%_
                                                _%__splice228239228240%_
                                                _%target226614226645%_
                                                _%tl226616226648%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g226558226628%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g226558226628%_)))))))
                       (if (gx#stx-pair? _%hd226563226889%_)
                           (let ((_%e226577226799%_
                                  (gx#syntax-e _%hd226563226889%_)))
                             (let ((_%tl226579226806%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e226577226799%_)))
                                   (_%hd226578226803%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e226577226799%_))))
                               (if (gx#stx-pair? _%tl226579226806%_)
                                   (let ((_%e226580226809%_
                                          (gx#syntax-e _%tl226579226806%_)))
                                     (let ((_%tl226582226816%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e226580226809%_)))
                                           (_%hd226581226813%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e226580226809%_))))
                                       (if (gx#stx-null? _%tl226582226816%_)
                                           (if (gx#stx-pair/null?
                                                _%tl226564226892%_)
                                               (let ((_%__splice228231228232%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl226564226892%_
                                                       '0)))
                                                 (let ((_%tl226585226822%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice228231228232%_
                                                           '1)))
                                                       (_%target226583226819%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice228231228232%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl226585226822%_)
                                                       (_%__match228293228294%_
                                                        _%e226562226885%_
                                                        _%hd226563226889%_
                                                        _%tl226564226892%_
                                                        _%e226577226799%_
                                                        _%hd226578226803%_
                                                        _%tl226579226806%_
                                                        _%e226580226809%_
                                                        _%hd226581226813%_
                                                        _%tl226582226816%_
                                                        _%__splice228231228232%_
                                                        _%target226583226819%_
                                                        _%tl226585226822%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g226558226628%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g226558226628%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl226564226892%_)
                                               (let ((_%__splice228239228240%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl226564226892%_
                                                       '0)))
                                                 (let ((_%tl226616226648%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice228239228240%_
                                                           '1)))
                                                       (_%target226614226645%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice228239228240%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl226616226648%_)
                                                       (_%__match228329228330%_
                                                        _%e226562226885%_
                                                        _%hd226563226889%_
                                                        _%tl226564226892%_
                                                        _%__splice228239228240%_
                                                        _%target226614226645%_
                                                        _%tl226616226648%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g226558226628%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g226558226628%_))))))
                                   (if (gx#stx-null? _%tl226579226806%_)
                                       (if (gx#stx-pair/null?
                                            _%tl226564226892%_)
                                           (let ((_%__splice228235228236%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl226564226892%_
                                                   '0)))
                                             (let ((_%tl226602226730%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice228235228236%_
                                                       '1)))
                                                   (_%target226600226727%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice228235228236%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl226602226730%_)
                                                   (_%__match228315228316%_
                                                    _%e226562226885%_
                                                    _%hd226563226889%_
                                                    _%tl226564226892%_
                                                    _%e226577226799%_
                                                    _%hd226578226803%_
                                                    _%tl226579226806%_
                                                    _%__splice228235228236%_
                                                    _%target226600226727%_
                                                    _%tl226602226730%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g226558226628%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g226558226628%_)))
                                       (if (gx#stx-pair/null?
                                            _%tl226564226892%_)
                                           (let ((_%__splice228239228240%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl226564226892%_
                                                   '0)))
                                             (let ((_%tl226616226648%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice228239228240%_
                                                       '1)))
                                                   (_%target226614226645%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice228239228240%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl226616226648%_)
                                                   (_%__match228329228330%_
                                                    _%e226562226885%_
                                                    _%hd226563226889%_
                                                    _%tl226564226892%_
                                                    _%__splice228239228240%_
                                                    _%target226614226645%_
                                                    _%tl226616226648%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g226558226628%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g226558226628%_)))))))
                           (if (gx#stx-pair/null? _%tl226564226892%_)
                               (let ((_%__splice228239228240%_
                                      (gx#syntax-split-splice->vector
                                       _%tl226564226892%_
                                       '0)))
                                 (let ((_%tl226616226648%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice228239228240%_
                                           '1)))
                                       (_%target226614226645%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice228239228240%_
                                           '0))))
                                   (if (gx#stx-null? _%tl226616226648%_)
                                       (_%__match228329228330%_
                                        _%e226562226885%_
                                        _%hd226563226889%_
                                        _%tl226564226892%_
                                        _%__splice228239228240%_
                                        _%target226614226645%_
                                        _%tl226616226648%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g226558226628%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g226558226628%_)))))))
               (let () (declare (not safe)) (_%g226558226628%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest226408226416%_)
                                         (let ((_%hd226413226940%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest226408226416%_)))
                                               (_%tl226414226943%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest226408226416%_))))
                                           (let* ((_%hd226946%_
                                                   _%hd226413226940%_)
                                                  (_%rest226949%_
                                                   _%tl226414226943%_))
                                             (_%K226412226936%_
                                              _%rest226949%_
                                              _%hd226946%_)))
                                         (_%else226410226547%_)))))
                               _%g226376226387%_))))
                      (_%g226374226952%_ (gx#genident))))))
          (let* ((_%g225759225779%_
                  (lambda (_%g225760225775%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g225760225775%_)))
                 (_%g225758226367%_
                  (lambda (_%g225760225783%_)
                    (if (gx#stx-pair? _%g225760225783%_)
                        (let ((_%e225762225786%_
                               (gx#syntax-e _%g225760225783%_)))
                          (let ((_%hd225763225790%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225762225786%_)))
                                (_%tl225764225793%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225762225786%_))))
                            (if (gx#stx-pair/null? _%tl225764225793%_)
                                (let ((_g228507_
                                       (gx#syntax-split-splice
                                        _%tl225764225793%_
                                        '0)))
                                  (begin
                                    (let ((_g228508_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g228507_)
                                                 (##values-length _g228507_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g228508_ 2)))
                                          (error "Context expects 2 values"
                                                 _g228508_)))
                                    (let ((_%target225765225796%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g228507_ 0)))
                                          (_%tl225767225799%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g228507_ 1))))
                                      (if (gx#stx-null? _%tl225767225799%_)
                                          (letrec ((_%loop225768225802%_
                                                    (lambda (_%hd225766225806%_
                                                             _%e225772225809%_)
                                                      (if (gx#stx-pair?
                                                           _%hd225766225806%_)
                                                          (let ((_%e225769225811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd225766225806%_)))
                    (let ((_%lp-hd225770225815%_
                           (let ()
                             (declare (not safe))
                             (##car _%e225769225811%_)))
                          (_%lp-tl225771225818%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e225769225811%_))))
                      (_%loop225768225802%_
                       _%lp-tl225771225818%_
                       (cons _%lp-hd225770225815%_ _%e225772225809%_))))
                  (let ((_%e225773225821%_ (reverse _%e225772225809%_)))
                    ((lambda (_%g225761225824%_)
                       (let _%lp225841%_ ((_%rest225844%_
                                           (foldr (lambda (_%g226358226361%_
                                                           _%g226359226364%_)
                                                    (cons _%g226358226361%_
                                                          _%g226359226364%_))
                                                  '()
                                                  _%g225761225824%_))
                                          (_%body225846%_ '()))
                         (let* ((_%__stx228450228451%_ _%rest225844%_)
                                (_%g225849225861%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx228450228451%_))))
                           (let ((_%__kont228453228454%_
                                  (lambda (_%g225851225889%_ _%g225852225891%_)
                                    (let* ((_%__stx228398228399%_
                                            _%g225852225891%_)
                                           (_%g225908225941%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx228398228399%_))))
                                      (let ((_%__kont228401228402%_
                                             (lambda (_%g225910226328%_)
                                               (if (gx#stx-null?
                                                    _%g225851225889%_)
                                                   (_%generate-fini225756%_
                                                    (_%generate-thunk225754%_
                                                     _%body225846%_)
                                                    (foldr (lambda (_%g226342226345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g226343226348%_)
                     (cons _%g226342226345%_ _%g226343226348%_))
                   '()
                   _%g225910226328%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx225751%_))))
                                            (_%__kont228405228406%_
                                             (lambda (_%g225923225997%_)
                                               (let _%lp226014%_ ((_%rest226017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g225851225889%_)
                          (_%handlers226019%_
                           (cons (foldr (lambda (_%g226274226277%_
                                                 _%g226275226280%_)
                                          (cons _%g226274226277%_
                                                _%g226275226280%_))
                                        '()
                                        _%g225923225997%_)
                                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx228332228333%_
                                                         _%rest226017%_)
                                                        (_%g226023226063%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx228332228333%_))))
                                                   (let ((_%__kont228335228336%_
                                                          (lambda (_%g226025226244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g226026226246%_)
                    (_%lp226014%_
                     _%g226025226244%_
                     (cons (foldr (lambda (_%g226262226265%_ _%g226263226268%_)
                                    (cons _%g226262226265%_ _%g226263226268%_))
                                  '()
                                  _%g226026226246%_)
                           _%handlers226019%_))))
                 (_%__kont228339228340%_
                  (lambda (_%g226042226129%_)
                    (let* ((_%g226150226158%_
                            (lambda (_%g226151226154%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g226151226154%_)))
                           (_%g226149226185%_
                            (lambda (_%g226151226162%_)
                              ((lambda (_%g226152226165%_)
                                 (_%generate-fini225756%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons _%g226152226165%_ '())))
                                  (foldr (lambda (_%g226176226179%_
                                                  _%g226177226182%_)
                                           (cons _%g226176226179%_
                                                 _%g226177226182%_))
                                         '()
                                         _%g226042226129%_)))
                               _%g226151226162%_))))
                      (_%g226149226185%_
                       (_%generate-catch225757%_
                        _%handlers226019%_
                        (_%generate-thunk225754%_ _%body225846%_))))))
                 (_%__kont228343228344%_
                  (lambda ()
                    (_%generate-catch225757%_
                     _%handlers226019%_
                     (_%generate-thunk225754%_ _%body225846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g226022226074%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx228332228333%_)
                           (_%__kont228343228344%_)
                           (let () (declare (not safe)) (_%g226023226063%_)))))
                    (_%__match228393228394%_
                     (lambda (_%e226043226081%_
                              _%hd226044226085%_
                              _%tl226045226088%_
                              _%e226046226091%_
                              _%hd226047226095%_
                              _%tl226048226098%_
                              _%__splice228341228342%_
                              _%target226049226101%_
                              _%tl226051226104%_)
                       (letrec ((_%loop226052226107%_
                                 (lambda (_%hd226050226111%_
                                          _%fini226056226114%_)
                                   (if (gx#stx-pair? _%hd226050226111%_)
                                       (let ((_%e226053226116%_
                                              (gx#syntax-e
                                               _%hd226050226111%_)))
                                         (let ((_%lp-tl226055226123%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e226053226116%_)))
                                               (_%lp-hd226054226120%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e226053226116%_))))
                                           (_%loop226052226107%_
                                            _%lp-tl226055226123%_
                                            (cons _%lp-hd226054226120%_
                                                  _%fini226056226114%_))))
                                       (let ((_%fini226057226126%_
                                              (reverse _%fini226056226114%_)))
                                         (if (gx#stx-null? _%tl226045226088%_)
                                             (_%__kont228339228340%_
                                              _%fini226057226126%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g226023226063%_))))))))
                         (_%loop226052226107%_ _%target226049226101%_ '()))))
                    (_%__match228369228370%_
                     (lambda (_%e226027226196%_
                              _%hd226028226200%_
                              _%tl226029226203%_
                              _%e226030226206%_
                              _%hd226031226210%_
                              _%tl226032226213%_
                              _%__splice228337228338%_
                              _%target226033226216%_
                              _%tl226035226219%_)
                       (letrec ((_%loop226036226222%_
                                 (lambda (_%hd226034226226%_
                                          _%handler226040226229%_)
                                   (if (gx#stx-pair? _%hd226034226226%_)
                                       (let ((_%e226037226231%_
                                              (gx#syntax-e
                                               _%hd226034226226%_)))
                                         (let ((_%lp-tl226039226238%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e226037226231%_)))
                                               (_%lp-hd226038226235%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e226037226231%_))))
                                           (_%loop226036226222%_
                                            _%lp-tl226039226238%_
                                            (cons _%lp-hd226038226235%_
                                                  _%handler226040226229%_))))
                                       (let ((_%handler226041226241%_
                                              (reverse _%handler226040226229%_)))
                                         (_%__kont228335228336%_
                                          _%tl226029226203%_
                                          _%handler226041226241%_))))))
                         (_%loop226036226222%_ _%target226033226216%_ '())))))
               (if (gx#stx-pair? _%__stx228332228333%_)
                   (let ((_%e226027226196%_
                          (gx#syntax-e _%__stx228332228333%_)))
                     (let ((_%tl226029226203%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e226027226196%_)))
                           (_%hd226028226200%_
                            (let ()
                              (declare (not safe))
                              (##car _%e226027226196%_))))
                       (if (gx#stx-pair? _%hd226028226200%_)
                           (let ((_%e226030226206%_
                                  (gx#syntax-e _%hd226028226200%_)))
                             (let ((_%tl226032226213%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e226030226206%_)))
                                   (_%hd226031226210%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e226030226206%_))))
                               (if (gx#identifier? _%hd226031226210%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g228509_|
                                        _%hd226031226210%_)
                                       (if (gx#stx-pair/null?
                                            _%tl226032226213%_)
                                           (let ((_%__splice228337228338%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl226032226213%_
                                                   '0)))
                                             (let ((_%tl226035226219%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice228337228338%_
                                                       '1)))
                                                   (_%target226033226216%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice228337228338%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl226035226219%_)
                                                   (_%__match228369228370%_
                                                    _%e226027226196%_
                                                    _%hd226028226200%_
                                                    _%tl226029226203%_
                                                    _%e226030226206%_
                                                    _%hd226031226210%_
                                                    _%tl226032226213%_
                                                    _%__splice228337228338%_
                                                    _%target226033226216%_
                                                    _%tl226035226219%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g226023226063%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g226023226063%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g228510_|
                                            _%hd226031226210%_)
                                           (if (gx#stx-pair/null?
                                                _%tl226032226213%_)
                                               (let ((_%__splice228341228342%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl226032226213%_
                                                       '0)))
                                                 (let ((_%tl226051226104%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice228341228342%_
                                                           '1)))
                                                       (_%target226049226101%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice228341228342%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl226051226104%_)
                                                       (_%__match228393228394%_
                                                        _%e226027226196%_
                                                        _%hd226028226200%_
                                                        _%tl226029226203%_
                                                        _%e226030226206%_
                                                        _%hd226031226210%_
                                                        _%tl226032226213%_
                                                        _%__splice228341228342%_
                                                        _%target226049226101%_
                                                        _%tl226051226104%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g226023226063%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g226023226063%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g226023226063%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g226023226063%_)))))
                           (let () (declare (not safe)) (_%g226023226063%_)))))
                   (let () (declare (not safe)) (_%g226022226074%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont228409228410%_
                                             (lambda ()
                                               (_%lp225841%_
                                                _%g225851225889%_
                                                (cons _%g225852225891%_
                                                      _%body225846%_)))))
                                        (let* ((_%__match228447228448%_
                                                (lambda (_%e225924225959%_
                                                         _%hd225925225963%_
                                                         _%tl225926225966%_
                                                         _%__splice228407228408%_
                                                         _%target225927225969%_
                                                         _%tl225929225972%_)
                                                  (letrec ((_%loop225930225975%_
                                                            (lambda (_%hd225928225979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler225934225982%_)
                      (if (gx#stx-pair? _%hd225928225979%_)
                          (let ((_%e225931225984%_
                                 (gx#syntax-e _%hd225928225979%_)))
                            (let ((_%lp-tl225933225991%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e225931225984%_)))
                                  (_%lp-hd225932225988%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e225931225984%_))))
                              (_%loop225930225975%_
                               _%lp-tl225933225991%_
                               (cons _%lp-hd225932225988%_
                                     _%handler225934225982%_))))
                          (let ((_%handler225935225994%_
                                 (reverse _%handler225934225982%_)))
                            (_%__kont228405228406%_
                             _%handler225935225994%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop225930225975%_
                                                     _%target225927225969%_
                                                     '()))))
                                               (_%__match228429228430%_
                                                (lambda (_%e225911226290%_
                                                         _%hd225912226294%_
                                                         _%tl225913226297%_
                                                         _%__splice228403228404%_
                                                         _%target225914226300%_
                                                         _%tl225916226303%_)
                                                  (letrec ((_%loop225917226306%_
                                                            (lambda (_%hd225915226310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini225921226313%_)
                      (if (gx#stx-pair? _%hd225915226310%_)
                          (let ((_%e225918226315%_
                                 (gx#syntax-e _%hd225915226310%_)))
                            (let ((_%lp-tl225920226322%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e225918226315%_)))
                                  (_%lp-hd225919226319%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e225918226315%_))))
                              (_%loop225917226306%_
                               _%lp-tl225920226322%_
                               (cons _%lp-hd225919226319%_
                                     _%fini225921226313%_))))
                          (let ((_%fini225922226325%_
                                 (reverse _%fini225921226313%_)))
                            (_%__kont228401228402%_ _%fini225922226325%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop225917226306%_
                                                     _%target225914226300%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx228398228399%_)
                                              (let ((_%e225911226290%_
                                                     (gx#syntax-e
                                                      _%__stx228398228399%_)))
                                                (let ((_%tl225913226297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e225911226290%_)))
                                                      (_%hd225912226294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e225911226290%_))))
                                                  (if (gx#identifier?
                                                       _%hd225912226294%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g228511_|
                                                           _%hd225912226294%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl225913226297%_)
                                                              (let ((_%__splice228403228404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl225913226297%_
                              '0)))
                        (let ((_%tl225916226303%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice228403228404%_ '1)))
                              (_%target225914226300%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice228403228404%_ '0))))
                          (if (gx#stx-null? _%tl225916226303%_)
                              (_%__match228429228430%_
                               _%e225911226290%_
                               _%hd225912226294%_
                               _%tl225913226297%_
                               _%__splice228403228404%_
                               _%target225914226300%_
                               _%tl225916226303%_)
                              (_%__kont228409228410%_))))
                      (_%__kont228409228410%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g228512_|
                       _%hd225912226294%_)
                      (if (gx#stx-pair/null? _%tl225913226297%_)
                          (let ((_%__splice228407228408%_
                                 (gx#syntax-split-splice->vector
                                  _%tl225913226297%_
                                  '0)))
                            (let ((_%tl225929225972%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice228407228408%_
                                      '1)))
                                  (_%target225927225969%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice228407228408%_
                                      '0))))
                              (if (gx#stx-null? _%tl225929225972%_)
                                  (_%__match228447228448%_
                                   _%e225911226290%_
                                   _%hd225912226294%_
                                   _%tl225913226297%_
                                   _%__splice228407228408%_
                                   _%target225927225969%_
                                   _%tl225929225972%_)
                                  (_%__kont228409228410%_))))
                          (_%__kont228409228410%_))
                      (_%__kont228409228410%_)))
              (_%__kont228409228410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont228409228410%_)))))))
                                 (_%__kont228455228456%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body225846%_)))))
                             (let ((_%g225848225872%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx228450228451%_)
                                          (_%__kont228455228456%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g225849225861%_))))))
                               (if (gx#stx-pair? _%__stx228450228451%_)
                                   (let ((_%e225853225879%_
                                          (gx#syntax-e _%__stx228450228451%_)))
                                     (let ((_%tl225855225886%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e225853225879%_)))
                                           (_%hd225854225883%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e225853225879%_))))
                                       (_%__kont228453228454%_
                                        _%tl225855225886%_
                                        _%hd225854225883%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g225848225872%_))))))))
                     _%e225773225821%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop225768225802%_
                                             _%target225765225796%_
                                             '()))
                                          (_%g225759225779%_
                                           _%g225760225783%_)))))
                                (_%g225759225779%_ _%g225760225783%_))))
                        (_%g225759225779%_ _%g225760225783%_)))))
            (_%g225758226367%_ _%stx225751%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx227167%_)
        (let* ((_%g227171227200%_
                (lambda (_%g227172227196%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g227172227196%_)))
               (_%g227170227296%_
                (lambda (_%g227172227204%_)
                  (if (gx#stx-pair? _%g227172227204%_)
                      (let ((_%e227175227207%_
                             (gx#syntax-e _%g227172227204%_)))
                        (let ((_%hd227176227211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227175227207%_)))
                              (_%tl227177227214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227175227207%_))))
                          (if (gx#stx-pair/null? _%tl227177227214%_)
                              (let ((_g228513_
                                     (gx#syntax-split-splice
                                      _%tl227177227214%_
                                      '0)))
                                (begin
                                  (let ((_g228514_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228513_)
                                               (##values-length _g228513_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228514_ 2)))
                                        (error "Context expects 2 values"
                                               _g228514_)))
                                  (let ((_%target227178227217%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g228513_ 0)))
                                        (_%tl227180227220%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g228513_ 1))))
                                    (if (gx#stx-null? _%tl227180227220%_)
                                        (letrec ((_%loop227181227223%_
                                                  (lambda (_%hd227179227227%_
                                                           _%val227185227230%_
                                                           _%key227186227231%_)
                                                    (if (gx#stx-pair?
                                                         _%hd227179227227%_)
                                                        (let ((_%e227182227233%_
                                                               (gx#syntax-e
                                                                _%hd227179227227%_)))
                                                          (let ((_%lp-hd227183227237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e227182227233%_)))
                        (_%lp-tl227184227240%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227182227233%_))))
                    (if (gx#stx-pair? _%lp-hd227183227237%_)
                        (let ((_%e227189227243%_
                               (gx#syntax-e _%lp-hd227183227237%_)))
                          (let ((_%hd227190227247%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227189227243%_)))
                                (_%tl227191227250%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227189227243%_))))
                            (if (gx#stx-pair? _%tl227191227250%_)
                                (let ((_%e227192227253%_
                                       (gx#syntax-e _%tl227191227250%_)))
                                  (let ((_%hd227193227257%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227192227253%_)))
                                        (_%tl227194227260%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227192227253%_))))
                                    (if (gx#stx-null? _%tl227194227260%_)
                                        (_%loop227181227223%_
                                         _%lp-tl227184227240%_
                                         (cons _%hd227193227257%_
                                               _%val227185227230%_)
                                         (cons _%hd227190227247%_
                                               _%key227186227231%_))
                                        (_%g227171227200%_
                                         _%g227172227204%_))))
                                (_%g227171227200%_ _%g227172227204%_))))
                        (_%g227171227200%_ _%g227172227204%_))))
                (let ((_%val227187227263%_ (reverse _%val227185227230%_))
                      (_%key227188227265%_ (reverse _%key227186227231%_)))
                  ((lambda (_%g227173227267%_ _%g227174227269%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g227173227267%_
                                    _%g227174227269%_)
                                   (foldr (lambda (_%g227284227288%_
                                                   _%g227285227291%_
                                                   _%g227286227293%_)
                                            (cons (cons _%g227285227291%_
                                                        (cons _%g227284227288%_
                                                              '()))
                                                  _%g227286227293%_))
                                          '()
                                          _%g227173227267%_
                                          _%g227174227269%_)))))
                   _%val227187227263%_
                   _%key227188227265%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop227181227223%_
                                           _%target227178227217%_
                                           '()
                                           '()))
                                        (_%g227171227200%_
                                         _%g227172227204%_)))))
                              (_%g227171227200%_ _%g227172227204%_))))
                      (_%g227171227200%_ _%g227172227204%_)))))
          (_%g227170227296%_ _%$stx227167%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx227301%_)
        (let* ((_%g227305227334%_
                (lambda (_%g227306227330%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g227306227330%_)))
               (_%g227304227430%_
                (lambda (_%g227306227338%_)
                  (if (gx#stx-pair? _%g227306227338%_)
                      (let ((_%e227309227341%_
                             (gx#syntax-e _%g227306227338%_)))
                        (let ((_%hd227310227345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227309227341%_)))
                              (_%tl227311227348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227309227341%_))))
                          (if (gx#stx-pair/null? _%tl227311227348%_)
                              (let ((_g228515_
                                     (gx#syntax-split-splice
                                      _%tl227311227348%_
                                      '0)))
                                (begin
                                  (let ((_g228516_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228515_)
                                               (##values-length _g228515_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228516_ 2)))
                                        (error "Context expects 2 values"
                                               _g228516_)))
                                  (let ((_%target227312227351%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g228515_ 0)))
                                        (_%tl227314227354%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g228515_ 1))))
                                    (if (gx#stx-null? _%tl227314227354%_)
                                        (letrec ((_%loop227315227357%_
                                                  (lambda (_%hd227313227361%_
                                                           _%val227319227364%_
                                                           _%key227320227365%_)
                                                    (if (gx#stx-pair?
                                                         _%hd227313227361%_)
                                                        (let ((_%e227316227367%_
                                                               (gx#syntax-e
                                                                _%hd227313227361%_)))
                                                          (let ((_%lp-hd227317227371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e227316227367%_)))
                        (_%lp-tl227318227374%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227316227367%_))))
                    (if (gx#stx-pair? _%lp-hd227317227371%_)
                        (let ((_%e227323227377%_
                               (gx#syntax-e _%lp-hd227317227371%_)))
                          (let ((_%hd227324227381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227323227377%_)))
                                (_%tl227325227384%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227323227377%_))))
                            (if (gx#stx-pair? _%tl227325227384%_)
                                (let ((_%e227326227387%_
                                       (gx#syntax-e _%tl227325227384%_)))
                                  (let ((_%hd227327227391%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227326227387%_)))
                                        (_%tl227328227394%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227326227387%_))))
                                    (if (gx#stx-null? _%tl227328227394%_)
                                        (_%loop227315227357%_
                                         _%lp-tl227318227374%_
                                         (cons _%hd227327227391%_
                                               _%val227319227364%_)
                                         (cons _%hd227324227381%_
                                               _%key227320227365%_))
                                        (_%g227305227334%_
                                         _%g227306227338%_))))
                                (_%g227305227334%_ _%g227306227338%_))))
                        (_%g227305227334%_ _%g227306227338%_))))
                (let ((_%val227321227397%_ (reverse _%val227319227364%_))
                      (_%key227322227399%_ (reverse _%key227320227365%_)))
                  ((lambda (_%g227307227401%_ _%g227308227403%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g227307227401%_
                                    _%g227308227403%_)
                                   (foldr (lambda (_%g227418227422%_
                                                   _%g227419227425%_
                                                   _%g227420227427%_)
                                            (cons (cons _%g227419227425%_
                                                        (cons _%g227418227422%_
                                                              '()))
                                                  _%g227420227427%_))
                                          '()
                                          _%g227307227401%_
                                          _%g227308227403%_)))))
                   _%val227321227397%_
                   _%key227322227399%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop227315227357%_
                                           _%target227312227351%_
                                           '()
                                           '()))
                                        (_%g227305227334%_
                                         _%g227306227338%_)))))
                              (_%g227305227334%_ _%g227306227338%_))))
                      (_%g227305227334%_ _%g227306227338%_)))))
          (_%g227304227430%_ _%$stx227301%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx227435%_)
        (let* ((_%g227439227468%_
                (lambda (_%g227440227464%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g227440227464%_)))
               (_%g227438227564%_
                (lambda (_%g227440227472%_)
                  (if (gx#stx-pair? _%g227440227472%_)
                      (let ((_%e227443227475%_
                             (gx#syntax-e _%g227440227472%_)))
                        (let ((_%hd227444227479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227443227475%_)))
                              (_%tl227445227482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227443227475%_))))
                          (if (gx#stx-pair/null? _%tl227445227482%_)
                              (let ((_g228517_
                                     (gx#syntax-split-splice
                                      _%tl227445227482%_
                                      '0)))
                                (begin
                                  (let ((_g228518_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228517_)
                                               (##values-length _g228517_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228518_ 2)))
                                        (error "Context expects 2 values"
                                               _g228518_)))
                                  (let ((_%target227446227485%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g228517_ 0)))
                                        (_%tl227448227488%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g228517_ 1))))
                                    (if (gx#stx-null? _%tl227448227488%_)
                                        (letrec ((_%loop227449227491%_
                                                  (lambda (_%hd227447227495%_
                                                           _%val227453227498%_
                                                           _%key227454227499%_)
                                                    (if (gx#stx-pair?
                                                         _%hd227447227495%_)
                                                        (let ((_%e227450227501%_
                                                               (gx#syntax-e
                                                                _%hd227447227495%_)))
                                                          (let ((_%lp-hd227451227505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e227450227501%_)))
                        (_%lp-tl227452227508%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227450227501%_))))
                    (if (gx#stx-pair? _%lp-hd227451227505%_)
                        (let ((_%e227457227511%_
                               (gx#syntax-e _%lp-hd227451227505%_)))
                          (let ((_%hd227458227515%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227457227511%_)))
                                (_%tl227459227518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227457227511%_))))
                            (if (gx#stx-pair? _%tl227459227518%_)
                                (let ((_%e227460227521%_
                                       (gx#syntax-e _%tl227459227518%_)))
                                  (let ((_%hd227461227525%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227460227521%_)))
                                        (_%tl227462227528%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227460227521%_))))
                                    (if (gx#stx-null? _%tl227462227528%_)
                                        (_%loop227449227491%_
                                         _%lp-tl227452227508%_
                                         (cons _%hd227461227525%_
                                               _%val227453227498%_)
                                         (cons _%hd227458227515%_
                                               _%key227454227499%_))
                                        (_%g227439227468%_
                                         _%g227440227472%_))))
                                (_%g227439227468%_ _%g227440227472%_))))
                        (_%g227439227468%_ _%g227440227472%_))))
                (let ((_%val227455227531%_ (reverse _%val227453227498%_))
                      (_%key227456227533%_ (reverse _%key227454227499%_)))
                  ((lambda (_%g227441227535%_ _%g227442227537%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g227441227535%_
                                    _%g227442227537%_)
                                   (foldr (lambda (_%g227552227556%_
                                                   _%g227553227559%_
                                                   _%g227554227561%_)
                                            (cons (cons _%g227553227559%_
                                                        (cons _%g227552227556%_
                                                              '()))
                                                  _%g227554227561%_))
                                          '()
                                          _%g227441227535%_
                                          _%g227442227537%_)))))
                   _%val227455227531%_
                   _%key227456227533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop227449227491%_
                                           _%target227446227485%_
                                           '()
                                           '()))
                                        (_%g227439227468%_
                                         _%g227440227472%_)))))
                              (_%g227439227468%_ _%g227440227472%_))))
                      (_%g227439227468%_ _%g227440227472%_)))))
          (_%g227438227564%_ _%$stx227435%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx227569%_)
        (let* ((_%g227572227596%_
                (lambda (_%g227573227592%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g227573227592%_)))
               (_%g227571227837%_
                (lambda (_%g227573227600%_)
                  (if (gx#stx-pair? _%g227573227600%_)
                      (let ((_%e227576227603%_
                             (gx#syntax-e _%g227573227600%_)))
                        (let ((_%hd227577227607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227576227603%_)))
                              (_%tl227578227610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227576227603%_))))
                          (if (gx#stx-pair? _%tl227578227610%_)
                              (let ((_%e227579227613%_
                                     (gx#syntax-e _%tl227578227610%_)))
                                (let ((_%hd227580227617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227579227613%_)))
                                      (_%tl227581227620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227579227613%_))))
                                  (if (gx#stx-pair/null? _%tl227581227620%_)
                                      (let ((_g228519_
                                             (gx#syntax-split-splice
                                              _%tl227581227620%_
                                              '0)))
                                        (begin
                                          (let ((_g228520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228519_)
                                                       (##values-length
                                                        _g228519_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228520_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228520_)))
                                          (let ((_%target227582227623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g228519_ 0)))
                                                (_%tl227584227626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g228519_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl227584227626%_)
                                                (letrec ((_%loop227585227629%_
                                                          (lambda (_%hd227583227633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry227589227636%_)
                    (if (gx#stx-pair? _%hd227583227633%_)
                        (let ((_%e227586227638%_
                               (gx#syntax-e _%hd227583227633%_)))
                          (let ((_%lp-hd227587227642%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227586227638%_)))
                                (_%lp-tl227588227645%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227586227638%_))))
                            (_%loop227585227629%_
                             _%lp-tl227588227645%_
                             (cons _%lp-hd227587227642%_
                                   _%entry227589227636%_))))
                        (let ((_%entry227590227648%_
                               (reverse _%entry227589227636%_)))
                          ((lambda (_%g227574227651%_ _%g227575227653%_)
                             (let* ((_%g227671227679%_
                                     (lambda (_%g227672227675%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g227672227675%_)))
                                    (_%g227670227825%_
                                     (lambda (_%g227672227683%_)
                                       ((lambda (_%g227673227686%_)
                                          (let* ((_%g227698227724%_
                                                  (lambda (_%g227699227720%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g227699227720%_)))
                                                 (_%g227697227813%_
                                                  (lambda (_%g227699227728%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g227699227728%_)
                                                        (let ((_g228521_
                                                               (gx#syntax-split-splice
                                                                _%g227699227728%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g228522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g228521_)
                                 (##values-length _g228521_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g228522_ 2)))
                          (error "Context expects 2 values" _g228522_)))
                    (let ((_%target227702227731%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g228521_ 0)))
                          (_%tl227704227734%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g228521_ 1))))
                      (if (gx#stx-null? _%tl227704227734%_)
                          (letrec ((_%loop227705227737%_
                                    (lambda (_%hd227703227741%_
                                             _%val227709227744%_
                                             _%key227710227745%_)
                                      (if (gx#stx-pair? _%hd227703227741%_)
                                          (let ((_%e227706227747%_
                                                 (gx#syntax-e
                                                  _%hd227703227741%_)))
                                            (let ((_%lp-hd227707227751%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e227706227747%_)))
                                                  (_%lp-tl227708227754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e227706227747%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd227707227751%_)
                                                  (let ((_%e227713227757%_
                                                         (gx#syntax-e
                                                          _%lp-hd227707227751%_)))
                                                    (let ((_%hd227714227761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e227713227757%_)))
                                                          (_%tl227715227764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e227713227757%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl227715227764%_)
                                                          (let ((_%e227716227767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl227715227764%_)))
                    (let ((_%hd227717227771%_
                           (let ()
                             (declare (not safe))
                             (##car _%e227716227767%_)))
                          (_%tl227718227774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e227716227767%_))))
                      (if (gx#stx-null? _%tl227718227774%_)
                          (_%loop227705227737%_
                           _%lp-tl227708227754%_
                           (cons _%hd227717227771%_ _%val227709227744%_)
                           (cons _%hd227714227761%_ _%key227710227745%_))
                          (_%g227698227724%_ _%g227699227728%_))))
                  (_%g227698227724%_ _%g227699227728%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g227698227724%_
                                                   _%g227699227728%_))))
                                          (let ((_%val227711227777%_
                                                 (reverse _%val227709227744%_))
                                                (_%key227712227779%_
                                                 (reverse _%key227710227745%_)))
                                            ((lambda (_%g227700227781%_
                                                      _%g227701227783%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g227575227653%_
                                     (cons 'size:
                                           (cons _%g227673227686%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g227700227781%_
                      _%g227701227783%_)
                     (foldr (lambda (_%g227801227805%_
                                     _%g227802227808%_
                                     _%g227803227810%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g227802227808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g227801227805%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g227803227810%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g227700227781%_
                            _%g227701227783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val227711227777%_
                                             _%key227712227779%_))))))
                            (_%loop227705227737%_
                             _%target227702227731%_
                             '()
                             '()))
                          (_%g227698227724%_ _%g227699227728%_)))))
                (_%g227698227724%_ _%g227699227728%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g227697227813%_
                                             (foldr (lambda (_%g227816227819%_
                                                             _%g227817227822%_)
                                                      (cons _%g227816227819%_
                                                            _%g227817227822%_))
                                                    '()
                                                    _%g227574227651%_))))
                                        _%g227672227683%_))))
                               (_%g227670227825%_
                                (gx#stx-length
                                 (foldr (lambda (_%g227828227831%_
                                                 _%g227829227834%_)
                                          (cons _%g227828227831%_
                                                _%g227829227834%_))
                                        '()
                                        _%g227574227651%_)))))
                           _%entry227590227648%_
                           _%hd227580227617%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop227585227629%_
                                                   _%target227582227623%_
                                                   '()))
                                                (_%g227572227596%_
                                                 _%g227573227600%_)))))
                                      (_%g227572227596%_ _%g227573227600%_))))
                              (_%g227572227596%_ _%g227573227600%_))))
                      (_%g227572227596%_ _%g227573227600%_)))))
          (_%g227571227837%_ _%stx227569%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx227843%_)
        (let* ((_%g227846227860%_
                (lambda (_%g227847227856%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g227847227856%_)))
               (_%g227845227932%_
                (lambda (_%g227847227864%_)
                  (if (gx#stx-pair? _%g227847227864%_)
                      (let ((_%e227849227867%_
                             (gx#syntax-e _%g227847227864%_)))
                        (let ((_%hd227850227871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227849227867%_)))
                              (_%tl227851227874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227849227867%_))))
                          (if (gx#stx-pair? _%tl227851227874%_)
                              (let ((_%e227852227877%_
                                     (gx#syntax-e _%tl227851227874%_)))
                                (let ((_%hd227853227881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227852227877%_)))
                                      (_%tl227854227884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227852227877%_))))
                                  (if (gx#stx-null? _%tl227854227884%_)
                                      ((lambda (_%g227848227887%_)
                                         (if (gx#stx-string? _%g227848227887%_)
                                             (let* ((_%g227901227909%_
                                                     (lambda (_%g227902227905%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g227902227905%_)))
                                                    (_%g227900227928%_
                                                     (lambda (_%g227902227913%_)
                                                       ((lambda (_%g227903227916%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g227903227916%_ '())))
                _%g227902227913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g227900227928%_
                                                (string->bytes
                                                 (gx#stx-e
                                                  _%g227848227887%_))))
                                             (_%g227846227860%_
                                              _%g227847227864%_)))
                                       _%hd227853227881%_)
                                      (_%g227846227860%_ _%g227847227864%_))))
                              (_%g227846227860%_ _%g227847227864%_))))
                      (_%g227846227860%_ _%g227847227864%_)))))
          (_%g227845227932%_ _%stx227843%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx227936%_)
        (let* ((_%g227939227953%_
                (lambda (_%g227940227949%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g227940227949%_)))
               (_%g227938227994%_
                (lambda (_%g227940227957%_)
                  (if (gx#stx-pair? _%g227940227957%_)
                      (let ((_%e227942227960%_
                             (gx#syntax-e _%g227940227957%_)))
                        (let ((_%hd227943227964%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227942227960%_)))
                              (_%tl227944227967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227942227960%_))))
                          (if (gx#stx-pair? _%tl227944227967%_)
                              (let ((_%e227945227970%_
                                     (gx#syntax-e _%tl227944227967%_)))
                                (let ((_%hd227946227974%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227945227970%_)))
                                      (_%tl227947227977%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227945227970%_))))
                                  (if (gx#stx-null? _%tl227947227977%_)
                                      ((lambda (_%g227941227980%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g227941227980%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd227946227974%_)
                                      (_%g227939227953%_ _%g227940227957%_))))
                              (_%g227939227953%_ _%g227940227957%_))))
                      (_%g227939227953%_ _%g227940227957%_)))))
          (_%g227938227994%_ _%stx227936%_))))))
