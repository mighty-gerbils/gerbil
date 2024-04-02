(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g80133_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80134_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80135_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80136_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80137_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80142_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80143_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80144_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80147_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80148_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80149_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80150_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80153_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46570%_)
        (let* ((_%__stx7494774948%_ _%stx46570%_)
               (_%g4657946782%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7494774948%_))))
          (let ((_%__kont7495074951%_
                 (lambda (_%L47691%_
                          _%L47693%_
                          _%L47694%_
                          _%L47695%_
                          _%L47696%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47696%_ (cons _%L47695%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47696%_
                                                       (cons _%L47694%_
                                                             (cons _%L47693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4773947742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4774047745%_)
                  (cons _%g4773947742%_ _%g4774047745%_))
                '()
                _%L47691%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7495474955%_
                 (lambda (_%L47549%_
                          _%L47551%_
                          _%L47552%_
                          _%L47553%_
                          _%L47554%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47554%_ (cons _%L47553%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47554%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f ':-)
                                       (cons _%L47551%_ '())))
                           (foldr (lambda (_%g4758547588%_ _%g4758647591%_)
                                    (cons _%g4758547588%_ _%g4758647591%_))
                                  '()
                                  _%L47549%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7495874959%_
                 (lambda (_%L47321%_ _%L47323%_ _%L47324%_ _%L47325%_)
                   (let ((_%meta47362%_
                          (gx#syntax-local-value _%L47323%_ false)))
                     (if (let () (declare (not safe)) (not _%meta47362%_))
                         (let ()
                           (gx#raise-syntax-error
                            '#f
                            '"unknown type"
                            _%stx46570%_
                            _%L47323%_))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta47362%_))
                             (let ()
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%L47325%_
                                                 (cons _%L47324%_
                                                       (cons _%L47323%_ '())))
                                           (foldr (lambda (_%g4736847371%_
                                                           _%g4736947374%_)
                                                    (cons _%g4736847371%_
                                                          _%g4736947374%_))
                                                  '()
                                                  _%L47321%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    _%meta47362%_))
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'with-class)
                                         (cons (cons _%L47325%_
                                                     (cons _%L47324%_
                                                           (cons _%L47323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (foldr (lambda (_%g4737847381%_
                                                               _%g4737947384%_)
                                                        (cons _%g4737847381%_
                                                              _%g4737947384%_))
                                                      '()
                                                      _%L47321%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                        _%meta47362%_))
                                     (let ()
                                       (let* ((_%g4738947397%_
                                               (lambda (_%g4739047393%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g4739047393%_)))
                                              (_%g4738847426%_
                                               (lambda (_%g4739047401%_)
                                                 ((lambda (_%L47404%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'using)
                                                            (cons (cons _%L47325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%L47324%_ (cons _%L47404%_ '())))
                          (foldr (lambda (_%g4741747420%_ _%g4741847423%_)
                                   (cons _%g4741747420%_ _%g4741847423%_))
                                 '()
                                 _%L47321%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g4739047401%_))))
                                         (_%g4738847426%_
                                          (let ((__obj79964 _%meta47362%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj79964
                                                   'gerbil/core/contract~TypeReference#type-reference::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj79964
                                                   '1
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                 __obj79964
                                                 'identifier))))))
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad type; must be an interface, struct, or class with complete type information"
                                        _%stx46570%_
                                        _%L47323%_
                                        _%meta47362%_)))))))))
                (_%__kont7496274963%_
                 (lambda (_%L47199%_ _%L47201%_ _%L47202%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47202%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47201%_ '())))
                               (foldr (lambda (_%g4722547228%_ _%g4722647231%_)
                                        (cons _%g4722547228%_ _%g4722647231%_))
                                      '()
                                      _%L47199%_)))))
                (_%__kont7496674967%_
                 (lambda (_%L47071%_ _%L47073%_ _%L47074%_ _%L47075%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L47075%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47074%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47075%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':-)
                                                             (cons _%L47073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4710347106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4710447109%_)
                  (cons _%g4710347106%_ _%g4710447109%_))
                '()
                _%L47071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7497074971%_
                 (lambda (_%L46933%_ _%L46935%_ _%L46936%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons _%L46936%_
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46935%_
                                                 (foldr (lambda (_%g4695546958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4695646961%_)
                  (cons _%g4695546958%_ _%g4695646961%_))
                '()
                _%L46933%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7497474975%_
                 (lambda (_%L46839%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4685746860%_ _%g4685846863%_)
                                        (cons _%g4685746860%_ _%g4685846863%_))
                                      '()
                                      _%L46839%_))))))
            (let* ((_%__match7528275283%_
                    (lambda (_%e4676446789%_
                             _%hd4676346793%_
                             _%tl4676246796%_
                             _%e4676746799%_
                             _%hd4676646803%_
                             _%tl4676546806%_
                             _%__splice7497674977%_
                             _%target4676846809%_
                             _%tl4677046812%_)
                      (letrec ((_%loop4677146815%_
                                (lambda (_%hd4676946819%_ _%body4677546822%_)
                                  (if (gx#stx-pair? _%hd4676946819%_)
                                      (let ((_%e4677246825%_
                                             (gx#syntax-e _%hd4676946819%_)))
                                        (let ((_%lp-tl4677446832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4677246825%_)))
                                              (_%lp-hd4677346829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4677246825%_))))
                                          (_%loop4677146815%_
                                           _%lp-tl4677446832%_
                                           (cons _%lp-hd4677346829%_
                                                 _%body4677546822%_))))
                                      (let ((_%body4677646835%_
                                             (reverse _%body4677546822%_)))
                                        (_%__kont7497474975%_
                                         _%body4677646835%_))))))
                        (_%loop4677146815%_ _%target4676846809%_ '()))))
                   (_%__match7526075261%_
                    (lambda (_%e4674546873%_
                             _%hd4674446877%_
                             _%tl4674346880%_
                             _%e4674846883%_
                             _%hd4674746887%_
                             _%tl4674646890%_
                             _%e4675146893%_
                             _%hd4675046897%_
                             _%tl4674946900%_
                             _%__splice7497274973%_
                             _%target4675246903%_
                             _%tl4675446906%_)
                      (letrec ((_%loop4675546909%_
                                (lambda (_%hd4675346913%_ _%body4675946916%_)
                                  (if (gx#stx-pair? _%hd4675346913%_)
                                      (let ((_%e4675646919%_
                                             (gx#syntax-e _%hd4675346913%_)))
                                        (let ((_%lp-tl4675846926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4675646919%_)))
                                              (_%lp-hd4675746923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4675646919%_))))
                                          (_%loop4675546909%_
                                           _%lp-tl4675846926%_
                                           (cons _%lp-hd4675746923%_
                                                 _%body4675946916%_))))
                                      (let ((_%body4676046929%_
                                             (reverse _%body4675946916%_)))
                                        (_%__kont7497074971%_
                                         _%body4676046929%_
                                         _%tl4674946900%_
                                         _%hd4675046897%_))))))
                        (_%loop4675546909%_ _%target4675246903%_ '()))))
                   (_%__match7523475235%_
                    (lambda (_%e4671246971%_
                             _%hd4671146975%_
                             _%tl4671046978%_
                             _%e4671546981%_
                             _%hd4671446985%_
                             _%tl4671346988%_
                             _%e4671846991%_
                             _%hd4671746995%_
                             _%tl4671646998%_
                             _%e4672147001%_
                             _%hd4672047005%_
                             _%tl4671947008%_
                             _%e4672447011%_
                             _%hd4672347015%_
                             _%tl4672247018%_
                             _%e4672747021%_
                             _%hd4672647025%_
                             _%tl4672547028%_
                             _%e4673047031%_
                             _%hd4672947035%_
                             _%tl4672847038%_
                             _%__splice7496874969%_
                             _%target4673147041%_
                             _%tl4673347044%_)
                      (letrec ((_%loop4673447047%_
                                (lambda (_%hd4673247051%_ _%body4673847054%_)
                                  (if (gx#stx-pair? _%hd4673247051%_)
                                      (let ((_%e4673547057%_
                                             (gx#syntax-e _%hd4673247051%_)))
                                        (let ((_%lp-tl4673747064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4673547057%_)))
                                              (_%lp-hd4673647061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4673547057%_))))
                                          (_%loop4673447047%_
                                           _%lp-tl4673747064%_
                                           (cons _%lp-hd4673647061%_
                                                 _%body4673847054%_))))
                                      (let ((_%body4673947067%_
                                             (reverse _%body4673847054%_)))
                                        (let ((_%L47071%_ _%body4673947067%_)
                                              (_%L47073%_ _%hd4672947035%_)
                                              (_%L47074%_ _%hd4672347015%_)
                                              (_%L47075%_ _%hd4671746995%_))
                                          (if (and (gx#identifier? _%L47075%_)
                                                   (gx#identifier? _%L47073%_))
                                              (_%__kont7496674967%_
                                               _%L47071%_
                                               _%L47073%_
                                               _%L47074%_
                                               _%L47075%_)
                                              (_%__match7526075261%_
                                               _%e4671246971%_
                                               _%hd4671146975%_
                                               _%tl4671046978%_
                                               _%e4671546981%_
                                               _%hd4671446985%_
                                               _%tl4671346988%_
                                               _%e4671846991%_
                                               _%hd4671746995%_
                                               _%tl4671646998%_
                                               _%__splice7496874969%_
                                               _%target4673147041%_
                                               _%tl4673347044%_))))))))
                        (_%loop4673447047%_ _%target4673147041%_ '()))))
                   (_%__match7517475175%_
                    (lambda (_%e4668447119%_
                             _%hd4668347123%_
                             _%tl4668247126%_
                             _%e4668747129%_
                             _%hd4668647133%_
                             _%tl4668547136%_
                             _%e4669047139%_
                             _%hd4668947143%_
                             _%tl4668847146%_
                             _%e4669347149%_
                             _%hd4669247153%_
                             _%tl4669147156%_
                             _%e4669647159%_
                             _%hd4669547163%_
                             _%tl4669447166%_
                             _%__splice7496474965%_
                             _%target4669747169%_
                             _%tl4669947172%_)
                      (letrec ((_%loop4670047175%_
                                (lambda (_%hd4669847179%_ _%body4670447182%_)
                                  (if (gx#stx-pair? _%hd4669847179%_)
                                      (let ((_%e4670147185%_
                                             (gx#syntax-e _%hd4669847179%_)))
                                        (let ((_%lp-tl4670347192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4670147185%_)))
                                              (_%lp-hd4670247189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4670147185%_))))
                                          (_%loop4670047175%_
                                           _%lp-tl4670347192%_
                                           (cons _%lp-hd4670247189%_
                                                 _%body4670447182%_))))
                                      (let ((_%body4670547195%_
                                             (reverse _%body4670447182%_)))
                                        (let ((_%L47199%_ _%body4670547195%_)
                                              (_%L47201%_ _%hd4669547163%_)
                                              (_%L47202%_ _%hd4668947143%_))
                                          (if (gx#identifier? _%L47202%_)
                                              (_%__kont7496274963%_
                                               _%L47199%_
                                               _%L47201%_
                                               _%L47202%_)
                                              (_%__match7526075261%_
                                               _%e4668447119%_
                                               _%hd4668347123%_
                                               _%tl4668247126%_
                                               _%e4668747129%_
                                               _%hd4668647133%_
                                               _%tl4668547136%_
                                               _%e4669047139%_
                                               _%hd4668947143%_
                                               _%tl4668847146%_
                                               _%__splice7496474965%_
                                               _%target4669747169%_
                                               _%tl4669947172%_))))))))
                        (_%loop4670047175%_ _%target4669747169%_ '()))))
                   (_%__match7515475155%_
                    (lambda (_%e4668447119%_
                             _%hd4668347123%_
                             _%tl4668247126%_
                             _%e4668747129%_
                             _%hd4668647133%_
                             _%tl4668547136%_
                             _%e4669047139%_
                             _%hd4668947143%_
                             _%tl4668847146%_
                             _%e4669347149%_
                             _%hd4669247153%_
                             _%tl4669147156%_)
                      (if (gx#identifier? _%hd4669247153%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80133_|
                               _%hd4669247153%_)
                              (if (gx#stx-pair? _%tl4669147156%_)
                                  (let ((_%e4669647159%_
                                         (gx#syntax-e _%tl4669147156%_)))
                                    (let ((_%tl4669447166%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4669647159%_)))
                                          (_%hd4669547163%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4669647159%_))))
                                      (if (gx#stx-null? _%tl4669447166%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4668547136%_)
                                              (let ((_%__splice7496474965%_
                                                     (gx#syntax-split-splice
                                                      _%tl4668547136%_
                                                      '0)))
                                                (let ((_%tl4669947172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7496474965%_
                                                          '1)))
                                                      (_%target4669747169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7496474965%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4669947172%_)
                                                      (_%__match7517475175%_
                                                       _%e4668447119%_
                                                       _%hd4668347123%_
                                                       _%tl4668247126%_
                                                       _%e4668747129%_
                                                       _%hd4668647133%_
                                                       _%tl4668547136%_
                                                       _%e4669047139%_
                                                       _%hd4668947143%_
                                                       _%tl4668847146%_
                                                       _%e4669347149%_
                                                       _%hd4669247153%_
                                                       _%tl4669147156%_
                                                       _%e4669647159%_
                                                       _%hd4669547163%_
                                                       _%tl4669447166%_
                                                       _%__splice7496474965%_
                                                       _%target4669747169%_
                                                       _%tl4669947172%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4657946782%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_)))
                                          (if (gx#stx-pair? _%tl4669447166%_)
                                              (let ((_%e4672747021%_
                                                     (gx#syntax-e
                                                      _%tl4669447166%_)))
                                                (let ((_%tl4672547028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4672747021%_)))
                                                      (_%hd4672647025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4672747021%_))))
                                                  (if (gx#identifier?
                                                       _%hd4672647025%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80134_|
                                                           _%hd4672647025%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4672547028%_)
                                                              (let ((_%e4673047031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4672547028%_)))
                        (let ((_%tl4672847038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4673047031%_)))
                              (_%hd4672947035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4673047031%_))))
                          (if (gx#stx-null? _%tl4672847038%_)
                              (if (gx#stx-pair/null? _%tl4668547136%_)
                                  (let ((_%__splice7496874969%_
                                         (gx#syntax-split-splice
                                          _%tl4668547136%_
                                          '0)))
                                    (let ((_%tl4673347044%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7496874969%_
                                              '1)))
                                          (_%target4673147041%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7496874969%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4673347044%_)
                                          (_%__match7523475235%_
                                           _%e4668447119%_
                                           _%hd4668347123%_
                                           _%tl4668247126%_
                                           _%e4668747129%_
                                           _%hd4668647133%_
                                           _%tl4668547136%_
                                           _%e4669047139%_
                                           _%hd4668947143%_
                                           _%tl4668847146%_
                                           _%e4669347149%_
                                           _%hd4669247153%_
                                           _%tl4669147156%_
                                           _%e4669647159%_
                                           _%hd4669547163%_
                                           _%tl4669447166%_
                                           _%e4672747021%_
                                           _%hd4672647025%_
                                           _%tl4672547028%_
                                           _%e4673047031%_
                                           _%hd4672947035%_
                                           _%tl4672847038%_
                                           _%__splice7496874969%_
                                           _%target4673147041%_
                                           _%tl4673347044%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))
                              (if (gx#stx-pair/null? _%tl4668547136%_)
                                  (let ((_%__splice7497274973%_
                                         (gx#syntax-split-splice
                                          _%tl4668547136%_
                                          '0)))
                                    (let ((_%tl4675446906%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '1)))
                                          (_%target4675246903%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675446906%_)
                                          (_%__match7526075261%_
                                           _%e4668447119%_
                                           _%hd4668347123%_
                                           _%tl4668247126%_
                                           _%e4668747129%_
                                           _%hd4668647133%_
                                           _%tl4668547136%_
                                           _%e4669047139%_
                                           _%hd4668947143%_
                                           _%tl4668847146%_
                                           _%__splice7497274973%_
                                           _%target4675246903%_
                                           _%tl4675446906%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_))))))
                      (if (gx#stx-pair/null? _%tl4668547136%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4668547136%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4668447119%_
                                   _%hd4668347123%_
                                   _%tl4668247126%_
                                   _%e4668747129%_
                                   _%hd4668647133%_
                                   _%tl4668547136%_
                                   _%e4669047139%_
                                   _%hd4668947143%_
                                   _%tl4668847146%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_))))
                  (if (gx#stx-pair/null? _%tl4668547136%_)
                      (let ((_%__splice7497274973%_
                             (gx#syntax-split-splice _%tl4668547136%_ '0)))
                        (let ((_%tl4675446906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '1)))
                              (_%target4675246903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '0))))
                          (if (gx#stx-null? _%tl4675446906%_)
                              (_%__match7526075261%_
                               _%e4668447119%_
                               _%hd4668347123%_
                               _%tl4668247126%_
                               _%e4668747129%_
                               _%hd4668647133%_
                               _%tl4668547136%_
                               _%e4669047139%_
                               _%hd4668947143%_
                               _%tl4668847146%_
                               _%__splice7497274973%_
                               _%target4675246903%_
                               _%tl4675446906%_)
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_)))))
                      (let () (declare (not safe)) (_%g4657946782%_))))
              (if (gx#stx-pair/null? _%tl4668547136%_)
                  (let ((_%__splice7497274973%_
                         (gx#syntax-split-splice _%tl4668547136%_ '0)))
                    (let ((_%tl4675446906%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '1)))
                          (_%target4675246903%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '0))))
                      (if (gx#stx-null? _%tl4675446906%_)
                          (_%__match7526075261%_
                           _%e4668447119%_
                           _%hd4668347123%_
                           _%tl4668247126%_
                           _%e4668747129%_
                           _%hd4668647133%_
                           _%tl4668547136%_
                           _%e4669047139%_
                           _%hd4668947143%_
                           _%tl4668847146%_
                           _%__splice7497274973%_
                           _%target4675246903%_
                           _%tl4675446906%_)
                          (let () (declare (not safe)) (_%g4657946782%_)))))
                  (let () (declare (not safe)) (_%g4657946782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4668547136%_)
                                                  (let ((_%__splice7497274973%_
                                                         (gx#syntax-split-splice
                                                          _%tl4668547136%_
                                                          '0)))
                                                    (let ((_%tl4675446906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7497274973%_
                                                              '1)))
                                                          (_%target4675246903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7497274973%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4675446906%_)
                                                          (_%__match7526075261%_
                                                           _%e4668447119%_
                                                           _%hd4668347123%_
                                                           _%tl4668247126%_
                                                           _%e4668747129%_
                                                           _%hd4668647133%_
                                                           _%tl4668547136%_
                                                           _%e4669047139%_
                                                           _%hd4668947143%_
                                                           _%tl4668847146%_
                                                           _%__splice7497274973%_
                                                           _%target4675246903%_
                                                           _%tl4675446906%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4657946782%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))))
                                  (if (gx#stx-pair/null? _%tl4668547136%_)
                                      (let ((_%__splice7497274973%_
                                             (gx#syntax-split-splice
                                              _%tl4668547136%_
                                              '0)))
                                        (let ((_%tl4675446906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '1)))
                                              (_%target4675246903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4675446906%_)
                                              (_%__match7526075261%_
                                               _%e4668447119%_
                                               _%hd4668347123%_
                                               _%tl4668247126%_
                                               _%e4668747129%_
                                               _%hd4668647133%_
                                               _%tl4668547136%_
                                               _%e4669047139%_
                                               _%hd4668947143%_
                                               _%tl4668847146%_
                                               _%__splice7497274973%_
                                               _%target4675246903%_
                                               _%tl4675446906%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_))))
                              (if (gx#stx-pair/null? _%tl4668547136%_)
                                  (let ((_%__splice7497274973%_
                                         (gx#syntax-split-splice
                                          _%tl4668547136%_
                                          '0)))
                                    (let ((_%tl4675446906%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '1)))
                                          (_%target4675246903%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675446906%_)
                                          (_%__match7526075261%_
                                           _%e4668447119%_
                                           _%hd4668347123%_
                                           _%tl4668247126%_
                                           _%e4668747129%_
                                           _%hd4668647133%_
                                           _%tl4668547136%_
                                           _%e4669047139%_
                                           _%hd4668947143%_
                                           _%tl4668847146%_
                                           _%__splice7497274973%_
                                           _%target4675246903%_
                                           _%tl4675446906%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_))))
                          (if (gx#stx-pair/null? _%tl4668547136%_)
                              (let ((_%__splice7497274973%_
                                     (gx#syntax-split-splice
                                      _%tl4668547136%_
                                      '0)))
                                (let ((_%tl4675446906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '1)))
                                      (_%target4675246903%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675446906%_)
                                      (_%__match7526075261%_
                                       _%e4668447119%_
                                       _%hd4668347123%_
                                       _%tl4668247126%_
                                       _%e4668747129%_
                                       _%hd4668647133%_
                                       _%tl4668547136%_
                                       _%e4669047139%_
                                       _%hd4668947143%_
                                       _%tl4668847146%_
                                       _%__splice7497274973%_
                                       _%target4675246903%_
                                       _%tl4675446906%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_))))))
                   (_%__match7513075131%_
                    (lambda (_%e4665747241%_
                             _%hd4665647245%_
                             _%tl4665547248%_
                             _%e4666047251%_
                             _%hd4665947255%_
                             _%tl4665847258%_
                             _%e4666347261%_
                             _%hd4666247265%_
                             _%tl4666147268%_
                             _%e4666647271%_
                             _%hd4666547275%_
                             _%tl4666447278%_
                             _%e4666947281%_
                             _%hd4666847285%_
                             _%tl4666747288%_
                             _%__splice7496074961%_
                             _%target4667047291%_
                             _%tl4667247294%_)
                      (letrec ((_%loop4667347297%_
                                (lambda (_%hd4667147301%_ _%body4667747304%_)
                                  (if (gx#stx-pair? _%hd4667147301%_)
                                      (let ((_%e4667447307%_
                                             (gx#syntax-e _%hd4667147301%_)))
                                        (let ((_%lp-tl4667647314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4667447307%_)))
                                              (_%lp-hd4667547311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4667447307%_))))
                                          (_%loop4667347297%_
                                           _%lp-tl4667647314%_
                                           (cons _%lp-hd4667547311%_
                                                 _%body4667747304%_))))
                                      (let ((_%body4667847317%_
                                             (reverse _%body4667747304%_)))
                                        (let ((_%L47321%_ _%body4667847317%_)
                                              (_%L47323%_ _%hd4666847285%_)
                                              (_%L47324%_ _%hd4666547275%_)
                                              (_%L47325%_ _%hd4666247265%_))
                                          (if (and (gx#identifier? _%L47325%_)
                                                   (gx#identifier? _%L47323%_)
                                                   (gx#identifier? _%L47324%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47324%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47324%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47324%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47324%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7495874959%_
                                               _%L47321%_
                                               _%L47323%_
                                               _%L47324%_
                                               _%L47325%_)
                                              (_%__match7515475155%_
                                               _%e4665747241%_
                                               _%hd4665647245%_
                                               _%tl4665547248%_
                                               _%e4666047251%_
                                               _%hd4665947255%_
                                               _%tl4665847258%_
                                               _%e4666347261%_
                                               _%hd4666247265%_
                                               _%tl4666147268%_
                                               _%e4666647271%_
                                               _%hd4666547275%_
                                               _%tl4666447278%_))))))))
                        (_%loop4667347297%_ _%target4667047291%_ '()))))
                   (_%__match7509075091%_
                    (lambda (_%e4662047439%_
                             _%hd4661947443%_
                             _%tl4661847446%_
                             _%e4662347449%_
                             _%hd4662247453%_
                             _%tl4662147456%_
                             _%e4662647459%_
                             _%hd4662547463%_
                             _%tl4662447466%_
                             _%e4662947469%_
                             _%hd4662847473%_
                             _%tl4662747476%_
                             _%e4663247479%_
                             _%hd4663147483%_
                             _%tl4663047486%_
                             _%e4663547489%_
                             _%hd4663447493%_
                             _%tl4663347496%_
                             _%e4663847499%_
                             _%hd4663747503%_
                             _%tl4663647506%_
                             _%e4664147509%_
                             _%hd4664047513%_
                             _%tl4663947516%_
                             _%__splice7495674957%_
                             _%target4664247519%_
                             _%tl4664447522%_)
                      (letrec ((_%loop4664547525%_
                                (lambda (_%hd4664347529%_ _%body4664947532%_)
                                  (if (gx#stx-pair? _%hd4664347529%_)
                                      (let ((_%e4664647535%_
                                             (gx#syntax-e _%hd4664347529%_)))
                                        (let ((_%lp-tl4664847542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4664647535%_)))
                                              (_%lp-hd4664747539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4664647535%_))))
                                          (_%loop4664547525%_
                                           _%lp-tl4664847542%_
                                           (cons _%lp-hd4664747539%_
                                                 _%body4664947532%_))))
                                      (let ((_%body4665047545%_
                                             (reverse _%body4664947532%_)))
                                        (let ((_%L47549%_ _%body4665047545%_)
                                              (_%L47551%_ _%hd4664047513%_)
                                              (_%L47552%_ _%hd4663447493%_)
                                              (_%L47553%_ _%hd4662847473%_)
                                              (_%L47554%_ _%hd4662547463%_))
                                          (if (and (gx#identifier? _%L47554%_)
                                                   (gx#identifier? _%L47551%_))
                                              (_%__kont7495474955%_
                                               _%L47549%_
                                               _%L47551%_
                                               _%L47552%_
                                               _%L47553%_
                                               _%L47554%_)
                                              (_%__match7515475155%_
                                               _%e4662047439%_
                                               _%hd4661947443%_
                                               _%tl4661847446%_
                                               _%e4662347449%_
                                               _%hd4662247453%_
                                               _%tl4662147456%_
                                               _%e4662647459%_
                                               _%hd4662547463%_
                                               _%tl4662447466%_
                                               _%e4662947469%_
                                               _%hd4662847473%_
                                               _%tl4662747476%_))))))))
                        (_%loop4664547525%_ _%target4664247519%_ '()))))
                   (_%__match7505475055%_
                    (lambda (_%e4662047439%_
                             _%hd4661947443%_
                             _%tl4661847446%_
                             _%e4662347449%_
                             _%hd4662247453%_
                             _%tl4662147456%_
                             _%e4662647459%_
                             _%hd4662547463%_
                             _%tl4662447466%_
                             _%e4662947469%_
                             _%hd4662847473%_
                             _%tl4662747476%_
                             _%e4663247479%_
                             _%hd4663147483%_
                             _%tl4663047486%_)
                      (if (gx#identifier? _%hd4663147483%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80135_|
                               _%hd4663147483%_)
                              (if (gx#stx-pair? _%tl4663047486%_)
                                  (let ((_%e4663547489%_
                                         (gx#syntax-e _%tl4663047486%_)))
                                    (let ((_%tl4663347496%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4663547489%_)))
                                          (_%hd4663447493%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4663547489%_))))
                                      (if (gx#stx-pair? _%tl4663347496%_)
                                          (let ((_%e4663847499%_
                                                 (gx#syntax-e
                                                  _%tl4663347496%_)))
                                            (let ((_%tl4663647506%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4663847499%_)))
                                                  (_%hd4663747503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4663847499%_))))
                                              (if (gx#identifier?
                                                   _%hd4663747503%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80136_|
                                                       _%hd4663747503%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4663647506%_)
                                                          (let ((_%e4664147509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4663647506%_)))
                    (let ((_%tl4663947516%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4664147509%_)))
                          (_%hd4664047513%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4664147509%_))))
                      (if (gx#stx-null? _%tl4663947516%_)
                          (if (gx#stx-pair/null? _%tl4662147456%_)
                              (let ((_%__splice7495674957%_
                                     (gx#syntax-split-splice
                                      _%tl4662147456%_
                                      '0)))
                                (let ((_%tl4664447522%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7495674957%_
                                          '1)))
                                      (_%target4664247519%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7495674957%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4664447522%_)
                                      (_%__match7509075091%_
                                       _%e4662047439%_
                                       _%hd4661947443%_
                                       _%tl4661847446%_
                                       _%e4662347449%_
                                       _%hd4662247453%_
                                       _%tl4662147456%_
                                       _%e4662647459%_
                                       _%hd4662547463%_
                                       _%tl4662447466%_
                                       _%e4662947469%_
                                       _%hd4662847473%_
                                       _%tl4662747476%_
                                       _%e4663247479%_
                                       _%hd4663147483%_
                                       _%tl4663047486%_
                                       _%e4663547489%_
                                       _%hd4663447493%_
                                       _%tl4663347496%_
                                       _%e4663847499%_
                                       _%hd4663747503%_
                                       _%tl4663647506%_
                                       _%e4664147509%_
                                       _%hd4664047513%_
                                       _%tl4663947516%_
                                       _%__splice7495674957%_
                                       _%target4664247519%_
                                       _%tl4664447522%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let () (declare (not safe)) (_%g4657946782%_)))
                          (if (gx#stx-pair/null? _%tl4662147456%_)
                              (let ((_%__splice7497274973%_
                                     (gx#syntax-split-splice
                                      _%tl4662147456%_
                                      '0)))
                                (let ((_%tl4675446906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '1)))
                                      (_%target4675246903%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675446906%_)
                                      (_%__match7526075261%_
                                       _%e4662047439%_
                                       _%hd4661947443%_
                                       _%tl4661847446%_
                                       _%e4662347449%_
                                       _%hd4662247453%_
                                       _%tl4662147456%_
                                       _%e4662647459%_
                                       _%hd4662547463%_
                                       _%tl4662447466%_
                                       _%__splice7497274973%_
                                       _%target4675246903%_
                                       _%tl4675446906%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_))))))
                  (if (gx#identifier? _%hd4662847473%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/contract~Using[1]#_g80133_|
                           _%hd4662847473%_)
                          (if (gx#identifier? _%hd4663447493%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80134_|
                                   _%hd4663447493%_)
                                  (if (gx#stx-null? _%tl4663647506%_)
                                      (if (gx#stx-pair/null? _%tl4662147456%_)
                                          (let ((_%__splice7496874969%_
                                                 (gx#syntax-split-splice
                                                  _%tl4662147456%_
                                                  '0)))
                                            (let ((_%tl4673347044%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7496874969%_
                                                      '1)))
                                                  (_%target4673147041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7496874969%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4673347044%_)
                                                  (_%__match7523475235%_
                                                   _%e4662047439%_
                                                   _%hd4661947443%_
                                                   _%tl4661847446%_
                                                   _%e4662347449%_
                                                   _%hd4662247453%_
                                                   _%tl4662147456%_
                                                   _%e4662647459%_
                                                   _%hd4662547463%_
                                                   _%tl4662447466%_
                                                   _%e4662947469%_
                                                   _%hd4662847473%_
                                                   _%tl4662747476%_
                                                   _%e4663247479%_
                                                   _%hd4663147483%_
                                                   _%tl4663047486%_
                                                   _%e4663547489%_
                                                   _%hd4663447493%_
                                                   _%tl4663347496%_
                                                   _%e4663847499%_
                                                   _%hd4663747503%_
                                                   _%tl4663647506%_
                                                   _%__splice7496874969%_
                                                   _%target4673147041%_
                                                   _%tl4673347044%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))
                                      (if (gx#stx-pair/null? _%tl4662147456%_)
                                          (let ((_%__splice7497274973%_
                                                 (gx#syntax-split-splice
                                                  _%tl4662147456%_
                                                  '0)))
                                            (let ((_%tl4675446906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '1)))
                                                  (_%target4675246903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4675446906%_)
                                                  (_%__match7526075261%_
                                                   _%e4662047439%_
                                                   _%hd4661947443%_
                                                   _%tl4661847446%_
                                                   _%e4662347449%_
                                                   _%hd4662247453%_
                                                   _%tl4662147456%_
                                                   _%e4662647459%_
                                                   _%hd4662547463%_
                                                   _%tl4662447466%_
                                                   _%__splice7497274973%_
                                                   _%target4675246903%_
                                                   _%tl4675446906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_))))
                                  (if (gx#stx-pair/null? _%tl4662147456%_)
                                      (let ((_%__splice7497274973%_
                                             (gx#syntax-split-splice
                                              _%tl4662147456%_
                                              '0)))
                                        (let ((_%tl4675446906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '1)))
                                              (_%target4675246903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4675446906%_)
                                              (_%__match7526075261%_
                                               _%e4662047439%_
                                               _%hd4661947443%_
                                               _%tl4661847446%_
                                               _%e4662347449%_
                                               _%hd4662247453%_
                                               _%tl4662147456%_
                                               _%e4662647459%_
                                               _%hd4662547463%_
                                               _%tl4662447466%_
                                               _%__splice7497274973%_
                                               _%target4675246903%_
                                               _%tl4675446906%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_))))
                              (if (gx#stx-pair/null? _%tl4662147456%_)
                                  (let ((_%__splice7497274973%_
                                         (gx#syntax-split-splice
                                          _%tl4662147456%_
                                          '0)))
                                    (let ((_%tl4675446906%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '1)))
                                          (_%target4675246903%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675446906%_)
                                          (_%__match7526075261%_
                                           _%e4662047439%_
                                           _%hd4661947443%_
                                           _%tl4661847446%_
                                           _%e4662347449%_
                                           _%hd4662247453%_
                                           _%tl4662147456%_
                                           _%e4662647459%_
                                           _%hd4662547463%_
                                           _%tl4662447466%_
                                           _%__splice7497274973%_
                                           _%target4675246903%_
                                           _%tl4675446906%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_))))
                          (if (gx#stx-pair/null? _%tl4662147456%_)
                              (let ((_%__splice7497274973%_
                                     (gx#syntax-split-splice
                                      _%tl4662147456%_
                                      '0)))
                                (let ((_%tl4675446906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '1)))
                                      (_%target4675246903%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675446906%_)
                                      (_%__match7526075261%_
                                       _%e4662047439%_
                                       _%hd4661947443%_
                                       _%tl4661847446%_
                                       _%e4662347449%_
                                       _%hd4662247453%_
                                       _%tl4662147456%_
                                       _%e4662647459%_
                                       _%hd4662547463%_
                                       _%tl4662447466%_
                                       _%__splice7497274973%_
                                       _%target4675246903%_
                                       _%tl4675446906%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let () (declare (not safe)) (_%g4657946782%_))))
                      (if (gx#stx-pair/null? _%tl4662147456%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4662147456%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4662047439%_
                                   _%hd4661947443%_
                                   _%tl4661847446%_
                                   _%e4662347449%_
                                   _%hd4662247453%_
                                   _%tl4662147456%_
                                   _%e4662647459%_
                                   _%hd4662547463%_
                                   _%tl4662447466%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_)))))
              (if (gx#identifier? _%hd4662847473%_)
                  (if (gx#free-identifier=?
                       |gerbil/core/contract~Using[1]#_g80133_|
                       _%hd4662847473%_)
                      (if (gx#identifier? _%hd4663447493%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80134_|
                               _%hd4663447493%_)
                              (if (gx#stx-null? _%tl4663647506%_)
                                  (if (gx#stx-pair/null? _%tl4662147456%_)
                                      (let ((_%__splice7496874969%_
                                             (gx#syntax-split-splice
                                              _%tl4662147456%_
                                              '0)))
                                        (let ((_%tl4673347044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7496874969%_
                                                  '1)))
                                              (_%target4673147041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7496874969%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4673347044%_)
                                              (_%__match7523475235%_
                                               _%e4662047439%_
                                               _%hd4661947443%_
                                               _%tl4661847446%_
                                               _%e4662347449%_
                                               _%hd4662247453%_
                                               _%tl4662147456%_
                                               _%e4662647459%_
                                               _%hd4662547463%_
                                               _%tl4662447466%_
                                               _%e4662947469%_
                                               _%hd4662847473%_
                                               _%tl4662747476%_
                                               _%e4663247479%_
                                               _%hd4663147483%_
                                               _%tl4663047486%_
                                               _%e4663547489%_
                                               _%hd4663447493%_
                                               _%tl4663347496%_
                                               _%e4663847499%_
                                               _%hd4663747503%_
                                               _%tl4663647506%_
                                               _%__splice7496874969%_
                                               _%target4673147041%_
                                               _%tl4673347044%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))
                                  (if (gx#stx-pair/null? _%tl4662147456%_)
                                      (let ((_%__splice7497274973%_
                                             (gx#syntax-split-splice
                                              _%tl4662147456%_
                                              '0)))
                                        (let ((_%tl4675446906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '1)))
                                              (_%target4675246903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4675446906%_)
                                              (_%__match7526075261%_
                                               _%e4662047439%_
                                               _%hd4661947443%_
                                               _%tl4661847446%_
                                               _%e4662347449%_
                                               _%hd4662247453%_
                                               _%tl4662147456%_
                                               _%e4662647459%_
                                               _%hd4662547463%_
                                               _%tl4662447466%_
                                               _%__splice7497274973%_
                                               _%target4675246903%_
                                               _%tl4675446906%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_))))
                              (if (gx#stx-pair/null? _%tl4662147456%_)
                                  (let ((_%__splice7497274973%_
                                         (gx#syntax-split-splice
                                          _%tl4662147456%_
                                          '0)))
                                    (let ((_%tl4675446906%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '1)))
                                          (_%target4675246903%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675446906%_)
                                          (_%__match7526075261%_
                                           _%e4662047439%_
                                           _%hd4661947443%_
                                           _%tl4661847446%_
                                           _%e4662347449%_
                                           _%hd4662247453%_
                                           _%tl4662147456%_
                                           _%e4662647459%_
                                           _%hd4662547463%_
                                           _%tl4662447466%_
                                           _%__splice7497274973%_
                                           _%target4675246903%_
                                           _%tl4675446906%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_))))
                          (if (gx#stx-pair/null? _%tl4662147456%_)
                              (let ((_%__splice7497274973%_
                                     (gx#syntax-split-splice
                                      _%tl4662147456%_
                                      '0)))
                                (let ((_%tl4675446906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '1)))
                                      (_%target4675246903%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675446906%_)
                                      (_%__match7526075261%_
                                       _%e4662047439%_
                                       _%hd4661947443%_
                                       _%tl4661847446%_
                                       _%e4662347449%_
                                       _%hd4662247453%_
                                       _%tl4662147456%_
                                       _%e4662647459%_
                                       _%hd4662547463%_
                                       _%tl4662447466%_
                                       _%__splice7497274973%_
                                       _%target4675246903%_
                                       _%tl4675446906%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let () (declare (not safe)) (_%g4657946782%_))))
                      (if (gx#stx-pair/null? _%tl4662147456%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4662147456%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4662047439%_
                                   _%hd4661947443%_
                                   _%tl4661847446%_
                                   _%e4662347449%_
                                   _%hd4662247453%_
                                   _%tl4662147456%_
                                   _%e4662647459%_
                                   _%hd4662547463%_
                                   _%tl4662447466%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_))))
                  (if (gx#stx-pair/null? _%tl4662147456%_)
                      (let ((_%__splice7497274973%_
                             (gx#syntax-split-splice _%tl4662147456%_ '0)))
                        (let ((_%tl4675446906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '1)))
                              (_%target4675246903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '0))))
                          (if (gx#stx-null? _%tl4675446906%_)
                              (_%__match7526075261%_
                               _%e4662047439%_
                               _%hd4661947443%_
                               _%tl4661847446%_
                               _%e4662347449%_
                               _%hd4662247453%_
                               _%tl4662147456%_
                               _%e4662647459%_
                               _%hd4662547463%_
                               _%tl4662447466%_
                               _%__splice7497274973%_
                               _%target4675246903%_
                               _%tl4675446906%_)
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_)))))
                      (let () (declare (not safe)) (_%g4657946782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4662847473%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80133_|
                                                           _%hd4662847473%_)
                                                          (if (gx#identifier?
                                                               _%hd4663447493%_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core/contract~Using[1]#_g80134_|
                           _%hd4663447493%_)
                          (if (gx#stx-null? _%tl4663647506%_)
                              (if (gx#stx-pair/null? _%tl4662147456%_)
                                  (let ((_%__splice7496874969%_
                                         (gx#syntax-split-splice
                                          _%tl4662147456%_
                                          '0)))
                                    (let ((_%tl4673347044%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7496874969%_
                                              '1)))
                                          (_%target4673147041%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7496874969%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4673347044%_)
                                          (_%__match7523475235%_
                                           _%e4662047439%_
                                           _%hd4661947443%_
                                           _%tl4661847446%_
                                           _%e4662347449%_
                                           _%hd4662247453%_
                                           _%tl4662147456%_
                                           _%e4662647459%_
                                           _%hd4662547463%_
                                           _%tl4662447466%_
                                           _%e4662947469%_
                                           _%hd4662847473%_
                                           _%tl4662747476%_
                                           _%e4663247479%_
                                           _%hd4663147483%_
                                           _%tl4663047486%_
                                           _%e4663547489%_
                                           _%hd4663447493%_
                                           _%tl4663347496%_
                                           _%e4663847499%_
                                           _%hd4663747503%_
                                           _%tl4663647506%_
                                           _%__splice7496874969%_
                                           _%target4673147041%_
                                           _%tl4673347044%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))
                              (if (gx#stx-pair/null? _%tl4662147456%_)
                                  (let ((_%__splice7497274973%_
                                         (gx#syntax-split-splice
                                          _%tl4662147456%_
                                          '0)))
                                    (let ((_%tl4675446906%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '1)))
                                          (_%target4675246903%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675446906%_)
                                          (_%__match7526075261%_
                                           _%e4662047439%_
                                           _%hd4661947443%_
                                           _%tl4661847446%_
                                           _%e4662347449%_
                                           _%hd4662247453%_
                                           _%tl4662147456%_
                                           _%e4662647459%_
                                           _%hd4662547463%_
                                           _%tl4662447466%_
                                           _%__splice7497274973%_
                                           _%target4675246903%_
                                           _%tl4675446906%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_))))
                          (if (gx#stx-pair/null? _%tl4662147456%_)
                              (let ((_%__splice7497274973%_
                                     (gx#syntax-split-splice
                                      _%tl4662147456%_
                                      '0)))
                                (let ((_%tl4675446906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '1)))
                                      (_%target4675246903%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675446906%_)
                                      (_%__match7526075261%_
                                       _%e4662047439%_
                                       _%hd4661947443%_
                                       _%tl4661847446%_
                                       _%e4662347449%_
                                       _%hd4662247453%_
                                       _%tl4662147456%_
                                       _%e4662647459%_
                                       _%hd4662547463%_
                                       _%tl4662447466%_
                                       _%__splice7497274973%_
                                       _%target4675246903%_
                                       _%tl4675446906%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let () (declare (not safe)) (_%g4657946782%_))))
                      (if (gx#stx-pair/null? _%tl4662147456%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4662147456%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4662047439%_
                                   _%hd4661947443%_
                                   _%tl4661847446%_
                                   _%e4662347449%_
                                   _%hd4662247453%_
                                   _%tl4662147456%_
                                   _%e4662647459%_
                                   _%hd4662547463%_
                                   _%tl4662447466%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_))))
                  (if (gx#stx-pair/null? _%tl4662147456%_)
                      (let ((_%__splice7497274973%_
                             (gx#syntax-split-splice _%tl4662147456%_ '0)))
                        (let ((_%tl4675446906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '1)))
                              (_%target4675246903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '0))))
                          (if (gx#stx-null? _%tl4675446906%_)
                              (_%__match7526075261%_
                               _%e4662047439%_
                               _%hd4661947443%_
                               _%tl4661847446%_
                               _%e4662347449%_
                               _%hd4662247453%_
                               _%tl4662147456%_
                               _%e4662647459%_
                               _%hd4662547463%_
                               _%tl4662447466%_
                               _%__splice7497274973%_
                               _%target4675246903%_
                               _%tl4675446906%_)
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_)))))
                      (let () (declare (not safe)) (_%g4657946782%_))))
              (if (gx#stx-pair/null? _%tl4662147456%_)
                  (let ((_%__splice7497274973%_
                         (gx#syntax-split-splice _%tl4662147456%_ '0)))
                    (let ((_%tl4675446906%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '1)))
                          (_%target4675246903%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '0))))
                      (if (gx#stx-null? _%tl4675446906%_)
                          (_%__match7526075261%_
                           _%e4662047439%_
                           _%hd4661947443%_
                           _%tl4661847446%_
                           _%e4662347449%_
                           _%hd4662247453%_
                           _%tl4662147456%_
                           _%e4662647459%_
                           _%hd4662547463%_
                           _%tl4662447466%_
                           _%__splice7497274973%_
                           _%target4675246903%_
                           _%tl4675446906%_)
                          (let () (declare (not safe)) (_%g4657946782%_)))))
                  (let () (declare (not safe)) (_%g4657946782%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4662147456%_)
                                              (let ((_%__splice7497274973%_
                                                     (gx#syntax-split-splice
                                                      _%tl4662147456%_
                                                      '0)))
                                                (let ((_%tl4675446906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '1)))
                                                      (_%target4675246903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4675446906%_)
                                                      (_%__match7526075261%_
                                                       _%e4662047439%_
                                                       _%hd4661947443%_
                                                       _%tl4661847446%_
                                                       _%e4662347449%_
                                                       _%hd4662247453%_
                                                       _%tl4662147456%_
                                                       _%e4662647459%_
                                                       _%hd4662547463%_
                                                       _%tl4662447466%_
                                                       _%__splice7497274973%_
                                                       _%target4675246903%_
                                                       _%tl4675446906%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4657946782%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_))))))
                                  (if (gx#stx-null? _%tl4663047486%_)
                                      (if (gx#stx-pair/null? _%tl4662147456%_)
                                          (let ((_%__splice7496074961%_
                                                 (gx#syntax-split-splice
                                                  _%tl4662147456%_
                                                  '0)))
                                            (let ((_%tl4667247294%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7496074961%_
                                                      '1)))
                                                  (_%target4667047291%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7496074961%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4667247294%_)
                                                  (_%__match7513075131%_
                                                   _%e4662047439%_
                                                   _%hd4661947443%_
                                                   _%tl4661847446%_
                                                   _%e4662347449%_
                                                   _%hd4662247453%_
                                                   _%tl4662147456%_
                                                   _%e4662647459%_
                                                   _%hd4662547463%_
                                                   _%tl4662447466%_
                                                   _%e4662947469%_
                                                   _%hd4662847473%_
                                                   _%tl4662747476%_
                                                   _%e4663247479%_
                                                   _%hd4663147483%_
                                                   _%tl4663047486%_
                                                   _%__splice7496074961%_
                                                   _%target4667047291%_
                                                   _%tl4667247294%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))
                                      (if (gx#stx-pair/null? _%tl4662147456%_)
                                          (let ((_%__splice7497274973%_
                                                 (gx#syntax-split-splice
                                                  _%tl4662147456%_
                                                  '0)))
                                            (let ((_%tl4675446906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '1)))
                                                  (_%target4675246903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4675446906%_)
                                                  (_%__match7526075261%_
                                                   _%e4662047439%_
                                                   _%hd4661947443%_
                                                   _%tl4661847446%_
                                                   _%e4662347449%_
                                                   _%hd4662247453%_
                                                   _%tl4662147456%_
                                                   _%e4662647459%_
                                                   _%hd4662547463%_
                                                   _%tl4662447466%_
                                                   _%__splice7497274973%_
                                                   _%target4675246903%_
                                                   _%tl4675446906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                              (if (gx#stx-null? _%tl4663047486%_)
                                  (if (gx#stx-pair/null? _%tl4662147456%_)
                                      (let ((_%__splice7496074961%_
                                             (gx#syntax-split-splice
                                              _%tl4662147456%_
                                              '0)))
                                        (let ((_%tl4667247294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7496074961%_
                                                  '1)))
                                              (_%target4667047291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7496074961%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4667247294%_)
                                              (_%__match7513075131%_
                                               _%e4662047439%_
                                               _%hd4661947443%_
                                               _%tl4661847446%_
                                               _%e4662347449%_
                                               _%hd4662247453%_
                                               _%tl4662147456%_
                                               _%e4662647459%_
                                               _%hd4662547463%_
                                               _%tl4662447466%_
                                               _%e4662947469%_
                                               _%hd4662847473%_
                                               _%tl4662747476%_
                                               _%e4663247479%_
                                               _%hd4663147483%_
                                               _%tl4663047486%_
                                               _%__splice7496074961%_
                                               _%target4667047291%_
                                               _%tl4667247294%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))
                                  (if (gx#identifier? _%hd4662847473%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80133_|
                                           _%hd4662847473%_)
                                          (if (gx#stx-pair? _%tl4663047486%_)
                                              (let ((_%e4672747021%_
                                                     (gx#syntax-e
                                                      _%tl4663047486%_)))
                                                (let ((_%tl4672547028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4672747021%_)))
                                                      (_%hd4672647025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4672747021%_))))
                                                  (if (gx#identifier?
                                                       _%hd4672647025%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80134_|
                                                           _%hd4672647025%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4672547028%_)
                                                              (let ((_%e4673047031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4672547028%_)))
                        (let ((_%tl4672847038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4673047031%_)))
                              (_%hd4672947035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4673047031%_))))
                          (if (gx#stx-null? _%tl4672847038%_)
                              (if (gx#stx-pair/null? _%tl4662147456%_)
                                  (let ((_%__splice7496874969%_
                                         (gx#syntax-split-splice
                                          _%tl4662147456%_
                                          '0)))
                                    (let ((_%tl4673347044%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7496874969%_
                                              '1)))
                                          (_%target4673147041%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7496874969%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4673347044%_)
                                          (_%__match7523475235%_
                                           _%e4662047439%_
                                           _%hd4661947443%_
                                           _%tl4661847446%_
                                           _%e4662347449%_
                                           _%hd4662247453%_
                                           _%tl4662147456%_
                                           _%e4662647459%_
                                           _%hd4662547463%_
                                           _%tl4662447466%_
                                           _%e4662947469%_
                                           _%hd4662847473%_
                                           _%tl4662747476%_
                                           _%e4663247479%_
                                           _%hd4663147483%_
                                           _%tl4663047486%_
                                           _%e4672747021%_
                                           _%hd4672647025%_
                                           _%tl4672547028%_
                                           _%e4673047031%_
                                           _%hd4672947035%_
                                           _%tl4672847038%_
                                           _%__splice7496874969%_
                                           _%target4673147041%_
                                           _%tl4673347044%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))
                              (if (gx#stx-pair/null? _%tl4662147456%_)
                                  (let ((_%__splice7497274973%_
                                         (gx#syntax-split-splice
                                          _%tl4662147456%_
                                          '0)))
                                    (let ((_%tl4675446906%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '1)))
                                          (_%target4675246903%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675446906%_)
                                          (_%__match7526075261%_
                                           _%e4662047439%_
                                           _%hd4661947443%_
                                           _%tl4661847446%_
                                           _%e4662347449%_
                                           _%hd4662247453%_
                                           _%tl4662147456%_
                                           _%e4662647459%_
                                           _%hd4662547463%_
                                           _%tl4662447466%_
                                           _%__splice7497274973%_
                                           _%target4675246903%_
                                           _%tl4675446906%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_))))))
                      (if (gx#stx-pair/null? _%tl4662147456%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4662147456%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4662047439%_
                                   _%hd4661947443%_
                                   _%tl4661847446%_
                                   _%e4662347449%_
                                   _%hd4662247453%_
                                   _%tl4662147456%_
                                   _%e4662647459%_
                                   _%hd4662547463%_
                                   _%tl4662447466%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_))))
                  (if (gx#stx-pair/null? _%tl4662147456%_)
                      (let ((_%__splice7497274973%_
                             (gx#syntax-split-splice _%tl4662147456%_ '0)))
                        (let ((_%tl4675446906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '1)))
                              (_%target4675246903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '0))))
                          (if (gx#stx-null? _%tl4675446906%_)
                              (_%__match7526075261%_
                               _%e4662047439%_
                               _%hd4661947443%_
                               _%tl4661847446%_
                               _%e4662347449%_
                               _%hd4662247453%_
                               _%tl4662147456%_
                               _%e4662647459%_
                               _%hd4662547463%_
                               _%tl4662447466%_
                               _%__splice7497274973%_
                               _%target4675246903%_
                               _%tl4675446906%_)
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_)))))
                      (let () (declare (not safe)) (_%g4657946782%_))))
              (if (gx#stx-pair/null? _%tl4662147456%_)
                  (let ((_%__splice7497274973%_
                         (gx#syntax-split-splice _%tl4662147456%_ '0)))
                    (let ((_%tl4675446906%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '1)))
                          (_%target4675246903%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '0))))
                      (if (gx#stx-null? _%tl4675446906%_)
                          (_%__match7526075261%_
                           _%e4662047439%_
                           _%hd4661947443%_
                           _%tl4661847446%_
                           _%e4662347449%_
                           _%hd4662247453%_
                           _%tl4662147456%_
                           _%e4662647459%_
                           _%hd4662547463%_
                           _%tl4662447466%_
                           _%__splice7497274973%_
                           _%target4675246903%_
                           _%tl4675446906%_)
                          (let () (declare (not safe)) (_%g4657946782%_)))))
                  (let () (declare (not safe)) (_%g4657946782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4662147456%_)
                                                  (let ((_%__splice7497274973%_
                                                         (gx#syntax-split-splice
                                                          _%tl4662147456%_
                                                          '0)))
                                                    (let ((_%tl4675446906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7497274973%_
                                                              '1)))
                                                          (_%target4675246903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7497274973%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4675446906%_)
                                                          (_%__match7526075261%_
                                                           _%e4662047439%_
                                                           _%hd4661947443%_
                                                           _%tl4661847446%_
                                                           _%e4662347449%_
                                                           _%hd4662247453%_
                                                           _%tl4662147456%_
                                                           _%e4662647459%_
                                                           _%hd4662547463%_
                                                           _%tl4662447466%_
                                                           _%__splice7497274973%_
                                                           _%target4675246903%_
                                                           _%tl4675446906%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4657946782%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4662147456%_)
                                              (let ((_%__splice7497274973%_
                                                     (gx#syntax-split-splice
                                                      _%tl4662147456%_
                                                      '0)))
                                                (let ((_%tl4675446906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '1)))
                                                      (_%target4675246903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4675446906%_)
                                                      (_%__match7526075261%_
                                                       _%e4662047439%_
                                                       _%hd4661947443%_
                                                       _%tl4661847446%_
                                                       _%e4662347449%_
                                                       _%hd4662247453%_
                                                       _%tl4662147456%_
                                                       _%e4662647459%_
                                                       _%hd4662547463%_
                                                       _%tl4662447466%_
                                                       _%__splice7497274973%_
                                                       _%target4675246903%_
                                                       _%tl4675446906%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4657946782%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_))))
                                      (if (gx#stx-pair/null? _%tl4662147456%_)
                                          (let ((_%__splice7497274973%_
                                                 (gx#syntax-split-splice
                                                  _%tl4662147456%_
                                                  '0)))
                                            (let ((_%tl4675446906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '1)))
                                                  (_%target4675246903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4675446906%_)
                                                  (_%__match7526075261%_
                                                   _%e4662047439%_
                                                   _%hd4661947443%_
                                                   _%tl4661847446%_
                                                   _%e4662347449%_
                                                   _%hd4662247453%_
                                                   _%tl4662147456%_
                                                   _%e4662647459%_
                                                   _%hd4662547463%_
                                                   _%tl4662447466%_
                                                   _%__splice7497274973%_
                                                   _%target4675246903%_
                                                   _%tl4675446906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_))))))
                          (if (gx#stx-null? _%tl4663047486%_)
                              (if (gx#stx-pair/null? _%tl4662147456%_)
                                  (let ((_%__splice7496074961%_
                                         (gx#syntax-split-splice
                                          _%tl4662147456%_
                                          '0)))
                                    (let ((_%tl4667247294%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7496074961%_
                                              '1)))
                                          (_%target4667047291%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7496074961%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4667247294%_)
                                          (_%__match7513075131%_
                                           _%e4662047439%_
                                           _%hd4661947443%_
                                           _%tl4661847446%_
                                           _%e4662347449%_
                                           _%hd4662247453%_
                                           _%tl4662147456%_
                                           _%e4662647459%_
                                           _%hd4662547463%_
                                           _%tl4662447466%_
                                           _%e4662947469%_
                                           _%hd4662847473%_
                                           _%tl4662747476%_
                                           _%e4663247479%_
                                           _%hd4663147483%_
                                           _%tl4663047486%_
                                           _%__splice7496074961%_
                                           _%target4667047291%_
                                           _%tl4667247294%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))
                              (if (gx#identifier? _%hd4662847473%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80133_|
                                       _%hd4662847473%_)
                                      (if (gx#stx-pair? _%tl4663047486%_)
                                          (let ((_%e4672747021%_
                                                 (gx#syntax-e
                                                  _%tl4663047486%_)))
                                            (let ((_%tl4672547028%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4672747021%_)))
                                                  (_%hd4672647025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4672747021%_))))
                                              (if (gx#identifier?
                                                   _%hd4672647025%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80134_|
                                                       _%hd4672647025%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4672547028%_)
                                                          (let ((_%e4673047031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4672547028%_)))
                    (let ((_%tl4672847038%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4673047031%_)))
                          (_%hd4672947035%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4673047031%_))))
                      (if (gx#stx-null? _%tl4672847038%_)
                          (if (gx#stx-pair/null? _%tl4662147456%_)
                              (let ((_%__splice7496874969%_
                                     (gx#syntax-split-splice
                                      _%tl4662147456%_
                                      '0)))
                                (let ((_%tl4673347044%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7496874969%_
                                          '1)))
                                      (_%target4673147041%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7496874969%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4673347044%_)
                                      (_%__match7523475235%_
                                       _%e4662047439%_
                                       _%hd4661947443%_
                                       _%tl4661847446%_
                                       _%e4662347449%_
                                       _%hd4662247453%_
                                       _%tl4662147456%_
                                       _%e4662647459%_
                                       _%hd4662547463%_
                                       _%tl4662447466%_
                                       _%e4662947469%_
                                       _%hd4662847473%_
                                       _%tl4662747476%_
                                       _%e4663247479%_
                                       _%hd4663147483%_
                                       _%tl4663047486%_
                                       _%e4672747021%_
                                       _%hd4672647025%_
                                       _%tl4672547028%_
                                       _%e4673047031%_
                                       _%hd4672947035%_
                                       _%tl4672847038%_
                                       _%__splice7496874969%_
                                       _%target4673147041%_
                                       _%tl4673347044%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let () (declare (not safe)) (_%g4657946782%_)))
                          (if (gx#stx-pair/null? _%tl4662147456%_)
                              (let ((_%__splice7497274973%_
                                     (gx#syntax-split-splice
                                      _%tl4662147456%_
                                      '0)))
                                (let ((_%tl4675446906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '1)))
                                      (_%target4675246903%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675446906%_)
                                      (_%__match7526075261%_
                                       _%e4662047439%_
                                       _%hd4661947443%_
                                       _%tl4661847446%_
                                       _%e4662347449%_
                                       _%hd4662247453%_
                                       _%tl4662147456%_
                                       _%e4662647459%_
                                       _%hd4662547463%_
                                       _%tl4662447466%_
                                       _%__splice7497274973%_
                                       _%target4675246903%_
                                       _%tl4675446906%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_))))))
                  (if (gx#stx-pair/null? _%tl4662147456%_)
                      (let ((_%__splice7497274973%_
                             (gx#syntax-split-splice _%tl4662147456%_ '0)))
                        (let ((_%tl4675446906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '1)))
                              (_%target4675246903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '0))))
                          (if (gx#stx-null? _%tl4675446906%_)
                              (_%__match7526075261%_
                               _%e4662047439%_
                               _%hd4661947443%_
                               _%tl4661847446%_
                               _%e4662347449%_
                               _%hd4662247453%_
                               _%tl4662147456%_
                               _%e4662647459%_
                               _%hd4662547463%_
                               _%tl4662447466%_
                               _%__splice7497274973%_
                               _%target4675246903%_
                               _%tl4675446906%_)
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_)))))
                      (let () (declare (not safe)) (_%g4657946782%_))))
              (if (gx#stx-pair/null? _%tl4662147456%_)
                  (let ((_%__splice7497274973%_
                         (gx#syntax-split-splice _%tl4662147456%_ '0)))
                    (let ((_%tl4675446906%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '1)))
                          (_%target4675246903%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '0))))
                      (if (gx#stx-null? _%tl4675446906%_)
                          (_%__match7526075261%_
                           _%e4662047439%_
                           _%hd4661947443%_
                           _%tl4661847446%_
                           _%e4662347449%_
                           _%hd4662247453%_
                           _%tl4662147456%_
                           _%e4662647459%_
                           _%hd4662547463%_
                           _%tl4662447466%_
                           _%__splice7497274973%_
                           _%target4675246903%_
                           _%tl4675446906%_)
                          (let () (declare (not safe)) (_%g4657946782%_)))))
                  (let () (declare (not safe)) (_%g4657946782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4662147456%_)
                                                      (let ((_%__splice7497274973%_
                                                             (gx#syntax-split-splice
                                                              _%tl4662147456%_
                                                              '0)))
                                                        (let ((_%tl4675446906%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7497274973%_ '1)))
                      (_%target4675246903%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7497274973%_ '0))))
                  (if (gx#stx-null? _%tl4675446906%_)
                      (_%__match7526075261%_
                       _%e4662047439%_
                       _%hd4661947443%_
                       _%tl4661847446%_
                       _%e4662347449%_
                       _%hd4662247453%_
                       _%tl4662147456%_
                       _%e4662647459%_
                       _%hd4662547463%_
                       _%tl4662447466%_
                       _%__splice7497274973%_
                       _%target4675246903%_
                       _%tl4675446906%_)
                      (let () (declare (not safe)) (_%g4657946782%_)))))
              (let () (declare (not safe)) (_%g4657946782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4662147456%_)
                                              (let ((_%__splice7497274973%_
                                                     (gx#syntax-split-splice
                                                      _%tl4662147456%_
                                                      '0)))
                                                (let ((_%tl4675446906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '1)))
                                                      (_%target4675246903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4675446906%_)
                                                      (_%__match7526075261%_
                                                       _%e4662047439%_
                                                       _%hd4661947443%_
                                                       _%tl4661847446%_
                                                       _%e4662347449%_
                                                       _%hd4662247453%_
                                                       _%tl4662147456%_
                                                       _%e4662647459%_
                                                       _%hd4662547463%_
                                                       _%tl4662447466%_
                                                       _%__splice7497274973%_
                                                       _%target4675246903%_
                                                       _%tl4675446906%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4657946782%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_))))
                                      (if (gx#stx-pair/null? _%tl4662147456%_)
                                          (let ((_%__splice7497274973%_
                                                 (gx#syntax-split-splice
                                                  _%tl4662147456%_
                                                  '0)))
                                            (let ((_%tl4675446906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '1)))
                                                  (_%target4675246903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4675446906%_)
                                                  (_%__match7526075261%_
                                                   _%e4662047439%_
                                                   _%hd4661947443%_
                                                   _%tl4661847446%_
                                                   _%e4662347449%_
                                                   _%hd4662247453%_
                                                   _%tl4662147456%_
                                                   _%e4662647459%_
                                                   _%hd4662547463%_
                                                   _%tl4662447466%_
                                                   _%__splice7497274973%_
                                                   _%target4675246903%_
                                                   _%tl4675446906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_))))
                                  (if (gx#stx-pair/null? _%tl4662147456%_)
                                      (let ((_%__splice7497274973%_
                                             (gx#syntax-split-splice
                                              _%tl4662147456%_
                                              '0)))
                                        (let ((_%tl4675446906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '1)))
                                              (_%target4675246903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4675446906%_)
                                              (_%__match7526075261%_
                                               _%e4662047439%_
                                               _%hd4661947443%_
                                               _%tl4661847446%_
                                               _%e4662347449%_
                                               _%hd4662247453%_
                                               _%tl4662147456%_
                                               _%e4662647459%_
                                               _%hd4662547463%_
                                               _%tl4662447466%_
                                               _%__splice7497274973%_
                                               _%target4675246903%_
                                               _%tl4675446906%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_))))))))
                   (_%__match7502475025%_
                    (lambda (_%e4658847601%_
                             _%hd4658747605%_
                             _%tl4658647608%_
                             _%e4659147611%_
                             _%hd4659047615%_
                             _%tl4658947618%_
                             _%e4659447621%_
                             _%hd4659347625%_
                             _%tl4659247628%_
                             _%e4659747631%_
                             _%hd4659647635%_
                             _%tl4659547638%_
                             _%e4660047641%_
                             _%hd4659947645%_
                             _%tl4659847648%_
                             _%e4660347651%_
                             _%hd4660247655%_
                             _%tl4660147658%_
                             _%__splice7495274953%_
                             _%target4660447661%_
                             _%tl4660647664%_)
                      (letrec ((_%loop4660747667%_
                                (lambda (_%hd4660547671%_ _%body4661147674%_)
                                  (if (gx#stx-pair? _%hd4660547671%_)
                                      (let ((_%e4660847677%_
                                             (gx#syntax-e _%hd4660547671%_)))
                                        (let ((_%lp-tl4661047684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660847677%_)))
                                              (_%lp-hd4660947681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660847677%_))))
                                          (_%loop4660747667%_
                                           _%lp-tl4661047684%_
                                           (cons _%lp-hd4660947681%_
                                                 _%body4661147674%_))))
                                      (let ((_%body4661247687%_
                                             (reverse _%body4661147674%_)))
                                        (let ((_%L47691%_ _%body4661247687%_)
                                              (_%L47693%_ _%hd4660247655%_)
                                              (_%L47694%_ _%hd4659947645%_)
                                              (_%L47695%_ _%hd4659647635%_)
                                              (_%L47696%_ _%hd4659347625%_))
                                          (if (and (gx#identifier? _%L47696%_)
                                                   (gx#identifier? _%L47694%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47694%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47694%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47694%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47694%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47694%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7495074951%_
                                               _%L47691%_
                                               _%L47693%_
                                               _%L47694%_
                                               _%L47695%_
                                               _%L47696%_)
                                              (_%__match7505475055%_
                                               _%e4658847601%_
                                               _%hd4658747605%_
                                               _%tl4658647608%_
                                               _%e4659147611%_
                                               _%hd4659047615%_
                                               _%tl4658947618%_
                                               _%e4659447621%_
                                               _%hd4659347625%_
                                               _%tl4659247628%_
                                               _%e4659747631%_
                                               _%hd4659647635%_
                                               _%tl4659547638%_
                                               _%e4660047641%_
                                               _%hd4659947645%_
                                               _%tl4659847648%_))))))))
                        (_%loop4660747667%_ _%target4660447661%_ '())))))
              (if (gx#stx-pair? _%__stx7494774948%_)
                  (let ((_%e4658847601%_ (gx#syntax-e _%__stx7494774948%_)))
                    (let ((_%tl4658647608%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4658847601%_)))
                          (_%hd4658747605%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4658847601%_))))
                      (if (gx#stx-pair? _%tl4658647608%_)
                          (let ((_%e4659147611%_
                                 (gx#syntax-e _%tl4658647608%_)))
                            (let ((_%tl4658947618%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659147611%_)))
                                  (_%hd4659047615%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659147611%_))))
                              (if (gx#stx-pair? _%hd4659047615%_)
                                  (let ((_%e4659447621%_
                                         (gx#syntax-e _%hd4659047615%_)))
                                    (let ((_%tl4659247628%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659447621%_)))
                                          (_%hd4659347625%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659447621%_))))
                                      (if (gx#stx-pair? _%tl4659247628%_)
                                          (let ((_%e4659747631%_
                                                 (gx#syntax-e
                                                  _%tl4659247628%_)))
                                            (let ((_%tl4659547638%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659747631%_)))
                                                  (_%hd4659647635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659747631%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4659547638%_)
                                                  (let ((_%e4660047641%_
                                                         (gx#syntax-e
                                                          _%tl4659547638%_)))
                                                    (let ((_%tl4659847648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660047641%_)))
                                                          (_%hd4659947645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660047641%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4659847648%_)
                                                          (let ((_%e4660347651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4659847648%_)))
                    (let ((_%tl4660147658%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660347651%_)))
                          (_%hd4660247655%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660347651%_))))
                      (if (gx#stx-null? _%tl4660147658%_)
                          (if (gx#stx-pair/null? _%tl4658947618%_)
                              (let ((_%__splice7495274953%_
                                     (gx#syntax-split-splice
                                      _%tl4658947618%_
                                      '0)))
                                (let ((_%tl4660647664%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7495274953%_
                                          '1)))
                                      (_%target4660447661%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7495274953%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660647664%_)
                                      (_%__match7502475025%_
                                       _%e4658847601%_
                                       _%hd4658747605%_
                                       _%tl4658647608%_
                                       _%e4659147611%_
                                       _%hd4659047615%_
                                       _%tl4658947618%_
                                       _%e4659447621%_
                                       _%hd4659347625%_
                                       _%tl4659247628%_
                                       _%e4659747631%_
                                       _%hd4659647635%_
                                       _%tl4659547638%_
                                       _%e4660047641%_
                                       _%hd4659947645%_
                                       _%tl4659847648%_
                                       _%e4660347651%_
                                       _%hd4660247655%_
                                       _%tl4660147658%_
                                       _%__splice7495274953%_
                                       _%target4660447661%_
                                       _%tl4660647664%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let () (declare (not safe)) (_%g4657946782%_)))
                          (if (gx#identifier? _%hd4659947645%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80135_|
                                   _%hd4659947645%_)
                                  (if (gx#stx-pair? _%tl4660147658%_)
                                      (let ((_%e4663847499%_
                                             (gx#syntax-e _%tl4660147658%_)))
                                        (let ((_%tl4663647506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4663847499%_)))
                                              (_%hd4663747503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4663847499%_))))
                                          (if (gx#identifier? _%hd4663747503%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80136_|
                                                   _%hd4663747503%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4663647506%_)
                                                      (let ((_%e4664147509%_
                                                             (gx#syntax-e
                                                              _%tl4663647506%_)))
                                                        (let ((_%tl4663947516%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4664147509%_)))
                      (_%hd4664047513%_
                       (let () (declare (not safe)) (##car _%e4664147509%_))))
                  (if (gx#stx-null? _%tl4663947516%_)
                      (if (gx#stx-pair/null? _%tl4658947618%_)
                          (let ((_%__splice7495674957%_
                                 (gx#syntax-split-splice _%tl4658947618%_ '0)))
                            (let ((_%tl4664447522%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7495674957%_ '1)))
                                  (_%target4664247519%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7495674957%_
                                      '0))))
                              (if (gx#stx-null? _%tl4664447522%_)
                                  (_%__match7509075091%_
                                   _%e4658847601%_
                                   _%hd4658747605%_
                                   _%tl4658647608%_
                                   _%e4659147611%_
                                   _%hd4659047615%_
                                   _%tl4658947618%_
                                   _%e4659447621%_
                                   _%hd4659347625%_
                                   _%tl4659247628%_
                                   _%e4659747631%_
                                   _%hd4659647635%_
                                   _%tl4659547638%_
                                   _%e4660047641%_
                                   _%hd4659947645%_
                                   _%tl4659847648%_
                                   _%e4660347651%_
                                   _%hd4660247655%_
                                   _%tl4660147658%_
                                   _%e4663847499%_
                                   _%hd4663747503%_
                                   _%tl4663647506%_
                                   _%e4664147509%_
                                   _%hd4664047513%_
                                   _%tl4663947516%_
                                   _%__splice7495674957%_
                                   _%target4664247519%_
                                   _%tl4664447522%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_)))
                      (if (gx#stx-pair/null? _%tl4658947618%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4658947618%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4658847601%_
                                   _%hd4658747605%_
                                   _%tl4658647608%_
                                   _%e4659147611%_
                                   _%hd4659047615%_
                                   _%tl4658947618%_
                                   _%e4659447621%_
                                   _%hd4659347625%_
                                   _%tl4659247628%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_))))))
              (if (gx#identifier? _%hd4659647635%_)
                  (if (gx#free-identifier=?
                       |gerbil/core/contract~Using[1]#_g80133_|
                       _%hd4659647635%_)
                      (if (gx#identifier? _%hd4660247655%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80134_|
                               _%hd4660247655%_)
                              (if (gx#stx-null? _%tl4663647506%_)
                                  (if (gx#stx-pair/null? _%tl4658947618%_)
                                      (let ((_%__splice7496874969%_
                                             (gx#syntax-split-splice
                                              _%tl4658947618%_
                                              '0)))
                                        (let ((_%tl4673347044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7496874969%_
                                                  '1)))
                                              (_%target4673147041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7496874969%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4673347044%_)
                                              (_%__match7523475235%_
                                               _%e4658847601%_
                                               _%hd4658747605%_
                                               _%tl4658647608%_
                                               _%e4659147611%_
                                               _%hd4659047615%_
                                               _%tl4658947618%_
                                               _%e4659447621%_
                                               _%hd4659347625%_
                                               _%tl4659247628%_
                                               _%e4659747631%_
                                               _%hd4659647635%_
                                               _%tl4659547638%_
                                               _%e4660047641%_
                                               _%hd4659947645%_
                                               _%tl4659847648%_
                                               _%e4660347651%_
                                               _%hd4660247655%_
                                               _%tl4660147658%_
                                               _%e4663847499%_
                                               _%hd4663747503%_
                                               _%tl4663647506%_
                                               _%__splice7496874969%_
                                               _%target4673147041%_
                                               _%tl4673347044%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))
                                  (if (gx#stx-pair/null? _%tl4658947618%_)
                                      (let ((_%__splice7497274973%_
                                             (gx#syntax-split-splice
                                              _%tl4658947618%_
                                              '0)))
                                        (let ((_%tl4675446906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '1)))
                                              (_%target4675246903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4675446906%_)
                                              (_%__match7526075261%_
                                               _%e4658847601%_
                                               _%hd4658747605%_
                                               _%tl4658647608%_
                                               _%e4659147611%_
                                               _%hd4659047615%_
                                               _%tl4658947618%_
                                               _%e4659447621%_
                                               _%hd4659347625%_
                                               _%tl4659247628%_
                                               _%__splice7497274973%_
                                               _%target4675246903%_
                                               _%tl4675446906%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_))))
                              (if (gx#stx-pair/null? _%tl4658947618%_)
                                  (let ((_%__splice7497274973%_
                                         (gx#syntax-split-splice
                                          _%tl4658947618%_
                                          '0)))
                                    (let ((_%tl4675446906%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '1)))
                                          (_%target4675246903%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675446906%_)
                                          (_%__match7526075261%_
                                           _%e4658847601%_
                                           _%hd4658747605%_
                                           _%tl4658647608%_
                                           _%e4659147611%_
                                           _%hd4659047615%_
                                           _%tl4658947618%_
                                           _%e4659447621%_
                                           _%hd4659347625%_
                                           _%tl4659247628%_
                                           _%__splice7497274973%_
                                           _%target4675246903%_
                                           _%tl4675446906%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_))))
                          (if (gx#stx-pair/null? _%tl4658947618%_)
                              (let ((_%__splice7497274973%_
                                     (gx#syntax-split-splice
                                      _%tl4658947618%_
                                      '0)))
                                (let ((_%tl4675446906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '1)))
                                      (_%target4675246903%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675446906%_)
                                      (_%__match7526075261%_
                                       _%e4658847601%_
                                       _%hd4658747605%_
                                       _%tl4658647608%_
                                       _%e4659147611%_
                                       _%hd4659047615%_
                                       _%tl4658947618%_
                                       _%e4659447621%_
                                       _%hd4659347625%_
                                       _%tl4659247628%_
                                       _%__splice7497274973%_
                                       _%target4675246903%_
                                       _%tl4675446906%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let () (declare (not safe)) (_%g4657946782%_))))
                      (if (gx#stx-pair/null? _%tl4658947618%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4658947618%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4658847601%_
                                   _%hd4658747605%_
                                   _%tl4658647608%_
                                   _%e4659147611%_
                                   _%hd4659047615%_
                                   _%tl4658947618%_
                                   _%e4659447621%_
                                   _%hd4659347625%_
                                   _%tl4659247628%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_))))
                  (if (gx#stx-pair/null? _%tl4658947618%_)
                      (let ((_%__splice7497274973%_
                             (gx#syntax-split-splice _%tl4658947618%_ '0)))
                        (let ((_%tl4675446906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '1)))
                              (_%target4675246903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '0))))
                          (if (gx#stx-null? _%tl4675446906%_)
                              (_%__match7526075261%_
                               _%e4658847601%_
                               _%hd4658747605%_
                               _%tl4658647608%_
                               _%e4659147611%_
                               _%hd4659047615%_
                               _%tl4658947618%_
                               _%e4659447621%_
                               _%hd4659347625%_
                               _%tl4659247628%_
                               _%__splice7497274973%_
                               _%target4675246903%_
                               _%tl4675446906%_)
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_)))))
                      (let () (declare (not safe)) (_%g4657946782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4659647635%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80133_|
                                                           _%hd4659647635%_)
                                                          (if (gx#identifier?
                                                               _%hd4660247655%_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core/contract~Using[1]#_g80134_|
                           _%hd4660247655%_)
                          (if (gx#stx-null? _%tl4663647506%_)
                              (if (gx#stx-pair/null? _%tl4658947618%_)
                                  (let ((_%__splice7496874969%_
                                         (gx#syntax-split-splice
                                          _%tl4658947618%_
                                          '0)))
                                    (let ((_%tl4673347044%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7496874969%_
                                              '1)))
                                          (_%target4673147041%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7496874969%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4673347044%_)
                                          (_%__match7523475235%_
                                           _%e4658847601%_
                                           _%hd4658747605%_
                                           _%tl4658647608%_
                                           _%e4659147611%_
                                           _%hd4659047615%_
                                           _%tl4658947618%_
                                           _%e4659447621%_
                                           _%hd4659347625%_
                                           _%tl4659247628%_
                                           _%e4659747631%_
                                           _%hd4659647635%_
                                           _%tl4659547638%_
                                           _%e4660047641%_
                                           _%hd4659947645%_
                                           _%tl4659847648%_
                                           _%e4660347651%_
                                           _%hd4660247655%_
                                           _%tl4660147658%_
                                           _%e4663847499%_
                                           _%hd4663747503%_
                                           _%tl4663647506%_
                                           _%__splice7496874969%_
                                           _%target4673147041%_
                                           _%tl4673347044%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))
                              (if (gx#stx-pair/null? _%tl4658947618%_)
                                  (let ((_%__splice7497274973%_
                                         (gx#syntax-split-splice
                                          _%tl4658947618%_
                                          '0)))
                                    (let ((_%tl4675446906%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '1)))
                                          (_%target4675246903%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7497274973%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675446906%_)
                                          (_%__match7526075261%_
                                           _%e4658847601%_
                                           _%hd4658747605%_
                                           _%tl4658647608%_
                                           _%e4659147611%_
                                           _%hd4659047615%_
                                           _%tl4658947618%_
                                           _%e4659447621%_
                                           _%hd4659347625%_
                                           _%tl4659247628%_
                                           _%__splice7497274973%_
                                           _%target4675246903%_
                                           _%tl4675446906%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_))))
                          (if (gx#stx-pair/null? _%tl4658947618%_)
                              (let ((_%__splice7497274973%_
                                     (gx#syntax-split-splice
                                      _%tl4658947618%_
                                      '0)))
                                (let ((_%tl4675446906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '1)))
                                      (_%target4675246903%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675446906%_)
                                      (_%__match7526075261%_
                                       _%e4658847601%_
                                       _%hd4658747605%_
                                       _%tl4658647608%_
                                       _%e4659147611%_
                                       _%hd4659047615%_
                                       _%tl4658947618%_
                                       _%e4659447621%_
                                       _%hd4659347625%_
                                       _%tl4659247628%_
                                       _%__splice7497274973%_
                                       _%target4675246903%_
                                       _%tl4675446906%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let () (declare (not safe)) (_%g4657946782%_))))
                      (if (gx#stx-pair/null? _%tl4658947618%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4658947618%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4658847601%_
                                   _%hd4658747605%_
                                   _%tl4658647608%_
                                   _%e4659147611%_
                                   _%hd4659047615%_
                                   _%tl4658947618%_
                                   _%e4659447621%_
                                   _%hd4659347625%_
                                   _%tl4659247628%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_))))
                  (if (gx#stx-pair/null? _%tl4658947618%_)
                      (let ((_%__splice7497274973%_
                             (gx#syntax-split-splice _%tl4658947618%_ '0)))
                        (let ((_%tl4675446906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '1)))
                              (_%target4675246903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '0))))
                          (if (gx#stx-null? _%tl4675446906%_)
                              (_%__match7526075261%_
                               _%e4658847601%_
                               _%hd4658747605%_
                               _%tl4658647608%_
                               _%e4659147611%_
                               _%hd4659047615%_
                               _%tl4658947618%_
                               _%e4659447621%_
                               _%hd4659347625%_
                               _%tl4659247628%_
                               _%__splice7497274973%_
                               _%target4675246903%_
                               _%tl4675446906%_)
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_)))))
                      (let () (declare (not safe)) (_%g4657946782%_))))
              (if (gx#stx-pair/null? _%tl4658947618%_)
                  (let ((_%__splice7497274973%_
                         (gx#syntax-split-splice _%tl4658947618%_ '0)))
                    (let ((_%tl4675446906%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '1)))
                          (_%target4675246903%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '0))))
                      (if (gx#stx-null? _%tl4675446906%_)
                          (_%__match7526075261%_
                           _%e4658847601%_
                           _%hd4658747605%_
                           _%tl4658647608%_
                           _%e4659147611%_
                           _%hd4659047615%_
                           _%tl4658947618%_
                           _%e4659447621%_
                           _%hd4659347625%_
                           _%tl4659247628%_
                           _%__splice7497274973%_
                           _%target4675246903%_
                           _%tl4675446906%_)
                          (let () (declare (not safe)) (_%g4657946782%_)))))
                  (let () (declare (not safe)) (_%g4657946782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4659647635%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80133_|
                                                       _%hd4659647635%_)
                                                      (if (gx#identifier?
                                                           _%hd4660247655%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/contract~Using[1]#_g80134_|
                                                               _%hd4660247655%_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4663647506%_)
                          (if (gx#stx-pair/null? _%tl4658947618%_)
                              (let ((_%__splice7496874969%_
                                     (gx#syntax-split-splice
                                      _%tl4658947618%_
                                      '0)))
                                (let ((_%tl4673347044%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7496874969%_
                                          '1)))
                                      (_%target4673147041%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7496874969%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4673347044%_)
                                      (_%__match7523475235%_
                                       _%e4658847601%_
                                       _%hd4658747605%_
                                       _%tl4658647608%_
                                       _%e4659147611%_
                                       _%hd4659047615%_
                                       _%tl4658947618%_
                                       _%e4659447621%_
                                       _%hd4659347625%_
                                       _%tl4659247628%_
                                       _%e4659747631%_
                                       _%hd4659647635%_
                                       _%tl4659547638%_
                                       _%e4660047641%_
                                       _%hd4659947645%_
                                       _%tl4659847648%_
                                       _%e4660347651%_
                                       _%hd4660247655%_
                                       _%tl4660147658%_
                                       _%e4663847499%_
                                       _%hd4663747503%_
                                       _%tl4663647506%_
                                       _%__splice7496874969%_
                                       _%target4673147041%_
                                       _%tl4673347044%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let () (declare (not safe)) (_%g4657946782%_)))
                          (if (gx#stx-pair/null? _%tl4658947618%_)
                              (let ((_%__splice7497274973%_
                                     (gx#syntax-split-splice
                                      _%tl4658947618%_
                                      '0)))
                                (let ((_%tl4675446906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '1)))
                                      (_%target4675246903%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7497274973%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675446906%_)
                                      (_%__match7526075261%_
                                       _%e4658847601%_
                                       _%hd4658747605%_
                                       _%tl4658647608%_
                                       _%e4659147611%_
                                       _%hd4659047615%_
                                       _%tl4658947618%_
                                       _%e4659447621%_
                                       _%hd4659347625%_
                                       _%tl4659247628%_
                                       _%__splice7497274973%_
                                       _%target4675246903%_
                                       _%tl4675446906%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_)))))
                              (let () (declare (not safe)) (_%g4657946782%_))))
                      (if (gx#stx-pair/null? _%tl4658947618%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4658947618%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4658847601%_
                                   _%hd4658747605%_
                                   _%tl4658647608%_
                                   _%e4659147611%_
                                   _%hd4659047615%_
                                   _%tl4658947618%_
                                   _%e4659447621%_
                                   _%hd4659347625%_
                                   _%tl4659247628%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_))))
                  (if (gx#stx-pair/null? _%tl4658947618%_)
                      (let ((_%__splice7497274973%_
                             (gx#syntax-split-splice _%tl4658947618%_ '0)))
                        (let ((_%tl4675446906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '1)))
                              (_%target4675246903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '0))))
                          (if (gx#stx-null? _%tl4675446906%_)
                              (_%__match7526075261%_
                               _%e4658847601%_
                               _%hd4658747605%_
                               _%tl4658647608%_
                               _%e4659147611%_
                               _%hd4659047615%_
                               _%tl4658947618%_
                               _%e4659447621%_
                               _%hd4659347625%_
                               _%tl4659247628%_
                               _%__splice7497274973%_
                               _%target4675246903%_
                               _%tl4675446906%_)
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_)))))
                      (let () (declare (not safe)) (_%g4657946782%_))))
              (if (gx#stx-pair/null? _%tl4658947618%_)
                  (let ((_%__splice7497274973%_
                         (gx#syntax-split-splice _%tl4658947618%_ '0)))
                    (let ((_%tl4675446906%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '1)))
                          (_%target4675246903%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '0))))
                      (if (gx#stx-null? _%tl4675446906%_)
                          (_%__match7526075261%_
                           _%e4658847601%_
                           _%hd4658747605%_
                           _%tl4658647608%_
                           _%e4659147611%_
                           _%hd4659047615%_
                           _%tl4658947618%_
                           _%e4659447621%_
                           _%hd4659347625%_
                           _%tl4659247628%_
                           _%__splice7497274973%_
                           _%target4675246903%_
                           _%tl4675446906%_)
                          (let () (declare (not safe)) (_%g4657946782%_)))))
                  (let () (declare (not safe)) (_%g4657946782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4658947618%_)
                                                      (let ((_%__splice7497274973%_
                                                             (gx#syntax-split-splice
                                                              _%tl4658947618%_
                                                              '0)))
                                                        (let ((_%tl4675446906%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7497274973%_ '1)))
                      (_%target4675246903%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7497274973%_ '0))))
                  (if (gx#stx-null? _%tl4675446906%_)
                      (_%__match7526075261%_
                       _%e4658847601%_
                       _%hd4658747605%_
                       _%tl4658647608%_
                       _%e4659147611%_
                       _%hd4659047615%_
                       _%tl4658947618%_
                       _%e4659447621%_
                       _%hd4659347625%_
                       _%tl4659247628%_
                       _%__splice7497274973%_
                       _%target4675246903%_
                       _%tl4675446906%_)
                      (let () (declare (not safe)) (_%g4657946782%_)))))
              (let () (declare (not safe)) (_%g4657946782%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair/null? _%tl4658947618%_)
                                          (let ((_%__splice7497274973%_
                                                 (gx#syntax-split-splice
                                                  _%tl4658947618%_
                                                  '0)))
                                            (let ((_%tl4675446906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '1)))
                                                  (_%target4675246903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4675446906%_)
                                                  (_%__match7526075261%_
                                                   _%e4658847601%_
                                                   _%hd4658747605%_
                                                   _%tl4658647608%_
                                                   _%e4659147611%_
                                                   _%hd4659047615%_
                                                   _%tl4658947618%_
                                                   _%e4659447621%_
                                                   _%hd4659347625%_
                                                   _%tl4659247628%_
                                                   _%__splice7497274973%_
                                                   _%target4675246903%_
                                                   _%tl4675446906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_))))
                                  (if (gx#identifier? _%hd4659647635%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80133_|
                                           _%hd4659647635%_)
                                          (if (gx#identifier? _%hd4660247655%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80134_|
                                                   _%hd4660247655%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4660147658%_)
                                                      (let ((_%e4673047031%_
                                                             (gx#syntax-e
                                                              _%tl4660147658%_)))
                                                        (let ((_%tl4672847038%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4673047031%_)))
                      (_%hd4672947035%_
                       (let () (declare (not safe)) (##car _%e4673047031%_))))
                  (if (gx#stx-null? _%tl4672847038%_)
                      (if (gx#stx-pair/null? _%tl4658947618%_)
                          (let ((_%__splice7496874969%_
                                 (gx#syntax-split-splice _%tl4658947618%_ '0)))
                            (let ((_%tl4673347044%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7496874969%_ '1)))
                                  (_%target4673147041%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7496874969%_
                                      '0))))
                              (if (gx#stx-null? _%tl4673347044%_)
                                  (_%__match7523475235%_
                                   _%e4658847601%_
                                   _%hd4658747605%_
                                   _%tl4658647608%_
                                   _%e4659147611%_
                                   _%hd4659047615%_
                                   _%tl4658947618%_
                                   _%e4659447621%_
                                   _%hd4659347625%_
                                   _%tl4659247628%_
                                   _%e4659747631%_
                                   _%hd4659647635%_
                                   _%tl4659547638%_
                                   _%e4660047641%_
                                   _%hd4659947645%_
                                   _%tl4659847648%_
                                   _%e4660347651%_
                                   _%hd4660247655%_
                                   _%tl4660147658%_
                                   _%e4673047031%_
                                   _%hd4672947035%_
                                   _%tl4672847038%_
                                   _%__splice7496874969%_
                                   _%target4673147041%_
                                   _%tl4673347044%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_)))
                      (if (gx#stx-pair/null? _%tl4658947618%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4658947618%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4658847601%_
                                   _%hd4658747605%_
                                   _%tl4658647608%_
                                   _%e4659147611%_
                                   _%hd4659047615%_
                                   _%tl4658947618%_
                                   _%e4659447621%_
                                   _%hd4659347625%_
                                   _%tl4659247628%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_))))))
              (if (gx#stx-pair/null? _%tl4658947618%_)
                  (let ((_%__splice7497274973%_
                         (gx#syntax-split-splice _%tl4658947618%_ '0)))
                    (let ((_%tl4675446906%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '1)))
                          (_%target4675246903%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7497274973%_ '0))))
                      (if (gx#stx-null? _%tl4675446906%_)
                          (_%__match7526075261%_
                           _%e4658847601%_
                           _%hd4658747605%_
                           _%tl4658647608%_
                           _%e4659147611%_
                           _%hd4659047615%_
                           _%tl4658947618%_
                           _%e4659447621%_
                           _%hd4659347625%_
                           _%tl4659247628%_
                           _%__splice7497274973%_
                           _%target4675246903%_
                           _%tl4675446906%_)
                          (let () (declare (not safe)) (_%g4657946782%_)))))
                  (let () (declare (not safe)) (_%g4657946782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4658947618%_)
                                                      (let ((_%__splice7497274973%_
                                                             (gx#syntax-split-splice
                                                              _%tl4658947618%_
                                                              '0)))
                                                        (let ((_%tl4675446906%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7497274973%_ '1)))
                      (_%target4675246903%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7497274973%_ '0))))
                  (if (gx#stx-null? _%tl4675446906%_)
                      (_%__match7526075261%_
                       _%e4658847601%_
                       _%hd4658747605%_
                       _%tl4658647608%_
                       _%e4659147611%_
                       _%hd4659047615%_
                       _%tl4658947618%_
                       _%e4659447621%_
                       _%hd4659347625%_
                       _%tl4659247628%_
                       _%__splice7497274973%_
                       _%target4675246903%_
                       _%tl4675446906%_)
                      (let () (declare (not safe)) (_%g4657946782%_)))))
              (let () (declare (not safe)) (_%g4657946782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4658947618%_)
                                                  (let ((_%__splice7497274973%_
                                                         (gx#syntax-split-splice
                                                          _%tl4658947618%_
                                                          '0)))
                                                    (let ((_%tl4675446906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7497274973%_
                                                              '1)))
                                                          (_%target4675246903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7497274973%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4675446906%_)
                                                          (_%__match7526075261%_
                                                           _%e4658847601%_
                                                           _%hd4658747605%_
                                                           _%tl4658647608%_
                                                           _%e4659147611%_
                                                           _%hd4659047615%_
                                                           _%tl4658947618%_
                                                           _%e4659447621%_
                                                           _%hd4659347625%_
                                                           _%tl4659247628%_
                                                           _%__splice7497274973%_
                                                           _%target4675246903%_
                                                           _%tl4675446906%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4657946782%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4658947618%_)
                                              (let ((_%__splice7497274973%_
                                                     (gx#syntax-split-splice
                                                      _%tl4658947618%_
                                                      '0)))
                                                (let ((_%tl4675446906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '1)))
                                                      (_%target4675246903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4675446906%_)
                                                      (_%__match7526075261%_
                                                       _%e4658847601%_
                                                       _%hd4658747605%_
                                                       _%tl4658647608%_
                                                       _%e4659147611%_
                                                       _%hd4659047615%_
                                                       _%tl4658947618%_
                                                       _%e4659447621%_
                                                       _%hd4659347625%_
                                                       _%tl4659247628%_
                                                       _%__splice7497274973%_
                                                       _%target4675246903%_
                                                       _%tl4675446906%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4657946782%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_))))
                                      (if (gx#stx-pair/null? _%tl4658947618%_)
                                          (let ((_%__splice7497274973%_
                                                 (gx#syntax-split-splice
                                                  _%tl4658947618%_
                                                  '0)))
                                            (let ((_%tl4675446906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '1)))
                                                  (_%target4675246903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4675446906%_)
                                                  (_%__match7526075261%_
                                                   _%e4658847601%_
                                                   _%hd4658747605%_
                                                   _%tl4658647608%_
                                                   _%e4659147611%_
                                                   _%hd4659047615%_
                                                   _%tl4658947618%_
                                                   _%e4659447621%_
                                                   _%hd4659347625%_
                                                   _%tl4659247628%_
                                                   _%__splice7497274973%_
                                                   _%target4675246903%_
                                                   _%tl4675446906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))))
                              (if (gx#identifier? _%hd4659647635%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80133_|
                                       _%hd4659647635%_)
                                      (if (gx#identifier? _%hd4660247655%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~Using[1]#_g80134_|
                                               _%hd4660247655%_)
                                              (if (gx#stx-pair?
                                                   _%tl4660147658%_)
                                                  (let ((_%e4673047031%_
                                                         (gx#syntax-e
                                                          _%tl4660147658%_)))
                                                    (let ((_%tl4672847038%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4673047031%_)))
                                                          (_%hd4672947035%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4673047031%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4672847038%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4658947618%_)
                                                              (let ((_%__splice7496874969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4658947618%_ '0)))
                        (let ((_%tl4673347044%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7496874969%_ '1)))
                              (_%target4673147041%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7496874969%_ '0))))
                          (if (gx#stx-null? _%tl4673347044%_)
                              (_%__match7523475235%_
                               _%e4658847601%_
                               _%hd4658747605%_
                               _%tl4658647608%_
                               _%e4659147611%_
                               _%hd4659047615%_
                               _%tl4658947618%_
                               _%e4659447621%_
                               _%hd4659347625%_
                               _%tl4659247628%_
                               _%e4659747631%_
                               _%hd4659647635%_
                               _%tl4659547638%_
                               _%e4660047641%_
                               _%hd4659947645%_
                               _%tl4659847648%_
                               _%e4660347651%_
                               _%hd4660247655%_
                               _%tl4660147658%_
                               _%e4673047031%_
                               _%hd4672947035%_
                               _%tl4672847038%_
                               _%__splice7496874969%_
                               _%target4673147041%_
                               _%tl4673347044%_)
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_)))))
                      (let () (declare (not safe)) (_%g4657946782%_)))
                  (if (gx#stx-pair/null? _%tl4658947618%_)
                      (let ((_%__splice7497274973%_
                             (gx#syntax-split-splice _%tl4658947618%_ '0)))
                        (let ((_%tl4675446906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '1)))
                              (_%target4675246903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7497274973%_ '0))))
                          (if (gx#stx-null? _%tl4675446906%_)
                              (_%__match7526075261%_
                               _%e4658847601%_
                               _%hd4658747605%_
                               _%tl4658647608%_
                               _%e4659147611%_
                               _%hd4659047615%_
                               _%tl4658947618%_
                               _%e4659447621%_
                               _%hd4659347625%_
                               _%tl4659247628%_
                               _%__splice7497274973%_
                               _%target4675246903%_
                               _%tl4675446906%_)
                              (let ()
                                (declare (not safe))
                                (_%g4657946782%_)))))
                      (let () (declare (not safe)) (_%g4657946782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4658947618%_)
                                                      (let ((_%__splice7497274973%_
                                                             (gx#syntax-split-splice
                                                              _%tl4658947618%_
                                                              '0)))
                                                        (let ((_%tl4675446906%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7497274973%_ '1)))
                      (_%target4675246903%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7497274973%_ '0))))
                  (if (gx#stx-null? _%tl4675446906%_)
                      (_%__match7526075261%_
                       _%e4658847601%_
                       _%hd4658747605%_
                       _%tl4658647608%_
                       _%e4659147611%_
                       _%hd4659047615%_
                       _%tl4658947618%_
                       _%e4659447621%_
                       _%hd4659347625%_
                       _%tl4659247628%_
                       _%__splice7497274973%_
                       _%target4675246903%_
                       _%tl4675446906%_)
                      (let () (declare (not safe)) (_%g4657946782%_)))))
              (let () (declare (not safe)) (_%g4657946782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4658947618%_)
                                                  (let ((_%__splice7497274973%_
                                                         (gx#syntax-split-splice
                                                          _%tl4658947618%_
                                                          '0)))
                                                    (let ((_%tl4675446906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7497274973%_
                                                              '1)))
                                                          (_%target4675246903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7497274973%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4675446906%_)
                                                          (_%__match7526075261%_
                                                           _%e4658847601%_
                                                           _%hd4658747605%_
                                                           _%tl4658647608%_
                                                           _%e4659147611%_
                                                           _%hd4659047615%_
                                                           _%tl4658947618%_
                                                           _%e4659447621%_
                                                           _%hd4659347625%_
                                                           _%tl4659247628%_
                                                           _%__splice7497274973%_
                                                           _%target4675246903%_
                                                           _%tl4675446906%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4657946782%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4658947618%_)
                                              (let ((_%__splice7497274973%_
                                                     (gx#syntax-split-splice
                                                      _%tl4658947618%_
                                                      '0)))
                                                (let ((_%tl4675446906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '1)))
                                                      (_%target4675246903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4675446906%_)
                                                      (_%__match7526075261%_
                                                       _%e4658847601%_
                                                       _%hd4658747605%_
                                                       _%tl4658647608%_
                                                       _%e4659147611%_
                                                       _%hd4659047615%_
                                                       _%tl4658947618%_
                                                       _%e4659447621%_
                                                       _%hd4659347625%_
                                                       _%tl4659247628%_
                                                       _%__splice7497274973%_
                                                       _%target4675246903%_
                                                       _%tl4675446906%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4657946782%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_))))
                                      (if (gx#stx-pair/null? _%tl4658947618%_)
                                          (let ((_%__splice7497274973%_
                                                 (gx#syntax-split-splice
                                                  _%tl4658947618%_
                                                  '0)))
                                            (let ((_%tl4675446906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '1)))
                                                  (_%target4675246903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497274973%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4675446906%_)
                                                  (_%__match7526075261%_
                                                   _%e4658847601%_
                                                   _%hd4658747605%_
                                                   _%tl4658647608%_
                                                   _%e4659147611%_
                                                   _%hd4659047615%_
                                                   _%tl4658947618%_
                                                   _%e4659447621%_
                                                   _%hd4659347625%_
                                                   _%tl4659247628%_
                                                   _%__splice7497274973%_
                                                   _%target4675246903%_
                                                   _%tl4675446906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_))))
                                  (if (gx#stx-pair/null? _%tl4658947618%_)
                                      (let ((_%__splice7497274973%_
                                             (gx#syntax-split-splice
                                              _%tl4658947618%_
                                              '0)))
                                        (let ((_%tl4675446906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '1)))
                                              (_%target4675246903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7497274973%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4675446906%_)
                                              (_%__match7526075261%_
                                               _%e4658847601%_
                                               _%hd4658747605%_
                                               _%tl4658647608%_
                                               _%e4659147611%_
                                               _%hd4659047615%_
                                               _%tl4658947618%_
                                               _%e4659447621%_
                                               _%hd4659347625%_
                                               _%tl4659247628%_
                                               _%__splice7497274973%_
                                               _%target4675246903%_
                                               _%tl4675446906%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_))))))))
                  (if (gx#stx-null? _%tl4659847648%_)
                      (if (gx#stx-pair/null? _%tl4658947618%_)
                          (let ((_%__splice7496074961%_
                                 (gx#syntax-split-splice _%tl4658947618%_ '0)))
                            (let ((_%tl4667247294%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7496074961%_ '1)))
                                  (_%target4667047291%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7496074961%_
                                      '0))))
                              (if (gx#stx-null? _%tl4667247294%_)
                                  (_%__match7513075131%_
                                   _%e4658847601%_
                                   _%hd4658747605%_
                                   _%tl4658647608%_
                                   _%e4659147611%_
                                   _%hd4659047615%_
                                   _%tl4658947618%_
                                   _%e4659447621%_
                                   _%hd4659347625%_
                                   _%tl4659247628%_
                                   _%e4659747631%_
                                   _%hd4659647635%_
                                   _%tl4659547638%_
                                   _%e4660047641%_
                                   _%hd4659947645%_
                                   _%tl4659847648%_
                                   _%__splice7496074961%_
                                   _%target4667047291%_
                                   _%tl4667247294%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_)))
                      (if (gx#stx-pair/null? _%tl4658947618%_)
                          (let ((_%__splice7497274973%_
                                 (gx#syntax-split-splice _%tl4658947618%_ '0)))
                            (let ((_%tl4675446906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7497274973%_ '1)))
                                  (_%target4675246903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7497274973%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675446906%_)
                                  (_%__match7526075261%_
                                   _%e4658847601%_
                                   _%hd4658747605%_
                                   _%tl4658647608%_
                                   _%e4659147611%_
                                   _%hd4659047615%_
                                   _%tl4658947618%_
                                   _%e4659447621%_
                                   _%hd4659347625%_
                                   _%tl4659247628%_
                                   _%__splice7497274973%_
                                   _%target4675246903%_
                                   _%tl4675446906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4657946782%_)))))
                          (let () (declare (not safe)) (_%g4657946782%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4658947618%_)
                                                      (let ((_%__splice7497274973%_
                                                             (gx#syntax-split-splice
                                                              _%tl4658947618%_
                                                              '0)))
                                                        (let ((_%tl4675446906%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7497274973%_ '1)))
                      (_%target4675246903%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7497274973%_ '0))))
                  (if (gx#stx-null? _%tl4675446906%_)
                      (_%__match7526075261%_
                       _%e4658847601%_
                       _%hd4658747605%_
                       _%tl4658647608%_
                       _%e4659147611%_
                       _%hd4659047615%_
                       _%tl4658947618%_
                       _%e4659447621%_
                       _%hd4659347625%_
                       _%tl4659247628%_
                       _%__splice7497274973%_
                       _%target4675246903%_
                       _%tl4675446906%_)
                      (let () (declare (not safe)) (_%g4657946782%_)))))
              (let () (declare (not safe)) (_%g4657946782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4658947618%_)
                                              (let ((_%__splice7497274973%_
                                                     (gx#syntax-split-splice
                                                      _%tl4658947618%_
                                                      '0)))
                                                (let ((_%tl4675446906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '1)))
                                                      (_%target4675246903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7497274973%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4675446906%_)
                                                      (_%__match7526075261%_
                                                       _%e4658847601%_
                                                       _%hd4658747605%_
                                                       _%tl4658647608%_
                                                       _%e4659147611%_
                                                       _%hd4659047615%_
                                                       _%tl4658947618%_
                                                       _%e4659447621%_
                                                       _%hd4659347625%_
                                                       _%tl4659247628%_
                                                       _%__splice7497274973%_
                                                       _%target4675246903%_
                                                       _%tl4675446906%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4657946782%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4657946782%_))))))
                                  (if (gx#stx-null? _%hd4659047615%_)
                                      (if (gx#stx-pair/null? _%tl4658947618%_)
                                          (let ((_%__splice7497674977%_
                                                 (gx#syntax-split-splice
                                                  _%tl4658947618%_
                                                  '0)))
                                            (let ((_%tl4677046812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497674977%_
                                                      '1)))
                                                  (_%target4676846809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7497674977%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4677046812%_)
                                                  (_%__match7528275283%_
                                                   _%e4658847601%_
                                                   _%hd4658747605%_
                                                   _%tl4658647608%_
                                                   _%e4659147611%_
                                                   _%hd4659047615%_
                                                   _%tl4658947618%_
                                                   _%__splice7497674977%_
                                                   _%target4676846809%_
                                                   _%tl4677046812%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4657946782%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4657946782%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4657946782%_))))))
                          (let () (declare (not safe)) (_%g4657946782%_)))))
                  (let () (declare (not safe)) (_%g4657946782%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47759%_)
        (let* ((_%g4776347797%_
                (lambda (_%g4776447793%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4776447793%_)))
               (_%g4776247920%_
                (lambda (_%g4776447801%_)
                  (if (gx#stx-pair? _%g4776447801%_)
                      (let ((_%e4777047804%_ (gx#syntax-e _%g4776447801%_)))
                        (let ((_%hd4776947808%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4777047804%_)))
                              (_%tl4776847811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4777047804%_))))
                          (if (gx#stx-pair? _%tl4776847811%_)
                              (let ((_%e4777347814%_
                                     (gx#syntax-e _%tl4776847811%_)))
                                (let ((_%hd4777247818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4777347814%_)))
                                      (_%tl4777147821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4777347814%_))))
                                  (if (gx#stx-pair? _%hd4777247818%_)
                                      (let ((_%e4777647824%_
                                             (gx#syntax-e _%hd4777247818%_)))
                                        (let ((_%hd4777547828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4777647824%_)))
                                              (_%tl4777447831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4777647824%_))))
                                          (if (gx#stx-pair? _%tl4777447831%_)
                                              (let ((_%e4777947834%_
                                                     (gx#syntax-e
                                                      _%tl4777447831%_)))
                                                (let ((_%hd4777847838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4777947834%_)))
                                                      (_%tl4777747841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4777947834%_))))
                                                  (if (gx#identifier?
                                                       _%hd4777847838%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80137_|
                                                           _%hd4777847838%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4777747841%_)
                                                              (let ((_%e4778247844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4777747841%_)))
                        (let ((_%hd4778147848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4778247844%_)))
                              (_%tl4778047851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4778247844%_))))
                          (if (gx#stx-null? _%tl4778047851%_)
                              (if (gx#stx-pair/null? _%tl4777147821%_)
                                  (let ((_g80138_
                                         (gx#syntax-split-splice
                                          _%tl4777147821%_
                                          '0)))
                                    (begin
                                      (let ((_g80139_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g80138_)
                                                   (##vector-length _g80138_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g80139_ 2)))
                                            (error "Context expects 2 values"
                                                   _g80139_)))
                                      (let ((_%target4778347854%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80138_ 0)))
                                            (_%tl4778547857%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80138_ 1))))
                                        (if (gx#stx-null? _%tl4778547857%_)
                                            (letrec ((_%loop4778647860%_
                                                      (lambda (_%hd4778447864%_
                                                               _%body4779047867%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4778447864%_)
                                                            (let ((_%e4778747870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4778447864%_)))
                      (let ((_%lp-hd4778847874%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4778747870%_)))
                            (_%lp-tl4778947877%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4778747870%_))))
                        (_%loop4778647860%_
                         _%lp-tl4778947877%_
                         (cons _%lp-hd4778847874%_ _%body4779047867%_))))
                    (let ((_%body4779147880%_ (reverse _%body4779047867%_)))
                      ((lambda (_%L47884%_ _%L47886%_ _%L47887%_)
                         (if (gx#identifier? _%L47887%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47886%_
                                               (cons _%L47887%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4791147914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4791247917%_)
                            (cons _%g4791147914%_ _%g4791247917%_))
                          '()
                          _%L47884%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47886%_ (cons _%L47887%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4776347797%_ _%g4776447801%_)))
                       _%body4779147880%_
                       _%hd4778147848%_
                       _%hd4777547828%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4778647860%_
                                               _%target4778347854%_
                                               '()))
                                            (_%g4776347797%_
                                             _%g4776447801%_)))))
                                  (_%g4776347797%_ _%g4776447801%_))
                              (_%g4776347797%_ _%g4776447801%_))))
                      (_%g4776347797%_ _%g4776447801%_))
                  (_%g4776347797%_ _%g4776447801%_))
              (_%g4776347797%_ _%g4776447801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4776347797%_
                                               _%g4776447801%_))))
                                      (_%g4776347797%_ _%g4776447801%_))))
                              (_%g4776347797%_ _%g4776447801%_))))
                      (_%g4776347797%_ _%g4776447801%_)))))
          (_%g4776247920%_ _%$stx47759%_))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47971%_)
        (if (gx#identifier? _%id47971%_)
            (let ((_%index4797347975%_
                   (string-index
                    (symbol->string (gx#stx-e _%id47971%_))
                    '#\.)))
              (if _%index4797347975%_
                  (let ((_%index47979%_ _%index4797347975%_))
                    (> _%index47979%_ '0))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47964%_ _%id47966%_)
        (let ((_%parts47968%_
               (string-split (symbol->string (gx#stx-e _%id47966%_)) '#\.)))
          (if (find string-empty? _%parts47968%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47964%_
               _%id47966%_)
              (cons (gx#stx-identifier _%id47966%_ (car _%parts47968%_))
                    (map string->symbol (cdr _%parts47968%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47945%_ _%klass-or-id47947%_ _%slot47948%_)
        (let* ((_%klass47950%_
                (if (gx#identifier? _%klass-or-id47947%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47945%_
                       _%klass-or-id47947%_))
                    _%klass-or-id47947%_))
               (_%accessors47953%_
                (let ((__obj79965 _%klass47950%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj79965
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj79965 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj79965
                       'unchecked-accessors)))))
          (let ((_%$e47958%_ (assgetq _%slot47948%_ _%accessors47953%_)))
            (if _%$e47958%_
                _%$e47958%_
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"no accessor for slot"
                   _%stx47945%_
                   _%klass47950%_
                   _%slot47948%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47925%_
               _%klass-or-id47927%_
               _%slot47928%_
               _%checked?47929%_)
        (let* ((_%klass47931%_
                (if (gx#identifier? _%klass-or-id47927%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47925%_
                       _%klass-or-id47927%_))
                    _%klass-or-id47927%_))
               (_%mutators47934%_
                (if _%checked?47929%_
                    (let ((__obj79966 _%klass47931%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj79966
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj79966 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj79966
                           'mutators)))
                    (let ((__obj79967 _%klass47931%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj79967
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj79967 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj79967
                           'unchecked-mutators))))))
          (let ((_%$e47939%_ (assgetq _%slot47928%_ _%mutators47934%_)))
            (if _%$e47939%_
                _%$e47939%_
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"no mutator for slot"
                   _%stx47925%_
                   _%klass47931%_
                   _%slot47928%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx47982%_)
        (letrec ((_%expand-body47985%_
                  (lambda (_%klass48554%_
                           _%var48556%_
                           _%Type48557%_
                           _%body48558%_
                           _%checked?48559%_)
                    (let* ((_%g4856148605%_
                            (lambda (_%g4856248601%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4856248601%_)))
                           (_%g4856048762%_
                            (lambda (_%g4856248609%_)
                              (if (gx#stx-pair? _%g4856248609%_)
                                  (let ((_%e4857248612%_
                                         (gx#syntax-e _%g4856248609%_)))
                                    (let ((_%hd4857148616%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4857248612%_)))
                                          (_%tl4857048619%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4857248612%_))))
                                      (if (gx#stx-pair? _%tl4857048619%_)
                                          (let ((_%e4857548622%_
                                                 (gx#syntax-e
                                                  _%tl4857048619%_)))
                                            (let ((_%hd4857448626%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4857548622%_)))
                                                  (_%tl4857348629%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4857548622%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4857348629%_)
                                                  (let ((_%e4857848632%_
                                                         (gx#syntax-e
                                                          _%tl4857348629%_)))
                                                    (let ((_%hd4857748636%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4857848632%_)))
                                                          (_%tl4857648639%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4857848632%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4857648639%_)
                                                          (let ((_%e4858148642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4857648639%_)))
                    (let ((_%hd4858048646%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4858148642%_)))
                          (_%tl4857948649%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4858148642%_))))
                      (if (gx#stx-pair? _%tl4857948649%_)
                          (let ((_%e4858448652%_
                                 (gx#syntax-e _%tl4857948649%_)))
                            (let ((_%hd4858348656%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4858448652%_)))
                                  (_%tl4858248659%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4858448652%_))))
                              (if (gx#stx-pair? _%tl4858248659%_)
                                  (let ((_%e4858748662%_
                                         (gx#syntax-e _%tl4858248659%_)))
                                    (let ((_%hd4858648666%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4858748662%_)))
                                          (_%tl4858548669%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4858748662%_))))
                                      (if (gx#stx-pair? _%tl4858548669%_)
                                          (let ((_%e4859048672%_
                                                 (gx#syntax-e
                                                  _%tl4858548669%_)))
                                            (let ((_%hd4858948676%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4859048672%_)))
                                                  (_%tl4858848679%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4859048672%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4858948676%_)
                                                  (let ((_g80140_
                                                         (gx#syntax-split-splice
                                                          _%hd4858948676%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80141_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80140_)
                           (##vector-length _g80140_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80141_ 2)))
                    (error "Context expects 2 values" _g80141_)))
              (let ((_%target4859148682%_
                     (let () (declare (not safe)) (##vector-ref _g80140_ 0)))
                    (_%tl4859348685%_
                     (let () (declare (not safe)) (##vector-ref _g80140_ 1))))
                (if (gx#stx-null? _%tl4859348685%_)
                    (letrec ((_%loop4859448688%_
                              (lambda (_%hd4859248692%_ _%body4859848695%_)
                                (if (gx#stx-pair? _%hd4859248692%_)
                                    (let ((_%e4859548698%_
                                           (gx#syntax-e _%hd4859248692%_)))
                                      (let ((_%lp-hd4859648702%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4859548698%_)))
                                            (_%lp-tl4859748705%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4859548698%_))))
                                        (_%loop4859448688%_
                                         _%lp-tl4859748705%_
                                         (cons _%lp-hd4859648702%_
                                               _%body4859848695%_))))
                                    (let ((_%body4859948708%_
                                           (reverse _%body4859848695%_)))
                                      (if (gx#stx-null? _%tl4858848679%_)
                                          ((lambda (_%L48712%_
                                                    _%L48714%_
                                                    _%L48715%_
                                                    _%L48716%_
                                                    _%L48717%_
                                                    _%L48718%_
                                                    _%L48719%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L48717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L48718%_ '()))
                                           (cons _%L48717%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L48719%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L48717%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L48716%_ '()))
                                 (cons _%L48715%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L48714%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4875348756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4875448759%_)
                        (cons _%g4875348756%_ _%g4875448759%_))
                      '()
                      _%L48712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4859948708%_
                                           _%hd4858648666%_
                                           _%hd4858348656%_
                                           _%hd4858048646%_
                                           _%hd4857748636%_
                                           _%hd4857448626%_
                                           _%hd4857148616%_)
                                          (_%g4856148605%_
                                           _%g4856248609%_)))))))
                      (_%loop4859448688%_ _%target4859148682%_ '()))
                    (_%g4856148605%_ _%g4856248609%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4856148605%_
                                                   _%g4856248609%_))))
                                          (_%g4856148605%_ _%g4856248609%_))))
                                  (_%g4856148605%_ _%g4856248609%_))))
                          (_%g4856148605%_ _%g4856248609%_))))
                  (_%g4856148605%_ _%g4856248609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4856148605%_
                                                   _%g4856248609%_))))
                                          (_%g4856148605%_ _%g4856248609%_))))
                                  (_%g4856148605%_ _%g4856248609%_)))))
                      (_%g4856048762%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj79968 _%klass48554%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj79968
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj79968
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj79968
                                    'type-descriptor)))
                             _%var48556%_
                             _%klass48554%_
                             _%checked?48559%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body48558%_)))))
                 (_%expand47987%_
                  (lambda (_%var48451%_
                           _%Type48453%_
                           _%body48454%_
                           _%checked?48455%_
                           _%maybe?48456%_)
                    (let* ((_%klass48458%_
                            (gx#syntax-local-value _%Type48453%_ false))
                           (_%expr-body48461%_
                            (_%expand-body47985%_
                             _%klass48458%_
                             _%var48451%_
                             _%Type48453%_
                             _%body48454%_
                             _%checked?48455%_)))
                      (if _%checked?48455%_
                          (let* ((_%g4846648485%_
                                  (lambda (_%g4846748481%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4846748481%_)))
                                 (_%g4846548547%_
                                  (lambda (_%g4846748489%_)
                                    (if (gx#stx-pair? _%g4846748489%_)
                                        (let ((_%e4847348492%_
                                               (gx#syntax-e _%g4846748489%_)))
                                          (let ((_%hd4847248496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4847348492%_)))
                                                (_%tl4847148499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4847348492%_))))
                                            (if (gx#stx-pair? _%tl4847148499%_)
                                                (let ((_%e4847648502%_
                                                       (gx#syntax-e
                                                        _%tl4847148499%_)))
                                                  (let ((_%hd4847548506%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4847648502%_)))
                                                        (_%tl4847448509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4847648502%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4847448509%_)
                                                        (let ((_%e4847948512%_
                                                               (gx#syntax-e
                                                                _%tl4847448509%_)))
                                                          (let ((_%hd4847848516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4847948512%_)))
                        (_%tl4847748519%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4847948512%_))))
                    (if (gx#stx-null? _%tl4847748519%_)
                        ((lambda (_%L48522%_ _%L48524%_ _%L48525%_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'with-contract)
                                   (cons (cons _%L48524%_
                                               (cons (gx#datum->syntax '#f ':~)
                                                     (cons _%L48525%_ '())))
                                         (cons _%L48522%_ '())))))
                         _%hd4847848516%_
                         _%hd4847548506%_
                         _%hd4847248496%_)
                        (_%g4846648485%_ _%g4846748489%_))))
                (_%g4846648485%_ _%g4846748489%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4846648485%_
                                                 _%g4846748489%_))))
                                        (_%g4846648485%_ _%g4846748489%_)))))
                            (_%g4846548547%_
                             (list (let ((_%instance?48551%_
                                          (let ((__obj79969 _%klass48458%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj79969
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj79969
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj79969
                                                 'predicate)))))
                                     (if _%maybe?48456%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?48551%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?48551%_))
                                   _%var48451%_
                                   _%expr-body48461%_)))
                          _%expr-body48461%_)))))
          (let* ((_%__stx7528575286%_ _%stx47982%_)
                 (_%g4799148079%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7528575286%_))))
            (let ((_%__kont7528875289%_
                   (lambda (_%L48412%_ _%L48414%_ _%L48415%_)
                     (_%expand47987%_
                      _%L48415%_
                      _%L48414%_
                      (foldr (lambda (_%g4843848441%_ _%g4843948444%_)
                               (cons _%g4843848441%_ _%g4843948444%_))
                             '()
                             _%L48412%_)
                      '#t
                      '#f)))
                  (_%__kont7529275293%_
                   (lambda (_%L48290%_ _%L48292%_ _%L48293%_)
                     (_%expand47987%_
                      _%L48293%_
                      _%L48292%_
                      (foldr (lambda (_%g4831648319%_ _%g4831748322%_)
                               (cons _%g4831648319%_ _%g4831748322%_))
                             '()
                             _%L48290%_)
                      '#t
                      '#t)))
                  (_%__kont7529675297%_
                   (lambda (_%L48166%_ _%L48168%_ _%L48169%_)
                     (_%expand47987%_
                      _%L48169%_
                      _%L48168%_
                      (foldr (lambda (_%g4819448197%_ _%g4819548200%_)
                               (cons _%g4819448197%_ _%g4819548200%_))
                             '()
                             _%L48166%_)
                      '#f
                      '#f))))
              (let* ((_%__match7543275433%_
                      (lambda (_%e4805248086%_
                               _%hd4805148090%_
                               _%tl4805048093%_
                               _%e4805548096%_
                               _%hd4805448100%_
                               _%tl4805348103%_
                               _%e4805848106%_
                               _%hd4805748110%_
                               _%tl4805648113%_
                               _%e4806148116%_
                               _%hd4806048120%_
                               _%tl4805948123%_
                               _%e4806448126%_
                               _%hd4806348130%_
                               _%tl4806248133%_
                               _%__splice7529875299%_
                               _%target4806548136%_
                               _%tl4806748139%_)
                        (letrec ((_%loop4806848142%_
                                  (lambda (_%hd4806648146%_ _%body4807248149%_)
                                    (if (gx#stx-pair? _%hd4806648146%_)
                                        (let ((_%e4806948152%_
                                               (gx#syntax-e _%hd4806648146%_)))
                                          (let ((_%lp-tl4807148159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4806948152%_)))
                                                (_%lp-hd4807048156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4806948152%_))))
                                            (_%loop4806848142%_
                                             _%lp-tl4807148159%_
                                             (cons _%lp-hd4807048156%_
                                                   _%body4807248149%_))))
                                        (let ((_%body4807348162%_
                                               (reverse _%body4807248149%_)))
                                          (let ((_%L48166%_ _%body4807348162%_)
                                                (_%L48168%_ _%hd4806348130%_)
                                                (_%L48169%_ _%hd4805748110%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48168%_))
                                                (_%__kont7529675297%_
                                                 _%L48166%_
                                                 _%L48168%_
                                                 _%L48169%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4799148079%_)))))))))
                          (_%loop4806848142%_ _%target4806548136%_ '()))))
                     (_%__match7538875389%_
                      (lambda (_%e4802548210%_
                               _%hd4802448214%_
                               _%tl4802348217%_
                               _%e4802848220%_
                               _%hd4802748224%_
                               _%tl4802648227%_
                               _%e4803148230%_
                               _%hd4803048234%_
                               _%tl4802948237%_
                               _%e4803448240%_
                               _%hd4803348244%_
                               _%tl4803248247%_
                               _%e4803748250%_
                               _%hd4803648254%_
                               _%tl4803548257%_
                               _%__splice7529475295%_
                               _%target4803848260%_
                               _%tl4804048263%_)
                        (letrec ((_%loop4804148266%_
                                  (lambda (_%hd4803948270%_ _%body4804548273%_)
                                    (if (gx#stx-pair? _%hd4803948270%_)
                                        (let ((_%e4804248276%_
                                               (gx#syntax-e _%hd4803948270%_)))
                                          (let ((_%lp-tl4804448283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4804248276%_)))
                                                (_%lp-hd4804348280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4804248276%_))))
                                            (_%loop4804148266%_
                                             _%lp-tl4804448283%_
                                             (cons _%lp-hd4804348280%_
                                                   _%body4804548273%_))))
                                        (let ((_%body4804648286%_
                                               (reverse _%body4804548273%_)))
                                          (let ((_%L48290%_ _%body4804648286%_)
                                                (_%L48292%_ _%hd4803648254%_)
                                                (_%L48293%_ _%hd4803048234%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48292%_))
                                                (_%__kont7529275293%_
                                                 _%L48290%_
                                                 _%L48292%_
                                                 _%L48293%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4799148079%_)))))))))
                          (_%loop4804148266%_ _%target4803848260%_ '()))))
                     (_%__match7534475345%_
                      (lambda (_%e4799848332%_
                               _%hd4799748336%_
                               _%tl4799648339%_
                               _%e4800148342%_
                               _%hd4800048346%_
                               _%tl4799948349%_
                               _%e4800448352%_
                               _%hd4800348356%_
                               _%tl4800248359%_
                               _%e4800748362%_
                               _%hd4800648366%_
                               _%tl4800548369%_
                               _%e4801048372%_
                               _%hd4800948376%_
                               _%tl4800848379%_
                               _%__splice7529075291%_
                               _%target4801148382%_
                               _%tl4801348385%_)
                        (letrec ((_%loop4801448388%_
                                  (lambda (_%hd4801248392%_ _%body4801848395%_)
                                    (if (gx#stx-pair? _%hd4801248392%_)
                                        (let ((_%e4801548398%_
                                               (gx#syntax-e _%hd4801248392%_)))
                                          (let ((_%lp-tl4801748405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4801548398%_)))
                                                (_%lp-hd4801648402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4801548398%_))))
                                            (_%loop4801448388%_
                                             _%lp-tl4801748405%_
                                             (cons _%lp-hd4801648402%_
                                                   _%body4801848395%_))))
                                        (let ((_%body4801948408%_
                                               (reverse _%body4801848395%_)))
                                          (let ((_%L48412%_ _%body4801948408%_)
                                                (_%L48414%_ _%hd4800948376%_)
                                                (_%L48415%_ _%hd4800348356%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48414%_))
                                                (_%__kont7528875289%_
                                                 _%L48412%_
                                                 _%L48414%_
                                                 _%L48415%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4799148079%_)))))))))
                          (_%loop4801448388%_ _%target4801148382%_ '())))))
                (if (gx#stx-pair? _%__stx7528575286%_)
                    (let ((_%e4799848332%_ (gx#syntax-e _%__stx7528575286%_)))
                      (let ((_%tl4799648339%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4799848332%_)))
                            (_%hd4799748336%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4799848332%_))))
                        (if (gx#stx-pair? _%tl4799648339%_)
                            (let ((_%e4800148342%_
                                   (gx#syntax-e _%tl4799648339%_)))
                              (let ((_%tl4799948349%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4800148342%_)))
                                    (_%hd4800048346%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4800148342%_))))
                                (if (gx#stx-pair? _%hd4800048346%_)
                                    (let ((_%e4800448352%_
                                           (gx#syntax-e _%hd4800048346%_)))
                                      (let ((_%tl4800248359%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4800448352%_)))
                                            (_%hd4800348356%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4800448352%_))))
                                        (if (gx#stx-pair? _%tl4800248359%_)
                                            (let ((_%e4800748362%_
                                                   (gx#syntax-e
                                                    _%tl4800248359%_)))
                                              (let ((_%tl4800548369%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4800748362%_)))
                                                    (_%hd4800648366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4800748362%_))))
                                                (if (gx#identifier?
                                                     _%hd4800648366%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80142_|
                                                         _%hd4800648366%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4800548369%_)
                                                            (let ((_%e4801048372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4800548369%_)))
                      (let ((_%tl4800848379%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4801048372%_)))
                            (_%hd4800948376%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4801048372%_))))
                        (if (gx#stx-null? _%tl4800848379%_)
                            (if (gx#stx-pair/null? _%tl4799948349%_)
                                (let ((_%__splice7529075291%_
                                       (gx#syntax-split-splice
                                        _%tl4799948349%_
                                        '0)))
                                  (let ((_%tl4801348385%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7529075291%_
                                            '1)))
                                        (_%target4801148382%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7529075291%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4801348385%_)
                                        (_%__match7534475345%_
                                         _%e4799848332%_
                                         _%hd4799748336%_
                                         _%tl4799648339%_
                                         _%e4800148342%_
                                         _%hd4800048346%_
                                         _%tl4799948349%_
                                         _%e4800448352%_
                                         _%hd4800348356%_
                                         _%tl4800248359%_
                                         _%e4800748362%_
                                         _%hd4800648366%_
                                         _%tl4800548369%_
                                         _%e4801048372%_
                                         _%hd4800948376%_
                                         _%tl4800848379%_
                                         _%__splice7529075291%_
                                         _%target4801148382%_
                                         _%tl4801348385%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4799148079%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4799148079%_)))
                            (let () (declare (not safe)) (_%g4799148079%_)))))
                    (let () (declare (not safe)) (_%g4799148079%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80143_|
                     _%hd4800648366%_)
                    (if (gx#stx-pair? _%tl4800548369%_)
                        (let ((_%e4803748250%_ (gx#syntax-e _%tl4800548369%_)))
                          (let ((_%tl4803548257%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4803748250%_)))
                                (_%hd4803648254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4803748250%_))))
                            (if (gx#stx-null? _%tl4803548257%_)
                                (if (gx#stx-pair/null? _%tl4799948349%_)
                                    (let ((_%__splice7529475295%_
                                           (gx#syntax-split-splice
                                            _%tl4799948349%_
                                            '0)))
                                      (let ((_%tl4804048263%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7529475295%_
                                                '1)))
                                            (_%target4803848260%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7529475295%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4804048263%_)
                                            (_%__match7538875389%_
                                             _%e4799848332%_
                                             _%hd4799748336%_
                                             _%tl4799648339%_
                                             _%e4800148342%_
                                             _%hd4800048346%_
                                             _%tl4799948349%_
                                             _%e4800448352%_
                                             _%hd4800348356%_
                                             _%tl4800248359%_
                                             _%e4800748362%_
                                             _%hd4800648366%_
                                             _%tl4800548369%_
                                             _%e4803748250%_
                                             _%hd4803648254%_
                                             _%tl4803548257%_
                                             _%__splice7529475295%_
                                             _%target4803848260%_
                                             _%tl4804048263%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4799148079%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4799148079%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4799148079%_)))))
                        (let () (declare (not safe)) (_%g4799148079%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80144_|
                         _%hd4800648366%_)
                        (if (gx#stx-pair? _%tl4800548369%_)
                            (let ((_%e4806448126%_
                                   (gx#syntax-e _%tl4800548369%_)))
                              (let ((_%tl4806248133%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4806448126%_)))
                                    (_%hd4806348130%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4806448126%_))))
                                (if (gx#stx-null? _%tl4806248133%_)
                                    (if (gx#stx-pair/null? _%tl4799948349%_)
                                        (let ((_%__splice7529875299%_
                                               (gx#syntax-split-splice
                                                _%tl4799948349%_
                                                '0)))
                                          (let ((_%tl4806748139%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7529875299%_
                                                    '1)))
                                                (_%target4806548136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7529875299%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4806748139%_)
                                                (_%__match7543275433%_
                                                 _%e4799848332%_
                                                 _%hd4799748336%_
                                                 _%tl4799648339%_
                                                 _%e4800148342%_
                                                 _%hd4800048346%_
                                                 _%tl4799948349%_
                                                 _%e4800448352%_
                                                 _%hd4800348356%_
                                                 _%tl4800248359%_
                                                 _%e4800748362%_
                                                 _%hd4800648366%_
                                                 _%tl4800548369%_
                                                 _%e4806448126%_
                                                 _%hd4806348130%_
                                                 _%tl4806248133%_
                                                 _%__splice7529875299%_
                                                 _%target4806548136%_
                                                 _%tl4806748139%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4799148079%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4799148079%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4799148079%_)))))
                            (let () (declare (not safe)) (_%g4799148079%_)))
                        (let () (declare (not safe)) (_%g4799148079%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4799148079%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4799148079%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4799148079%_)))))
                            (let () (declare (not safe)) (_%g4799148079%_)))))
                    (let () (declare (not safe)) (_%g4799148079%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx48770%_)
        (letrec ((_%expand-body48773%_
                  (lambda (_%var49590%_
                           _%Interface49592%_
                           _%body49593%_
                           _%checked?49594%_)
                    (let* ((_%type49596%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx48770%_
                               _%Interface49592%_)))
                           (_%g4959949643%_
                            (lambda (_%g4960049639%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4960049639%_)))
                           (_%g4959849801%_
                            (lambda (_%g4960049647%_)
                              (if (gx#stx-pair? _%g4960049647%_)
                                  (let ((_%e4961049650%_
                                         (gx#syntax-e _%g4960049647%_)))
                                    (let ((_%hd4960949654%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4961049650%_)))
                                          (_%tl4960849657%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4961049650%_))))
                                      (if (gx#stx-pair? _%tl4960849657%_)
                                          (let ((_%e4961349660%_
                                                 (gx#syntax-e
                                                  _%tl4960849657%_)))
                                            (let ((_%hd4961249664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4961349660%_)))
                                                  (_%tl4961149667%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4961349660%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4961149667%_)
                                                  (let ((_%e4961649670%_
                                                         (gx#syntax-e
                                                          _%tl4961149667%_)))
                                                    (let ((_%hd4961549674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4961649670%_)))
                                                          (_%tl4961449677%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4961649670%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4961449677%_)
                                                          (let ((_%e4961949680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4961449677%_)))
                    (let ((_%hd4961849684%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4961949680%_)))
                          (_%tl4961749687%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4961949680%_))))
                      (if (gx#stx-pair? _%tl4961749687%_)
                          (let ((_%e4962249690%_
                                 (gx#syntax-e _%tl4961749687%_)))
                            (let ((_%hd4962149694%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4962249690%_)))
                                  (_%tl4962049697%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4962249690%_))))
                              (if (gx#stx-pair? _%tl4962049697%_)
                                  (let ((_%e4962549700%_
                                         (gx#syntax-e _%tl4962049697%_)))
                                    (let ((_%hd4962449704%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4962549700%_)))
                                          (_%tl4962349707%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4962549700%_))))
                                      (if (gx#stx-pair? _%tl4962349707%_)
                                          (let ((_%e4962849710%_
                                                 (gx#syntax-e
                                                  _%tl4962349707%_)))
                                            (let ((_%hd4962749714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4962849710%_)))
                                                  (_%tl4962649717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4962849710%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4962749714%_)
                                                  (let ((_g80145_
                                                         (gx#syntax-split-splice
                                                          _%hd4962749714%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80146_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80145_)
                           (##vector-length _g80145_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80146_ 2)))
                    (error "Context expects 2 values" _g80146_)))
              (let ((_%target4962949720%_
                     (let () (declare (not safe)) (##vector-ref _g80145_ 0)))
                    (_%tl4963149723%_
                     (let () (declare (not safe)) (##vector-ref _g80145_ 1))))
                (if (gx#stx-null? _%tl4963149723%_)
                    (letrec ((_%loop4963249726%_
                              (lambda (_%hd4963049730%_ _%body4963649733%_)
                                (if (gx#stx-pair? _%hd4963049730%_)
                                    (let ((_%e4963349736%_
                                           (gx#syntax-e _%hd4963049730%_)))
                                      (let ((_%lp-hd4963449740%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4963349736%_)))
                                            (_%lp-tl4963549743%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4963349736%_))))
                                        (_%loop4963249726%_
                                         _%lp-tl4963549743%_
                                         (cons _%lp-hd4963449740%_
                                               _%body4963649733%_))))
                                    (let ((_%body4963749746%_
                                           (reverse _%body4963649733%_)))
                                      (if (gx#stx-null? _%tl4962649717%_)
                                          ((lambda (_%L49750%_
                                                    _%L49752%_
                                                    _%L49753%_
                                                    _%L49754%_
                                                    _%L49755%_
                                                    _%L49756%_
                                                    _%L49757%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L49754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L49755%_ '()))
                                           (cons _%L49754%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L49757%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L49754%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L49756%_ '()))
                                 (cons _%L49753%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L49752%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4979249795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4979349798%_)
                        (cons _%g4979249795%_ _%g4979349798%_))
                      '()
                      _%L49750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4963749746%_
                                           _%hd4962449704%_
                                           _%hd4962149694%_
                                           _%hd4961849684%_
                                           _%hd4961549674%_
                                           _%hd4961249664%_
                                           _%hd4960949654%_)
                                          (_%g4959949643%_
                                           _%g4960049647%_)))))))
                      (_%loop4963249726%_ _%target4962949720%_ '()))
                    (_%g4959949643%_ _%g4960049647%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4959949643%_
                                                   _%g4960049647%_))))
                                          (_%g4959949643%_ _%g4960049647%_))))
                                  (_%g4959949643%_ _%g4960049647%_))))
                          (_%g4959949643%_ _%g4960049647%_))))
                  (_%g4959949643%_ _%g4960049647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4959949643%_
                                                   _%g4960049647%_))))
                                          (_%g4959949643%_ _%g4960049647%_))))
                                  (_%g4959949643%_ _%g4960049647%_)))))
                      (_%g4959849801%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type49596%_
                             (let ((__obj79970 _%type49596%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj79970
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj79970
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj79970
                                    'instance-type)))
                             _%var49590%_
                             _%checked?49594%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49593%_)))))
                 (_%expand48775%_
                  (lambda (_%var49389%_
                           _%Interface49391%_
                           _%body49392%_
                           _%checked?49393%_
                           _%checked-methods?49394%_
                           _%maybe?49395%_)
                    (let* ((_%g4939749405%_
                            (lambda (_%g4939849401%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4939849401%_)))
                           (_%g4939649582%_
                            (lambda (_%g4939849409%_)
                              ((lambda (_%L49412%_)
                                 (let ()
                                   (if _%checked?49393%_
                                       (if _%maybe?49395%_
                                           (let* ((_%g4942449439%_
                                                   (lambda (_%g4942549435%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4942549435%_)))
                                                  (_%g4942349485%_
                                                   (lambda (_%g4942549443%_)
                                                     (if (gx#stx-pair?
                                                          _%g4942549443%_)
                                                         (let ((_%e4943049446%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4942549443%_)))
                   (let ((_%hd4942949450%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4943049446%_)))
                         (_%tl4942849453%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4943049446%_))))
                     (if (gx#stx-pair? _%tl4942849453%_)
                         (let ((_%e4943349456%_
                                (gx#syntax-e _%tl4942849453%_)))
                           (let ((_%hd4943249460%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4943349456%_)))
                                 (_%tl4943149463%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4943349456%_))))
                             (if (gx#stx-null? _%tl4943149463%_)
                                 ((lambda (_%L49466%_ _%L49468%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L49468%_
                                                        (cons (cons _%L49466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49468%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons _%L49468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49412%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'nil-dereference!)
                                              (cons _%L49468%_ '()))
                                        '()))))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd4943249460%_
                                  _%hd4942949450%_)
                                 (_%g4942449439%_ _%g4942549443%_))))
                         (_%g4942449439%_ _%g4942549443%_))))
                 (_%g4942449439%_ _%g4942549443%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4942349485%_
                                              (list _%var49389%_
                                                    _%Interface49391%_)))
                                           (let* ((_%g4948949504%_
                                                   (lambda (_%g4949049500%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4949049500%_)))
                                                  (_%g4948849548%_
                                                   (lambda (_%g4949049508%_)
                                                     (if (gx#stx-pair?
                                                          _%g4949049508%_)
                                                         (let ((_%e4949549511%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4949049508%_)))
                   (let ((_%hd4949449515%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4949549511%_)))
                         (_%tl4949349518%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4949549511%_))))
                     (if (gx#stx-pair? _%tl4949349518%_)
                         (let ((_%e4949849521%_
                                (gx#syntax-e _%tl4949349518%_)))
                           (let ((_%hd4949749525%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4949849521%_)))
                                 (_%tl4949649528%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4949849521%_))))
                             (if (gx#stx-null? _%tl4949649528%_)
                                 ((lambda (_%L49531%_ _%L49533%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L49533%_
                                                        (cons (cons _%L49531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49533%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L49412%_ '())))))
                                  _%hd4949749525%_
                                  _%hd4949449515%_)
                                 (_%g4948949504%_ _%g4949049508%_))))
                         (_%g4948949504%_ _%g4949049508%_))))
                 (_%g4948949504%_ _%g4949049508%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4948849548%_
                                              (list _%var49389%_
                                                    _%Interface49391%_))))
                                       (if _%maybe?49395%_
                                           (let* ((_%g4955249560%_
                                                   (lambda (_%g4955349556%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4955349556%_)))
                                                  (_%g4955149578%_
                                                   (lambda (_%g4955349564%_)
                                                     ((lambda (_%L49567%_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons _%L49567%_
                              (cons _%L49412%_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'nil-dereference!)
                                                (cons _%L49567%_ '()))
                                          '()))))))
              _%g4955349564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4955149578%_ _%var49389%_))
                                           _%L49412%_))))
                               _%g4939849409%_))))
                      (_%g4939649582%_
                       (_%expand-body48773%_
                        _%var49389%_
                        _%Interface49391%_
                        _%body49392%_
                        (let ((_%$e49586%_ _%checked?49393%_))
                          (if _%$e49586%_
                              _%$e49586%_
                              _%checked-methods?49394%_))))))))
          (let* ((_%__stx7543575436%_ _%stx48770%_)
                 (_%g4878048895%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7543575436%_))))
            (let ((_%__kont7543875439%_
                   (lambda (_%L49350%_ _%L49352%_ _%L49353%_)
                     (_%expand48775%_
                      _%L49353%_
                      _%L49352%_
                      (foldr (lambda (_%g4937649379%_ _%g4937749382%_)
                               (cons _%g4937649379%_ _%g4937749382%_))
                             '()
                             _%L49350%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7544275443%_
                   (lambda (_%L49228%_ _%L49230%_ _%L49231%_)
                     (_%expand48775%_
                      _%L49231%_
                      _%L49230%_
                      (foldr (lambda (_%g4925449257%_ _%g4925549260%_)
                               (cons _%g4925449257%_ _%g4925549260%_))
                             '()
                             _%L49228%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7544675447%_
                   (lambda (_%L49106%_ _%L49108%_ _%L49109%_)
                     (_%expand48775%_
                      _%L49109%_
                      _%L49108%_
                      (foldr (lambda (_%g4913249135%_ _%g4913349138%_)
                               (cons _%g4913249135%_ _%g4913349138%_))
                             '()
                             _%L49106%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7545075451%_
                   (lambda (_%L48982%_ _%L48984%_ _%L48985%_)
                     (_%expand48775%_
                      _%L48985%_
                      _%L48984%_
                      (foldr (lambda (_%g4901049013%_ _%g4901149016%_)
                               (cons _%g4901049013%_ _%g4901149016%_))
                             '()
                             _%L48982%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7563075631%_
                      (lambda (_%e4886848902%_
                               _%hd4886748906%_
                               _%tl4886648909%_
                               _%e4887148912%_
                               _%hd4887048916%_
                               _%tl4886948919%_
                               _%e4887448922%_
                               _%hd4887348926%_
                               _%tl4887248929%_
                               _%e4887748932%_
                               _%hd4887648936%_
                               _%tl4887548939%_
                               _%e4888048942%_
                               _%hd4887948946%_
                               _%tl4887848949%_
                               _%__splice7545275453%_
                               _%target4888148952%_
                               _%tl4888348955%_)
                        (letrec ((_%loop4888448958%_
                                  (lambda (_%hd4888248962%_ _%body4888848965%_)
                                    (if (gx#stx-pair? _%hd4888248962%_)
                                        (let ((_%e4888548968%_
                                               (gx#syntax-e _%hd4888248962%_)))
                                          (let ((_%lp-tl4888748975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4888548968%_)))
                                                (_%lp-hd4888648972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4888548968%_))))
                                            (_%loop4888448958%_
                                             _%lp-tl4888748975%_
                                             (cons _%lp-hd4888648972%_
                                                   _%body4888848965%_))))
                                        (let ((_%body4888948978%_
                                               (reverse _%body4888848965%_)))
                                          (let ((_%L48982%_ _%body4888948978%_)
                                                (_%L48984%_ _%hd4887948946%_)
                                                (_%L48985%_ _%hd4887348926%_))
                                            (if (and (gx#identifier?
                                                      _%L48985%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L48984%_)))
                                                (_%__kont7545075451%_
                                                 _%L48982%_
                                                 _%L48984%_
                                                 _%L48985%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4878048895%_)))))))))
                          (_%loop4888448958%_ _%target4888148952%_ '()))))
                     (_%__match7558675587%_
                      (lambda (_%e4884149026%_
                               _%hd4884049030%_
                               _%tl4883949033%_
                               _%e4884449036%_
                               _%hd4884349040%_
                               _%tl4884249043%_
                               _%e4884749046%_
                               _%hd4884649050%_
                               _%tl4884549053%_
                               _%e4885049056%_
                               _%hd4884949060%_
                               _%tl4884849063%_
                               _%e4885349066%_
                               _%hd4885249070%_
                               _%tl4885149073%_
                               _%__splice7544875449%_
                               _%target4885449076%_
                               _%tl4885649079%_)
                        (letrec ((_%loop4885749082%_
                                  (lambda (_%hd4885549086%_ _%body4886149089%_)
                                    (if (gx#stx-pair? _%hd4885549086%_)
                                        (let ((_%e4885849092%_
                                               (gx#syntax-e _%hd4885549086%_)))
                                          (let ((_%lp-tl4886049099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4885849092%_)))
                                                (_%lp-hd4885949096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4885849092%_))))
                                            (_%loop4885749082%_
                                             _%lp-tl4886049099%_
                                             (cons _%lp-hd4885949096%_
                                                   _%body4886149089%_))))
                                        (let ((_%body4886249102%_
                                               (reverse _%body4886149089%_)))
                                          (let ((_%L49106%_ _%body4886249102%_)
                                                (_%L49108%_ _%hd4885249070%_)
                                                (_%L49109%_ _%hd4884649050%_))
                                            (if (and (gx#identifier?
                                                      _%L49109%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49108%_)))
                                                (_%__kont7544675447%_
                                                 _%L49106%_
                                                 _%L49108%_
                                                 _%L49109%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4878048895%_)))))))))
                          (_%loop4885749082%_ _%target4885449076%_ '()))))
                     (_%__match7554275543%_
                      (lambda (_%e4881449148%_
                               _%hd4881349152%_
                               _%tl4881249155%_
                               _%e4881749158%_
                               _%hd4881649162%_
                               _%tl4881549165%_
                               _%e4882049168%_
                               _%hd4881949172%_
                               _%tl4881849175%_
                               _%e4882349178%_
                               _%hd4882249182%_
                               _%tl4882149185%_
                               _%e4882649188%_
                               _%hd4882549192%_
                               _%tl4882449195%_
                               _%__splice7544475445%_
                               _%target4882749198%_
                               _%tl4882949201%_)
                        (letrec ((_%loop4883049204%_
                                  (lambda (_%hd4882849208%_ _%body4883449211%_)
                                    (if (gx#stx-pair? _%hd4882849208%_)
                                        (let ((_%e4883149214%_
                                               (gx#syntax-e _%hd4882849208%_)))
                                          (let ((_%lp-tl4883349221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4883149214%_)))
                                                (_%lp-hd4883249218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4883149214%_))))
                                            (_%loop4883049204%_
                                             _%lp-tl4883349221%_
                                             (cons _%lp-hd4883249218%_
                                                   _%body4883449211%_))))
                                        (let ((_%body4883549224%_
                                               (reverse _%body4883449211%_)))
                                          (let ((_%L49228%_ _%body4883549224%_)
                                                (_%L49230%_ _%hd4882549192%_)
                                                (_%L49231%_ _%hd4881949172%_))
                                            (if (and (gx#identifier?
                                                      _%L49231%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49230%_)))
                                                (_%__kont7544275443%_
                                                 _%L49228%_
                                                 _%L49230%_
                                                 _%L49231%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4878048895%_)))))))))
                          (_%loop4883049204%_ _%target4882749198%_ '()))))
                     (_%__match7549875499%_
                      (lambda (_%e4878749270%_
                               _%hd4878649274%_
                               _%tl4878549277%_
                               _%e4879049280%_
                               _%hd4878949284%_
                               _%tl4878849287%_
                               _%e4879349290%_
                               _%hd4879249294%_
                               _%tl4879149297%_
                               _%e4879649300%_
                               _%hd4879549304%_
                               _%tl4879449307%_
                               _%e4879949310%_
                               _%hd4879849314%_
                               _%tl4879749317%_
                               _%__splice7544075441%_
                               _%target4880049320%_
                               _%tl4880249323%_)
                        (letrec ((_%loop4880349326%_
                                  (lambda (_%hd4880149330%_ _%body4880749333%_)
                                    (if (gx#stx-pair? _%hd4880149330%_)
                                        (let ((_%e4880449336%_
                                               (gx#syntax-e _%hd4880149330%_)))
                                          (let ((_%lp-tl4880649343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4880449336%_)))
                                                (_%lp-hd4880549340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4880449336%_))))
                                            (_%loop4880349326%_
                                             _%lp-tl4880649343%_
                                             (cons _%lp-hd4880549340%_
                                                   _%body4880749333%_))))
                                        (let ((_%body4880849346%_
                                               (reverse _%body4880749333%_)))
                                          (let ((_%L49350%_ _%body4880849346%_)
                                                (_%L49352%_ _%hd4879849314%_)
                                                (_%L49353%_ _%hd4879249294%_))
                                            (if (and (gx#identifier?
                                                      _%L49353%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49352%_)))
                                                (_%__kont7543875439%_
                                                 _%L49350%_
                                                 _%L49352%_
                                                 _%L49353%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4878048895%_)))))))))
                          (_%loop4880349326%_ _%target4880049320%_ '())))))
                (if (gx#stx-pair? _%__stx7543575436%_)
                    (let ((_%e4878749270%_ (gx#syntax-e _%__stx7543575436%_)))
                      (let ((_%tl4878549277%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4878749270%_)))
                            (_%hd4878649274%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4878749270%_))))
                        (if (gx#stx-pair? _%tl4878549277%_)
                            (let ((_%e4879049280%_
                                   (gx#syntax-e _%tl4878549277%_)))
                              (let ((_%tl4878849287%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4879049280%_)))
                                    (_%hd4878949284%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4879049280%_))))
                                (if (gx#stx-pair? _%hd4878949284%_)
                                    (let ((_%e4879349290%_
                                           (gx#syntax-e _%hd4878949284%_)))
                                      (let ((_%tl4879149297%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4879349290%_)))
                                            (_%hd4879249294%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4879349290%_))))
                                        (if (gx#stx-pair? _%tl4879149297%_)
                                            (let ((_%e4879649300%_
                                                   (gx#syntax-e
                                                    _%tl4879149297%_)))
                                              (let ((_%tl4879449307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4879649300%_)))
                                                    (_%hd4879549304%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4879649300%_))))
                                                (if (gx#identifier?
                                                     _%hd4879549304%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80147_|
                                                         _%hd4879549304%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4879449307%_)
                                                            (let ((_%e4879949310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4879449307%_)))
                      (let ((_%tl4879749317%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4879949310%_)))
                            (_%hd4879849314%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4879949310%_))))
                        (if (gx#stx-null? _%tl4879749317%_)
                            (if (gx#stx-pair/null? _%tl4878849287%_)
                                (let ((_%__splice7544075441%_
                                       (gx#syntax-split-splice
                                        _%tl4878849287%_
                                        '0)))
                                  (let ((_%tl4880249323%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7544075441%_
                                            '1)))
                                        (_%target4880049320%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7544075441%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4880249323%_)
                                        (_%__match7549875499%_
                                         _%e4878749270%_
                                         _%hd4878649274%_
                                         _%tl4878549277%_
                                         _%e4879049280%_
                                         _%hd4878949284%_
                                         _%tl4878849287%_
                                         _%e4879349290%_
                                         _%hd4879249294%_
                                         _%tl4879149297%_
                                         _%e4879649300%_
                                         _%hd4879549304%_
                                         _%tl4879449307%_
                                         _%e4879949310%_
                                         _%hd4879849314%_
                                         _%tl4879749317%_
                                         _%__splice7544075441%_
                                         _%target4880049320%_
                                         _%tl4880249323%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4878048895%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4878048895%_)))
                            (let () (declare (not safe)) (_%g4878048895%_)))))
                    (let () (declare (not safe)) (_%g4878048895%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80148_|
                     _%hd4879549304%_)
                    (if (gx#stx-pair? _%tl4879449307%_)
                        (let ((_%e4882649188%_ (gx#syntax-e _%tl4879449307%_)))
                          (let ((_%tl4882449195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4882649188%_)))
                                (_%hd4882549192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4882649188%_))))
                            (if (gx#stx-null? _%tl4882449195%_)
                                (if (gx#stx-pair/null? _%tl4878849287%_)
                                    (let ((_%__splice7544475445%_
                                           (gx#syntax-split-splice
                                            _%tl4878849287%_
                                            '0)))
                                      (let ((_%tl4882949201%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7544475445%_
                                                '1)))
                                            (_%target4882749198%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7544475445%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4882949201%_)
                                            (_%__match7554275543%_
                                             _%e4878749270%_
                                             _%hd4878649274%_
                                             _%tl4878549277%_
                                             _%e4879049280%_
                                             _%hd4878949284%_
                                             _%tl4878849287%_
                                             _%e4879349290%_
                                             _%hd4879249294%_
                                             _%tl4879149297%_
                                             _%e4879649300%_
                                             _%hd4879549304%_
                                             _%tl4879449307%_
                                             _%e4882649188%_
                                             _%hd4882549192%_
                                             _%tl4882449195%_
                                             _%__splice7544475445%_
                                             _%target4882749198%_
                                             _%tl4882949201%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4878048895%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4878048895%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4878048895%_)))))
                        (let () (declare (not safe)) (_%g4878048895%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80149_|
                         _%hd4879549304%_)
                        (if (gx#stx-pair? _%tl4879449307%_)
                            (let ((_%e4885349066%_
                                   (gx#syntax-e _%tl4879449307%_)))
                              (let ((_%tl4885149073%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4885349066%_)))
                                    (_%hd4885249070%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4885349066%_))))
                                (if (gx#stx-null? _%tl4885149073%_)
                                    (if (gx#stx-pair/null? _%tl4878849287%_)
                                        (let ((_%__splice7544875449%_
                                               (gx#syntax-split-splice
                                                _%tl4878849287%_
                                                '0)))
                                          (let ((_%tl4885649079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7544875449%_
                                                    '1)))
                                                (_%target4885449076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7544875449%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4885649079%_)
                                                (_%__match7558675587%_
                                                 _%e4878749270%_
                                                 _%hd4878649274%_
                                                 _%tl4878549277%_
                                                 _%e4879049280%_
                                                 _%hd4878949284%_
                                                 _%tl4878849287%_
                                                 _%e4879349290%_
                                                 _%hd4879249294%_
                                                 _%tl4879149297%_
                                                 _%e4879649300%_
                                                 _%hd4879549304%_
                                                 _%tl4879449307%_
                                                 _%e4885349066%_
                                                 _%hd4885249070%_
                                                 _%tl4885149073%_
                                                 _%__splice7544875449%_
                                                 _%target4885449076%_
                                                 _%tl4885649079%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4878048895%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4878048895%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4878048895%_)))))
                            (let () (declare (not safe)) (_%g4878048895%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/contract~Using[1]#_g80150_|
                             _%hd4879549304%_)
                            (if (gx#stx-pair? _%tl4879449307%_)
                                (let ((_%e4888048942%_
                                       (gx#syntax-e _%tl4879449307%_)))
                                  (let ((_%tl4887848949%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4888048942%_)))
                                        (_%hd4887948946%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4888048942%_))))
                                    (if (gx#stx-null? _%tl4887848949%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4878849287%_)
                                            (let ((_%__splice7545275453%_
                                                   (gx#syntax-split-splice
                                                    _%tl4878849287%_
                                                    '0)))
                                              (let ((_%tl4888348955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7545275453%_
                                                        '1)))
                                                    (_%target4888148952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7545275453%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4888348955%_)
                                                    (_%__match7563075631%_
                                                     _%e4878749270%_
                                                     _%hd4878649274%_
                                                     _%tl4878549277%_
                                                     _%e4879049280%_
                                                     _%hd4878949284%_
                                                     _%tl4878849287%_
                                                     _%e4879349290%_
                                                     _%hd4879249294%_
                                                     _%tl4879149297%_
                                                     _%e4879649300%_
                                                     _%hd4879549304%_
                                                     _%tl4879449307%_
                                                     _%e4888048942%_
                                                     _%hd4887948946%_
                                                     _%tl4887848949%_
                                                     _%__splice7545275453%_
                                                     _%target4888148952%_
                                                     _%tl4888348955%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4878048895%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4878048895%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4878048895%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4878048895%_)))
                            (let () (declare (not safe)) (_%g4878048895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4878048895%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4878048895%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4878048895%_)))))
                            (let () (declare (not safe)) (_%g4878048895%_)))))
                    (let () (declare (not safe)) (_%g4878048895%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx49810%_)
        (let* ((_%__stx7563375634%_ _%stx49810%_)
               (_%g4981549875%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7563375634%_))))
          (let ((_%__kont7563675637%_
                 (lambda (_%L50452%_ _%L50454%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L50454%_ '()))
                               (foldr (lambda (_%g5047050473%_ _%g5047150476%_)
                                        (cons _%g5047050473%_ _%g5047150476%_))
                                      '()
                                      _%L50452%_)))))
                (_%__kont7564075641%_
                 (lambda (_%L50023%_ _%L50025%_)
                   (if (let ()
                         (declare (not safe))
                         (|gerbil/core/contract~Using[1]#dotted-identifier?|
                          _%L50025%_))
                       (let* ((_%g5004550052%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                  _%stx49810%_
                                  _%L50025%_)))
                              (_%E5004750058%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5004550052%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5004850371%_
                               (lambda (_%parts50062%_ _%var50064%_)
                                 (let ((_%$e50066%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50064%_))))
                                   (if _%$e50066%_
                                       ((lambda (_%te50070%_)
                                          (let _%loop50073%_ ((_%parts50076%_
                                                               _%parts50062%_)
                                                              (_%type50078%_
                                                               (##direct-structure-ref
                                                                _%te50070%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50079%_
                                                               _%var50064%_)
                                                              (_%nil-check?50080%_
                                                               '#f))
                                            (let* ((_%parts5008150089%_
                                                    _%parts50076%_)
                                                   (_%else5008350150%_
                                                    (lambda ()
                                                      (let* ((_%g5010150109%_
                                                              (lambda (_%g5010250105%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5010250105%_)))
                     (_%g5010050146%_
                      (lambda (_%g5010250113%_)
                        ((lambda (_%L50116%_)
                           (let ()
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons _%L50116%_
                                         (foldr (lambda (_%g5013750140%_
                                                         _%g5013850143%_)
                                                  (cons _%g5013750140%_
                                                        _%g5013850143%_))
                                                '()
                                                _%L50023%_)))))
                         _%g5010250113%_))))
                (_%g5010050146%_ _%object50079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5008550345%_
                                                    (lambda (_%rest50154%_
                                                             _%part50156%_)
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (not _%nil-check?50080%_))
                       (let ((__tmp80151 (symbol->string _%part50156%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp80151)))
                  (let ()
                    (let ((_%str50160%_ (symbol->string _%part50156%_)))
                      (_%loop50073%_
                       (cons (let ((__tmp80152
                                    (substring
                                     _%str50160%_
                                     '1
                                     (string-length _%str50160%_))))
                               (declare (not safe))
                               (##string->symbol __tmp80152))
                             _%rest50154%_)
                       _%type50078%_
                       _%object50079%_
                       '#t)))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50078%_))
                      (let ()
                        (let* ((_%g5016550180%_
                                (lambda (_%g5016650176%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5016650176%_)))
                               (_%g5016450257%_
                                (lambda (_%g5016650184%_)
                                  (if (gx#stx-pair? _%g5016650184%_)
                                      (let ((_%e5017150187%_
                                             (gx#syntax-e _%g5016650184%_)))
                                        (let ((_%hd5017050191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5017150187%_)))
                                              (_%tl5016950194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5017150187%_))))
                                          (if (gx#stx-pair? _%tl5016950194%_)
                                              (let ((_%e5017450197%_
                                                     (gx#syntax-e
                                                      _%tl5016950194%_)))
                                                (let ((_%hd5017350201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5017450197%_)))
                                                      (_%tl5017250204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5017450197%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5017250204%_)
                                                      ((lambda (_%L50207%_
                                                                _%L50209%_)
                                                         (let ()
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (null? _%rest50154%_))
                       (let ()
                         (if _%nil-check?50080%_
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons (cons _%L50207%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'check-nil!)
                                                           (cons _%L50209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (foldr (lambda (_%g5022850231%_
                                                         _%g5022950234%_)
                                                  (cons _%g5022850231%_
                                                        _%g5022950234%_))
                                                '()
                                                _%L50023%_)))
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons (cons _%L50207%_
                                               (cons _%L50209%_ '()))
                                         (foldr (lambda (_%g5023650239%_
                                                         _%g5023750242%_)
                                                  (cons _%g5023650239%_
                                                        _%g5023750242%_))
                                                '()
                                                _%L50023%_)))))
                       (let ((_%$e50245%_
                              (let ()
                                (declare (not safe))
                                (gerbil/core/mop~MOP-2#!class-slot-type
                                 _%type50078%_
                                 _%part50156%_))))
                         (if _%$e50245%_
                             ((lambda (_%type50249%_)
                                (let ((_%type50252%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx49810%_
                                          _%type50249%_))))
                                  (if _%nil-check?50080%_
                                      (_%loop50073%_
                                       _%rest50154%_
                                       _%type50252%_
                                       (cons _%L50207%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'check-nil!)
                                                         (cons _%L50209%_ '()))
                                                   '()))
                                       '#f)
                                      (_%loop50073%_
                                       _%rest50154%_
                                       _%type50252%_
                                       (cons _%L50207%_ (cons _%L50209%_ '()))
                                       '#f))))
                              _%$e50245%_)
                             (let ()
                               (gx#raise-syntax-error
                                '#f
                                '"unresolved dotted reference; unknown type for slot"
                                _%stx49810%_
                                _%L50025%_
                                _%part50156%_)))))))
               _%hd5017350201%_
               _%hd5017050191%_)
              (_%g5016550180%_ _%g5016650184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5016550180%_
                                               _%g5016650184%_))))
                                      (_%g5016550180%_ _%g5016650184%_)))))
                          (_%g5016450257%_
                           (list _%object50079%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                    _%stx49810%_
                                    _%type50078%_
                                    _%part50156%_))))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50078%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest50154%_))
                                (let* ((_%g5026350278%_
                                        (lambda (_%g5026450274%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g5026450274%_)))
                                       (_%g5026250339%_
                                        (lambda (_%g5026450282%_)
                                          (if (gx#stx-pair? _%g5026450282%_)
                                              (let ((_%e5026950285%_
                                                     (gx#syntax-e
                                                      _%g5026450282%_)))
                                                (let ((_%hd5026850289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5026950285%_)))
                                                      (_%tl5026750292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5026950285%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5026750292%_)
                                                      (let ((_%e5027250295%_
                                                             (gx#syntax-e
                                                              _%tl5026750292%_)))
                                                        (let ((_%hd5027150299%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5027250295%_)))
                      (_%tl5027050302%_
                       (let () (declare (not safe)) (##cdr _%e5027250295%_))))
                  (if (gx#stx-null? _%tl5027050302%_)
                      ((lambda (_%L50305%_ _%L50307%_)
                         (let ()
                           (if _%nil-check?50080%_
                               (cons (gx#datum->syntax '#f '%%app)
                                     (cons (cons (gx#datum->syntax '#f '%%ref)
                                                 (cons _%L50305%_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'check-nil!)
                                                       (cons _%L50307%_ '()))
                                                 (foldr (lambda (_%g5032250325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5032350328%_)
                  (cons _%g5032250325%_ _%g5032350328%_))
                '()
                _%L50023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons (gx#datum->syntax '#f '%%app)
                                     (cons (cons (gx#datum->syntax '#f '%%ref)
                                                 (cons _%L50305%_ '()))
                                           (cons _%L50307%_
                                                 (foldr (lambda (_%g5033050333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5033150336%_)
                  (cons _%g5033050333%_ _%g5033150336%_))
                '()
                _%L50023%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       _%hd5027150299%_
                       _%hd5026850289%_)
                      (_%g5026350278%_ _%g5026450282%_))))
              (_%g5026350278%_ _%g5026450282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5026350278%_
                                               _%g5026450282%_)))))
                                  (_%g5026250339%_
                                   (list _%object50079%_
                                         (gx#syntax-local-introduce
                                          (make-symbol
                                           (if (##direct-structure-ref
                                                _%te50070%_
                                                '3
                                                gerbil/core/contract~TypeEnv#type-env::t
                                                '#f)
                                               '"&"
                                               '"")
                                           (let ((__obj79971 _%type50078%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj79971
                                                    'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj79971
                                                    '1
                                                    '#f
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/contract~InterfaceInfo#interface-info::t
                                                  __obj79971
                                                  'name)))
                                           '"-"
                                           _%part50156%_)))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"illegal dotted reference; interface has no slots"
                                 _%stx49810%_
                                 _%L50025%_
                                 _%part50156%_)))
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"unexpected type"
                             _%stx49810%_
                             _%type50078%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5008150089%_))
                                                  (let ((_%hd5008650349%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5008150089%_)))
                                                        (_%tl5008750352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5008150089%_))))
                                                    (let* ((_%part50355%_
                                                            _%hd5008650349%_)
                                                           (_%rest50358%_
                                                            _%tl5008750352%_))
                                                      (_%K5008550345%_
                                                       _%rest50358%_
                                                       _%part50355%_)))
                                                  (_%else5008350150%_)))))
                                        _%$e50066%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f '%%app)
                                               (cons _%L50025%_
                                                     (foldr (lambda (_%g5036250365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5036350368%_)
                      (cons _%g5036250365%_ _%g5036350368%_))
                    '()
                    _%L50023%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5004550052%_))
                             (let ((_%hd5004950375%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5004550052%_)))
                                   (_%tl5005050378%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5004550052%_))))
                               (let* ((_%var50381%_ _%hd5004950375%_)
                                      (_%parts50384%_ _%tl5005050378%_))
                                 (_%K5004850371%_
                                  _%parts50384%_
                                  _%var50381%_)))
                             (_%E5004750058%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50025%_
                                   (foldr (lambda (_%g5038650389%_
                                                   _%g5038750392%_)
                                            (cons _%g5038650389%_
                                                  _%g5038750392%_))
                                          '()
                                          _%L50023%_))))))
                (_%__kont7564475645%_
                 (lambda (_%L49922%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g4993749940%_ _%g4993849943%_)
                                  (cons _%g4993749940%_ _%g4993849943%_))
                                '()
                                _%L49922%_)))))
            (let* ((_%__match7572075721%_
                    (lambda (_%e4986049882%_
                             _%hd4985949886%_
                             _%tl4985849889%_
                             _%__splice7564675647%_
                             _%target4986149892%_
                             _%tl4986349895%_)
                      (letrec ((_%loop4986449898%_
                                (lambda (_%hd4986249902%_ _%arg4986849905%_)
                                  (if (gx#stx-pair? _%hd4986249902%_)
                                      (let ((_%e4986549908%_
                                             (gx#syntax-e _%hd4986249902%_)))
                                        (let ((_%lp-tl4986749915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4986549908%_)))
                                              (_%lp-hd4986649912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4986549908%_))))
                                          (_%loop4986449898%_
                                           _%lp-tl4986749915%_
                                           (cons _%lp-hd4986649912%_
                                                 _%arg4986849905%_))))
                                      (let ((_%arg4986949918%_
                                             (reverse _%arg4986849905%_)))
                                        (_%__kont7564475645%_
                                         _%arg4986949918%_))))))
                        (_%loop4986449898%_ _%target4986149892%_ '()))))
                   (_%__match7570675707%_
                    (lambda (_%e4983849953%_
                             _%hd4983749957%_
                             _%tl4983649960%_
                             _%e4984149963%_
                             _%hd4984049967%_
                             _%tl4983949970%_
                             _%e4984449973%_
                             _%hd4984349977%_
                             _%tl4984249980%_
                             _%e4984749983%_
                             _%hd4984649987%_
                             _%tl4984549990%_
                             _%__splice7564275643%_
                             _%target4984849993%_
                             _%tl4985049996%_)
                      (letrec ((_%loop4985149999%_
                                (lambda (_%hd4984950003%_ _%rand4985550006%_)
                                  (if (gx#stx-pair? _%hd4984950003%_)
                                      (let ((_%e4985250009%_
                                             (gx#syntax-e _%hd4984950003%_)))
                                        (let ((_%lp-tl4985450016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4985250009%_)))
                                              (_%lp-hd4985350013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4985250009%_))))
                                          (_%loop4985149999%_
                                           _%lp-tl4985450016%_
                                           (cons _%lp-hd4985350013%_
                                                 _%rand4985550006%_))))
                                      (let ((_%rand4985650019%_
                                             (reverse _%rand4985550006%_)))
                                        (_%__kont7564075641%_
                                         _%rand4985650019%_
                                         _%hd4984649987%_))))))
                        (_%loop4985149999%_ _%target4984849993%_ '()))))
                   (_%__match7568075681%_
                    (lambda (_%e4983849953%_
                             _%hd4983749957%_
                             _%tl4983649960%_
                             _%e4984149963%_
                             _%hd4984049967%_
                             _%tl4983949970%_)
                      (if (gx#stx-pair? _%hd4984049967%_)
                          (let ((_%e4984449973%_
                                 (gx#syntax-e _%hd4984049967%_)))
                            (let ((_%tl4984249980%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4984449973%_)))
                                  (_%hd4984349977%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4984449973%_))))
                              (if (gx#identifier? _%hd4984349977%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80153_|
                                       _%hd4984349977%_)
                                      (if (gx#stx-pair? _%tl4984249980%_)
                                          (let ((_%e4984749983%_
                                                 (gx#syntax-e
                                                  _%tl4984249980%_)))
                                            (let ((_%tl4984549990%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4984749983%_)))
                                                  (_%hd4984649987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4984749983%_))))
                                              (if (gx#stx-null?
                                                   _%tl4984549990%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4983949970%_)
                                                      (let ((_%__splice7564275643%_
                                                             (gx#syntax-split-splice
                                                              _%tl4983949970%_
                                                              '0)))
                                                        (let ((_%tl4985049996%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7564275643%_ '1)))
                      (_%target4984849993%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7564275643%_ '0))))
                  (if (gx#stx-null? _%tl4985049996%_)
                      (_%__match7570675707%_
                       _%e4983849953%_
                       _%hd4983749957%_
                       _%tl4983649960%_
                       _%e4984149963%_
                       _%hd4984049967%_
                       _%tl4983949970%_
                       _%e4984449973%_
                       _%hd4984349977%_
                       _%tl4984249980%_
                       _%e4984749983%_
                       _%hd4984649987%_
                       _%tl4984549990%_
                       _%__splice7564275643%_
                       _%target4984849993%_
                       _%tl4985049996%_)
                      (if (gx#stx-pair/null? _%tl4983649960%_)
                          (let ((_%__splice7564675647%_
                                 (gx#syntax-split-splice _%tl4983649960%_ '0)))
                            (let ((_%tl4986349895%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7564675647%_ '1)))
                                  (_%target4986149892%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7564675647%_
                                      '0))))
                              (if (gx#stx-null? _%tl4986349895%_)
                                  (_%__match7572075721%_
                                   _%e4983849953%_
                                   _%hd4983749957%_
                                   _%tl4983649960%_
                                   _%__splice7564675647%_
                                   _%target4986149892%_
                                   _%tl4986349895%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4981549875%_)))))
                          (let () (declare (not safe)) (_%g4981549875%_))))))
              (if (gx#stx-pair/null? _%tl4983649960%_)
                  (let ((_%__splice7564675647%_
                         (gx#syntax-split-splice _%tl4983649960%_ '0)))
                    (let ((_%tl4986349895%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7564675647%_ '1)))
                          (_%target4986149892%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7564675647%_ '0))))
                      (if (gx#stx-null? _%tl4986349895%_)
                          (_%__match7572075721%_
                           _%e4983849953%_
                           _%hd4983749957%_
                           _%tl4983649960%_
                           _%__splice7564675647%_
                           _%target4986149892%_
                           _%tl4986349895%_)
                          (let () (declare (not safe)) (_%g4981549875%_)))))
                  (let () (declare (not safe)) (_%g4981549875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4983649960%_)
                                                      (let ((_%__splice7564675647%_
                                                             (gx#syntax-split-splice
                                                              _%tl4983649960%_
                                                              '0)))
                                                        (let ((_%tl4986349895%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7564675647%_ '1)))
                      (_%target4986149892%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7564675647%_ '0))))
                  (if (gx#stx-null? _%tl4986349895%_)
                      (_%__match7572075721%_
                       _%e4983849953%_
                       _%hd4983749957%_
                       _%tl4983649960%_
                       _%__splice7564675647%_
                       _%target4986149892%_
                       _%tl4986349895%_)
                      (let () (declare (not safe)) (_%g4981549875%_)))))
              (let () (declare (not safe)) (_%g4981549875%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4983649960%_)
                                              (let ((_%__splice7564675647%_
                                                     (gx#syntax-split-splice
                                                      _%tl4983649960%_
                                                      '0)))
                                                (let ((_%tl4986349895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7564675647%_
                                                          '1)))
                                                      (_%target4986149892%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7564675647%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4986349895%_)
                                                      (_%__match7572075721%_
                                                       _%e4983849953%_
                                                       _%hd4983749957%_
                                                       _%tl4983649960%_
                                                       _%__splice7564675647%_
                                                       _%target4986149892%_
                                                       _%tl4986349895%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4981549875%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4981549875%_))))
                                      (if (gx#stx-pair/null? _%tl4983649960%_)
                                          (let ((_%__splice7564675647%_
                                                 (gx#syntax-split-splice
                                                  _%tl4983649960%_
                                                  '0)))
                                            (let ((_%tl4986349895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7564675647%_
                                                      '1)))
                                                  (_%target4986149892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7564675647%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4986349895%_)
                                                  (_%__match7572075721%_
                                                   _%e4983849953%_
                                                   _%hd4983749957%_
                                                   _%tl4983649960%_
                                                   _%__splice7564675647%_
                                                   _%target4986149892%_
                                                   _%tl4986349895%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4981549875%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4981549875%_))))
                                  (if (gx#stx-pair/null? _%tl4983649960%_)
                                      (let ((_%__splice7564675647%_
                                             (gx#syntax-split-splice
                                              _%tl4983649960%_
                                              '0)))
                                        (let ((_%tl4986349895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7564675647%_
                                                  '1)))
                                              (_%target4986149892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7564675647%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4986349895%_)
                                              (_%__match7572075721%_
                                               _%e4983849953%_
                                               _%hd4983749957%_
                                               _%tl4983649960%_
                                               _%__splice7564675647%_
                                               _%target4986149892%_
                                               _%tl4986349895%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4981549875%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4981549875%_))))))
                          (if (gx#stx-pair/null? _%tl4983649960%_)
                              (let ((_%__splice7564675647%_
                                     (gx#syntax-split-splice
                                      _%tl4983649960%_
                                      '0)))
                                (let ((_%tl4986349895%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7564675647%_
                                          '1)))
                                      (_%target4986149892%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7564675647%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4986349895%_)
                                      (_%__match7572075721%_
                                       _%e4983849953%_
                                       _%hd4983749957%_
                                       _%tl4983649960%_
                                       _%__splice7564675647%_
                                       _%target4986149892%_
                                       _%tl4986349895%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4981549875%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4981549875%_))))))
                   (_%__match7566875669%_
                    (lambda (_%e4982150402%_
                             _%hd4982050406%_
                             _%tl4981950409%_
                             _%e4982450412%_
                             _%hd4982350416%_
                             _%tl4982250419%_
                             _%__splice7563875639%_
                             _%target4982550422%_
                             _%tl4982750425%_)
                      (letrec ((_%loop4982850428%_
                                (lambda (_%hd4982650432%_ _%rand4983250435%_)
                                  (if (gx#stx-pair? _%hd4982650432%_)
                                      (let ((_%e4982950438%_
                                             (gx#syntax-e _%hd4982650432%_)))
                                        (let ((_%lp-tl4983150445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4982950438%_)))
                                              (_%lp-hd4983050442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4982950438%_))))
                                          (_%loop4982850428%_
                                           _%lp-tl4983150445%_
                                           (cons _%lp-hd4983050442%_
                                                 _%rand4983250435%_))))
                                      (let ((_%rand4983350448%_
                                             (reverse _%rand4983250435%_)))
                                        (let ((_%L50452%_ _%rand4983350448%_)
                                              (_%L50454%_ _%hd4982350416%_))
                                          (if (gx#identifier? _%L50454%_)
                                              (_%__kont7563675637%_
                                               _%L50452%_
                                               _%L50454%_)
                                              (_%__match7568075681%_
                                               _%e4982150402%_
                                               _%hd4982050406%_
                                               _%tl4981950409%_
                                               _%e4982450412%_
                                               _%hd4982350416%_
                                               _%tl4982250419%_))))))))
                        (_%loop4982850428%_ _%target4982550422%_ '())))))
              (if (gx#stx-pair? _%__stx7563375634%_)
                  (let ((_%e4982150402%_ (gx#syntax-e _%__stx7563375634%_)))
                    (let ((_%tl4981950409%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4982150402%_)))
                          (_%hd4982050406%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4982150402%_))))
                      (if (gx#stx-pair? _%tl4981950409%_)
                          (let ((_%e4982450412%_
                                 (gx#syntax-e _%tl4981950409%_)))
                            (let ((_%tl4982250419%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4982450412%_)))
                                  (_%hd4982350416%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4982450412%_))))
                              (if (gx#stx-pair/null? _%tl4982250419%_)
                                  (let ((_%__splice7563875639%_
                                         (gx#syntax-split-splice
                                          _%tl4982250419%_
                                          '0)))
                                    (let ((_%tl4982750425%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7563875639%_
                                              '1)))
                                          (_%target4982550422%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7563875639%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4982750425%_)
                                          (_%__match7566875669%_
                                           _%e4982150402%_
                                           _%hd4982050406%_
                                           _%tl4981950409%_
                                           _%e4982450412%_
                                           _%hd4982350416%_
                                           _%tl4982250419%_
                                           _%__splice7563875639%_
                                           _%target4982550422%_
                                           _%tl4982750425%_)
                                          (if (gx#stx-pair? _%hd4982350416%_)
                                              (let ((_%e4984449973%_
                                                     (gx#syntax-e
                                                      _%hd4982350416%_)))
                                                (let ((_%tl4984249980%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4984449973%_)))
                                                      (_%hd4984349977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4984449973%_))))
                                                  (if (gx#identifier?
                                                       _%hd4984349977%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80153_|
                                                           _%hd4984349977%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4984249980%_)
                                                              (let ((_%e4984749983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4984249980%_)))
                        (let ((_%tl4984549990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4984749983%_)))
                              (_%hd4984649987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4984749983%_))))
                          (if (gx#stx-pair/null? _%tl4981950409%_)
                              (let ((_%__splice7564675647%_
                                     (gx#syntax-split-splice
                                      _%tl4981950409%_
                                      '0)))
                                (let ((_%tl4986349895%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7564675647%_
                                          '1)))
                                      (_%target4986149892%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7564675647%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4986349895%_)
                                      (_%__match7572075721%_
                                       _%e4982150402%_
                                       _%hd4982050406%_
                                       _%tl4981950409%_
                                       _%__splice7564675647%_
                                       _%target4986149892%_
                                       _%tl4986349895%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4981549875%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4981549875%_)))))
                      (if (gx#stx-pair/null? _%tl4981950409%_)
                          (let ((_%__splice7564675647%_
                                 (gx#syntax-split-splice _%tl4981950409%_ '0)))
                            (let ((_%tl4986349895%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7564675647%_ '1)))
                                  (_%target4986149892%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7564675647%_
                                      '0))))
                              (if (gx#stx-null? _%tl4986349895%_)
                                  (_%__match7572075721%_
                                   _%e4982150402%_
                                   _%hd4982050406%_
                                   _%tl4981950409%_
                                   _%__splice7564675647%_
                                   _%target4986149892%_
                                   _%tl4986349895%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4981549875%_)))))
                          (let () (declare (not safe)) (_%g4981549875%_))))
                  (if (gx#stx-pair/null? _%tl4981950409%_)
                      (let ((_%__splice7564675647%_
                             (gx#syntax-split-splice _%tl4981950409%_ '0)))
                        (let ((_%tl4986349895%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7564675647%_ '1)))
                              (_%target4986149892%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7564675647%_ '0))))
                          (if (gx#stx-null? _%tl4986349895%_)
                              (_%__match7572075721%_
                               _%e4982150402%_
                               _%hd4982050406%_
                               _%tl4981950409%_
                               _%__splice7564675647%_
                               _%target4986149892%_
                               _%tl4986349895%_)
                              (let ()
                                (declare (not safe))
                                (_%g4981549875%_)))))
                      (let () (declare (not safe)) (_%g4981549875%_))))
              (if (gx#stx-pair/null? _%tl4981950409%_)
                  (let ((_%__splice7564675647%_
                         (gx#syntax-split-splice _%tl4981950409%_ '0)))
                    (let ((_%tl4986349895%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7564675647%_ '1)))
                          (_%target4986149892%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7564675647%_ '0))))
                      (if (gx#stx-null? _%tl4986349895%_)
                          (_%__match7572075721%_
                           _%e4982150402%_
                           _%hd4982050406%_
                           _%tl4981950409%_
                           _%__splice7564675647%_
                           _%target4986149892%_
                           _%tl4986349895%_)
                          (let () (declare (not safe)) (_%g4981549875%_)))))
                  (let () (declare (not safe)) (_%g4981549875%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4981950409%_)
                                                  (let ((_%__splice7564675647%_
                                                         (gx#syntax-split-splice
                                                          _%tl4981950409%_
                                                          '0)))
                                                    (let ((_%tl4986349895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7564675647%_
                                                              '1)))
                                                          (_%target4986149892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7564675647%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4986349895%_)
                                                          (_%__match7572075721%_
                                                           _%e4982150402%_
                                                           _%hd4982050406%_
                                                           _%tl4981950409%_
                                                           _%__splice7564675647%_
                                                           _%target4986149892%_
                                                           _%tl4986349895%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4981549875%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4981549875%_)))))))
                                  (if (gx#stx-pair? _%hd4982350416%_)
                                      (let ((_%e4984449973%_
                                             (gx#syntax-e _%hd4982350416%_)))
                                        (let ((_%tl4984249980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4984449973%_)))
                                              (_%hd4984349977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4984449973%_))))
                                          (if (gx#identifier? _%hd4984349977%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80153_|
                                                   _%hd4984349977%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4984249980%_)
                                                      (let ((_%e4984749983%_
                                                             (gx#syntax-e
                                                              _%tl4984249980%_)))
                                                        (let ((_%tl4984549990%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4984749983%_)))
                      (_%hd4984649987%_
                       (let () (declare (not safe)) (##car _%e4984749983%_))))
                  (if (gx#stx-pair/null? _%tl4981950409%_)
                      (let ((_%__splice7564675647%_
                             (gx#syntax-split-splice _%tl4981950409%_ '0)))
                        (let ((_%tl4986349895%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7564675647%_ '1)))
                              (_%target4986149892%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7564675647%_ '0))))
                          (if (gx#stx-null? _%tl4986349895%_)
                              (_%__match7572075721%_
                               _%e4982150402%_
                               _%hd4982050406%_
                               _%tl4981950409%_
                               _%__splice7564675647%_
                               _%target4986149892%_
                               _%tl4986349895%_)
                              (let ()
                                (declare (not safe))
                                (_%g4981549875%_)))))
                      (let () (declare (not safe)) (_%g4981549875%_)))))
              (if (gx#stx-pair/null? _%tl4981950409%_)
                  (let ((_%__splice7564675647%_
                         (gx#syntax-split-splice _%tl4981950409%_ '0)))
                    (let ((_%tl4986349895%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7564675647%_ '1)))
                          (_%target4986149892%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7564675647%_ '0))))
                      (if (gx#stx-null? _%tl4986349895%_)
                          (_%__match7572075721%_
                           _%e4982150402%_
                           _%hd4982050406%_
                           _%tl4981950409%_
                           _%__splice7564675647%_
                           _%target4986149892%_
                           _%tl4986349895%_)
                          (let () (declare (not safe)) (_%g4981549875%_)))))
                  (let () (declare (not safe)) (_%g4981549875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4981950409%_)
                                                      (let ((_%__splice7564675647%_
                                                             (gx#syntax-split-splice
                                                              _%tl4981950409%_
                                                              '0)))
                                                        (let ((_%tl4986349895%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7564675647%_ '1)))
                      (_%target4986149892%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7564675647%_ '0))))
                  (if (gx#stx-null? _%tl4986349895%_)
                      (_%__match7572075721%_
                       _%e4982150402%_
                       _%hd4982050406%_
                       _%tl4981950409%_
                       _%__splice7564675647%_
                       _%target4986149892%_
                       _%tl4986349895%_)
                      (let () (declare (not safe)) (_%g4981549875%_)))))
              (let () (declare (not safe)) (_%g4981549875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4981950409%_)
                                                  (let ((_%__splice7564675647%_
                                                         (gx#syntax-split-splice
                                                          _%tl4981950409%_
                                                          '0)))
                                                    (let ((_%tl4986349895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7564675647%_
                                                              '1)))
                                                          (_%target4986149892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7564675647%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4986349895%_)
                                                          (_%__match7572075721%_
                                                           _%e4982150402%_
                                                           _%hd4982050406%_
                                                           _%tl4981950409%_
                                                           _%__splice7564675647%_
                                                           _%target4986149892%_
                                                           _%tl4986349895%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4981549875%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4981549875%_))))))
                                      (if (gx#stx-pair/null? _%tl4981950409%_)
                                          (let ((_%__splice7564675647%_
                                                 (gx#syntax-split-splice
                                                  _%tl4981950409%_
                                                  '0)))
                                            (let ((_%tl4986349895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7564675647%_
                                                      '1)))
                                                  (_%target4986149892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7564675647%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4986349895%_)
                                                  (_%__match7572075721%_
                                                   _%e4982150402%_
                                                   _%hd4982050406%_
                                                   _%tl4981950409%_
                                                   _%__splice7564675647%_
                                                   _%target4986149892%_
                                                   _%tl4986349895%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4981549875%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4981549875%_)))))))
                          (if (gx#stx-pair/null? _%tl4981950409%_)
                              (let ((_%__splice7564675647%_
                                     (gx#syntax-split-splice
                                      _%tl4981950409%_
                                      '0)))
                                (let ((_%tl4986349895%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7564675647%_
                                          '1)))
                                      (_%target4986149892%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7564675647%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4986349895%_)
                                      (_%__match7572075721%_
                                       _%e4982150402%_
                                       _%hd4982050406%_
                                       _%tl4981950409%_
                                       _%__splice7564675647%_
                                       _%target4986149892%_
                                       _%tl4986349895%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4981549875%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4981549875%_))))))
                  (let () (declare (not safe)) (_%g4981549875%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx50486%_)
        (let* ((_%__stx7572375724%_ _%stx50486%_)
               (_%g5049050511%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7572375724%_))))
          (let ((_%__kont7572675727%_
                 (lambda (_%L50579%_)
                   (let* ((_%g5059150598%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx50486%_
                              _%L50579%_)))
                          (_%E5059350604%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5059150598%_
                                    '([var . parts]))
                             (void)))
                          (_%K5059450820%_
                           (lambda (_%parts50608%_ _%var50610%_)
                             (let ((_%$e50612%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var50610%_))))
                               (if _%$e50612%_
                                   ((lambda (_%te50616%_)
                                      (let _%loop50619%_ ((_%parts50622%_
                                                           _%parts50608%_)
                                                          (_%type50624%_
                                                           (##direct-structure-ref
                                                            _%te50616%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object50625%_
                                                           _%var50610%_)
                                                          (_%nil-check?50626%_
                                                           '#f))
                                        (let* ((_%parts5062750635%_
                                                _%parts50622%_)
                                               (_%else5062950647%_
                                                (lambda () _%object50625%_))
                                               (_%K5063150802%_
                                                (lambda (_%rest50651%_
                                                         _%part50653%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?50626%_))
                                                           (let ((__tmp80154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part50653%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80154)))
              (let ()
                (let ((_%str50657%_ (symbol->string _%part50653%_)))
                  (_%loop50619%_
                   (cons (let ((__tmp80155
                                (substring
                                 _%str50657%_
                                 '1
                                 (string-length _%str50657%_))))
                           (declare (not safe))
                           (##string->symbol __tmp80155))
                         _%rest50651%_)
                   _%type50624%_
                   _%object50625%_
                   '#t)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type50624%_))
                  (let ()
                    (let* ((_%g5066250677%_
                            (lambda (_%g5066350673%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5066350673%_)))
                           (_%g5066150794%_
                            (lambda (_%g5066350681%_)
                              (if (gx#stx-pair? _%g5066350681%_)
                                  (let ((_%e5066850684%_
                                         (gx#syntax-e _%g5066350681%_)))
                                    (let ((_%hd5066750688%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5066850684%_)))
                                          (_%tl5066650691%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5066850684%_))))
                                      (if (gx#stx-pair? _%tl5066650691%_)
                                          (let ((_%e5067150694%_
                                                 (gx#syntax-e
                                                  _%tl5066650691%_)))
                                            (let ((_%hd5067050698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5067150694%_)))
                                                  (_%tl5066950701%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5067150694%_))))
                                              (if (gx#stx-null?
                                                   _%tl5066950701%_)
                                                  ((lambda (_%L50704%_
                                                            _%L50706%_)
                                                     (let ()
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%rest50651%_))
                                                           (let ()
                                                             (let ((_%$e50736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gerbil/core/mop~MOP-2#!class-slot-type
                               _%type50624%_
                               _%part50653%_))))
                       (if _%$e50736%_
                           ((lambda (_%slot-type50740%_)
                              (let* ((_%g5074350751%_
                                      (lambda (_%g5074450747%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5074450747%_)))
                                     (_%g5074250774%_
                                      (lambda (_%g5074450755%_)
                                        ((lambda (_%L50758%_)
                                           (let ()
                                             (if _%nil-check?50626%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@type)
                           (cons _%L50758%_ '()))
                     (cons (cons _%L50704%_
                                 (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                             (cons _%L50706%_ '()))
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@type)
                           (cons _%L50758%_ '()))
                     (cons (cons _%L50704%_ (cons _%L50706%_ '())) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g5074450755%_))))
                                (_%g5074250774%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                    _%stx50486%_
                                    _%type50624%_)))))
                            _%$e50736%_)
                           (if _%nil-check?50626%_
                               (let ()
                                 (cons _%L50704%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'check-nil!)
                                                   (cons _%L50706%_ '()))
                                             '())))
                               (let ()
                                 (cons _%L50704%_ (cons _%L50706%_ '())))))))
                   (let ((_%$e50782%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#!class-slot-type
                             _%type50624%_
                             _%part50653%_))))
                     (if _%$e50782%_
                         ((lambda (_%type50786%_)
                            (let ((_%type50789%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50486%_
                                      _%type50786%_))))
                              (if _%nil-check?50626%_
                                  (_%loop50619%_
                                   _%rest50651%_
                                   _%type50789%_
                                   (cons _%L50704%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'check-nil!)
                                                     (cons _%L50706%_ '()))
                                               '()))
                                   '#f)
                                  (_%loop50619%_
                                   _%rest50651%_
                                   _%type50789%_
                                   (cons _%L50704%_ (cons _%L50706%_ '()))
                                   '#f))))
                          _%$e50782%_)
                         (let ()
                           (gx#raise-syntax-error
                            '#f
                            '"unresolved dotted reference; unknown type for slot"
                            _%stx50486%_
                            _%L50579%_
                            _%part50653%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd5067050698%_
                                                   _%hd5066750688%_)
                                                  (_%g5066250677%_
                                                   _%g5066350681%_))))
                                          (_%g5066250677%_ _%g5066350681%_))))
                                  (_%g5066250677%_ _%g5066350681%_)))))
                      (_%g5066150794%_
                       (list _%object50625%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50486%_
                                _%type50624%_
                                _%part50653%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type50624%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx50486%_
                         _%type50624%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5062750635%_))
                                              (let ((_%hd5063250806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5062750635%_)))
                                                    (_%tl5063350809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5062750635%_))))
                                                (let* ((_%part50812%_
                                                        _%hd5063250806%_)
                                                       (_%rest50815%_
                                                        _%tl5063350809%_))
                                                  (_%K5063150802%_
                                                   _%rest50815%_
                                                   _%part50812%_)))
                                              (_%else5062950647%_)))))
                                    _%$e50612%_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f '%%ref)
                                           (cons _%L50579%_ '()))))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5059150598%_))
                         (let ((_%hd5059550824%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5059150598%_)))
                               (_%tl5059650827%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5059150598%_))))
                           (let* ((_%var50830%_ _%hd5059550824%_)
                                  (_%parts50833%_ _%tl5059650827%_))
                             (_%K5059450820%_ _%parts50833%_ _%var50830%_)))
                         (_%E5059350604%_)))))
                (_%__kont7572875729%_
                 (lambda (_%L50538%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L50538%_ '())))))
            (let ((_%__match7574475745%_
                   (lambda (_%e5049550559%_
                            _%hd5049450563%_
                            _%tl5049350566%_
                            _%e5049850569%_
                            _%hd5049750573%_
                            _%tl5049650576%_)
                     (let ((_%L50579%_ _%hd5049750573%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L50579%_))
                           (_%__kont7572675727%_ _%L50579%_)
                           (_%__kont7572875729%_ _%hd5049750573%_))))))
              (if (gx#stx-pair? _%__stx7572375724%_)
                  (let ((_%e5049550559%_ (gx#syntax-e _%__stx7572375724%_)))
                    (let ((_%tl5049350566%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5049550559%_)))
                          (_%hd5049450563%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5049550559%_))))
                      (if (gx#stx-pair? _%tl5049350566%_)
                          (let ((_%e5049850569%_
                                 (gx#syntax-e _%tl5049350566%_)))
                            (let ((_%tl5049650576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5049850569%_)))
                                  (_%hd5049750573%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5049850569%_))))
                              (if (gx#stx-null? _%tl5049650576%_)
                                  (_%__match7574475745%_
                                   _%e5049550559%_
                                   _%hd5049450563%_
                                   _%tl5049350566%_
                                   _%e5049850569%_
                                   _%hd5049750573%_
                                   _%tl5049650576%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5049050511%_)))))
                          (let () (declare (not safe)) (_%g5049050511%_)))))
                  (let () (declare (not safe)) (_%g5049050511%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx50840%_)
        (let* ((_%__stx7576175762%_ _%stx50840%_)
               (_%g5084450873%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7576175762%_))))
          (let ((_%__kont7576475765%_
                 (lambda (_%L50965%_ _%L50967%_)
                   (let* ((_%g5098150988%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx50840%_
                              _%L50967%_)))
                          (_%E5098350994%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5098150988%_
                                    '([var . parts]))
                             (void)))
                          (_%K5098451227%_
                           (lambda (_%parts50998%_ _%var51000%_)
                             (let ((_%$e51002%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51000%_))))
                               (if _%$e51002%_
                                   ((lambda (_%te51006%_)
                                      (let _%loop51009%_ ((_%parts51012%_
                                                           _%parts50998%_)
                                                          (_%type51014%_
                                                           (##direct-structure-ref
                                                            _%te51006%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51015%_
                                                           _%var51000%_)
                                                          (_%nil-check?51016%_
                                                           '#f))
                                        (let* ((_%parts5101751024%_
                                                _%parts51012%_)
                                               (_%E5101951030%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5101751024%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5102051209%_
                                                (lambda (_%rest51034%_
                                                         _%part51036%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?51016%_))
                                                           (let ((__tmp80156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51036%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80156)))
              (let ()
                (let ((_%str51040%_ (symbol->string _%part51036%_)))
                  (_%loop51009%_
                   (cons (let ((__tmp80157
                                (substring
                                 _%str51040%_
                                 '1
                                 (string-length _%str51040%_))))
                           (declare (not safe))
                           (##string->symbol __tmp80157))
                         _%rest51034%_)
                   _%type51014%_
                   _%object51015%_
                   '#t)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51014%_))
                  (let ()
                    (if (let () (declare (not safe)) (null? _%rest51034%_))
                        (let ()
                          (let* ((_%g5104751062%_
                                  (lambda (_%g5104851058%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5104851058%_)))
                                 (_%g5104651119%_
                                  (lambda (_%g5104851066%_)
                                    (if (gx#stx-pair? _%g5104851066%_)
                                        (let ((_%e5105351069%_
                                               (gx#syntax-e _%g5104851066%_)))
                                          (let ((_%hd5105251073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5105351069%_)))
                                                (_%tl5105151076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5105351069%_))))
                                            (if (gx#stx-pair? _%tl5105151076%_)
                                                (let ((_%e5105651079%_
                                                       (gx#syntax-e
                                                        _%tl5105151076%_)))
                                                  (let ((_%hd5105551083%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5105651079%_)))
                                                        (_%tl5105451086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5105651079%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5105451086%_)
                                                        ((lambda (_%L51089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L51091%_)
                   (let ()
                     (if _%nil-check?51016%_
                         (cons _%L51089%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51091%_ '()))
                                     (cons _%L50965%_ '())))
                         (cons _%L51089%_
                               (cons _%L51091%_ (cons _%L50965%_ '()))))))
                 _%hd5105551083%_
                 _%hd5105251073%_)
                (_%g5104751062%_ _%g5104851066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5104751062%_
                                                 _%g5104851066%_))))
                                        (_%g5104751062%_ _%g5104851066%_)))))
                            (_%g5104651119%_
                             (list _%object51015%_
                                   (let ((__tmp80158
                                          (if (##direct-structure-ref
                                               _%te51006%_
                                               '3
                                               gerbil/core/contract~TypeEnv#type-env::t
                                               '#f)
                                              (let ((_%$e51123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/mop~MOP-2#!class-slot-type
                                                        _%type51014%_
                                                        _%part51036%_))))
                                                (if _%$e51123%_
                                                    _%$e51123%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#!class-slot-contract
                                                       _%type51014%_
                                                       _%part51036%_))))
                                              '#f)))
                                     (declare (not safe))
                                     (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                      _%stx50840%_
                                      _%type51014%_
                                      _%part51036%_
                                      __tmp80158))))))
                        (let ((_%$e51127%_
                               (let ()
                                 (declare (not safe))
                                 (gerbil/core/mop~MOP-2#!class-slot-type
                                  _%type51014%_
                                  _%part51036%_))))
                          (if _%$e51127%_
                              ((lambda (_%type51131%_)
                                 (let* ((_%type51134%_
                                         (let ()
                                           (declare (not safe))
                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                            _%stx50840%_
                                            _%type51131%_)))
                                        (_%g5113751152%_
                                         (lambda (_%g5113851148%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g5113851148%_)))
                                        (_%g5113651199%_
                                         (lambda (_%g5113851156%_)
                                           (if (gx#stx-pair? _%g5113851156%_)
                                               (let ((_%e5114351159%_
                                                      (gx#syntax-e
                                                       _%g5113851156%_)))
                                                 (let ((_%hd5114251163%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5114351159%_)))
                                                       (_%tl5114151166%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5114351159%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl5114151166%_)
                                                       (let ((_%e5114651169%_
                                                              (gx#syntax-e
                                                               _%tl5114151166%_)))
                                                         (let ((_%hd5114551173%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5114651169%_)))
                       (_%tl5114451176%_
                        (let () (declare (not safe)) (##cdr _%e5114651169%_))))
                   (if (gx#stx-null? _%tl5114451176%_)
                       ((lambda (_%L51179%_ _%L51181%_)
                          (let ()
                            (if _%nil-check?51016%_
                                (_%loop51009%_
                                 _%rest51034%_
                                 _%type51134%_
                                 (cons _%L51179%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'check-nil!)
                                                   (cons _%L51181%_ '()))
                                             '()))
                                 '#f)
                                (_%loop51009%_
                                 _%rest51034%_
                                 _%type51134%_
                                 (cons _%L51179%_ (cons _%L51181%_ '()))
                                 '#f))))
                        _%hd5114551173%_
                        _%hd5114251163%_)
                       (_%g5113751152%_ _%g5113851156%_))))
               (_%g5113751152%_ _%g5113851156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5113751152%_
                                                _%g5113851156%_)))))
                                   (_%g5113651199%_
                                    (list _%object51015%_
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                             _%stx50840%_
                                             _%type51134%_
                                             _%part51036%_))))))
                               _%$e51127%_)
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"unresolved dotted reference; unknown type for slot"
                                 _%stx50840%_
                                 _%L50967%_
                                 _%part51036%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51014%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx50840%_
                         _%type51014%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5101751024%_))
                                              (let ((_%hd5102151213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5101751024%_)))
                                                    (_%tl5102251216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5101751024%_))))
                                                (let* ((_%part51219%_
                                                        _%hd5102151213%_)
                                                       (_%rest51222%_
                                                        _%tl5102251216%_))
                                                  (_%K5102051209%_
                                                   _%rest51222%_
                                                   _%part51219%_)))
                                              (_%E5101951030%_)))))
                                    _%$e51002%_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'set!)
                                           (cons _%L50967%_
                                                 (cons _%L50965%_ '())))))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5098150988%_))
                         (let ((_%hd5098551231%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5098150988%_)))
                               (_%tl5098651234%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5098150988%_))))
                           (let* ((_%var51237%_ _%hd5098551231%_)
                                  (_%parts51240%_ _%tl5098651234%_))
                             (_%K5098451227%_ _%parts51240%_ _%var51237%_)))
                         (_%E5098350994%_)))))
                (_%__kont7576675767%_
                 (lambda (_%L50910%_ _%L50912%_)
                   (cons (gx#datum->syntax '#f 'set!)
                         (cons _%L50912%_ (cons _%L50910%_ '()))))))
            (let ((_%__match7578875789%_
                   (lambda (_%e5085050935%_
                            _%hd5084950939%_
                            _%tl5084850942%_
                            _%e5085350945%_
                            _%hd5085250949%_
                            _%tl5085150952%_
                            _%e5085650955%_
                            _%hd5085550959%_
                            _%tl5085450962%_)
                     (let ((_%L50965%_ _%hd5085550959%_)
                           (_%L50967%_ _%hd5085250949%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L50967%_))
                           (_%__kont7576475765%_ _%L50965%_ _%L50967%_)
                           (_%__kont7576675767%_
                            _%hd5085550959%_
                            _%hd5085250949%_))))))
              (if (gx#stx-pair? _%__stx7576175762%_)
                  (let ((_%e5085050935%_ (gx#syntax-e _%__stx7576175762%_)))
                    (let ((_%tl5084850942%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5085050935%_)))
                          (_%hd5084950939%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5085050935%_))))
                      (if (gx#stx-pair? _%tl5084850942%_)
                          (let ((_%e5085350945%_
                                 (gx#syntax-e _%tl5084850942%_)))
                            (let ((_%tl5085150952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5085350945%_)))
                                  (_%hd5085250949%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5085350945%_))))
                              (if (gx#stx-pair? _%tl5085150952%_)
                                  (let ((_%e5085650955%_
                                         (gx#syntax-e _%tl5085150952%_)))
                                    (let ((_%tl5085450962%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5085650955%_)))
                                          (_%hd5085550959%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5085650955%_))))
                                      (if (gx#stx-null? _%tl5085450962%_)
                                          (_%__match7578875789%_
                                           _%e5085050935%_
                                           _%hd5084950939%_
                                           _%tl5084850942%_
                                           _%e5085350945%_
                                           _%hd5085250949%_
                                           _%tl5085150952%_
                                           _%e5085650955%_
                                           _%hd5085550959%_
                                           _%tl5085450962%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5084450873%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5084450873%_)))))
                          (let () (declare (not safe)) (_%g5084450873%_)))))
                  (let () (declare (not safe)) (_%g5084450873%_))))))))))
