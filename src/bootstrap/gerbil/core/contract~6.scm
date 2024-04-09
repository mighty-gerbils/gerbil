(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g80705_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80706_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80707_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80712_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80714_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80718_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80719_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80720_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80721_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80724_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80725_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80726_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80727_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80730_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46590%_)
        (let* ((_%__stx7564275643%_ _%stx46590%_)
               (_%g4659946808%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7564275643%_))))
          (let ((_%__kont7564575646%_
                 (lambda (_%L47714%_
                          _%L47716%_
                          _%L47717%_
                          _%L47718%_
                          _%L47719%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47719%_ (cons _%L47718%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47719%_
                                                       (cons _%L47717%_
                                                             (cons _%L47716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4776247765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4776347768%_)
                  (cons _%g4776247765%_ _%g4776347768%_))
                '()
                _%L47714%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7564975650%_
                 (lambda (_%L47558%_
                          _%L47560%_
                          _%L47561%_
                          _%L47562%_
                          _%L47563%_
                          _%L47564%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47564%_ (cons _%L47563%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47564%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47561%_ (cons _%L47560%_ '())))
                           (foldr (lambda (_%g4760847611%_ _%g4760947614%_)
                                    (cons _%g4760847611%_ _%g4760947614%_))
                                  '()
                                  _%L47558%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7565375654%_
                 (lambda (_%L47375%_ _%L47377%_ _%L47378%_ _%L47379%_)
                   (let ((_%meta47416%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46590%_
                             _%L47377%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47416%_))
                         (let ()
                           (cons (gx#datum->syntax '#f 'with-interface)
                                 (cons (cons _%L47379%_
                                             (cons _%L47378%_
                                                   (cons _%L47377%_ '())))
                                       (foldr (lambda (_%g4742047423%_
                                                       _%g4742147426%_)
                                                (cons _%g4742047423%_
                                                      _%g4742147426%_))
                                              '()
                                              _%L47375%_))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47416%_))
                             (let ()
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%L47379%_
                                                 (cons _%L47378%_
                                                       (cons _%L47377%_ '())))
                                           (foldr (lambda (_%g4743047433%_
                                                           _%g4743147436%_)
                                                    (cons _%g4743047433%_
                                                          _%g4743147436%_))
                                                  '()
                                                  _%L47375%_))))
                             (let ()
                               (gx#raise-syntax-error
                                '#f
                                '"unexpected type; must be a class type or interface"
                                _%stx46590%_
                                _%L47377%_
                                _%meta47416%_)))))))
                (_%__kont7565775658%_
                 (lambda (_%L47253%_ _%L47255%_ _%L47256%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47256%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47255%_ '())))
                               (foldr (lambda (_%g4727947282%_ _%g4728047285%_)
                                        (cons _%g4727947282%_ _%g4728047285%_))
                                      '()
                                      _%L47253%_)))))
                (_%__kont7566175662%_
                 (lambda (_%L47111%_
                          _%L47113%_
                          _%L47114%_
                          _%L47115%_
                          _%L47116%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L47116%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47115%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47116%_
                                                       (cons _%L47114%_
                                                             (cons _%L47113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4715747160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4715847163%_)
                  (cons _%g4715747160%_ _%g4715847163%_))
                '()
                _%L47111%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7566575666%_
                 (lambda (_%L46969%_ _%L46971%_ _%L46972%_ _%L46973%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46973%_ _%L46972%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46971%_
                                                 (foldr (lambda (_%g4699546998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4699647001%_)
                  (cons _%g4699546998%_ _%g4699647001%_))
                '()
                _%L46969%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7566975670%_
                 (lambda (_%L46865%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4688346886%_ _%g4688446889%_)
                                        (cons _%g4688346886%_ _%g4688446889%_))
                                      '()
                                      _%L46865%_))))))
            (let* ((_%__match7597575976%_
                    (lambda (_%e4679046815%_
                             _%hd4678946819%_
                             _%tl4678846822%_
                             _%e4679346825%_
                             _%hd4679246829%_
                             _%tl4679146832%_
                             _%__splice7567175672%_
                             _%target4679446835%_
                             _%tl4679646838%_)
                      (letrec ((_%loop4679746841%_
                                (lambda (_%hd4679546845%_ _%body4680146848%_)
                                  (if (gx#stx-pair? _%hd4679546845%_)
                                      (let ((_%e4679846851%_
                                             (gx#syntax-e _%hd4679546845%_)))
                                        (let ((_%lp-tl4680046858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4679846851%_)))
                                              (_%lp-hd4679946855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4679846851%_))))
                                          (_%loop4679746841%_
                                           _%lp-tl4680046858%_
                                           (cons _%lp-hd4679946855%_
                                                 _%body4680146848%_))))
                                      (let ((_%body4680246861%_
                                             (reverse _%body4680146848%_)))
                                        (_%__kont7566975670%_
                                         _%body4680246861%_))))))
                        (_%loop4679746841%_ _%target4679446835%_ '()))))
                   (_%__match7595375954%_
                    (lambda (_%e4676846899%_
                             _%hd4676746903%_
                             _%tl4676646906%_
                             _%e4677146909%_
                             _%hd4677046913%_
                             _%tl4676946916%_
                             _%e4677446919%_
                             _%hd4677346923%_
                             _%tl4677246926%_
                             _%e4677746929%_
                             _%hd4677646933%_
                             _%tl4677546936%_
                             _%__splice7566775668%_
                             _%target4677846939%_
                             _%tl4678046942%_)
                      (letrec ((_%loop4678146945%_
                                (lambda (_%hd4677946949%_ _%body4678546952%_)
                                  (if (gx#stx-pair? _%hd4677946949%_)
                                      (let ((_%e4678246955%_
                                             (gx#syntax-e _%hd4677946949%_)))
                                        (let ((_%lp-tl4678446962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4678246955%_)))
                                              (_%lp-hd4678346959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4678246955%_))))
                                          (_%loop4678146945%_
                                           _%lp-tl4678446962%_
                                           (cons _%lp-hd4678346959%_
                                                 _%body4678546952%_))))
                                      (let ((_%body4678646965%_
                                             (reverse _%body4678546952%_)))
                                        (let ((_%L46969%_ _%body4678646965%_)
                                              (_%L46971%_ _%tl4677246926%_)
                                              (_%L46972%_ _%tl4677546936%_)
                                              (_%L46973%_ _%hd4677646933%_))
                                          (if (gx#identifier? _%L46973%_)
                                              (_%__kont7566575666%_
                                               _%L46969%_
                                               _%L46971%_
                                               _%L46972%_
                                               _%L46973%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_)))))))))
                        (_%loop4678146945%_ _%target4677846939%_ '()))))
                   (_%__match7593975940%_
                    (lambda (_%e4676846899%_
                             _%hd4676746903%_
                             _%tl4676646906%_
                             _%e4677146909%_
                             _%hd4677046913%_
                             _%tl4676946916%_
                             _%e4677446919%_
                             _%hd4677346923%_
                             _%tl4677246926%_)
                      (if (gx#stx-pair? _%hd4677346923%_)
                          (let ((_%e4677746929%_
                                 (gx#syntax-e _%hd4677346923%_)))
                            (let ((_%tl4677546936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4677746929%_)))
                                  (_%hd4677646933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4677746929%_))))
                              (if (gx#stx-pair/null? _%tl4676946916%_)
                                  (let ((_%__splice7566775668%_
                                         (gx#syntax-split-splice
                                          _%tl4676946916%_
                                          '0)))
                                    (let ((_%tl4678046942%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7566775668%_
                                              '1)))
                                          (_%target4677846939%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7566775668%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4678046942%_)
                                          (_%__match7595375954%_
                                           _%e4676846899%_
                                           _%hd4676746903%_
                                           _%tl4676646906%_
                                           _%e4677146909%_
                                           _%hd4677046913%_
                                           _%tl4676946916%_
                                           _%e4677446919%_
                                           _%hd4677346923%_
                                           _%tl4677246926%_
                                           _%e4677746929%_
                                           _%hd4677646933%_
                                           _%tl4677546936%_
                                           _%__splice7566775668%_
                                           _%target4677846939%_
                                           _%tl4678046942%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                   (_%__match7592175922%_
                    (lambda (_%e4673447011%_
                             _%hd4673347015%_
                             _%tl4673247018%_
                             _%e4673747021%_
                             _%hd4673647025%_
                             _%tl4673547028%_
                             _%e4674047031%_
                             _%hd4673947035%_
                             _%tl4673847038%_
                             _%e4674347041%_
                             _%hd4674247045%_
                             _%tl4674147048%_
                             _%e4674647051%_
                             _%hd4674547055%_
                             _%tl4674447058%_
                             _%e4674947061%_
                             _%hd4674847065%_
                             _%tl4674747068%_
                             _%e4675247071%_
                             _%hd4675147075%_
                             _%tl4675047078%_
                             _%__splice7566375664%_
                             _%target4675347081%_
                             _%tl4675547084%_)
                      (letrec ((_%loop4675647087%_
                                (lambda (_%hd4675447091%_ _%body4676047094%_)
                                  (if (gx#stx-pair? _%hd4675447091%_)
                                      (let ((_%e4675747097%_
                                             (gx#syntax-e _%hd4675447091%_)))
                                        (let ((_%lp-tl4675947104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4675747097%_)))
                                              (_%lp-hd4675847101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4675747097%_))))
                                          (_%loop4675647087%_
                                           _%lp-tl4675947104%_
                                           (cons _%lp-hd4675847101%_
                                                 _%body4676047094%_))))
                                      (let ((_%body4676147107%_
                                             (reverse _%body4676047094%_)))
                                        (let ((_%L47111%_ _%body4676147107%_)
                                              (_%L47113%_ _%hd4675147075%_)
                                              (_%L47114%_ _%hd4674847065%_)
                                              (_%L47115%_ _%hd4674547055%_)
                                              (_%L47116%_ _%hd4673947035%_))
                                          (if (and (gx#identifier? _%L47116%_)
                                                   (gx#identifier? _%L47113%_)
                                                   (gx#identifier? _%L47114%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47114%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47114%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47114%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47114%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7566175662%_
                                               _%L47111%_
                                               _%L47113%_
                                               _%L47114%_
                                               _%L47115%_
                                               _%L47116%_)
                                              (_%__match7593975940%_
                                               _%e4673447011%_
                                               _%hd4673347015%_
                                               _%tl4673247018%_
                                               _%e4673747021%_
                                               _%hd4673647025%_
                                               _%tl4673547028%_
                                               _%e4674047031%_
                                               _%hd4673947035%_
                                               _%tl4673847038%_))))))))
                        (_%loop4675647087%_ _%target4675347081%_ '()))))
                   (_%__match7586575866%_
                    (lambda (_%e4670547173%_
                             _%hd4670447177%_
                             _%tl4670347180%_
                             _%e4670847183%_
                             _%hd4670747187%_
                             _%tl4670647190%_
                             _%e4671147193%_
                             _%hd4671047197%_
                             _%tl4670947200%_
                             _%e4671447203%_
                             _%hd4671347207%_
                             _%tl4671247210%_
                             _%e4671747213%_
                             _%hd4671647217%_
                             _%tl4671547220%_
                             _%__splice7565975660%_
                             _%target4671847223%_
                             _%tl4672047226%_)
                      (letrec ((_%loop4672147229%_
                                (lambda (_%hd4671947233%_ _%body4672547236%_)
                                  (if (gx#stx-pair? _%hd4671947233%_)
                                      (let ((_%e4672247239%_
                                             (gx#syntax-e _%hd4671947233%_)))
                                        (let ((_%lp-tl4672447246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4672247239%_)))
                                              (_%lp-hd4672347243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4672247239%_))))
                                          (_%loop4672147229%_
                                           _%lp-tl4672447246%_
                                           (cons _%lp-hd4672347243%_
                                                 _%body4672547236%_))))
                                      (let ((_%body4672647249%_
                                             (reverse _%body4672547236%_)))
                                        (let ((_%L47253%_ _%body4672647249%_)
                                              (_%L47255%_ _%hd4671647217%_)
                                              (_%L47256%_ _%hd4671047197%_))
                                          (if (gx#identifier? _%L47256%_)
                                              (_%__kont7565775658%_
                                               _%L47253%_
                                               _%L47255%_
                                               _%L47256%_)
                                              (_%__match7593975940%_
                                               _%e4670547173%_
                                               _%hd4670447177%_
                                               _%tl4670347180%_
                                               _%e4670847183%_
                                               _%hd4670747187%_
                                               _%tl4670647190%_
                                               _%e4671147193%_
                                               _%hd4671047197%_
                                               _%tl4670947200%_))))))))
                        (_%loop4672147229%_ _%target4671847223%_ '()))))
                   (_%__match7584575846%_
                    (lambda (_%e4670547173%_
                             _%hd4670447177%_
                             _%tl4670347180%_
                             _%e4670847183%_
                             _%hd4670747187%_
                             _%tl4670647190%_
                             _%e4671147193%_
                             _%hd4671047197%_
                             _%tl4670947200%_
                             _%e4671447203%_
                             _%hd4671347207%_
                             _%tl4671247210%_)
                      (if (gx#identifier? _%hd4671347207%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80705_|
                               _%hd4671347207%_)
                              (if (gx#stx-pair? _%tl4671247210%_)
                                  (let ((_%e4671747213%_
                                         (gx#syntax-e _%tl4671247210%_)))
                                    (let ((_%tl4671547220%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4671747213%_)))
                                          (_%hd4671647217%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4671747213%_))))
                                      (if (gx#stx-null? _%tl4671547220%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4670647190%_)
                                              (let ((_%__splice7565975660%_
                                                     (gx#syntax-split-splice
                                                      _%tl4670647190%_
                                                      '0)))
                                                (let ((_%tl4672047226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7565975660%_
                                                          '1)))
                                                      (_%target4671847223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7565975660%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4672047226%_)
                                                      (_%__match7586575866%_
                                                       _%e4670547173%_
                                                       _%hd4670447177%_
                                                       _%tl4670347180%_
                                                       _%e4670847183%_
                                                       _%hd4670747187%_
                                                       _%tl4670647190%_
                                                       _%e4671147193%_
                                                       _%hd4671047197%_
                                                       _%tl4670947200%_
                                                       _%e4671447203%_
                                                       _%hd4671347207%_
                                                       _%tl4671247210%_
                                                       _%e4671747213%_
                                                       _%hd4671647217%_
                                                       _%tl4671547220%_
                                                       _%__splice7565975660%_
                                                       _%target4671847223%_
                                                       _%tl4672047226%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4671047197%_)
                                                          (let ((_%e4677746929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4671047197%_)))
                    (let ((_%tl4677546936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4677746929%_)))
                          (_%hd4677646933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4677746929%_))))
                      (let () (declare (not safe)) (_%g4659946808%_))))
                  (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4671047197%_)
                                                  (let ((_%e4677746929%_
                                                         (gx#syntax-e
                                                          _%hd4671047197%_)))
                                                    (let ((_%tl4677546936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4677746929%_)))
                                                          (_%hd4677646933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4677746929%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4659946808%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_))))
                                          (if (gx#stx-pair? _%tl4671547220%_)
                                              (let ((_%e4674947061%_
                                                     (gx#syntax-e
                                                      _%tl4671547220%_)))
                                                (let ((_%tl4674747068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4674947061%_)))
                                                      (_%hd4674847065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4674947061%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4674747068%_)
                                                      (let ((_%e4675247071%_
                                                             (gx#syntax-e
                                                              _%tl4674747068%_)))
                                                        (let ((_%tl4675047078%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4675247071%_)))
                      (_%hd4675147075%_
                       (let () (declare (not safe)) (##car _%e4675247071%_))))
                  (if (gx#stx-null? _%tl4675047078%_)
                      (if (gx#stx-pair/null? _%tl4670647190%_)
                          (let ((_%__splice7566375664%_
                                 (gx#syntax-split-splice _%tl4670647190%_ '0)))
                            (let ((_%tl4675547084%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7566375664%_ '1)))
                                  (_%target4675347081%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7566375664%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675547084%_)
                                  (_%__match7592175922%_
                                   _%e4670547173%_
                                   _%hd4670447177%_
                                   _%tl4670347180%_
                                   _%e4670847183%_
                                   _%hd4670747187%_
                                   _%tl4670647190%_
                                   _%e4671147193%_
                                   _%hd4671047197%_
                                   _%tl4670947200%_
                                   _%e4671447203%_
                                   _%hd4671347207%_
                                   _%tl4671247210%_
                                   _%e4671747213%_
                                   _%hd4671647217%_
                                   _%tl4671547220%_
                                   _%e4674947061%_
                                   _%hd4674847065%_
                                   _%tl4674747068%_
                                   _%e4675247071%_
                                   _%hd4675147075%_
                                   _%tl4675047078%_
                                   _%__splice7566375664%_
                                   _%target4675347081%_
                                   _%tl4675547084%_)
                                  (if (gx#stx-pair? _%hd4671047197%_)
                                      (let ((_%e4677746929%_
                                             (gx#syntax-e _%hd4671047197%_)))
                                        (let ((_%tl4677546936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4677746929%_)))
                                              (_%hd4677646933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4677746929%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))))
                          (if (gx#stx-pair? _%hd4671047197%_)
                              (let ((_%e4677746929%_
                                     (gx#syntax-e _%hd4671047197%_)))
                                (let ((_%tl4677546936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4677746929%_)))
                                      (_%hd4677646933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4677746929%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))
                              (let () (declare (not safe)) (_%g4659946808%_))))
                      (if (gx#stx-pair? _%hd4671047197%_)
                          (let ((_%e4677746929%_
                                 (gx#syntax-e _%hd4671047197%_)))
                            (let ((_%tl4677546936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4677746929%_)))
                                  (_%hd4677646933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4677746929%_))))
                              (if (gx#stx-pair/null? _%tl4670647190%_)
                                  (let ((_%__splice7566775668%_
                                         (gx#syntax-split-splice
                                          _%tl4670647190%_
                                          '0)))
                                    (let ((_%tl4678046942%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7566775668%_
                                              '1)))
                                          (_%target4677846939%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7566775668%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4678046942%_)
                                          (_%__match7595375954%_
                                           _%e4670547173%_
                                           _%hd4670447177%_
                                           _%tl4670347180%_
                                           _%e4670847183%_
                                           _%hd4670747187%_
                                           _%tl4670647190%_
                                           _%e4671147193%_
                                           _%hd4671047197%_
                                           _%tl4670947200%_
                                           _%e4677746929%_
                                           _%hd4677646933%_
                                           _%tl4677546936%_
                                           _%__splice7566775668%_
                                           _%target4677846939%_
                                           _%tl4678046942%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_))))))
              (if (gx#stx-pair? _%hd4671047197%_)
                  (let ((_%e4677746929%_ (gx#syntax-e _%hd4671047197%_)))
                    (let ((_%tl4677546936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4677746929%_)))
                          (_%hd4677646933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4677746929%_))))
                      (if (gx#stx-pair/null? _%tl4670647190%_)
                          (let ((_%__splice7566775668%_
                                 (gx#syntax-split-splice _%tl4670647190%_ '0)))
                            (let ((_%tl4678046942%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7566775668%_ '1)))
                                  (_%target4677846939%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7566775668%_
                                      '0))))
                              (if (gx#stx-null? _%tl4678046942%_)
                                  (_%__match7595375954%_
                                   _%e4670547173%_
                                   _%hd4670447177%_
                                   _%tl4670347180%_
                                   _%e4670847183%_
                                   _%hd4670747187%_
                                   _%tl4670647190%_
                                   _%e4671147193%_
                                   _%hd4671047197%_
                                   _%tl4670947200%_
                                   _%e4677746929%_
                                   _%hd4677646933%_
                                   _%tl4677546936%_
                                   _%__splice7566775668%_
                                   _%target4677846939%_
                                   _%tl4678046942%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                  (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4671047197%_)
                                                  (let ((_%e4677746929%_
                                                         (gx#syntax-e
                                                          _%hd4671047197%_)))
                                                    (let ((_%tl4677546936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4677746929%_)))
                                                          (_%hd4677646933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4677746929%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4670647190%_)
                                                          (let ((_%__splice7566775668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4670647190%_ '0)))
                    (let ((_%tl4678046942%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7566775668%_ '1)))
                          (_%target4677846939%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7566775668%_ '0))))
                      (if (gx#stx-null? _%tl4678046942%_)
                          (_%__match7595375954%_
                           _%e4670547173%_
                           _%hd4670447177%_
                           _%tl4670347180%_
                           _%e4670847183%_
                           _%hd4670747187%_
                           _%tl4670647190%_
                           _%e4671147193%_
                           _%hd4671047197%_
                           _%tl4670947200%_
                           _%e4677746929%_
                           _%hd4677646933%_
                           _%tl4677546936%_
                           _%__splice7566775668%_
                           _%target4677846939%_
                           _%tl4678046942%_)
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                  (let () (declare (not safe)) (_%g4659946808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_)))))))
                                  (if (gx#stx-pair? _%hd4671047197%_)
                                      (let ((_%e4677746929%_
                                             (gx#syntax-e _%hd4671047197%_)))
                                        (let ((_%tl4677546936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4677746929%_)))
                                              (_%hd4677646933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4677746929%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4670647190%_)
                                              (let ((_%__splice7566775668%_
                                                     (gx#syntax-split-splice
                                                      _%tl4670647190%_
                                                      '0)))
                                                (let ((_%tl4678046942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7566775668%_
                                                          '1)))
                                                      (_%target4677846939%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7566775668%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4678046942%_)
                                                      (_%__match7595375954%_
                                                       _%e4670547173%_
                                                       _%hd4670447177%_
                                                       _%tl4670347180%_
                                                       _%e4670847183%_
                                                       _%hd4670747187%_
                                                       _%tl4670647190%_
                                                       _%e4671147193%_
                                                       _%hd4671047197%_
                                                       _%tl4670947200%_
                                                       _%e4677746929%_
                                                       _%hd4677646933%_
                                                       _%tl4677546936%_
                                                       _%__splice7566775668%_
                                                       _%target4677846939%_
                                                       _%tl4678046942%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4659946808%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))
                              (if (gx#stx-pair? _%hd4671047197%_)
                                  (let ((_%e4677746929%_
                                         (gx#syntax-e _%hd4671047197%_)))
                                    (let ((_%tl4677546936%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4677746929%_)))
                                          (_%hd4677646933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4677746929%_))))
                                      (if (gx#stx-pair/null? _%tl4670647190%_)
                                          (let ((_%__splice7566775668%_
                                                 (gx#syntax-split-splice
                                                  _%tl4670647190%_
                                                  '0)))
                                            (let ((_%tl4678046942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7566775668%_
                                                      '1)))
                                                  (_%target4677846939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7566775668%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4678046942%_)
                                                  (_%__match7595375954%_
                                                   _%e4670547173%_
                                                   _%hd4670447177%_
                                                   _%tl4670347180%_
                                                   _%e4670847183%_
                                                   _%hd4670747187%_
                                                   _%tl4670647190%_
                                                   _%e4671147193%_
                                                   _%hd4671047197%_
                                                   _%tl4670947200%_
                                                   _%e4677746929%_
                                                   _%hd4677646933%_
                                                   _%tl4677546936%_
                                                   _%__splice7566775668%_
                                                   _%target4677846939%_
                                                   _%tl4678046942%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))
                          (if (gx#stx-pair? _%hd4671047197%_)
                              (let ((_%e4677746929%_
                                     (gx#syntax-e _%hd4671047197%_)))
                                (let ((_%tl4677546936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4677746929%_)))
                                      (_%hd4677646933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4677746929%_))))
                                  (if (gx#stx-pair/null? _%tl4670647190%_)
                                      (let ((_%__splice7566775668%_
                                             (gx#syntax-split-splice
                                              _%tl4670647190%_
                                              '0)))
                                        (let ((_%tl4678046942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7566775668%_
                                                  '1)))
                                              (_%target4677846939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7566775668%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4678046942%_)
                                              (_%__match7595375954%_
                                               _%e4670547173%_
                                               _%hd4670447177%_
                                               _%tl4670347180%_
                                               _%e4670847183%_
                                               _%hd4670747187%_
                                               _%tl4670647190%_
                                               _%e4671147193%_
                                               _%hd4671047197%_
                                               _%tl4670947200%_
                                               _%e4677746929%_
                                               _%hd4677646933%_
                                               _%tl4677546936%_
                                               _%__splice7566775668%_
                                               _%target4677846939%_
                                               _%tl4678046942%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_))))))
                   (_%__match7582175822%_
                    (lambda (_%e4667847295%_
                             _%hd4667747299%_
                             _%tl4667647302%_
                             _%e4668147305%_
                             _%hd4668047309%_
                             _%tl4667947312%_
                             _%e4668447315%_
                             _%hd4668347319%_
                             _%tl4668247322%_
                             _%e4668747325%_
                             _%hd4668647329%_
                             _%tl4668547332%_
                             _%e4669047335%_
                             _%hd4668947339%_
                             _%tl4668847342%_
                             _%__splice7565575656%_
                             _%target4669147345%_
                             _%tl4669347348%_)
                      (letrec ((_%loop4669447351%_
                                (lambda (_%hd4669247355%_ _%body4669847358%_)
                                  (if (gx#stx-pair? _%hd4669247355%_)
                                      (let ((_%e4669547361%_
                                             (gx#syntax-e _%hd4669247355%_)))
                                        (let ((_%lp-tl4669747368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4669547361%_)))
                                              (_%lp-hd4669647365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4669547361%_))))
                                          (_%loop4669447351%_
                                           _%lp-tl4669747368%_
                                           (cons _%lp-hd4669647365%_
                                                 _%body4669847358%_))))
                                      (let ((_%body4669947371%_
                                             (reverse _%body4669847358%_)))
                                        (let ((_%L47375%_ _%body4669947371%_)
                                              (_%L47377%_ _%hd4668947339%_)
                                              (_%L47378%_ _%hd4668647329%_)
                                              (_%L47379%_ _%hd4668347319%_))
                                          (if (and (gx#identifier? _%L47379%_)
                                                   (gx#identifier? _%L47377%_)
                                                   (gx#identifier? _%L47378%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47378%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47378%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47378%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47378%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7565375654%_
                                               _%L47375%_
                                               _%L47377%_
                                               _%L47378%_
                                               _%L47379%_)
                                              (_%__match7584575846%_
                                               _%e4667847295%_
                                               _%hd4667747299%_
                                               _%tl4667647302%_
                                               _%e4668147305%_
                                               _%hd4668047309%_
                                               _%tl4667947312%_
                                               _%e4668447315%_
                                               _%hd4668347319%_
                                               _%tl4668247322%_
                                               _%e4668747325%_
                                               _%hd4668647329%_
                                               _%tl4668547332%_))))))))
                        (_%loop4669447351%_ _%target4669147345%_ '()))))
                   (_%__match7578175782%_
                    (lambda (_%e4664147448%_
                             _%hd4664047452%_
                             _%tl4663947455%_
                             _%e4664447458%_
                             _%hd4664347462%_
                             _%tl4664247465%_
                             _%e4664747468%_
                             _%hd4664647472%_
                             _%tl4664547475%_
                             _%e4665047478%_
                             _%hd4664947482%_
                             _%tl4664847485%_
                             _%e4665347488%_
                             _%hd4665247492%_
                             _%tl4665147495%_
                             _%e4665647498%_
                             _%hd4665547502%_
                             _%tl4665447505%_
                             _%e4665947508%_
                             _%hd4665847512%_
                             _%tl4665747515%_
                             _%e4666247518%_
                             _%hd4666147522%_
                             _%tl4666047525%_
                             _%__splice7565175652%_
                             _%target4666347528%_
                             _%tl4666547531%_)
                      (letrec ((_%loop4666647534%_
                                (lambda (_%hd4666447538%_ _%body4667047541%_)
                                  (if (gx#stx-pair? _%hd4666447538%_)
                                      (let ((_%e4666747544%_
                                             (gx#syntax-e _%hd4666447538%_)))
                                        (let ((_%lp-tl4666947551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4666747544%_)))
                                              (_%lp-hd4666847548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4666747544%_))))
                                          (_%loop4666647534%_
                                           _%lp-tl4666947551%_
                                           (cons _%lp-hd4666847548%_
                                                 _%body4667047541%_))))
                                      (let ((_%body4667147554%_
                                             (reverse _%body4667047541%_)))
                                        (let ((_%L47558%_ _%body4667147554%_)
                                              (_%L47560%_ _%hd4666147522%_)
                                              (_%L47561%_ _%hd4665847512%_)
                                              (_%L47562%_ _%hd4665547502%_)
                                              (_%L47563%_ _%hd4664947482%_)
                                              (_%L47564%_ _%hd4664647472%_))
                                          (if (and (gx#identifier? _%L47564%_)
                                                   (gx#identifier? _%L47560%_)
                                                   (gx#identifier? _%L47561%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47561%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47561%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47561%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47561%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7564975650%_
                                               _%L47558%_
                                               _%L47560%_
                                               _%L47561%_
                                               _%L47562%_
                                               _%L47563%_
                                               _%L47564%_)
                                              (_%__match7584575846%_
                                               _%e4664147448%_
                                               _%hd4664047452%_
                                               _%tl4663947455%_
                                               _%e4664447458%_
                                               _%hd4664347462%_
                                               _%tl4664247465%_
                                               _%e4664747468%_
                                               _%hd4664647472%_
                                               _%tl4664547475%_
                                               _%e4665047478%_
                                               _%hd4664947482%_
                                               _%tl4664847485%_))))))))
                        (_%loop4666647534%_ _%target4666347528%_ '()))))
                   (_%__match7574975750%_
                    (lambda (_%e4664147448%_
                             _%hd4664047452%_
                             _%tl4663947455%_
                             _%e4664447458%_
                             _%hd4664347462%_
                             _%tl4664247465%_
                             _%e4664747468%_
                             _%hd4664647472%_
                             _%tl4664547475%_
                             _%e4665047478%_
                             _%hd4664947482%_
                             _%tl4664847485%_
                             _%e4665347488%_
                             _%hd4665247492%_
                             _%tl4665147495%_)
                      (if (gx#identifier? _%hd4665247492%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80706_|
                               _%hd4665247492%_)
                              (if (gx#stx-pair? _%tl4665147495%_)
                                  (let ((_%e4665647498%_
                                         (gx#syntax-e _%tl4665147495%_)))
                                    (let ((_%tl4665447505%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4665647498%_)))
                                          (_%hd4665547502%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4665647498%_))))
                                      (if (gx#stx-pair? _%tl4665447505%_)
                                          (let ((_%e4665947508%_
                                                 (gx#syntax-e
                                                  _%tl4665447505%_)))
                                            (let ((_%tl4665747515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4665947508%_)))
                                                  (_%hd4665847512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4665947508%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4665747515%_)
                                                  (let ((_%e4666247518%_
                                                         (gx#syntax-e
                                                          _%tl4665747515%_)))
                                                    (let ((_%tl4666047525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4666247518%_)))
                                                          (_%hd4666147522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4666247518%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4666047525%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4664247465%_)
                                                              (let ((_%__splice7565175652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4664247465%_ '0)))
                        (let ((_%tl4666547531%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7565175652%_ '1)))
                              (_%target4666347528%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7565175652%_ '0))))
                          (if (gx#stx-null? _%tl4666547531%_)
                              (_%__match7578175782%_
                               _%e4664147448%_
                               _%hd4664047452%_
                               _%tl4663947455%_
                               _%e4664447458%_
                               _%hd4664347462%_
                               _%tl4664247465%_
                               _%e4664747468%_
                               _%hd4664647472%_
                               _%tl4664547475%_
                               _%e4665047478%_
                               _%hd4664947482%_
                               _%tl4664847485%_
                               _%e4665347488%_
                               _%hd4665247492%_
                               _%tl4665147495%_
                               _%e4665647498%_
                               _%hd4665547502%_
                               _%tl4665447505%_
                               _%e4665947508%_
                               _%hd4665847512%_
                               _%tl4665747515%_
                               _%e4666247518%_
                               _%hd4666147522%_
                               _%tl4666047525%_
                               _%__splice7565175652%_
                               _%target4666347528%_
                               _%tl4666547531%_)
                              (if (gx#stx-pair? _%hd4664647472%_)
                                  (let ((_%e4677746929%_
                                         (gx#syntax-e _%hd4664647472%_)))
                                    (let ((_%tl4677546936%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4677746929%_)))
                                          (_%hd4677646933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4677746929%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))))
                      (if (gx#stx-pair? _%hd4664647472%_)
                          (let ((_%e4677746929%_
                                 (gx#syntax-e _%hd4664647472%_)))
                            (let ((_%tl4677546936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4677746929%_)))
                                  (_%hd4677646933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4677746929%_))))
                              (let () (declare (not safe)) (_%g4659946808%_))))
                          (let () (declare (not safe)) (_%g4659946808%_))))
                  (if (gx#stx-pair? _%hd4664647472%_)
                      (let ((_%e4677746929%_ (gx#syntax-e _%hd4664647472%_)))
                        (let ((_%tl4677546936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4677746929%_)))
                              (_%hd4677646933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4677746929%_))))
                          (if (gx#stx-pair/null? _%tl4664247465%_)
                              (let ((_%__splice7566775668%_
                                     (gx#syntax-split-splice
                                      _%tl4664247465%_
                                      '0)))
                                (let ((_%tl4678046942%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7566775668%_
                                          '1)))
                                      (_%target4677846939%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7566775668%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4678046942%_)
                                      (_%__match7595375954%_
                                       _%e4664147448%_
                                       _%hd4664047452%_
                                       _%tl4663947455%_
                                       _%e4664447458%_
                                       _%hd4664347462%_
                                       _%tl4664247465%_
                                       _%e4664747468%_
                                       _%hd4664647472%_
                                       _%tl4664547475%_
                                       _%e4677746929%_
                                       _%hd4677646933%_
                                       _%tl4677546936%_
                                       _%__splice7566775668%_
                                       _%target4677846939%_
                                       _%tl4678046942%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_)))))
                      (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4664947482%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80705_|
                                                           _%hd4664947482%_)
                                                          (if (gx#stx-null?
                                                               _%tl4665747515%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4664247465%_)
                          (let ((_%__splice7566375664%_
                                 (gx#syntax-split-splice _%tl4664247465%_ '0)))
                            (let ((_%tl4675547084%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7566375664%_ '1)))
                                  (_%target4675347081%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7566375664%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675547084%_)
                                  (_%__match7592175922%_
                                   _%e4664147448%_
                                   _%hd4664047452%_
                                   _%tl4663947455%_
                                   _%e4664447458%_
                                   _%hd4664347462%_
                                   _%tl4664247465%_
                                   _%e4664747468%_
                                   _%hd4664647472%_
                                   _%tl4664547475%_
                                   _%e4665047478%_
                                   _%hd4664947482%_
                                   _%tl4664847485%_
                                   _%e4665347488%_
                                   _%hd4665247492%_
                                   _%tl4665147495%_
                                   _%e4665647498%_
                                   _%hd4665547502%_
                                   _%tl4665447505%_
                                   _%e4665947508%_
                                   _%hd4665847512%_
                                   _%tl4665747515%_
                                   _%__splice7566375664%_
                                   _%target4675347081%_
                                   _%tl4675547084%_)
                                  (if (gx#stx-pair? _%hd4664647472%_)
                                      (let ((_%e4677746929%_
                                             (gx#syntax-e _%hd4664647472%_)))
                                        (let ((_%tl4677546936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4677746929%_)))
                                              (_%hd4677646933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4677746929%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))))
                          (if (gx#stx-pair? _%hd4664647472%_)
                              (let ((_%e4677746929%_
                                     (gx#syntax-e _%hd4664647472%_)))
                                (let ((_%tl4677546936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4677746929%_)))
                                      (_%hd4677646933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4677746929%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))
                              (let () (declare (not safe)) (_%g4659946808%_))))
                      (if (gx#stx-pair? _%hd4664647472%_)
                          (let ((_%e4677746929%_
                                 (gx#syntax-e _%hd4664647472%_)))
                            (let ((_%tl4677546936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4677746929%_)))
                                  (_%hd4677646933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4677746929%_))))
                              (if (gx#stx-pair/null? _%tl4664247465%_)
                                  (let ((_%__splice7566775668%_
                                         (gx#syntax-split-splice
                                          _%tl4664247465%_
                                          '0)))
                                    (let ((_%tl4678046942%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7566775668%_
                                              '1)))
                                          (_%target4677846939%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7566775668%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4678046942%_)
                                          (_%__match7595375954%_
                                           _%e4664147448%_
                                           _%hd4664047452%_
                                           _%tl4663947455%_
                                           _%e4664447458%_
                                           _%hd4664347462%_
                                           _%tl4664247465%_
                                           _%e4664747468%_
                                           _%hd4664647472%_
                                           _%tl4664547475%_
                                           _%e4677746929%_
                                           _%hd4677646933%_
                                           _%tl4677546936%_
                                           _%__splice7566775668%_
                                           _%target4677846939%_
                                           _%tl4678046942%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_))))
                  (if (gx#stx-pair? _%hd4664647472%_)
                      (let ((_%e4677746929%_ (gx#syntax-e _%hd4664647472%_)))
                        (let ((_%tl4677546936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4677746929%_)))
                              (_%hd4677646933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4677746929%_))))
                          (if (gx#stx-pair/null? _%tl4664247465%_)
                              (let ((_%__splice7566775668%_
                                     (gx#syntax-split-splice
                                      _%tl4664247465%_
                                      '0)))
                                (let ((_%tl4678046942%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7566775668%_
                                          '1)))
                                      (_%target4677846939%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7566775668%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4678046942%_)
                                      (_%__match7595375954%_
                                       _%e4664147448%_
                                       _%hd4664047452%_
                                       _%tl4663947455%_
                                       _%e4664447458%_
                                       _%hd4664347462%_
                                       _%tl4664247465%_
                                       _%e4664747468%_
                                       _%hd4664647472%_
                                       _%tl4664547475%_
                                       _%e4677746929%_
                                       _%hd4677646933%_
                                       _%tl4677546936%_
                                       _%__splice7566775668%_
                                       _%target4677846939%_
                                       _%tl4678046942%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_)))))
                      (let () (declare (not safe)) (_%g4659946808%_))))
              (if (gx#stx-pair? _%hd4664647472%_)
                  (let ((_%e4677746929%_ (gx#syntax-e _%hd4664647472%_)))
                    (let ((_%tl4677546936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4677746929%_)))
                          (_%hd4677646933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4677746929%_))))
                      (if (gx#stx-pair/null? _%tl4664247465%_)
                          (let ((_%__splice7566775668%_
                                 (gx#syntax-split-splice _%tl4664247465%_ '0)))
                            (let ((_%tl4678046942%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7566775668%_ '1)))
                                  (_%target4677846939%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7566775668%_
                                      '0))))
                              (if (gx#stx-null? _%tl4678046942%_)
                                  (_%__match7595375954%_
                                   _%e4664147448%_
                                   _%hd4664047452%_
                                   _%tl4663947455%_
                                   _%e4664447458%_
                                   _%hd4664347462%_
                                   _%tl4664247465%_
                                   _%e4664747468%_
                                   _%hd4664647472%_
                                   _%tl4664547475%_
                                   _%e4677746929%_
                                   _%hd4677646933%_
                                   _%tl4677546936%_
                                   _%__splice7566775668%_
                                   _%target4677846939%_
                                   _%tl4678046942%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                  (let () (declare (not safe)) (_%g4659946808%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4664647472%_)
                                              (let ((_%e4677746929%_
                                                     (gx#syntax-e
                                                      _%hd4664647472%_)))
                                                (let ((_%tl4677546936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4677746929%_)))
                                                      (_%hd4677646933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4677746929%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664247465%_)
                                                      (let ((_%__splice7566775668%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664247465%_
                                                              '0)))
                                                        (let ((_%tl4678046942%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '1)))
                      (_%target4677846939%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '0))))
                  (if (gx#stx-null? _%tl4678046942%_)
                      (_%__match7595375954%_
                       _%e4664147448%_
                       _%hd4664047452%_
                       _%tl4663947455%_
                       _%e4664447458%_
                       _%hd4664347462%_
                       _%tl4664247465%_
                       _%e4664747468%_
                       _%hd4664647472%_
                       _%tl4664547475%_
                       _%e4677746929%_
                       _%hd4677646933%_
                       _%tl4677546936%_
                       _%__splice7566775668%_
                       _%target4677846939%_
                       _%tl4678046942%_)
                      (let () (declare (not safe)) (_%g4659946808%_)))))
              (let () (declare (not safe)) (_%g4659946808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_))))))
                                  (if (gx#stx-null? _%tl4665147495%_)
                                      (if (gx#stx-pair/null? _%tl4664247465%_)
                                          (let ((_%__splice7565575656%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664247465%_
                                                  '0)))
                                            (let ((_%tl4669347348%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7565575656%_
                                                      '1)))
                                                  (_%target4669147345%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7565575656%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4669347348%_)
                                                  (_%__match7582175822%_
                                                   _%e4664147448%_
                                                   _%hd4664047452%_
                                                   _%tl4663947455%_
                                                   _%e4664447458%_
                                                   _%hd4664347462%_
                                                   _%tl4664247465%_
                                                   _%e4664747468%_
                                                   _%hd4664647472%_
                                                   _%tl4664547475%_
                                                   _%e4665047478%_
                                                   _%hd4664947482%_
                                                   _%tl4664847485%_
                                                   _%e4665347488%_
                                                   _%hd4665247492%_
                                                   _%tl4665147495%_
                                                   _%__splice7565575656%_
                                                   _%target4669147345%_
                                                   _%tl4669347348%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4664647472%_)
                                                      (let ((_%e4677746929%_
                                                             (gx#syntax-e
                                                              _%hd4664647472%_)))
                                                        (let ((_%tl4677546936%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4677746929%_)))
                      (_%hd4677646933%_
                       (let () (declare (not safe)) (##car _%e4677746929%_))))
                  (let () (declare (not safe)) (_%g4659946808%_))))
              (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4664647472%_)
                                              (let ((_%e4677746929%_
                                                     (gx#syntax-e
                                                      _%hd4664647472%_)))
                                                (let ((_%tl4677546936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4677746929%_)))
                                                      (_%hd4677646933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4677746929%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_))))
                                      (if (gx#stx-pair? _%hd4664647472%_)
                                          (let ((_%e4677746929%_
                                                 (gx#syntax-e
                                                  _%hd4664647472%_)))
                                            (let ((_%tl4677546936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4677746929%_)))
                                                  (_%hd4677646933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4677746929%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4664247465%_)
                                                  (let ((_%__splice7566775668%_
                                                         (gx#syntax-split-splice
                                                          _%tl4664247465%_
                                                          '0)))
                                                    (let ((_%tl4678046942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '1)))
                                                          (_%target4677846939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4678046942%_)
                                                          (_%__match7595375954%_
                                                           _%e4664147448%_
                                                           _%hd4664047452%_
                                                           _%tl4663947455%_
                                                           _%e4664447458%_
                                                           _%hd4664347462%_
                                                           _%tl4664247465%_
                                                           _%e4664747468%_
                                                           _%hd4664647472%_
                                                           _%tl4664547475%_
                                                           _%e4677746929%_
                                                           _%hd4677646933%_
                                                           _%tl4677546936%_
                                                           _%__splice7566775668%_
                                                           _%target4677846939%_
                                                           _%tl4678046942%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4659946808%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_)))))
                              (if (gx#stx-null? _%tl4665147495%_)
                                  (if (gx#stx-pair/null? _%tl4664247465%_)
                                      (let ((_%__splice7565575656%_
                                             (gx#syntax-split-splice
                                              _%tl4664247465%_
                                              '0)))
                                        (let ((_%tl4669347348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7565575656%_
                                                  '1)))
                                              (_%target4669147345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7565575656%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4669347348%_)
                                              (_%__match7582175822%_
                                               _%e4664147448%_
                                               _%hd4664047452%_
                                               _%tl4663947455%_
                                               _%e4664447458%_
                                               _%hd4664347462%_
                                               _%tl4664247465%_
                                               _%e4664747468%_
                                               _%hd4664647472%_
                                               _%tl4664547475%_
                                               _%e4665047478%_
                                               _%hd4664947482%_
                                               _%tl4664847485%_
                                               _%e4665347488%_
                                               _%hd4665247492%_
                                               _%tl4665147495%_
                                               _%__splice7565575656%_
                                               _%target4669147345%_
                                               _%tl4669347348%_)
                                              (if (gx#stx-pair?
                                                   _%hd4664647472%_)
                                                  (let ((_%e4677746929%_
                                                         (gx#syntax-e
                                                          _%hd4664647472%_)))
                                                    (let ((_%tl4677546936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4677746929%_)))
                                                          (_%hd4677646933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4677746929%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4659946808%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_))))))
                                      (if (gx#stx-pair? _%hd4664647472%_)
                                          (let ((_%e4677746929%_
                                                 (gx#syntax-e
                                                  _%hd4664647472%_)))
                                            (let ((_%tl4677546936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4677746929%_)))
                                                  (_%hd4677646933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4677746929%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))
                                  (if (gx#identifier? _%hd4664947482%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80705_|
                                           _%hd4664947482%_)
                                          (if (gx#stx-pair? _%tl4665147495%_)
                                              (let ((_%e4674947061%_
                                                     (gx#syntax-e
                                                      _%tl4665147495%_)))
                                                (let ((_%tl4674747068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4674947061%_)))
                                                      (_%hd4674847065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4674947061%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4674747068%_)
                                                      (let ((_%e4675247071%_
                                                             (gx#syntax-e
                                                              _%tl4674747068%_)))
                                                        (let ((_%tl4675047078%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4675247071%_)))
                      (_%hd4675147075%_
                       (let () (declare (not safe)) (##car _%e4675247071%_))))
                  (if (gx#stx-null? _%tl4675047078%_)
                      (if (gx#stx-pair/null? _%tl4664247465%_)
                          (let ((_%__splice7566375664%_
                                 (gx#syntax-split-splice _%tl4664247465%_ '0)))
                            (let ((_%tl4675547084%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7566375664%_ '1)))
                                  (_%target4675347081%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7566375664%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675547084%_)
                                  (_%__match7592175922%_
                                   _%e4664147448%_
                                   _%hd4664047452%_
                                   _%tl4663947455%_
                                   _%e4664447458%_
                                   _%hd4664347462%_
                                   _%tl4664247465%_
                                   _%e4664747468%_
                                   _%hd4664647472%_
                                   _%tl4664547475%_
                                   _%e4665047478%_
                                   _%hd4664947482%_
                                   _%tl4664847485%_
                                   _%e4665347488%_
                                   _%hd4665247492%_
                                   _%tl4665147495%_
                                   _%e4674947061%_
                                   _%hd4674847065%_
                                   _%tl4674747068%_
                                   _%e4675247071%_
                                   _%hd4675147075%_
                                   _%tl4675047078%_
                                   _%__splice7566375664%_
                                   _%target4675347081%_
                                   _%tl4675547084%_)
                                  (if (gx#stx-pair? _%hd4664647472%_)
                                      (let ((_%e4677746929%_
                                             (gx#syntax-e _%hd4664647472%_)))
                                        (let ((_%tl4677546936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4677746929%_)))
                                              (_%hd4677646933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4677746929%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))))
                          (if (gx#stx-pair? _%hd4664647472%_)
                              (let ((_%e4677746929%_
                                     (gx#syntax-e _%hd4664647472%_)))
                                (let ((_%tl4677546936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4677746929%_)))
                                      (_%hd4677646933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4677746929%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))
                              (let () (declare (not safe)) (_%g4659946808%_))))
                      (if (gx#stx-pair? _%hd4664647472%_)
                          (let ((_%e4677746929%_
                                 (gx#syntax-e _%hd4664647472%_)))
                            (let ((_%tl4677546936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4677746929%_)))
                                  (_%hd4677646933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4677746929%_))))
                              (if (gx#stx-pair/null? _%tl4664247465%_)
                                  (let ((_%__splice7566775668%_
                                         (gx#syntax-split-splice
                                          _%tl4664247465%_
                                          '0)))
                                    (let ((_%tl4678046942%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7566775668%_
                                              '1)))
                                          (_%target4677846939%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7566775668%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4678046942%_)
                                          (_%__match7595375954%_
                                           _%e4664147448%_
                                           _%hd4664047452%_
                                           _%tl4663947455%_
                                           _%e4664447458%_
                                           _%hd4664347462%_
                                           _%tl4664247465%_
                                           _%e4664747468%_
                                           _%hd4664647472%_
                                           _%tl4664547475%_
                                           _%e4677746929%_
                                           _%hd4677646933%_
                                           _%tl4677546936%_
                                           _%__splice7566775668%_
                                           _%target4677846939%_
                                           _%tl4678046942%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_))))))
              (if (gx#stx-pair? _%hd4664647472%_)
                  (let ((_%e4677746929%_ (gx#syntax-e _%hd4664647472%_)))
                    (let ((_%tl4677546936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4677746929%_)))
                          (_%hd4677646933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4677746929%_))))
                      (if (gx#stx-pair/null? _%tl4664247465%_)
                          (let ((_%__splice7566775668%_
                                 (gx#syntax-split-splice _%tl4664247465%_ '0)))
                            (let ((_%tl4678046942%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7566775668%_ '1)))
                                  (_%target4677846939%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7566775668%_
                                      '0))))
                              (if (gx#stx-null? _%tl4678046942%_)
                                  (_%__match7595375954%_
                                   _%e4664147448%_
                                   _%hd4664047452%_
                                   _%tl4663947455%_
                                   _%e4664447458%_
                                   _%hd4664347462%_
                                   _%tl4664247465%_
                                   _%e4664747468%_
                                   _%hd4664647472%_
                                   _%tl4664547475%_
                                   _%e4677746929%_
                                   _%hd4677646933%_
                                   _%tl4677546936%_
                                   _%__splice7566775668%_
                                   _%target4677846939%_
                                   _%tl4678046942%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                  (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4664647472%_)
                                                  (let ((_%e4677746929%_
                                                         (gx#syntax-e
                                                          _%hd4664647472%_)))
                                                    (let ((_%tl4677546936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4677746929%_)))
                                                          (_%hd4677646933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4677746929%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4664247465%_)
                                                          (let ((_%__splice7566775668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4664247465%_ '0)))
                    (let ((_%tl4678046942%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7566775668%_ '1)))
                          (_%target4677846939%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7566775668%_ '0))))
                      (if (gx#stx-null? _%tl4678046942%_)
                          (_%__match7595375954%_
                           _%e4664147448%_
                           _%hd4664047452%_
                           _%tl4663947455%_
                           _%e4664447458%_
                           _%hd4664347462%_
                           _%tl4664247465%_
                           _%e4664747468%_
                           _%hd4664647472%_
                           _%tl4664547475%_
                           _%e4677746929%_
                           _%hd4677646933%_
                           _%tl4677546936%_
                           _%__splice7566775668%_
                           _%target4677846939%_
                           _%tl4678046942%_)
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                  (let () (declare (not safe)) (_%g4659946808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_))))
                                          (if (gx#stx-pair? _%hd4664647472%_)
                                              (let ((_%e4677746929%_
                                                     (gx#syntax-e
                                                      _%hd4664647472%_)))
                                                (let ((_%tl4677546936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4677746929%_)))
                                                      (_%hd4677646933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4677746929%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664247465%_)
                                                      (let ((_%__splice7566775668%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664247465%_
                                                              '0)))
                                                        (let ((_%tl4678046942%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '1)))
                      (_%target4677846939%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '0))))
                  (if (gx#stx-null? _%tl4678046942%_)
                      (_%__match7595375954%_
                       _%e4664147448%_
                       _%hd4664047452%_
                       _%tl4663947455%_
                       _%e4664447458%_
                       _%hd4664347462%_
                       _%tl4664247465%_
                       _%e4664747468%_
                       _%hd4664647472%_
                       _%tl4664547475%_
                       _%e4677746929%_
                       _%hd4677646933%_
                       _%tl4677546936%_
                       _%__splice7566775668%_
                       _%target4677846939%_
                       _%tl4678046942%_)
                      (let () (declare (not safe)) (_%g4659946808%_)))))
              (let () (declare (not safe)) (_%g4659946808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_))))
                                      (if (gx#stx-pair? _%hd4664647472%_)
                                          (let ((_%e4677746929%_
                                                 (gx#syntax-e
                                                  _%hd4664647472%_)))
                                            (let ((_%tl4677546936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4677746929%_)))
                                                  (_%hd4677646933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4677746929%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4664247465%_)
                                                  (let ((_%__splice7566775668%_
                                                         (gx#syntax-split-splice
                                                          _%tl4664247465%_
                                                          '0)))
                                                    (let ((_%tl4678046942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '1)))
                                                          (_%target4677846939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4678046942%_)
                                                          (_%__match7595375954%_
                                                           _%e4664147448%_
                                                           _%hd4664047452%_
                                                           _%tl4663947455%_
                                                           _%e4664447458%_
                                                           _%hd4664347462%_
                                                           _%tl4664247465%_
                                                           _%e4664747468%_
                                                           _%hd4664647472%_
                                                           _%tl4664547475%_
                                                           _%e4677746929%_
                                                           _%hd4677646933%_
                                                           _%tl4677546936%_
                                                           _%__splice7566775668%_
                                                           _%target4677846939%_
                                                           _%tl4678046942%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4659946808%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))))
                          (if (gx#stx-null? _%tl4665147495%_)
                              (if (gx#stx-pair/null? _%tl4664247465%_)
                                  (let ((_%__splice7565575656%_
                                         (gx#syntax-split-splice
                                          _%tl4664247465%_
                                          '0)))
                                    (let ((_%tl4669347348%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7565575656%_
                                              '1)))
                                          (_%target4669147345%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7565575656%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4669347348%_)
                                          (_%__match7582175822%_
                                           _%e4664147448%_
                                           _%hd4664047452%_
                                           _%tl4663947455%_
                                           _%e4664447458%_
                                           _%hd4664347462%_
                                           _%tl4664247465%_
                                           _%e4664747468%_
                                           _%hd4664647472%_
                                           _%tl4664547475%_
                                           _%e4665047478%_
                                           _%hd4664947482%_
                                           _%tl4664847485%_
                                           _%e4665347488%_
                                           _%hd4665247492%_
                                           _%tl4665147495%_
                                           _%__splice7565575656%_
                                           _%target4669147345%_
                                           _%tl4669347348%_)
                                          (if (gx#stx-pair? _%hd4664647472%_)
                                              (let ((_%e4677746929%_
                                                     (gx#syntax-e
                                                      _%hd4664647472%_)))
                                                (let ((_%tl4677546936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4677746929%_)))
                                                      (_%hd4677646933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4677746929%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_))))))
                                  (if (gx#stx-pair? _%hd4664647472%_)
                                      (let ((_%e4677746929%_
                                             (gx#syntax-e _%hd4664647472%_)))
                                        (let ((_%tl4677546936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4677746929%_)))
                                              (_%hd4677646933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4677746929%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))
                              (if (gx#identifier? _%hd4664947482%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80705_|
                                       _%hd4664947482%_)
                                      (if (gx#stx-pair? _%tl4665147495%_)
                                          (let ((_%e4674947061%_
                                                 (gx#syntax-e
                                                  _%tl4665147495%_)))
                                            (let ((_%tl4674747068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4674947061%_)))
                                                  (_%hd4674847065%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4674947061%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4674747068%_)
                                                  (let ((_%e4675247071%_
                                                         (gx#syntax-e
                                                          _%tl4674747068%_)))
                                                    (let ((_%tl4675047078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4675247071%_)))
                                                          (_%hd4675147075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4675247071%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4675047078%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4664247465%_)
                                                              (let ((_%__splice7566375664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4664247465%_ '0)))
                        (let ((_%tl4675547084%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566375664%_ '1)))
                              (_%target4675347081%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566375664%_ '0))))
                          (if (gx#stx-null? _%tl4675547084%_)
                              (_%__match7592175922%_
                               _%e4664147448%_
                               _%hd4664047452%_
                               _%tl4663947455%_
                               _%e4664447458%_
                               _%hd4664347462%_
                               _%tl4664247465%_
                               _%e4664747468%_
                               _%hd4664647472%_
                               _%tl4664547475%_
                               _%e4665047478%_
                               _%hd4664947482%_
                               _%tl4664847485%_
                               _%e4665347488%_
                               _%hd4665247492%_
                               _%tl4665147495%_
                               _%e4674947061%_
                               _%hd4674847065%_
                               _%tl4674747068%_
                               _%e4675247071%_
                               _%hd4675147075%_
                               _%tl4675047078%_
                               _%__splice7566375664%_
                               _%target4675347081%_
                               _%tl4675547084%_)
                              (if (gx#stx-pair? _%hd4664647472%_)
                                  (let ((_%e4677746929%_
                                         (gx#syntax-e _%hd4664647472%_)))
                                    (let ((_%tl4677546936%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4677746929%_)))
                                          (_%hd4677646933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4677746929%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))))
                      (if (gx#stx-pair? _%hd4664647472%_)
                          (let ((_%e4677746929%_
                                 (gx#syntax-e _%hd4664647472%_)))
                            (let ((_%tl4677546936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4677746929%_)))
                                  (_%hd4677646933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4677746929%_))))
                              (let () (declare (not safe)) (_%g4659946808%_))))
                          (let () (declare (not safe)) (_%g4659946808%_))))
                  (if (gx#stx-pair? _%hd4664647472%_)
                      (let ((_%e4677746929%_ (gx#syntax-e _%hd4664647472%_)))
                        (let ((_%tl4677546936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4677746929%_)))
                              (_%hd4677646933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4677746929%_))))
                          (if (gx#stx-pair/null? _%tl4664247465%_)
                              (let ((_%__splice7566775668%_
                                     (gx#syntax-split-splice
                                      _%tl4664247465%_
                                      '0)))
                                (let ((_%tl4678046942%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7566775668%_
                                          '1)))
                                      (_%target4677846939%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7566775668%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4678046942%_)
                                      (_%__match7595375954%_
                                       _%e4664147448%_
                                       _%hd4664047452%_
                                       _%tl4663947455%_
                                       _%e4664447458%_
                                       _%hd4664347462%_
                                       _%tl4664247465%_
                                       _%e4664747468%_
                                       _%hd4664647472%_
                                       _%tl4664547475%_
                                       _%e4677746929%_
                                       _%hd4677646933%_
                                       _%tl4677546936%_
                                       _%__splice7566775668%_
                                       _%target4677846939%_
                                       _%tl4678046942%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_)))))
                      (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4664647472%_)
                                                      (let ((_%e4677746929%_
                                                             (gx#syntax-e
                                                              _%hd4664647472%_)))
                                                        (let ((_%tl4677546936%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4677746929%_)))
                      (_%hd4677646933%_
                       (let () (declare (not safe)) (##car _%e4677746929%_))))
                  (if (gx#stx-pair/null? _%tl4664247465%_)
                      (let ((_%__splice7566775668%_
                             (gx#syntax-split-splice _%tl4664247465%_ '0)))
                        (let ((_%tl4678046942%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566775668%_ '1)))
                              (_%target4677846939%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566775668%_ '0))))
                          (if (gx#stx-null? _%tl4678046942%_)
                              (_%__match7595375954%_
                               _%e4664147448%_
                               _%hd4664047452%_
                               _%tl4663947455%_
                               _%e4664447458%_
                               _%hd4664347462%_
                               _%tl4664247465%_
                               _%e4664747468%_
                               _%hd4664647472%_
                               _%tl4664547475%_
                               _%e4677746929%_
                               _%hd4677646933%_
                               _%tl4677546936%_
                               _%__splice7566775668%_
                               _%target4677846939%_
                               _%tl4678046942%_)
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_)))))
                      (let () (declare (not safe)) (_%g4659946808%_)))))
              (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4664647472%_)
                                              (let ((_%e4677746929%_
                                                     (gx#syntax-e
                                                      _%hd4664647472%_)))
                                                (let ((_%tl4677546936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4677746929%_)))
                                                      (_%hd4677646933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4677746929%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664247465%_)
                                                      (let ((_%__splice7566775668%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664247465%_
                                                              '0)))
                                                        (let ((_%tl4678046942%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '1)))
                      (_%target4677846939%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '0))))
                  (if (gx#stx-null? _%tl4678046942%_)
                      (_%__match7595375954%_
                       _%e4664147448%_
                       _%hd4664047452%_
                       _%tl4663947455%_
                       _%e4664447458%_
                       _%hd4664347462%_
                       _%tl4664247465%_
                       _%e4664747468%_
                       _%hd4664647472%_
                       _%tl4664547475%_
                       _%e4677746929%_
                       _%hd4677646933%_
                       _%tl4677546936%_
                       _%__splice7566775668%_
                       _%target4677846939%_
                       _%tl4678046942%_)
                      (let () (declare (not safe)) (_%g4659946808%_)))))
              (let () (declare (not safe)) (_%g4659946808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_))))
                                      (if (gx#stx-pair? _%hd4664647472%_)
                                          (let ((_%e4677746929%_
                                                 (gx#syntax-e
                                                  _%hd4664647472%_)))
                                            (let ((_%tl4677546936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4677746929%_)))
                                                  (_%hd4677646933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4677746929%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4664247465%_)
                                                  (let ((_%__splice7566775668%_
                                                         (gx#syntax-split-splice
                                                          _%tl4664247465%_
                                                          '0)))
                                                    (let ((_%tl4678046942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '1)))
                                                          (_%target4677846939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4678046942%_)
                                                          (_%__match7595375954%_
                                                           _%e4664147448%_
                                                           _%hd4664047452%_
                                                           _%tl4663947455%_
                                                           _%e4664447458%_
                                                           _%hd4664347462%_
                                                           _%tl4664247465%_
                                                           _%e4664747468%_
                                                           _%hd4664647472%_
                                                           _%tl4664547475%_
                                                           _%e4677746929%_
                                                           _%hd4677646933%_
                                                           _%tl4677546936%_
                                                           _%__splice7566775668%_
                                                           _%target4677846939%_
                                                           _%tl4678046942%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4659946808%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))
                                  (if (gx#stx-pair? _%hd4664647472%_)
                                      (let ((_%e4677746929%_
                                             (gx#syntax-e _%hd4664647472%_)))
                                        (let ((_%tl4677546936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4677746929%_)))
                                              (_%hd4677646933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4677746929%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4664247465%_)
                                              (let ((_%__splice7566775668%_
                                                     (gx#syntax-split-splice
                                                      _%tl4664247465%_
                                                      '0)))
                                                (let ((_%tl4678046942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7566775668%_
                                                          '1)))
                                                      (_%target4677846939%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7566775668%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4678046942%_)
                                                      (_%__match7595375954%_
                                                       _%e4664147448%_
                                                       _%hd4664047452%_
                                                       _%tl4663947455%_
                                                       _%e4664447458%_
                                                       _%hd4664347462%_
                                                       _%tl4664247465%_
                                                       _%e4664747468%_
                                                       _%hd4664647472%_
                                                       _%tl4664547475%_
                                                       _%e4677746929%_
                                                       _%hd4677646933%_
                                                       _%tl4677546936%_
                                                       _%__splice7566775668%_
                                                       _%target4677846939%_
                                                       _%tl4678046942%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4659946808%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))))))
                   (_%__match7571975720%_
                    (lambda (_%e4660847624%_
                             _%hd4660747628%_
                             _%tl4660647631%_
                             _%e4661147634%_
                             _%hd4661047638%_
                             _%tl4660947641%_
                             _%e4661447644%_
                             _%hd4661347648%_
                             _%tl4661247651%_
                             _%e4661747654%_
                             _%hd4661647658%_
                             _%tl4661547661%_
                             _%e4662047664%_
                             _%hd4661947668%_
                             _%tl4661847671%_
                             _%e4662347674%_
                             _%hd4662247678%_
                             _%tl4662147681%_
                             _%__splice7564775648%_
                             _%target4662447684%_
                             _%tl4662647687%_)
                      (letrec ((_%loop4662747690%_
                                (lambda (_%hd4662547694%_ _%body4663147697%_)
                                  (if (gx#stx-pair? _%hd4662547694%_)
                                      (let ((_%e4662847700%_
                                             (gx#syntax-e _%hd4662547694%_)))
                                        (let ((_%lp-tl4663047707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4662847700%_)))
                                              (_%lp-hd4662947704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4662847700%_))))
                                          (_%loop4662747690%_
                                           _%lp-tl4663047707%_
                                           (cons _%lp-hd4662947704%_
                                                 _%body4663147697%_))))
                                      (let ((_%body4663247710%_
                                             (reverse _%body4663147697%_)))
                                        (let ((_%L47714%_ _%body4663247710%_)
                                              (_%L47716%_ _%hd4662247678%_)
                                              (_%L47717%_ _%hd4661947668%_)
                                              (_%L47718%_ _%hd4661647658%_)
                                              (_%L47719%_ _%hd4661347648%_))
                                          (if (and (gx#identifier? _%L47719%_)
                                                   (gx#identifier? _%L47717%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47717%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47717%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47717%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47717%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47717%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7564575646%_
                                               _%L47714%_
                                               _%L47716%_
                                               _%L47717%_
                                               _%L47718%_
                                               _%L47719%_)
                                              (_%__match7574975750%_
                                               _%e4660847624%_
                                               _%hd4660747628%_
                                               _%tl4660647631%_
                                               _%e4661147634%_
                                               _%hd4661047638%_
                                               _%tl4660947641%_
                                               _%e4661447644%_
                                               _%hd4661347648%_
                                               _%tl4661247651%_
                                               _%e4661747654%_
                                               _%hd4661647658%_
                                               _%tl4661547661%_
                                               _%e4662047664%_
                                               _%hd4661947668%_
                                               _%tl4661847671%_))))))))
                        (_%loop4662747690%_ _%target4662447684%_ '())))))
              (if (gx#stx-pair? _%__stx7564275643%_)
                  (let ((_%e4660847624%_ (gx#syntax-e _%__stx7564275643%_)))
                    (let ((_%tl4660647631%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660847624%_)))
                          (_%hd4660747628%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660847624%_))))
                      (if (gx#stx-pair? _%tl4660647631%_)
                          (let ((_%e4661147634%_
                                 (gx#syntax-e _%tl4660647631%_)))
                            (let ((_%tl4660947641%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661147634%_)))
                                  (_%hd4661047638%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661147634%_))))
                              (if (gx#stx-pair? _%hd4661047638%_)
                                  (let ((_%e4661447644%_
                                         (gx#syntax-e _%hd4661047638%_)))
                                    (let ((_%tl4661247651%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4661447644%_)))
                                          (_%hd4661347648%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4661447644%_))))
                                      (if (gx#stx-pair? _%tl4661247651%_)
                                          (let ((_%e4661747654%_
                                                 (gx#syntax-e
                                                  _%tl4661247651%_)))
                                            (let ((_%tl4661547661%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4661747654%_)))
                                                  (_%hd4661647658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4661747654%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4661547661%_)
                                                  (let ((_%e4662047664%_
                                                         (gx#syntax-e
                                                          _%tl4661547661%_)))
                                                    (let ((_%tl4661847671%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4662047664%_)))
                                                          (_%hd4661947668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4662047664%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4661847671%_)
                                                          (let ((_%e4662347674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4661847671%_)))
                    (let ((_%tl4662147681%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4662347674%_)))
                          (_%hd4662247678%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4662347674%_))))
                      (if (gx#stx-null? _%tl4662147681%_)
                          (if (gx#stx-pair/null? _%tl4660947641%_)
                              (let ((_%__splice7564775648%_
                                     (gx#syntax-split-splice
                                      _%tl4660947641%_
                                      '0)))
                                (let ((_%tl4662647687%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7564775648%_
                                          '1)))
                                      (_%target4662447684%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7564775648%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4662647687%_)
                                      (_%__match7571975720%_
                                       _%e4660847624%_
                                       _%hd4660747628%_
                                       _%tl4660647631%_
                                       _%e4661147634%_
                                       _%hd4661047638%_
                                       _%tl4660947641%_
                                       _%e4661447644%_
                                       _%hd4661347648%_
                                       _%tl4661247651%_
                                       _%e4661747654%_
                                       _%hd4661647658%_
                                       _%tl4661547661%_
                                       _%e4662047664%_
                                       _%hd4661947668%_
                                       _%tl4661847671%_
                                       _%e4662347674%_
                                       _%hd4662247678%_
                                       _%tl4662147681%_
                                       _%__splice7564775648%_
                                       _%target4662447684%_
                                       _%tl4662647687%_)
                                      (if (gx#stx-pair? _%hd4661347648%_)
                                          (let ((_%e4677746929%_
                                                 (gx#syntax-e
                                                  _%hd4661347648%_)))
                                            (let ((_%tl4677546936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4677746929%_)))
                                                  (_%hd4677646933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4677746929%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))))
                              (if (gx#stx-pair? _%hd4661347648%_)
                                  (let ((_%e4677746929%_
                                         (gx#syntax-e _%hd4661347648%_)))
                                    (let ((_%tl4677546936%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4677746929%_)))
                                          (_%hd4677646933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4677746929%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))
                          (if (gx#identifier? _%hd4661947668%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80706_|
                                   _%hd4661947668%_)
                                  (if (gx#stx-pair? _%tl4662147681%_)
                                      (let ((_%e4665947508%_
                                             (gx#syntax-e _%tl4662147681%_)))
                                        (let ((_%tl4665747515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4665947508%_)))
                                              (_%hd4665847512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4665947508%_))))
                                          (if (gx#stx-pair? _%tl4665747515%_)
                                              (let ((_%e4666247518%_
                                                     (gx#syntax-e
                                                      _%tl4665747515%_)))
                                                (let ((_%tl4666047525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4666247518%_)))
                                                      (_%hd4666147522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4666247518%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4666047525%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4660947641%_)
                                                          (let ((_%__splice7565175652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4660947641%_ '0)))
                    (let ((_%tl4666547531%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7565175652%_ '1)))
                          (_%target4666347528%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7565175652%_ '0))))
                      (if (gx#stx-null? _%tl4666547531%_)
                          (_%__match7578175782%_
                           _%e4660847624%_
                           _%hd4660747628%_
                           _%tl4660647631%_
                           _%e4661147634%_
                           _%hd4661047638%_
                           _%tl4660947641%_
                           _%e4661447644%_
                           _%hd4661347648%_
                           _%tl4661247651%_
                           _%e4661747654%_
                           _%hd4661647658%_
                           _%tl4661547661%_
                           _%e4662047664%_
                           _%hd4661947668%_
                           _%tl4661847671%_
                           _%e4662347674%_
                           _%hd4662247678%_
                           _%tl4662147681%_
                           _%e4665947508%_
                           _%hd4665847512%_
                           _%tl4665747515%_
                           _%e4666247518%_
                           _%hd4666147522%_
                           _%tl4666047525%_
                           _%__splice7565175652%_
                           _%target4666347528%_
                           _%tl4666547531%_)
                          (if (gx#stx-pair? _%hd4661347648%_)
                              (let ((_%e4677746929%_
                                     (gx#syntax-e _%hd4661347648%_)))
                                (let ((_%tl4677546936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4677746929%_)))
                                      (_%hd4677646933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4677746929%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_))))))
                  (if (gx#stx-pair? _%hd4661347648%_)
                      (let ((_%e4677746929%_ (gx#syntax-e _%hd4661347648%_)))
                        (let ((_%tl4677546936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4677746929%_)))
                              (_%hd4677646933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4677746929%_))))
                          (let () (declare (not safe)) (_%g4659946808%_))))
                      (let () (declare (not safe)) (_%g4659946808%_))))
              (if (gx#stx-pair? _%hd4661347648%_)
                  (let ((_%e4677746929%_ (gx#syntax-e _%hd4661347648%_)))
                    (let ((_%tl4677546936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4677746929%_)))
                          (_%hd4677646933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4677746929%_))))
                      (if (gx#stx-pair/null? _%tl4660947641%_)
                          (let ((_%__splice7566775668%_
                                 (gx#syntax-split-splice _%tl4660947641%_ '0)))
                            (let ((_%tl4678046942%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7566775668%_ '1)))
                                  (_%target4677846939%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7566775668%_
                                      '0))))
                              (if (gx#stx-null? _%tl4678046942%_)
                                  (_%__match7595375954%_
                                   _%e4660847624%_
                                   _%hd4660747628%_
                                   _%tl4660647631%_
                                   _%e4661147634%_
                                   _%hd4661047638%_
                                   _%tl4660947641%_
                                   _%e4661447644%_
                                   _%hd4661347648%_
                                   _%tl4661247651%_
                                   _%e4677746929%_
                                   _%hd4677646933%_
                                   _%tl4677546936%_
                                   _%__splice7566775668%_
                                   _%target4677846939%_
                                   _%tl4678046942%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                  (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4661647658%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80705_|
                                                       _%hd4661647658%_)
                                                      (if (gx#stx-null?
                                                           _%tl4665747515%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4660947641%_)
                                                              (let ((_%__splice7566375664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4660947641%_ '0)))
                        (let ((_%tl4675547084%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566375664%_ '1)))
                              (_%target4675347081%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566375664%_ '0))))
                          (if (gx#stx-null? _%tl4675547084%_)
                              (_%__match7592175922%_
                               _%e4660847624%_
                               _%hd4660747628%_
                               _%tl4660647631%_
                               _%e4661147634%_
                               _%hd4661047638%_
                               _%tl4660947641%_
                               _%e4661447644%_
                               _%hd4661347648%_
                               _%tl4661247651%_
                               _%e4661747654%_
                               _%hd4661647658%_
                               _%tl4661547661%_
                               _%e4662047664%_
                               _%hd4661947668%_
                               _%tl4661847671%_
                               _%e4662347674%_
                               _%hd4662247678%_
                               _%tl4662147681%_
                               _%e4665947508%_
                               _%hd4665847512%_
                               _%tl4665747515%_
                               _%__splice7566375664%_
                               _%target4675347081%_
                               _%tl4675547084%_)
                              (if (gx#stx-pair? _%hd4661347648%_)
                                  (let ((_%e4677746929%_
                                         (gx#syntax-e _%hd4661347648%_)))
                                    (let ((_%tl4677546936%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4677746929%_)))
                                          (_%hd4677646933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4677746929%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))))
                      (if (gx#stx-pair? _%hd4661347648%_)
                          (let ((_%e4677746929%_
                                 (gx#syntax-e _%hd4661347648%_)))
                            (let ((_%tl4677546936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4677746929%_)))
                                  (_%hd4677646933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4677746929%_))))
                              (let () (declare (not safe)) (_%g4659946808%_))))
                          (let () (declare (not safe)) (_%g4659946808%_))))
                  (if (gx#stx-pair? _%hd4661347648%_)
                      (let ((_%e4677746929%_ (gx#syntax-e _%hd4661347648%_)))
                        (let ((_%tl4677546936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4677746929%_)))
                              (_%hd4677646933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4677746929%_))))
                          (if (gx#stx-pair/null? _%tl4660947641%_)
                              (let ((_%__splice7566775668%_
                                     (gx#syntax-split-splice
                                      _%tl4660947641%_
                                      '0)))
                                (let ((_%tl4678046942%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7566775668%_
                                          '1)))
                                      (_%target4677846939%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7566775668%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4678046942%_)
                                      (_%__match7595375954%_
                                       _%e4660847624%_
                                       _%hd4660747628%_
                                       _%tl4660647631%_
                                       _%e4661147634%_
                                       _%hd4661047638%_
                                       _%tl4660947641%_
                                       _%e4661447644%_
                                       _%hd4661347648%_
                                       _%tl4661247651%_
                                       _%e4677746929%_
                                       _%hd4677646933%_
                                       _%tl4677546936%_
                                       _%__splice7566775668%_
                                       _%target4677846939%_
                                       _%tl4678046942%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_)))))
                      (let () (declare (not safe)) (_%g4659946808%_))))
              (if (gx#stx-pair? _%hd4661347648%_)
                  (let ((_%e4677746929%_ (gx#syntax-e _%hd4661347648%_)))
                    (let ((_%tl4677546936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4677746929%_)))
                          (_%hd4677646933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4677746929%_))))
                      (if (gx#stx-pair/null? _%tl4660947641%_)
                          (let ((_%__splice7566775668%_
                                 (gx#syntax-split-splice _%tl4660947641%_ '0)))
                            (let ((_%tl4678046942%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7566775668%_ '1)))
                                  (_%target4677846939%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7566775668%_
                                      '0))))
                              (if (gx#stx-null? _%tl4678046942%_)
                                  (_%__match7595375954%_
                                   _%e4660847624%_
                                   _%hd4660747628%_
                                   _%tl4660647631%_
                                   _%e4661147634%_
                                   _%hd4661047638%_
                                   _%tl4660947641%_
                                   _%e4661447644%_
                                   _%hd4661347648%_
                                   _%tl4661247651%_
                                   _%e4677746929%_
                                   _%hd4677646933%_
                                   _%tl4677546936%_
                                   _%__splice7566775668%_
                                   _%target4677846939%_
                                   _%tl4678046942%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                  (let () (declare (not safe)) (_%g4659946808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4661347648%_)
                                                      (let ((_%e4677746929%_
                                                             (gx#syntax-e
                                                              _%hd4661347648%_)))
                                                        (let ((_%tl4677546936%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4677746929%_)))
                      (_%hd4677646933%_
                       (let () (declare (not safe)) (##car _%e4677746929%_))))
                  (if (gx#stx-pair/null? _%tl4660947641%_)
                      (let ((_%__splice7566775668%_
                             (gx#syntax-split-splice _%tl4660947641%_ '0)))
                        (let ((_%tl4678046942%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566775668%_ '1)))
                              (_%target4677846939%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566775668%_ '0))))
                          (if (gx#stx-null? _%tl4678046942%_)
                              (_%__match7595375954%_
                               _%e4660847624%_
                               _%hd4660747628%_
                               _%tl4660647631%_
                               _%e4661147634%_
                               _%hd4661047638%_
                               _%tl4660947641%_
                               _%e4661447644%_
                               _%hd4661347648%_
                               _%tl4661247651%_
                               _%e4677746929%_
                               _%hd4677646933%_
                               _%tl4677546936%_
                               _%__splice7566775668%_
                               _%target4677846939%_
                               _%tl4678046942%_)
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_)))))
                      (let () (declare (not safe)) (_%g4659946808%_)))))
              (let () (declare (not safe)) (_%g4659946808%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4661347648%_)
                                          (let ((_%e4677746929%_
                                                 (gx#syntax-e
                                                  _%hd4661347648%_)))
                                            (let ((_%tl4677546936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4677746929%_)))
                                                  (_%hd4677646933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4677746929%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4660947641%_)
                                                  (let ((_%__splice7566775668%_
                                                         (gx#syntax-split-splice
                                                          _%tl4660947641%_
                                                          '0)))
                                                    (let ((_%tl4678046942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '1)))
                                                          (_%target4677846939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4678046942%_)
                                                          (_%__match7595375954%_
                                                           _%e4660847624%_
                                                           _%hd4660747628%_
                                                           _%tl4660647631%_
                                                           _%e4661147634%_
                                                           _%hd4661047638%_
                                                           _%tl4660947641%_
                                                           _%e4661447644%_
                                                           _%hd4661347648%_
                                                           _%tl4661247651%_
                                                           _%e4677746929%_
                                                           _%hd4677646933%_
                                                           _%tl4677546936%_
                                                           _%__splice7566775668%_
                                                           _%target4677846939%_
                                                           _%tl4678046942%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4659946808%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))
                                  (if (gx#identifier? _%hd4661647658%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80705_|
                                           _%hd4661647658%_)
                                          (if (gx#stx-pair? _%tl4662147681%_)
                                              (let ((_%e4675247071%_
                                                     (gx#syntax-e
                                                      _%tl4662147681%_)))
                                                (let ((_%tl4675047078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4675247071%_)))
                                                      (_%hd4675147075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4675247071%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4675047078%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4660947641%_)
                                                          (let ((_%__splice7566375664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4660947641%_ '0)))
                    (let ((_%tl4675547084%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7566375664%_ '1)))
                          (_%target4675347081%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7566375664%_ '0))))
                      (if (gx#stx-null? _%tl4675547084%_)
                          (_%__match7592175922%_
                           _%e4660847624%_
                           _%hd4660747628%_
                           _%tl4660647631%_
                           _%e4661147634%_
                           _%hd4661047638%_
                           _%tl4660947641%_
                           _%e4661447644%_
                           _%hd4661347648%_
                           _%tl4661247651%_
                           _%e4661747654%_
                           _%hd4661647658%_
                           _%tl4661547661%_
                           _%e4662047664%_
                           _%hd4661947668%_
                           _%tl4661847671%_
                           _%e4662347674%_
                           _%hd4662247678%_
                           _%tl4662147681%_
                           _%e4675247071%_
                           _%hd4675147075%_
                           _%tl4675047078%_
                           _%__splice7566375664%_
                           _%target4675347081%_
                           _%tl4675547084%_)
                          (if (gx#stx-pair? _%hd4661347648%_)
                              (let ((_%e4677746929%_
                                     (gx#syntax-e _%hd4661347648%_)))
                                (let ((_%tl4677546936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4677746929%_)))
                                      (_%hd4677646933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4677746929%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_))))))
                  (if (gx#stx-pair? _%hd4661347648%_)
                      (let ((_%e4677746929%_ (gx#syntax-e _%hd4661347648%_)))
                        (let ((_%tl4677546936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4677746929%_)))
                              (_%hd4677646933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4677746929%_))))
                          (let () (declare (not safe)) (_%g4659946808%_))))
                      (let () (declare (not safe)) (_%g4659946808%_))))
              (if (gx#stx-pair? _%hd4661347648%_)
                  (let ((_%e4677746929%_ (gx#syntax-e _%hd4661347648%_)))
                    (let ((_%tl4677546936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4677746929%_)))
                          (_%hd4677646933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4677746929%_))))
                      (if (gx#stx-pair/null? _%tl4660947641%_)
                          (let ((_%__splice7566775668%_
                                 (gx#syntax-split-splice _%tl4660947641%_ '0)))
                            (let ((_%tl4678046942%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7566775668%_ '1)))
                                  (_%target4677846939%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7566775668%_
                                      '0))))
                              (if (gx#stx-null? _%tl4678046942%_)
                                  (_%__match7595375954%_
                                   _%e4660847624%_
                                   _%hd4660747628%_
                                   _%tl4660647631%_
                                   _%e4661147634%_
                                   _%hd4661047638%_
                                   _%tl4660947641%_
                                   _%e4661447644%_
                                   _%hd4661347648%_
                                   _%tl4661247651%_
                                   _%e4677746929%_
                                   _%hd4677646933%_
                                   _%tl4677546936%_
                                   _%__splice7566775668%_
                                   _%target4677846939%_
                                   _%tl4678046942%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                  (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4661347648%_)
                                                  (let ((_%e4677746929%_
                                                         (gx#syntax-e
                                                          _%hd4661347648%_)))
                                                    (let ((_%tl4677546936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4677746929%_)))
                                                          (_%hd4677646933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4677746929%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4660947641%_)
                                                          (let ((_%__splice7566775668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4660947641%_ '0)))
                    (let ((_%tl4678046942%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7566775668%_ '1)))
                          (_%target4677846939%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7566775668%_ '0))))
                      (if (gx#stx-null? _%tl4678046942%_)
                          (_%__match7595375954%_
                           _%e4660847624%_
                           _%hd4660747628%_
                           _%tl4660647631%_
                           _%e4661147634%_
                           _%hd4661047638%_
                           _%tl4660947641%_
                           _%e4661447644%_
                           _%hd4661347648%_
                           _%tl4661247651%_
                           _%e4677746929%_
                           _%hd4677646933%_
                           _%tl4677546936%_
                           _%__splice7566775668%_
                           _%target4677846939%_
                           _%tl4678046942%_)
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                  (let () (declare (not safe)) (_%g4659946808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_))))
                                          (if (gx#stx-pair? _%hd4661347648%_)
                                              (let ((_%e4677746929%_
                                                     (gx#syntax-e
                                                      _%hd4661347648%_)))
                                                (let ((_%tl4677546936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4677746929%_)))
                                                      (_%hd4677646933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4677746929%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4660947641%_)
                                                      (let ((_%__splice7566775668%_
                                                             (gx#syntax-split-splice
                                                              _%tl4660947641%_
                                                              '0)))
                                                        (let ((_%tl4678046942%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '1)))
                      (_%target4677846939%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '0))))
                  (if (gx#stx-null? _%tl4678046942%_)
                      (_%__match7595375954%_
                       _%e4660847624%_
                       _%hd4660747628%_
                       _%tl4660647631%_
                       _%e4661147634%_
                       _%hd4661047638%_
                       _%tl4660947641%_
                       _%e4661447644%_
                       _%hd4661347648%_
                       _%tl4661247651%_
                       _%e4677746929%_
                       _%hd4677646933%_
                       _%tl4677546936%_
                       _%__splice7566775668%_
                       _%target4677846939%_
                       _%tl4678046942%_)
                      (let () (declare (not safe)) (_%g4659946808%_)))))
              (let () (declare (not safe)) (_%g4659946808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_))))
                                      (if (gx#stx-pair? _%hd4661347648%_)
                                          (let ((_%e4677746929%_
                                                 (gx#syntax-e
                                                  _%hd4661347648%_)))
                                            (let ((_%tl4677546936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4677746929%_)))
                                                  (_%hd4677646933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4677746929%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4660947641%_)
                                                  (let ((_%__splice7566775668%_
                                                         (gx#syntax-split-splice
                                                          _%tl4660947641%_
                                                          '0)))
                                                    (let ((_%tl4678046942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '1)))
                                                          (_%target4677846939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4678046942%_)
                                                          (_%__match7595375954%_
                                                           _%e4660847624%_
                                                           _%hd4660747628%_
                                                           _%tl4660647631%_
                                                           _%e4661147634%_
                                                           _%hd4661047638%_
                                                           _%tl4660947641%_
                                                           _%e4661447644%_
                                                           _%hd4661347648%_
                                                           _%tl4661247651%_
                                                           _%e4677746929%_
                                                           _%hd4677646933%_
                                                           _%tl4677546936%_
                                                           _%__splice7566775668%_
                                                           _%target4677846939%_
                                                           _%tl4678046942%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4659946808%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_)))))
                              (if (gx#identifier? _%hd4661647658%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80705_|
                                       _%hd4661647658%_)
                                      (if (gx#stx-pair? _%tl4662147681%_)
                                          (let ((_%e4675247071%_
                                                 (gx#syntax-e
                                                  _%tl4662147681%_)))
                                            (let ((_%tl4675047078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4675247071%_)))
                                                  (_%hd4675147075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4675247071%_))))
                                              (if (gx#stx-null?
                                                   _%tl4675047078%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4660947641%_)
                                                      (let ((_%__splice7566375664%_
                                                             (gx#syntax-split-splice
                                                              _%tl4660947641%_
                                                              '0)))
                                                        (let ((_%tl4675547084%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7566375664%_ '1)))
                      (_%target4675347081%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7566375664%_ '0))))
                  (if (gx#stx-null? _%tl4675547084%_)
                      (_%__match7592175922%_
                       _%e4660847624%_
                       _%hd4660747628%_
                       _%tl4660647631%_
                       _%e4661147634%_
                       _%hd4661047638%_
                       _%tl4660947641%_
                       _%e4661447644%_
                       _%hd4661347648%_
                       _%tl4661247651%_
                       _%e4661747654%_
                       _%hd4661647658%_
                       _%tl4661547661%_
                       _%e4662047664%_
                       _%hd4661947668%_
                       _%tl4661847671%_
                       _%e4662347674%_
                       _%hd4662247678%_
                       _%tl4662147681%_
                       _%e4675247071%_
                       _%hd4675147075%_
                       _%tl4675047078%_
                       _%__splice7566375664%_
                       _%target4675347081%_
                       _%tl4675547084%_)
                      (if (gx#stx-pair? _%hd4661347648%_)
                          (let ((_%e4677746929%_
                                 (gx#syntax-e _%hd4661347648%_)))
                            (let ((_%tl4677546936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4677746929%_)))
                                  (_%hd4677646933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4677746929%_))))
                              (let () (declare (not safe)) (_%g4659946808%_))))
                          (let () (declare (not safe)) (_%g4659946808%_))))))
              (if (gx#stx-pair? _%hd4661347648%_)
                  (let ((_%e4677746929%_ (gx#syntax-e _%hd4661347648%_)))
                    (let ((_%tl4677546936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4677746929%_)))
                          (_%hd4677646933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4677746929%_))))
                      (let () (declare (not safe)) (_%g4659946808%_))))
                  (let () (declare (not safe)) (_%g4659946808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4661347648%_)
                                                      (let ((_%e4677746929%_
                                                             (gx#syntax-e
                                                              _%hd4661347648%_)))
                                                        (let ((_%tl4677546936%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4677746929%_)))
                      (_%hd4677646933%_
                       (let () (declare (not safe)) (##car _%e4677746929%_))))
                  (if (gx#stx-pair/null? _%tl4660947641%_)
                      (let ((_%__splice7566775668%_
                             (gx#syntax-split-splice _%tl4660947641%_ '0)))
                        (let ((_%tl4678046942%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566775668%_ '1)))
                              (_%target4677846939%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566775668%_ '0))))
                          (if (gx#stx-null? _%tl4678046942%_)
                              (_%__match7595375954%_
                               _%e4660847624%_
                               _%hd4660747628%_
                               _%tl4660647631%_
                               _%e4661147634%_
                               _%hd4661047638%_
                               _%tl4660947641%_
                               _%e4661447644%_
                               _%hd4661347648%_
                               _%tl4661247651%_
                               _%e4677746929%_
                               _%hd4677646933%_
                               _%tl4677546936%_
                               _%__splice7566775668%_
                               _%target4677846939%_
                               _%tl4678046942%_)
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_)))))
                      (let () (declare (not safe)) (_%g4659946808%_)))))
              (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4661347648%_)
                                              (let ((_%e4677746929%_
                                                     (gx#syntax-e
                                                      _%hd4661347648%_)))
                                                (let ((_%tl4677546936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4677746929%_)))
                                                      (_%hd4677646933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4677746929%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4660947641%_)
                                                      (let ((_%__splice7566775668%_
                                                             (gx#syntax-split-splice
                                                              _%tl4660947641%_
                                                              '0)))
                                                        (let ((_%tl4678046942%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '1)))
                      (_%target4677846939%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '0))))
                  (if (gx#stx-null? _%tl4678046942%_)
                      (_%__match7595375954%_
                       _%e4660847624%_
                       _%hd4660747628%_
                       _%tl4660647631%_
                       _%e4661147634%_
                       _%hd4661047638%_
                       _%tl4660947641%_
                       _%e4661447644%_
                       _%hd4661347648%_
                       _%tl4661247651%_
                       _%e4677746929%_
                       _%hd4677646933%_
                       _%tl4677546936%_
                       _%__splice7566775668%_
                       _%target4677846939%_
                       _%tl4678046942%_)
                      (let () (declare (not safe)) (_%g4659946808%_)))))
              (let () (declare (not safe)) (_%g4659946808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_))))
                                      (if (gx#stx-pair? _%hd4661347648%_)
                                          (let ((_%e4677746929%_
                                                 (gx#syntax-e
                                                  _%hd4661347648%_)))
                                            (let ((_%tl4677546936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4677746929%_)))
                                                  (_%hd4677646933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4677746929%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4660947641%_)
                                                  (let ((_%__splice7566775668%_
                                                         (gx#syntax-split-splice
                                                          _%tl4660947641%_
                                                          '0)))
                                                    (let ((_%tl4678046942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '1)))
                                                          (_%target4677846939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7566775668%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4678046942%_)
                                                          (_%__match7595375954%_
                                                           _%e4660847624%_
                                                           _%hd4660747628%_
                                                           _%tl4660647631%_
                                                           _%e4661147634%_
                                                           _%hd4661047638%_
                                                           _%tl4660947641%_
                                                           _%e4661447644%_
                                                           _%hd4661347648%_
                                                           _%tl4661247651%_
                                                           _%e4677746929%_
                                                           _%hd4677646933%_
                                                           _%tl4677546936%_
                                                           _%__splice7566775668%_
                                                           _%target4677846939%_
                                                           _%tl4678046942%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4659946808%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))
                                  (if (gx#stx-pair? _%hd4661347648%_)
                                      (let ((_%e4677746929%_
                                             (gx#syntax-e _%hd4661347648%_)))
                                        (let ((_%tl4677546936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4677746929%_)))
                                              (_%hd4677646933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4677746929%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4660947641%_)
                                              (let ((_%__splice7566775668%_
                                                     (gx#syntax-split-splice
                                                      _%tl4660947641%_
                                                      '0)))
                                                (let ((_%tl4678046942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7566775668%_
                                                          '1)))
                                                      (_%target4677846939%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7566775668%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4678046942%_)
                                                      (_%__match7595375954%_
                                                       _%e4660847624%_
                                                       _%hd4660747628%_
                                                       _%tl4660647631%_
                                                       _%e4661147634%_
                                                       _%hd4661047638%_
                                                       _%tl4660947641%_
                                                       _%e4661447644%_
                                                       _%hd4661347648%_
                                                       _%tl4661247651%_
                                                       _%e4677746929%_
                                                       _%hd4677646933%_
                                                       _%tl4677546936%_
                                                       _%__splice7566775668%_
                                                       _%target4677846939%_
                                                       _%tl4678046942%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4659946808%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))))))
                  (if (gx#stx-null? _%tl4661847671%_)
                      (if (gx#stx-pair/null? _%tl4660947641%_)
                          (let ((_%__splice7565575656%_
                                 (gx#syntax-split-splice _%tl4660947641%_ '0)))
                            (let ((_%tl4669347348%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7565575656%_ '1)))
                                  (_%target4669147345%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7565575656%_
                                      '0))))
                              (if (gx#stx-null? _%tl4669347348%_)
                                  (_%__match7582175822%_
                                   _%e4660847624%_
                                   _%hd4660747628%_
                                   _%tl4660647631%_
                                   _%e4661147634%_
                                   _%hd4661047638%_
                                   _%tl4660947641%_
                                   _%e4661447644%_
                                   _%hd4661347648%_
                                   _%tl4661247651%_
                                   _%e4661747654%_
                                   _%hd4661647658%_
                                   _%tl4661547661%_
                                   _%e4662047664%_
                                   _%hd4661947668%_
                                   _%tl4661847671%_
                                   _%__splice7565575656%_
                                   _%target4669147345%_
                                   _%tl4669347348%_)
                                  (if (gx#stx-pair? _%hd4661347648%_)
                                      (let ((_%e4677746929%_
                                             (gx#syntax-e _%hd4661347648%_)))
                                        (let ((_%tl4677546936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4677746929%_)))
                                              (_%hd4677646933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4677746929%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))))
                          (if (gx#stx-pair? _%hd4661347648%_)
                              (let ((_%e4677746929%_
                                     (gx#syntax-e _%hd4661347648%_)))
                                (let ((_%tl4677546936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4677746929%_)))
                                      (_%hd4677646933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4677746929%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_))))
                              (let () (declare (not safe)) (_%g4659946808%_))))
                      (if (gx#stx-pair? _%hd4661347648%_)
                          (let ((_%e4677746929%_
                                 (gx#syntax-e _%hd4661347648%_)))
                            (let ((_%tl4677546936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4677746929%_)))
                                  (_%hd4677646933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4677746929%_))))
                              (if (gx#stx-pair/null? _%tl4660947641%_)
                                  (let ((_%__splice7566775668%_
                                         (gx#syntax-split-splice
                                          _%tl4660947641%_
                                          '0)))
                                    (let ((_%tl4678046942%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7566775668%_
                                              '1)))
                                          (_%target4677846939%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7566775668%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4678046942%_)
                                          (_%__match7595375954%_
                                           _%e4660847624%_
                                           _%hd4660747628%_
                                           _%tl4660647631%_
                                           _%e4661147634%_
                                           _%hd4661047638%_
                                           _%tl4660947641%_
                                           _%e4661447644%_
                                           _%hd4661347648%_
                                           _%tl4661247651%_
                                           _%e4677746929%_
                                           _%hd4677646933%_
                                           _%tl4677546936%_
                                           _%__splice7566775668%_
                                           _%target4677846939%_
                                           _%tl4678046942%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4659946808%_)))))
                          (let () (declare (not safe)) (_%g4659946808%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4661347648%_)
                                                      (let ((_%e4677746929%_
                                                             (gx#syntax-e
                                                              _%hd4661347648%_)))
                                                        (let ((_%tl4677546936%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4677746929%_)))
                      (_%hd4677646933%_
                       (let () (declare (not safe)) (##car _%e4677746929%_))))
                  (if (gx#stx-pair/null? _%tl4660947641%_)
                      (let ((_%__splice7566775668%_
                             (gx#syntax-split-splice _%tl4660947641%_ '0)))
                        (let ((_%tl4678046942%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566775668%_ '1)))
                              (_%target4677846939%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7566775668%_ '0))))
                          (if (gx#stx-null? _%tl4678046942%_)
                              (_%__match7595375954%_
                               _%e4660847624%_
                               _%hd4660747628%_
                               _%tl4660647631%_
                               _%e4661147634%_
                               _%hd4661047638%_
                               _%tl4660947641%_
                               _%e4661447644%_
                               _%hd4661347648%_
                               _%tl4661247651%_
                               _%e4677746929%_
                               _%hd4677646933%_
                               _%tl4677546936%_
                               _%__splice7566775668%_
                               _%target4677846939%_
                               _%tl4678046942%_)
                              (let ()
                                (declare (not safe))
                                (_%g4659946808%_)))))
                      (let () (declare (not safe)) (_%g4659946808%_)))))
              (let () (declare (not safe)) (_%g4659946808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4661347648%_)
                                              (let ((_%e4677746929%_
                                                     (gx#syntax-e
                                                      _%hd4661347648%_)))
                                                (let ((_%tl4677546936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4677746929%_)))
                                                      (_%hd4677646933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4677746929%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4660947641%_)
                                                      (let ((_%__splice7566775668%_
                                                             (gx#syntax-split-splice
                                                              _%tl4660947641%_
                                                              '0)))
                                                        (let ((_%tl4678046942%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '1)))
                      (_%target4677846939%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7566775668%_ '0))))
                  (if (gx#stx-null? _%tl4678046942%_)
                      (_%__match7595375954%_
                       _%e4660847624%_
                       _%hd4660747628%_
                       _%tl4660647631%_
                       _%e4661147634%_
                       _%hd4661047638%_
                       _%tl4660947641%_
                       _%e4661447644%_
                       _%hd4661347648%_
                       _%tl4661247651%_
                       _%e4677746929%_
                       _%hd4677646933%_
                       _%tl4677546936%_
                       _%__splice7566775668%_
                       _%target4677846939%_
                       _%tl4678046942%_)
                      (let () (declare (not safe)) (_%g4659946808%_)))))
              (let () (declare (not safe)) (_%g4659946808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4659946808%_))))))
                                  (if (gx#stx-null? _%hd4661047638%_)
                                      (if (gx#stx-pair/null? _%tl4660947641%_)
                                          (let ((_%__splice7567175672%_
                                                 (gx#syntax-split-splice
                                                  _%tl4660947641%_
                                                  '0)))
                                            (let ((_%tl4679646838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7567175672%_
                                                      '1)))
                                                  (_%target4679446835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7567175672%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4679646838%_)
                                                  (_%__match7597575976%_
                                                   _%e4660847624%_
                                                   _%hd4660747628%_
                                                   _%tl4660647631%_
                                                   _%e4661147634%_
                                                   _%hd4661047638%_
                                                   _%tl4660947641%_
                                                   _%__splice7567175672%_
                                                   _%target4679446835%_
                                                   _%tl4679646838%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4659946808%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4659946808%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4659946808%_))))))
                          (let () (declare (not safe)) (_%g4659946808%_)))))
                  (let () (declare (not safe)) (_%g4659946808%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47782%_)
        (let* ((_%g4778647820%_
                (lambda (_%g4778747816%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4778747816%_)))
               (_%g4778547943%_
                (lambda (_%g4778747824%_)
                  (if (gx#stx-pair? _%g4778747824%_)
                      (let ((_%e4779347827%_ (gx#syntax-e _%g4778747824%_)))
                        (let ((_%hd4779247831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4779347827%_)))
                              (_%tl4779147834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4779347827%_))))
                          (if (gx#stx-pair? _%tl4779147834%_)
                              (let ((_%e4779647837%_
                                     (gx#syntax-e _%tl4779147834%_)))
                                (let ((_%hd4779547841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4779647837%_)))
                                      (_%tl4779447844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4779647837%_))))
                                  (if (gx#stx-pair? _%hd4779547841%_)
                                      (let ((_%e4779947847%_
                                             (gx#syntax-e _%hd4779547841%_)))
                                        (let ((_%hd4779847851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4779947847%_)))
                                              (_%tl4779747854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4779947847%_))))
                                          (if (gx#stx-pair? _%tl4779747854%_)
                                              (let ((_%e4780247857%_
                                                     (gx#syntax-e
                                                      _%tl4779747854%_)))
                                                (let ((_%hd4780147861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4780247857%_)))
                                                      (_%tl4780047864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4780247857%_))))
                                                  (if (gx#identifier?
                                                       _%hd4780147861%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80707_|
                                                           _%hd4780147861%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4780047864%_)
                                                              (let ((_%e4780547867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4780047864%_)))
                        (let ((_%hd4780447871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4780547867%_)))
                              (_%tl4780347874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4780547867%_))))
                          (if (gx#stx-null? _%tl4780347874%_)
                              (if (gx#stx-pair/null? _%tl4779447844%_)
                                  (let ((_g80708_
                                         (gx#syntax-split-splice
                                          _%tl4779447844%_
                                          '0)))
                                    (begin
                                      (let ((_g80709_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g80708_)
                                                   (##vector-length _g80708_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g80709_ 2)))
                                            (error "Context expects 2 values"
                                                   _g80709_)))
                                      (let ((_%target4780647877%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80708_ 0)))
                                            (_%tl4780847880%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80708_ 1))))
                                        (if (gx#stx-null? _%tl4780847880%_)
                                            (letrec ((_%loop4780947883%_
                                                      (lambda (_%hd4780747887%_
                                                               _%body4781347890%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4780747887%_)
                                                            (let ((_%e4781047893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4780747887%_)))
                      (let ((_%lp-hd4781147897%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4781047893%_)))
                            (_%lp-tl4781247900%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4781047893%_))))
                        (_%loop4780947883%_
                         _%lp-tl4781247900%_
                         (cons _%lp-hd4781147897%_ _%body4781347890%_))))
                    (let ((_%body4781447903%_ (reverse _%body4781347890%_)))
                      ((lambda (_%L47907%_ _%L47909%_ _%L47910%_)
                         (if (gx#identifier? _%L47910%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47909%_
                                               (cons _%L47910%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4793447937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4793547940%_)
                            (cons _%g4793447937%_ _%g4793547940%_))
                          '()
                          _%L47907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47909%_ (cons _%L47910%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4778647820%_ _%g4778747824%_)))
                       _%body4781447903%_
                       _%hd4780447871%_
                       _%hd4779847851%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4780947883%_
                                               _%target4780647877%_
                                               '()))
                                            (_%g4778647820%_
                                             _%g4778747824%_)))))
                                  (_%g4778647820%_ _%g4778747824%_))
                              (_%g4778647820%_ _%g4778747824%_))))
                      (_%g4778647820%_ _%g4778747824%_))
                  (_%g4778647820%_ _%g4778747824%_))
              (_%g4778647820%_ _%g4778747824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4778647820%_
                                               _%g4778747824%_))))
                                      (_%g4778647820%_ _%g4778747824%_))))
                              (_%g4778647820%_ _%g4778747824%_))))
                      (_%g4778647820%_ _%g4778747824%_)))))
          (_%g4778547943%_ _%$stx47782%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48510%_ _%slot48512%_)
        (let ((_%$e48514%_
               (let ((__obj80538 _%klass48510%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80538
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80538 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80538
                      'slot-types)))))
          (if _%$e48514%_
              ((lambda (_%slot-types48518%_)
                 (assgetq _%slot48512%_ _%slot-types48518%_))
               _%$e48514%_)
              (let () '#f)))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48491%_ _%slot48493%_)
        (let ((_%$e48495%_
               (let ((__obj80539 _%klass48491%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80539
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80539 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80539
                      'slot-defaults)))))
          (if _%$e48495%_
              ((lambda (_%slot-defaults48499%_)
                 (let ((_%$e48502%_
                        (assgetq _%slot48493%_ _%slot-defaults48499%_)))
                   (if _%$e48502%_
                       (gx#syntax-local-introduce _%$e48502%_)
                       (let () '#f))))
               _%$e48495%_)
              (let () '#f)))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48472%_ _%slot48474%_)
        (let ((_%$e48476%_
               (let ((__obj80540 _%klass48472%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80540
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80540 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80540
                      'slot-defaults)))))
          (if _%$e48476%_
              ((lambda (_%slot-defaults48480%_)
                 (let ((_%$e48483%_
                        (assgetq _%slot48474%_ _%slot-defaults48480%_)))
                   (if _%$e48483%_
                       (gx#syntax-local-introduce _%$e48483%_)
                       (let () '#f))))
               _%$e48476%_)
              (let () '#f)))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass48240%_ _%slot48242%_)
        (let ((_%contract4824348245%_
               (let ()
                 (declare (not safe))
                 (|gerbil/core/contract~Using[1]#!class-slot-contract|
                  _%klass48240%_
                  _%slot48242%_))))
          (if _%contract4824348245%_
              (let* ((_%contract48249%_ _%contract4824348245%_)
                     (_%__stx7597875979%_ _%contract48249%_)
                     (_%g4825448291%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7597875979%_))))
                (let ((_%__kont7598175982%_
                       (lambda (_%L48441%_ _%L48443%_)
                         (let ((__tmp80710
                                (gx#free-identifier=?
                                 _%L48443%_
                                 (gx#datum->syntax '#f ':-))))
                           (declare (not safe))
                           (not __tmp80710))))
                      (_%__kont7598375984%_
                       (lambda (_%L48381%_ _%L48383%_ _%L48384%_)
                         (let ((__tmp80711
                                (gx#free-identifier=?
                                 _%L48383%_
                                 (gx#datum->syntax '#f ':-))))
                           (declare (not safe))
                           (not __tmp80711))))
                      (_%__kont7598575986%_ (lambda (_%L48318%_) '#f)))
                  (let* ((_%__match7603176032%_
                          (lambda (_%e4826948341%_
                                   _%hd4826848345%_
                                   _%tl4826748348%_
                                   _%e4827248351%_
                                   _%hd4827148355%_
                                   _%tl4827048358%_
                                   _%e4827548361%_
                                   _%hd4827448365%_
                                   _%tl4827348368%_
                                   _%e4827848371%_
                                   _%hd4827748375%_
                                   _%tl4827648378%_)
                            (let ((_%L48381%_ _%hd4827748375%_)
                                  (_%L48383%_ _%hd4827448365%_)
                                  (_%L48384%_ _%hd4827148355%_))
                              (if (and (gx#identifier? _%L48383%_)
                                       (or (gx#free-identifier=?
                                            _%L48383%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48383%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48383%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48383%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7598375984%_
                                   _%L48381%_
                                   _%L48383%_
                                   _%L48384%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4825448291%_))))))
                         (_%__match7600176002%_
                          (lambda (_%e4826048421%_
                                   _%hd4825948425%_
                                   _%tl4825848428%_
                                   _%e4826348431%_
                                   _%hd4826248435%_
                                   _%tl4826148438%_)
                            (let ((_%L48441%_ _%hd4826248435%_)
                                  (_%L48443%_ _%hd4825948425%_))
                              (if (and (gx#identifier? _%L48443%_)
                                       (or (gx#free-identifier=?
                                            _%L48443%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48443%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48443%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48443%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7598175982%_ _%L48441%_ _%L48443%_)
                                  (if (gx#identifier? _%hd4825948425%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80712_|
                                           _%hd4825948425%_)
                                          (_%__kont7598575986%_
                                           _%hd4826248435%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4825448291%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4825448291%_))))))))
                    (if (gx#stx-pair? _%__stx7597875979%_)
                        (let ((_%e4826048421%_
                               (gx#syntax-e _%__stx7597875979%_)))
                          (let ((_%tl4825848428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4826048421%_)))
                                (_%hd4825948425%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4826048421%_))))
                            (if (gx#stx-pair? _%tl4825848428%_)
                                (let ((_%e4826348431%_
                                       (gx#syntax-e _%tl4825848428%_)))
                                  (let ((_%tl4826148438%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4826348431%_)))
                                        (_%hd4826248435%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4826348431%_))))
                                    (if (gx#stx-null? _%tl4826148438%_)
                                        (_%__match7600176002%_
                                         _%e4826048421%_
                                         _%hd4825948425%_
                                         _%tl4825848428%_
                                         _%e4826348431%_
                                         _%hd4826248435%_
                                         _%tl4826148438%_)
                                        (if (gx#identifier? _%hd4825948425%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g80712_|
                                                 _%hd4825948425%_)
                                                (if (gx#stx-pair?
                                                     _%tl4826148438%_)
                                                    (let ((_%e4827548361%_
                                                           (gx#syntax-e
                                                            _%tl4826148438%_)))
                                                      (let ((_%tl4827348368%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4827548361%_)))
                    (_%hd4827448365%_
                     (let () (declare (not safe)) (##car _%e4827548361%_))))
                (if (gx#stx-pair? _%tl4827348368%_)
                    (let ((_%e4827848371%_ (gx#syntax-e _%tl4827348368%_)))
                      (let ((_%tl4827648378%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4827848371%_)))
                            (_%hd4827748375%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4827848371%_))))
                        (if (gx#stx-null? _%tl4827648378%_)
                            (_%__match7603176032%_
                             _%e4826048421%_
                             _%hd4825948425%_
                             _%tl4825848428%_
                             _%e4826348431%_
                             _%hd4826248435%_
                             _%tl4826148438%_
                             _%e4827548361%_
                             _%hd4827448365%_
                             _%tl4827348368%_
                             _%e4827848371%_
                             _%hd4827748375%_
                             _%tl4827648378%_)
                            (let () (declare (not safe)) (_%g4825448291%_)))))
                    (let () (declare (not safe)) (_%g4825448291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4825448291%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4825448291%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4825448291%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4825448291%_)))))
                        (let () (declare (not safe)) (_%g4825448291%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass48008%_ _%slot48010%_)
        (let ((_%contract4801148013%_
               (let ()
                 (declare (not safe))
                 (|gerbil/core/contract~Using[1]#!class-slot-contract|
                  _%klass48008%_
                  _%slot48010%_))))
          (if _%contract4801148013%_
              (let* ((_%contract48017%_ _%contract4801148013%_)
                     (_%__stx7605276053%_ _%contract48017%_)
                     (_%g4802248059%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7605276053%_))))
                (let ((_%__kont7605576056%_
                       (lambda (_%L48209%_ _%L48211%_)
                         (let ((__tmp80713
                                (gx#free-identifier=?
                                 _%L48211%_
                                 (gx#datum->syntax '#f ':-))))
                           (declare (not safe))
                           (not __tmp80713))))
                      (_%__kont7605776058%_
                       (lambda (_%L48149%_ _%L48151%_ _%L48152%_) '#t))
                      (_%__kont7605976060%_ (lambda (_%L48086%_) '#t)))
                  (let* ((_%__match7610576106%_
                          (lambda (_%e4803748109%_
                                   _%hd4803648113%_
                                   _%tl4803548116%_
                                   _%e4804048119%_
                                   _%hd4803948123%_
                                   _%tl4803848126%_
                                   _%e4804348129%_
                                   _%hd4804248133%_
                                   _%tl4804148136%_
                                   _%e4804648139%_
                                   _%hd4804548143%_
                                   _%tl4804448146%_)
                            (let ((_%L48149%_ _%hd4804548143%_)
                                  (_%L48151%_ _%hd4804248133%_)
                                  (_%L48152%_ _%hd4803948123%_))
                              (if (and (gx#identifier? _%L48151%_)
                                       (or (gx#free-identifier=?
                                            _%L48151%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48151%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48151%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48151%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7605776058%_
                                   _%L48149%_
                                   _%L48151%_
                                   _%L48152%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4802248059%_))))))
                         (_%__match7607576076%_
                          (lambda (_%e4802848189%_
                                   _%hd4802748193%_
                                   _%tl4802648196%_
                                   _%e4803148199%_
                                   _%hd4803048203%_
                                   _%tl4802948206%_)
                            (let ((_%L48209%_ _%hd4803048203%_)
                                  (_%L48211%_ _%hd4802748193%_))
                              (if (and (gx#identifier? _%L48211%_)
                                       (or (gx#free-identifier=?
                                            _%L48211%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48211%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48211%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48211%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7605576056%_ _%L48209%_ _%L48211%_)
                                  (if (gx#identifier? _%hd4802748193%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80714_|
                                           _%hd4802748193%_)
                                          (_%__kont7605976060%_
                                           _%hd4803048203%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4802248059%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4802248059%_))))))))
                    (if (gx#stx-pair? _%__stx7605276053%_)
                        (let ((_%e4802848189%_
                               (gx#syntax-e _%__stx7605276053%_)))
                          (let ((_%tl4802648196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4802848189%_)))
                                (_%hd4802748193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4802848189%_))))
                            (if (gx#stx-pair? _%tl4802648196%_)
                                (let ((_%e4803148199%_
                                       (gx#syntax-e _%tl4802648196%_)))
                                  (let ((_%tl4802948206%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4803148199%_)))
                                        (_%hd4803048203%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4803148199%_))))
                                    (if (gx#stx-null? _%tl4802948206%_)
                                        (_%__match7607576076%_
                                         _%e4802848189%_
                                         _%hd4802748193%_
                                         _%tl4802648196%_
                                         _%e4803148199%_
                                         _%hd4803048203%_
                                         _%tl4802948206%_)
                                        (if (gx#identifier? _%hd4802748193%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g80714_|
                                                 _%hd4802748193%_)
                                                (if (gx#stx-pair?
                                                     _%tl4802948206%_)
                                                    (let ((_%e4804348129%_
                                                           (gx#syntax-e
                                                            _%tl4802948206%_)))
                                                      (let ((_%tl4804148136%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4804348129%_)))
                    (_%hd4804248133%_
                     (let () (declare (not safe)) (##car _%e4804348129%_))))
                (if (gx#stx-pair? _%tl4804148136%_)
                    (let ((_%e4804648139%_ (gx#syntax-e _%tl4804148136%_)))
                      (let ((_%tl4804448146%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4804648139%_)))
                            (_%hd4804548143%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4804648139%_))))
                        (if (gx#stx-null? _%tl4804448146%_)
                            (_%__match7610576106%_
                             _%e4802848189%_
                             _%hd4802748193%_
                             _%tl4802648196%_
                             _%e4803148199%_
                             _%hd4803048203%_
                             _%tl4802948206%_
                             _%e4804348129%_
                             _%hd4804248133%_
                             _%tl4804148136%_
                             _%e4804648139%_
                             _%hd4804548143%_
                             _%tl4804448146%_)
                            (let () (declare (not safe)) (_%g4802248059%_)))))
                    (let () (declare (not safe)) (_%g4802248059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4802248059%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4802248059%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4802248059%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4802248059%_)))))
                        (let () (declare (not safe)) (_%g4802248059%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47994%_)
        (if (gx#identifier? _%id47994%_)
            (let* ((_%str47997%_ (symbol->string (gx#stx-e _%id47994%_)))
                   (_%index4799948001%_ (string-index _%str47997%_ '#\.)))
              (if _%index4799948001%_
                  (let ((_%index48005%_ _%index4799948001%_))
                    (if (let () (declare (not safe)) (##fx> _%index48005%_ '0))
                        (let ((__tmp80715
                               (ormap string-empty?
                                      (string-split _%str47997%_ '#\.))))
                          (declare (not safe))
                          (not __tmp80715))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47987%_ _%id47989%_)
        (let ((_%parts47991%_
               (string-split (symbol->string (gx#stx-e _%id47989%_)) '#\.)))
          (if (find string-empty? _%parts47991%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47987%_
               _%id47989%_)
              (cons (gx#stx-identifier _%id47989%_ (car _%parts47991%_))
                    (map string->symbol (cdr _%parts47991%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47968%_ _%klass-or-id47970%_ _%slot47971%_)
        (let* ((_%klass47973%_
                (if (gx#identifier? _%klass-or-id47970%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47968%_
                       _%klass-or-id47970%_))
                    _%klass-or-id47970%_))
               (_%accessors47976%_
                (let ((__obj80541 _%klass47973%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj80541
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj80541 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj80541
                       'unchecked-accessors))))
               (_%$e47981%_ (assgetq _%slot47971%_ _%accessors47976%_)))
          (if _%$e47981%_
              _%$e47981%_
              (let ()
                (gx#raise-syntax-error
                 '#f
                 '"no accessor for slot"
                 _%stx47968%_
                 _%klass47973%_
                 _%slot47971%_))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47948%_
               _%klass-or-id47950%_
               _%slot47951%_
               _%checked?47952%_)
        (let* ((_%klass47954%_
                (if (gx#identifier? _%klass-or-id47950%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47948%_
                       _%klass-or-id47950%_))
                    _%klass-or-id47950%_))
               (_%mutators47957%_
                (if _%checked?47952%_
                    (let ((__obj80542 _%klass47954%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80542
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80542 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80542
                           'mutators)))
                    (let ((__obj80543 _%klass47954%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80543
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80543 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80543
                           'unchecked-mutators)))))
               (_%$e47962%_ (assgetq _%slot47951%_ _%mutators47957%_)))
          (if _%$e47962%_
              _%$e47962%_
              (let ()
                (gx#raise-syntax-error
                 '#f
                 '"no mutator for slot"
                 _%stx47948%_
                 _%klass47954%_
                 _%slot47951%_))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48523%_)
        (letrec ((_%expand-body48526%_
                  (lambda (_%klass49250%_
                           _%var49252%_
                           _%Type49253%_
                           _%body49254%_
                           _%checked?49255%_)
                    (let* ((_%g4925749301%_
                            (lambda (_%g4925849297%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4925849297%_)))
                           (_%g4925649458%_
                            (lambda (_%g4925849305%_)
                              (if (gx#stx-pair? _%g4925849305%_)
                                  (let ((_%e4926849308%_
                                         (gx#syntax-e _%g4925849305%_)))
                                    (let ((_%hd4926749312%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4926849308%_)))
                                          (_%tl4926649315%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4926849308%_))))
                                      (if (gx#stx-pair? _%tl4926649315%_)
                                          (let ((_%e4927149318%_
                                                 (gx#syntax-e
                                                  _%tl4926649315%_)))
                                            (let ((_%hd4927049322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4927149318%_)))
                                                  (_%tl4926949325%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4927149318%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4926949325%_)
                                                  (let ((_%e4927449328%_
                                                         (gx#syntax-e
                                                          _%tl4926949325%_)))
                                                    (let ((_%hd4927349332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4927449328%_)))
                                                          (_%tl4927249335%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4927449328%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4927249335%_)
                                                          (let ((_%e4927749338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4927249335%_)))
                    (let ((_%hd4927649342%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4927749338%_)))
                          (_%tl4927549345%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4927749338%_))))
                      (if (gx#stx-pair? _%tl4927549345%_)
                          (let ((_%e4928049348%_
                                 (gx#syntax-e _%tl4927549345%_)))
                            (let ((_%hd4927949352%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4928049348%_)))
                                  (_%tl4927849355%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4928049348%_))))
                              (if (gx#stx-pair? _%tl4927849355%_)
                                  (let ((_%e4928349358%_
                                         (gx#syntax-e _%tl4927849355%_)))
                                    (let ((_%hd4928249362%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4928349358%_)))
                                          (_%tl4928149365%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4928349358%_))))
                                      (if (gx#stx-pair? _%tl4928149365%_)
                                          (let ((_%e4928649368%_
                                                 (gx#syntax-e
                                                  _%tl4928149365%_)))
                                            (let ((_%hd4928549372%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4928649368%_)))
                                                  (_%tl4928449375%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4928649368%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4928549372%_)
                                                  (let ((_g80716_
                                                         (gx#syntax-split-splice
                                                          _%hd4928549372%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80717_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80716_)
                           (##vector-length _g80716_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80717_ 2)))
                    (error "Context expects 2 values" _g80717_)))
              (let ((_%target4928749378%_
                     (let () (declare (not safe)) (##vector-ref _g80716_ 0)))
                    (_%tl4928949381%_
                     (let () (declare (not safe)) (##vector-ref _g80716_ 1))))
                (if (gx#stx-null? _%tl4928949381%_)
                    (letrec ((_%loop4929049384%_
                              (lambda (_%hd4928849388%_ _%body4929449391%_)
                                (if (gx#stx-pair? _%hd4928849388%_)
                                    (let ((_%e4929149394%_
                                           (gx#syntax-e _%hd4928849388%_)))
                                      (let ((_%lp-hd4929249398%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4929149394%_)))
                                            (_%lp-tl4929349401%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4929149394%_))))
                                        (_%loop4929049384%_
                                         _%lp-tl4929349401%_
                                         (cons _%lp-hd4929249398%_
                                               _%body4929449391%_))))
                                    (let ((_%body4929549404%_
                                           (reverse _%body4929449391%_)))
                                      (if (gx#stx-null? _%tl4928449375%_)
                                          ((lambda (_%L49408%_
                                                    _%L49410%_
                                                    _%L49411%_
                                                    _%L49412%_
                                                    _%L49413%_
                                                    _%L49414%_
                                                    _%L49415%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L49413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L49414%_ '()))
                                           (cons _%L49413%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L49415%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L49413%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L49412%_ '()))
                                 (cons _%L49411%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L49410%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4944949452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4945049455%_)
                        (cons _%g4944949452%_ _%g4945049455%_))
                      '()
                      _%L49408%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4929549404%_
                                           _%hd4928249362%_
                                           _%hd4927949352%_
                                           _%hd4927649342%_
                                           _%hd4927349332%_
                                           _%hd4927049322%_
                                           _%hd4926749312%_)
                                          (_%g4925749301%_
                                           _%g4925849305%_)))))))
                      (_%loop4929049384%_ _%target4928749378%_ '()))
                    (_%g4925749301%_ _%g4925849305%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4925749301%_
                                                   _%g4925849305%_))))
                                          (_%g4925749301%_ _%g4925849305%_))))
                                  (_%g4925749301%_ _%g4925849305%_))))
                          (_%g4925749301%_ _%g4925849305%_))))
                  (_%g4925749301%_ _%g4925849305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4925749301%_
                                                   _%g4925849305%_))))
                                          (_%g4925749301%_ _%g4925849305%_))))
                                  (_%g4925749301%_ _%g4925849305%_)))))
                      (_%g4925649458%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj80544 _%klass49250%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80544
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80544
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj80544
                                    'type-descriptor)))
                             _%var49252%_
                             _%klass49250%_
                             _%checked?49255%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49254%_)))))
                 (_%expand48528%_
                  (lambda (_%var49142%_
                           _%Type49144%_
                           _%body49145%_
                           _%checked?49146%_
                           _%checked-mutators?49147%_
                           _%maybe?49148%_)
                    (let* ((_%klass49150%_
                            (gx#syntax-local-value _%Type49144%_ false))
                           (_%expr-body49157%_
                            (_%expand-body48526%_
                             _%klass49150%_
                             _%var49142%_
                             _%Type49144%_
                             _%body49145%_
                             (let ((_%$e49153%_ _%checked?49146%_))
                               (if _%$e49153%_
                                   _%$e49153%_
                                   _%checked-mutators?49147%_)))))
                      (if _%checked?49146%_
                          (let* ((_%g4916249181%_
                                  (lambda (_%g4916349177%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4916349177%_)))
                                 (_%g4916149243%_
                                  (lambda (_%g4916349185%_)
                                    (if (gx#stx-pair? _%g4916349185%_)
                                        (let ((_%e4916949188%_
                                               (gx#syntax-e _%g4916349185%_)))
                                          (let ((_%hd4916849192%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4916949188%_)))
                                                (_%tl4916749195%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4916949188%_))))
                                            (if (gx#stx-pair? _%tl4916749195%_)
                                                (let ((_%e4917249198%_
                                                       (gx#syntax-e
                                                        _%tl4916749195%_)))
                                                  (let ((_%hd4917149202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4917249198%_)))
                                                        (_%tl4917049205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4917249198%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4917049205%_)
                                                        (let ((_%e4917549208%_
                                                               (gx#syntax-e
                                                                _%tl4917049205%_)))
                                                          (let ((_%hd4917449212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4917549208%_)))
                        (_%tl4917349215%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4917549208%_))))
                    (if (gx#stx-null? _%tl4917349215%_)
                        ((lambda (_%L49218%_ _%L49220%_ _%L49221%_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'with-contract)
                                   (cons (cons _%L49220%_
                                               (cons (gx#datum->syntax '#f ':~)
                                                     (cons _%L49221%_ '())))
                                         (cons _%L49218%_ '())))))
                         _%hd4917449212%_
                         _%hd4917149202%_
                         _%hd4916849192%_)
                        (_%g4916249181%_ _%g4916349185%_))))
                (_%g4916249181%_ _%g4916349185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4916249181%_
                                                 _%g4916349185%_))))
                                        (_%g4916249181%_ _%g4916349185%_)))))
                            (_%g4916149243%_
                             (list (let ((_%instance?49247%_
                                          (let ((__obj80545 _%klass49150%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj80545
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj80545
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj80545
                                                 'predicate)))))
                                     (if _%maybe?49148%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49247%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49247%_))
                                   _%var49142%_
                                   _%expr-body49157%_)))
                          _%expr-body49157%_)))))
          (let* ((_%__stx7612676127%_ _%stx48523%_)
                 (_%g4853348648%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7612676127%_))))
            (let ((_%__kont7612976130%_
                   (lambda (_%L49103%_ _%L49105%_ _%L49106%_)
                     (_%expand48528%_
                      _%L49106%_
                      _%L49105%_
                      (foldr (lambda (_%g4912949132%_ _%g4913049135%_)
                               (cons _%g4912949132%_ _%g4913049135%_))
                             '()
                             _%L49103%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7613376134%_
                   (lambda (_%L48981%_ _%L48983%_ _%L48984%_)
                     (_%expand48528%_
                      _%L48984%_
                      _%L48983%_
                      (foldr (lambda (_%g4900749010%_ _%g4900849013%_)
                               (cons _%g4900749010%_ _%g4900849013%_))
                             '()
                             _%L48981%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7613776138%_
                   (lambda (_%L48859%_ _%L48861%_ _%L48862%_)
                     (_%expand48528%_
                      _%L48862%_
                      _%L48861%_
                      (foldr (lambda (_%g4888548888%_ _%g4888648891%_)
                               (cons _%g4888548888%_ _%g4888648891%_))
                             '()
                             _%L48859%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7614176142%_
                   (lambda (_%L48735%_ _%L48737%_ _%L48738%_)
                     (_%expand48528%_
                      _%L48738%_
                      _%L48737%_
                      (foldr (lambda (_%g4876348766%_ _%g4876448769%_)
                               (cons _%g4876348766%_ _%g4876448769%_))
                             '()
                             _%L48735%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7632176322%_
                      (lambda (_%e4862148655%_
                               _%hd4862048659%_
                               _%tl4861948662%_
                               _%e4862448665%_
                               _%hd4862348669%_
                               _%tl4862248672%_
                               _%e4862748675%_
                               _%hd4862648679%_
                               _%tl4862548682%_
                               _%e4863048685%_
                               _%hd4862948689%_
                               _%tl4862848692%_
                               _%e4863348695%_
                               _%hd4863248699%_
                               _%tl4863148702%_
                               _%__splice7614376144%_
                               _%target4863448705%_
                               _%tl4863648708%_)
                        (letrec ((_%loop4863748711%_
                                  (lambda (_%hd4863548715%_ _%body4864148718%_)
                                    (if (gx#stx-pair? _%hd4863548715%_)
                                        (let ((_%e4863848721%_
                                               (gx#syntax-e _%hd4863548715%_)))
                                          (let ((_%lp-tl4864048728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4863848721%_)))
                                                (_%lp-hd4863948725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4863848721%_))))
                                            (_%loop4863748711%_
                                             _%lp-tl4864048728%_
                                             (cons _%lp-hd4863948725%_
                                                   _%body4864148718%_))))
                                        (let ((_%body4864248731%_
                                               (reverse _%body4864148718%_)))
                                          (let ((_%L48735%_ _%body4864248731%_)
                                                (_%L48737%_ _%hd4863248699%_)
                                                (_%L48738%_ _%hd4862648679%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48737%_))
                                                (_%__kont7614176142%_
                                                 _%L48735%_
                                                 _%L48737%_
                                                 _%L48738%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4853348648%_)))))))))
                          (_%loop4863748711%_ _%target4863448705%_ '()))))
                     (_%__match7627776278%_
                      (lambda (_%e4859448779%_
                               _%hd4859348783%_
                               _%tl4859248786%_
                               _%e4859748789%_
                               _%hd4859648793%_
                               _%tl4859548796%_
                               _%e4860048799%_
                               _%hd4859948803%_
                               _%tl4859848806%_
                               _%e4860348809%_
                               _%hd4860248813%_
                               _%tl4860148816%_
                               _%e4860648819%_
                               _%hd4860548823%_
                               _%tl4860448826%_
                               _%__splice7613976140%_
                               _%target4860748829%_
                               _%tl4860948832%_)
                        (letrec ((_%loop4861048835%_
                                  (lambda (_%hd4860848839%_ _%body4861448842%_)
                                    (if (gx#stx-pair? _%hd4860848839%_)
                                        (let ((_%e4861148845%_
                                               (gx#syntax-e _%hd4860848839%_)))
                                          (let ((_%lp-tl4861348852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4861148845%_)))
                                                (_%lp-hd4861248849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4861148845%_))))
                                            (_%loop4861048835%_
                                             _%lp-tl4861348852%_
                                             (cons _%lp-hd4861248849%_
                                                   _%body4861448842%_))))
                                        (let ((_%body4861548855%_
                                               (reverse _%body4861448842%_)))
                                          (let ((_%L48859%_ _%body4861548855%_)
                                                (_%L48861%_ _%hd4860548823%_)
                                                (_%L48862%_ _%hd4859948803%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48861%_))
                                                (_%__kont7613776138%_
                                                 _%L48859%_
                                                 _%L48861%_
                                                 _%L48862%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4853348648%_)))))))))
                          (_%loop4861048835%_ _%target4860748829%_ '()))))
                     (_%__match7623376234%_
                      (lambda (_%e4856748901%_
                               _%hd4856648905%_
                               _%tl4856548908%_
                               _%e4857048911%_
                               _%hd4856948915%_
                               _%tl4856848918%_
                               _%e4857348921%_
                               _%hd4857248925%_
                               _%tl4857148928%_
                               _%e4857648931%_
                               _%hd4857548935%_
                               _%tl4857448938%_
                               _%e4857948941%_
                               _%hd4857848945%_
                               _%tl4857748948%_
                               _%__splice7613576136%_
                               _%target4858048951%_
                               _%tl4858248954%_)
                        (letrec ((_%loop4858348957%_
                                  (lambda (_%hd4858148961%_ _%body4858748964%_)
                                    (if (gx#stx-pair? _%hd4858148961%_)
                                        (let ((_%e4858448967%_
                                               (gx#syntax-e _%hd4858148961%_)))
                                          (let ((_%lp-tl4858648974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4858448967%_)))
                                                (_%lp-hd4858548971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4858448967%_))))
                                            (_%loop4858348957%_
                                             _%lp-tl4858648974%_
                                             (cons _%lp-hd4858548971%_
                                                   _%body4858748964%_))))
                                        (let ((_%body4858848977%_
                                               (reverse _%body4858748964%_)))
                                          (let ((_%L48981%_ _%body4858848977%_)
                                                (_%L48983%_ _%hd4857848945%_)
                                                (_%L48984%_ _%hd4857248925%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48983%_))
                                                (_%__kont7613376134%_
                                                 _%L48981%_
                                                 _%L48983%_
                                                 _%L48984%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4853348648%_)))))))))
                          (_%loop4858348957%_ _%target4858048951%_ '()))))
                     (_%__match7618976190%_
                      (lambda (_%e4854049023%_
                               _%hd4853949027%_
                               _%tl4853849030%_
                               _%e4854349033%_
                               _%hd4854249037%_
                               _%tl4854149040%_
                               _%e4854649043%_
                               _%hd4854549047%_
                               _%tl4854449050%_
                               _%e4854949053%_
                               _%hd4854849057%_
                               _%tl4854749060%_
                               _%e4855249063%_
                               _%hd4855149067%_
                               _%tl4855049070%_
                               _%__splice7613176132%_
                               _%target4855349073%_
                               _%tl4855549076%_)
                        (letrec ((_%loop4855649079%_
                                  (lambda (_%hd4855449083%_ _%body4856049086%_)
                                    (if (gx#stx-pair? _%hd4855449083%_)
                                        (let ((_%e4855749089%_
                                               (gx#syntax-e _%hd4855449083%_)))
                                          (let ((_%lp-tl4855949096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4855749089%_)))
                                                (_%lp-hd4855849093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4855749089%_))))
                                            (_%loop4855649079%_
                                             _%lp-tl4855949096%_
                                             (cons _%lp-hd4855849093%_
                                                   _%body4856049086%_))))
                                        (let ((_%body4856149099%_
                                               (reverse _%body4856049086%_)))
                                          (let ((_%L49103%_ _%body4856149099%_)
                                                (_%L49105%_ _%hd4855149067%_)
                                                (_%L49106%_ _%hd4854549047%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L49105%_))
                                                (_%__kont7612976130%_
                                                 _%L49103%_
                                                 _%L49105%_
                                                 _%L49106%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4853348648%_)))))))))
                          (_%loop4855649079%_ _%target4855349073%_ '())))))
                (if (gx#stx-pair? _%__stx7612676127%_)
                    (let ((_%e4854049023%_ (gx#syntax-e _%__stx7612676127%_)))
                      (let ((_%tl4853849030%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4854049023%_)))
                            (_%hd4853949027%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4854049023%_))))
                        (if (gx#stx-pair? _%tl4853849030%_)
                            (let ((_%e4854349033%_
                                   (gx#syntax-e _%tl4853849030%_)))
                              (let ((_%tl4854149040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4854349033%_)))
                                    (_%hd4854249037%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4854349033%_))))
                                (if (gx#stx-pair? _%hd4854249037%_)
                                    (let ((_%e4854649043%_
                                           (gx#syntax-e _%hd4854249037%_)))
                                      (let ((_%tl4854449050%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4854649043%_)))
                                            (_%hd4854549047%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4854649043%_))))
                                        (if (gx#stx-pair? _%tl4854449050%_)
                                            (let ((_%e4854949053%_
                                                   (gx#syntax-e
                                                    _%tl4854449050%_)))
                                              (let ((_%tl4854749060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4854949053%_)))
                                                    (_%hd4854849057%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4854949053%_))))
                                                (if (gx#identifier?
                                                     _%hd4854849057%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80718_|
                                                         _%hd4854849057%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4854749060%_)
                                                            (let ((_%e4855249063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4854749060%_)))
                      (let ((_%tl4855049070%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4855249063%_)))
                            (_%hd4855149067%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4855249063%_))))
                        (if (gx#stx-null? _%tl4855049070%_)
                            (if (gx#stx-pair/null? _%tl4854149040%_)
                                (let ((_%__splice7613176132%_
                                       (gx#syntax-split-splice
                                        _%tl4854149040%_
                                        '0)))
                                  (let ((_%tl4855549076%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7613176132%_
                                            '1)))
                                        (_%target4855349073%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7613176132%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4855549076%_)
                                        (_%__match7618976190%_
                                         _%e4854049023%_
                                         _%hd4853949027%_
                                         _%tl4853849030%_
                                         _%e4854349033%_
                                         _%hd4854249037%_
                                         _%tl4854149040%_
                                         _%e4854649043%_
                                         _%hd4854549047%_
                                         _%tl4854449050%_
                                         _%e4854949053%_
                                         _%hd4854849057%_
                                         _%tl4854749060%_
                                         _%e4855249063%_
                                         _%hd4855149067%_
                                         _%tl4855049070%_
                                         _%__splice7613176132%_
                                         _%target4855349073%_
                                         _%tl4855549076%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4853348648%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4853348648%_)))
                            (let () (declare (not safe)) (_%g4853348648%_)))))
                    (let () (declare (not safe)) (_%g4853348648%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80719_|
                     _%hd4854849057%_)
                    (if (gx#stx-pair? _%tl4854749060%_)
                        (let ((_%e4857948941%_ (gx#syntax-e _%tl4854749060%_)))
                          (let ((_%tl4857748948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4857948941%_)))
                                (_%hd4857848945%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4857948941%_))))
                            (if (gx#stx-null? _%tl4857748948%_)
                                (if (gx#stx-pair/null? _%tl4854149040%_)
                                    (let ((_%__splice7613576136%_
                                           (gx#syntax-split-splice
                                            _%tl4854149040%_
                                            '0)))
                                      (let ((_%tl4858248954%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7613576136%_
                                                '1)))
                                            (_%target4858048951%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7613576136%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4858248954%_)
                                            (_%__match7623376234%_
                                             _%e4854049023%_
                                             _%hd4853949027%_
                                             _%tl4853849030%_
                                             _%e4854349033%_
                                             _%hd4854249037%_
                                             _%tl4854149040%_
                                             _%e4854649043%_
                                             _%hd4854549047%_
                                             _%tl4854449050%_
                                             _%e4854949053%_
                                             _%hd4854849057%_
                                             _%tl4854749060%_
                                             _%e4857948941%_
                                             _%hd4857848945%_
                                             _%tl4857748948%_
                                             _%__splice7613576136%_
                                             _%target4858048951%_
                                             _%tl4858248954%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4853348648%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4853348648%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4853348648%_)))))
                        (let () (declare (not safe)) (_%g4853348648%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80720_|
                         _%hd4854849057%_)
                        (if (gx#stx-pair? _%tl4854749060%_)
                            (let ((_%e4860648819%_
                                   (gx#syntax-e _%tl4854749060%_)))
                              (let ((_%tl4860448826%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4860648819%_)))
                                    (_%hd4860548823%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4860648819%_))))
                                (if (gx#stx-null? _%tl4860448826%_)
                                    (if (gx#stx-pair/null? _%tl4854149040%_)
                                        (let ((_%__splice7613976140%_
                                               (gx#syntax-split-splice
                                                _%tl4854149040%_
                                                '0)))
                                          (let ((_%tl4860948832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7613976140%_
                                                    '1)))
                                                (_%target4860748829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7613976140%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4860948832%_)
                                                (_%__match7627776278%_
                                                 _%e4854049023%_
                                                 _%hd4853949027%_
                                                 _%tl4853849030%_
                                                 _%e4854349033%_
                                                 _%hd4854249037%_
                                                 _%tl4854149040%_
                                                 _%e4854649043%_
                                                 _%hd4854549047%_
                                                 _%tl4854449050%_
                                                 _%e4854949053%_
                                                 _%hd4854849057%_
                                                 _%tl4854749060%_
                                                 _%e4860648819%_
                                                 _%hd4860548823%_
                                                 _%tl4860448826%_
                                                 _%__splice7613976140%_
                                                 _%target4860748829%_
                                                 _%tl4860948832%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4853348648%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4853348648%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4853348648%_)))))
                            (let () (declare (not safe)) (_%g4853348648%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/contract~Using[1]#_g80721_|
                             _%hd4854849057%_)
                            (if (gx#stx-pair? _%tl4854749060%_)
                                (let ((_%e4863348695%_
                                       (gx#syntax-e _%tl4854749060%_)))
                                  (let ((_%tl4863148702%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4863348695%_)))
                                        (_%hd4863248699%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4863348695%_))))
                                    (if (gx#stx-null? _%tl4863148702%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4854149040%_)
                                            (let ((_%__splice7614376144%_
                                                   (gx#syntax-split-splice
                                                    _%tl4854149040%_
                                                    '0)))
                                              (let ((_%tl4863648708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7614376144%_
                                                        '1)))
                                                    (_%target4863448705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7614376144%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4863648708%_)
                                                    (_%__match7632176322%_
                                                     _%e4854049023%_
                                                     _%hd4853949027%_
                                                     _%tl4853849030%_
                                                     _%e4854349033%_
                                                     _%hd4854249037%_
                                                     _%tl4854149040%_
                                                     _%e4854649043%_
                                                     _%hd4854549047%_
                                                     _%tl4854449050%_
                                                     _%e4854949053%_
                                                     _%hd4854849057%_
                                                     _%tl4854749060%_
                                                     _%e4863348695%_
                                                     _%hd4863248699%_
                                                     _%tl4863148702%_
                                                     _%__splice7614376144%_
                                                     _%target4863448705%_
                                                     _%tl4863648708%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4853348648%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4853348648%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4853348648%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4853348648%_)))
                            (let () (declare (not safe)) (_%g4853348648%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4853348648%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4853348648%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4853348648%_)))))
                            (let () (declare (not safe)) (_%g4853348648%_)))))
                    (let () (declare (not safe)) (_%g4853348648%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49467%_)
        (letrec ((_%expand-body49470%_
                  (lambda (_%var50287%_
                           _%Interface50289%_
                           _%body50290%_
                           _%checked?50291%_)
                    (let* ((_%type50293%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49467%_
                               _%Interface50289%_)))
                           (_%g5029650340%_
                            (lambda (_%g5029750336%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5029750336%_)))
                           (_%g5029550498%_
                            (lambda (_%g5029750344%_)
                              (if (gx#stx-pair? _%g5029750344%_)
                                  (let ((_%e5030750347%_
                                         (gx#syntax-e _%g5029750344%_)))
                                    (let ((_%hd5030650351%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5030750347%_)))
                                          (_%tl5030550354%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5030750347%_))))
                                      (if (gx#stx-pair? _%tl5030550354%_)
                                          (let ((_%e5031050357%_
                                                 (gx#syntax-e
                                                  _%tl5030550354%_)))
                                            (let ((_%hd5030950361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5031050357%_)))
                                                  (_%tl5030850364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5031050357%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5030850364%_)
                                                  (let ((_%e5031350367%_
                                                         (gx#syntax-e
                                                          _%tl5030850364%_)))
                                                    (let ((_%hd5031250371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5031350367%_)))
                                                          (_%tl5031150374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5031350367%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5031150374%_)
                                                          (let ((_%e5031650377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5031150374%_)))
                    (let ((_%hd5031550381%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5031650377%_)))
                          (_%tl5031450384%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5031650377%_))))
                      (if (gx#stx-pair? _%tl5031450384%_)
                          (let ((_%e5031950387%_
                                 (gx#syntax-e _%tl5031450384%_)))
                            (let ((_%hd5031850391%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5031950387%_)))
                                  (_%tl5031750394%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5031950387%_))))
                              (if (gx#stx-pair? _%tl5031750394%_)
                                  (let ((_%e5032250397%_
                                         (gx#syntax-e _%tl5031750394%_)))
                                    (let ((_%hd5032150401%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5032250397%_)))
                                          (_%tl5032050404%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5032250397%_))))
                                      (if (gx#stx-pair? _%tl5032050404%_)
                                          (let ((_%e5032550407%_
                                                 (gx#syntax-e
                                                  _%tl5032050404%_)))
                                            (let ((_%hd5032450411%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5032550407%_)))
                                                  (_%tl5032350414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5032550407%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5032450411%_)
                                                  (let ((_g80722_
                                                         (gx#syntax-split-splice
                                                          _%hd5032450411%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80723_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80722_)
                           (##vector-length _g80722_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80723_ 2)))
                    (error "Context expects 2 values" _g80723_)))
              (let ((_%target5032650417%_
                     (let () (declare (not safe)) (##vector-ref _g80722_ 0)))
                    (_%tl5032850420%_
                     (let () (declare (not safe)) (##vector-ref _g80722_ 1))))
                (if (gx#stx-null? _%tl5032850420%_)
                    (letrec ((_%loop5032950423%_
                              (lambda (_%hd5032750427%_ _%body5033350430%_)
                                (if (gx#stx-pair? _%hd5032750427%_)
                                    (let ((_%e5033050433%_
                                           (gx#syntax-e _%hd5032750427%_)))
                                      (let ((_%lp-hd5033150437%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5033050433%_)))
                                            (_%lp-tl5033250440%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5033050433%_))))
                                        (_%loop5032950423%_
                                         _%lp-tl5033250440%_
                                         (cons _%lp-hd5033150437%_
                                               _%body5033350430%_))))
                                    (let ((_%body5033450443%_
                                           (reverse _%body5033350430%_)))
                                      (if (gx#stx-null? _%tl5032350414%_)
                                          ((lambda (_%L50447%_
                                                    _%L50449%_
                                                    _%L50450%_
                                                    _%L50451%_
                                                    _%L50452%_
                                                    _%L50453%_
                                                    _%L50454%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L50451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L50452%_ '()))
                                           (cons _%L50451%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L50454%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L50451%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L50453%_ '()))
                                 (cons _%L50450%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L50449%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g5048950492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5049050495%_)
                        (cons _%g5048950492%_ _%g5049050495%_))
                      '()
                      _%L50447%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5033450443%_
                                           _%hd5032150401%_
                                           _%hd5031850391%_
                                           _%hd5031550381%_
                                           _%hd5031250371%_
                                           _%hd5030950361%_
                                           _%hd5030650351%_)
                                          (_%g5029650340%_
                                           _%g5029750344%_)))))))
                      (_%loop5032950423%_ _%target5032650417%_ '()))
                    (_%g5029650340%_ _%g5029750344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5029650340%_
                                                   _%g5029750344%_))))
                                          (_%g5029650340%_ _%g5029750344%_))))
                                  (_%g5029650340%_ _%g5029750344%_))))
                          (_%g5029650340%_ _%g5029750344%_))))
                  (_%g5029650340%_ _%g5029750344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5029650340%_
                                                   _%g5029750344%_))))
                                          (_%g5029650340%_ _%g5029750344%_))))
                                  (_%g5029650340%_ _%g5029750344%_)))))
                      (_%g5029550498%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50293%_
                             (let ((__obj80546 _%type50293%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80546
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80546
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj80546
                                    'instance-type)))
                             _%var50287%_
                             _%checked?50291%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50290%_)))))
                 (_%expand49472%_
                  (lambda (_%var50086%_
                           _%Interface50088%_
                           _%body50089%_
                           _%checked?50090%_
                           _%checked-methods?50091%_
                           _%maybe?50092%_)
                    (let* ((_%g5009450102%_
                            (lambda (_%g5009550098%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5009550098%_)))
                           (_%g5009350279%_
                            (lambda (_%g5009550106%_)
                              ((lambda (_%L50109%_)
                                 (let ()
                                   (if _%checked?50090%_
                                       (if _%maybe?50092%_
                                           (let* ((_%g5012150136%_
                                                   (lambda (_%g5012250132%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g5012250132%_)))
                                                  (_%g5012050182%_
                                                   (lambda (_%g5012250140%_)
                                                     (if (gx#stx-pair?
                                                          _%g5012250140%_)
                                                         (let ((_%e5012750143%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5012250140%_)))
                   (let ((_%hd5012650147%_
                          (let ()
                            (declare (not safe))
                            (##car _%e5012750143%_)))
                         (_%tl5012550150%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e5012750143%_))))
                     (if (gx#stx-pair? _%tl5012550150%_)
                         (let ((_%e5013050153%_
                                (gx#syntax-e _%tl5012550150%_)))
                           (let ((_%hd5012950157%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e5013050153%_)))
                                 (_%tl5012850160%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e5013050153%_))))
                             (if (gx#stx-null? _%tl5012850160%_)
                                 ((lambda (_%L50163%_ _%L50165%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L50165%_
                                                        (cons (cons _%L50163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L50165%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons _%L50165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L50109%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'nil-dereference!)
                                              (cons _%L50165%_ '()))
                                        '()))))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd5012950157%_
                                  _%hd5012650147%_)
                                 (_%g5012150136%_ _%g5012250140%_))))
                         (_%g5012150136%_ _%g5012250140%_))))
                 (_%g5012150136%_ _%g5012250140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g5012050182%_
                                              (list _%var50086%_
                                                    _%Interface50088%_)))
                                           (let* ((_%g5018650201%_
                                                   (lambda (_%g5018750197%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g5018750197%_)))
                                                  (_%g5018550245%_
                                                   (lambda (_%g5018750205%_)
                                                     (if (gx#stx-pair?
                                                          _%g5018750205%_)
                                                         (let ((_%e5019250208%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5018750205%_)))
                   (let ((_%hd5019150212%_
                          (let ()
                            (declare (not safe))
                            (##car _%e5019250208%_)))
                         (_%tl5019050215%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e5019250208%_))))
                     (if (gx#stx-pair? _%tl5019050215%_)
                         (let ((_%e5019550218%_
                                (gx#syntax-e _%tl5019050215%_)))
                           (let ((_%hd5019450222%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e5019550218%_)))
                                 (_%tl5019350225%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e5019550218%_))))
                             (if (gx#stx-null? _%tl5019350225%_)
                                 ((lambda (_%L50228%_ _%L50230%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L50230%_
                                                        (cons (cons _%L50228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L50230%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L50109%_ '())))))
                                  _%hd5019450222%_
                                  _%hd5019150212%_)
                                 (_%g5018650201%_ _%g5018750205%_))))
                         (_%g5018650201%_ _%g5018750205%_))))
                 (_%g5018650201%_ _%g5018750205%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g5018550245%_
                                              (list _%var50086%_
                                                    _%Interface50088%_))))
                                       (if _%maybe?50092%_
                                           (let* ((_%g5024950257%_
                                                   (lambda (_%g5025050253%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g5025050253%_)))
                                                  (_%g5024850275%_
                                                   (lambda (_%g5025050261%_)
                                                     ((lambda (_%L50264%_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons _%L50264%_
                              (cons _%L50109%_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'nil-dereference!)
                                                (cons _%L50264%_ '()))
                                          '()))))))
              _%g5025050261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g5024850275%_ _%var50086%_))
                                           _%L50109%_))))
                               _%g5009550106%_))))
                      (_%g5009350279%_
                       (_%expand-body49470%_
                        _%var50086%_
                        _%Interface50088%_
                        _%body50089%_
                        (let ((_%$e50283%_ _%checked?50090%_))
                          (if _%$e50283%_
                              _%$e50283%_
                              _%checked-methods?50091%_))))))))
          (let* ((_%__stx7632476325%_ _%stx49467%_)
                 (_%g4947749592%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7632476325%_))))
            (let ((_%__kont7632776328%_
                   (lambda (_%L50047%_ _%L50049%_ _%L50050%_)
                     (_%expand49472%_
                      _%L50050%_
                      _%L50049%_
                      (foldr (lambda (_%g5007350076%_ _%g5007450079%_)
                               (cons _%g5007350076%_ _%g5007450079%_))
                             '()
                             _%L50047%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7633176332%_
                   (lambda (_%L49925%_ _%L49927%_ _%L49928%_)
                     (_%expand49472%_
                      _%L49928%_
                      _%L49927%_
                      (foldr (lambda (_%g4995149954%_ _%g4995249957%_)
                               (cons _%g4995149954%_ _%g4995249957%_))
                             '()
                             _%L49925%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7633576336%_
                   (lambda (_%L49803%_ _%L49805%_ _%L49806%_)
                     (_%expand49472%_
                      _%L49806%_
                      _%L49805%_
                      (foldr (lambda (_%g4982949832%_ _%g4983049835%_)
                               (cons _%g4982949832%_ _%g4983049835%_))
                             '()
                             _%L49803%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7633976340%_
                   (lambda (_%L49679%_ _%L49681%_ _%L49682%_)
                     (_%expand49472%_
                      _%L49682%_
                      _%L49681%_
                      (foldr (lambda (_%g4970749710%_ _%g4970849713%_)
                               (cons _%g4970749710%_ _%g4970849713%_))
                             '()
                             _%L49679%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7651976520%_
                      (lambda (_%e4956549599%_
                               _%hd4956449603%_
                               _%tl4956349606%_
                               _%e4956849609%_
                               _%hd4956749613%_
                               _%tl4956649616%_
                               _%e4957149619%_
                               _%hd4957049623%_
                               _%tl4956949626%_
                               _%e4957449629%_
                               _%hd4957349633%_
                               _%tl4957249636%_
                               _%e4957749639%_
                               _%hd4957649643%_
                               _%tl4957549646%_
                               _%__splice7634176342%_
                               _%target4957849649%_
                               _%tl4958049652%_)
                        (letrec ((_%loop4958149655%_
                                  (lambda (_%hd4957949659%_ _%body4958549662%_)
                                    (if (gx#stx-pair? _%hd4957949659%_)
                                        (let ((_%e4958249665%_
                                               (gx#syntax-e _%hd4957949659%_)))
                                          (let ((_%lp-tl4958449672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4958249665%_)))
                                                (_%lp-hd4958349669%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4958249665%_))))
                                            (_%loop4958149655%_
                                             _%lp-tl4958449672%_
                                             (cons _%lp-hd4958349669%_
                                                   _%body4958549662%_))))
                                        (let ((_%body4958649675%_
                                               (reverse _%body4958549662%_)))
                                          (let ((_%L49679%_ _%body4958649675%_)
                                                (_%L49681%_ _%hd4957649643%_)
                                                (_%L49682%_ _%hd4957049623%_))
                                            (if (and (gx#identifier?
                                                      _%L49682%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49681%_)))
                                                (_%__kont7633976340%_
                                                 _%L49679%_
                                                 _%L49681%_
                                                 _%L49682%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947749592%_)))))))))
                          (_%loop4958149655%_ _%target4957849649%_ '()))))
                     (_%__match7647576476%_
                      (lambda (_%e4953849723%_
                               _%hd4953749727%_
                               _%tl4953649730%_
                               _%e4954149733%_
                               _%hd4954049737%_
                               _%tl4953949740%_
                               _%e4954449743%_
                               _%hd4954349747%_
                               _%tl4954249750%_
                               _%e4954749753%_
                               _%hd4954649757%_
                               _%tl4954549760%_
                               _%e4955049763%_
                               _%hd4954949767%_
                               _%tl4954849770%_
                               _%__splice7633776338%_
                               _%target4955149773%_
                               _%tl4955349776%_)
                        (letrec ((_%loop4955449779%_
                                  (lambda (_%hd4955249783%_ _%body4955849786%_)
                                    (if (gx#stx-pair? _%hd4955249783%_)
                                        (let ((_%e4955549789%_
                                               (gx#syntax-e _%hd4955249783%_)))
                                          (let ((_%lp-tl4955749796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4955549789%_)))
                                                (_%lp-hd4955649793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4955549789%_))))
                                            (_%loop4955449779%_
                                             _%lp-tl4955749796%_
                                             (cons _%lp-hd4955649793%_
                                                   _%body4955849786%_))))
                                        (let ((_%body4955949799%_
                                               (reverse _%body4955849786%_)))
                                          (let ((_%L49803%_ _%body4955949799%_)
                                                (_%L49805%_ _%hd4954949767%_)
                                                (_%L49806%_ _%hd4954349747%_))
                                            (if (and (gx#identifier?
                                                      _%L49806%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49805%_)))
                                                (_%__kont7633576336%_
                                                 _%L49803%_
                                                 _%L49805%_
                                                 _%L49806%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947749592%_)))))))))
                          (_%loop4955449779%_ _%target4955149773%_ '()))))
                     (_%__match7643176432%_
                      (lambda (_%e4951149845%_
                               _%hd4951049849%_
                               _%tl4950949852%_
                               _%e4951449855%_
                               _%hd4951349859%_
                               _%tl4951249862%_
                               _%e4951749865%_
                               _%hd4951649869%_
                               _%tl4951549872%_
                               _%e4952049875%_
                               _%hd4951949879%_
                               _%tl4951849882%_
                               _%e4952349885%_
                               _%hd4952249889%_
                               _%tl4952149892%_
                               _%__splice7633376334%_
                               _%target4952449895%_
                               _%tl4952649898%_)
                        (letrec ((_%loop4952749901%_
                                  (lambda (_%hd4952549905%_ _%body4953149908%_)
                                    (if (gx#stx-pair? _%hd4952549905%_)
                                        (let ((_%e4952849911%_
                                               (gx#syntax-e _%hd4952549905%_)))
                                          (let ((_%lp-tl4953049918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4952849911%_)))
                                                (_%lp-hd4952949915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4952849911%_))))
                                            (_%loop4952749901%_
                                             _%lp-tl4953049918%_
                                             (cons _%lp-hd4952949915%_
                                                   _%body4953149908%_))))
                                        (let ((_%body4953249921%_
                                               (reverse _%body4953149908%_)))
                                          (let ((_%L49925%_ _%body4953249921%_)
                                                (_%L49927%_ _%hd4952249889%_)
                                                (_%L49928%_ _%hd4951649869%_))
                                            (if (and (gx#identifier?
                                                      _%L49928%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49927%_)))
                                                (_%__kont7633176332%_
                                                 _%L49925%_
                                                 _%L49927%_
                                                 _%L49928%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947749592%_)))))))))
                          (_%loop4952749901%_ _%target4952449895%_ '()))))
                     (_%__match7638776388%_
                      (lambda (_%e4948449967%_
                               _%hd4948349971%_
                               _%tl4948249974%_
                               _%e4948749977%_
                               _%hd4948649981%_
                               _%tl4948549984%_
                               _%e4949049987%_
                               _%hd4948949991%_
                               _%tl4948849994%_
                               _%e4949349997%_
                               _%hd4949250001%_
                               _%tl4949150004%_
                               _%e4949650007%_
                               _%hd4949550011%_
                               _%tl4949450014%_
                               _%__splice7632976330%_
                               _%target4949750017%_
                               _%tl4949950020%_)
                        (letrec ((_%loop4950050023%_
                                  (lambda (_%hd4949850027%_ _%body4950450030%_)
                                    (if (gx#stx-pair? _%hd4949850027%_)
                                        (let ((_%e4950150033%_
                                               (gx#syntax-e _%hd4949850027%_)))
                                          (let ((_%lp-tl4950350040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4950150033%_)))
                                                (_%lp-hd4950250037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4950150033%_))))
                                            (_%loop4950050023%_
                                             _%lp-tl4950350040%_
                                             (cons _%lp-hd4950250037%_
                                                   _%body4950450030%_))))
                                        (let ((_%body4950550043%_
                                               (reverse _%body4950450030%_)))
                                          (let ((_%L50047%_ _%body4950550043%_)
                                                (_%L50049%_ _%hd4949550011%_)
                                                (_%L50050%_ _%hd4948949991%_))
                                            (if (and (gx#identifier?
                                                      _%L50050%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50049%_)))
                                                (_%__kont7632776328%_
                                                 _%L50047%_
                                                 _%L50049%_
                                                 _%L50050%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947749592%_)))))))))
                          (_%loop4950050023%_ _%target4949750017%_ '())))))
                (if (gx#stx-pair? _%__stx7632476325%_)
                    (let ((_%e4948449967%_ (gx#syntax-e _%__stx7632476325%_)))
                      (let ((_%tl4948249974%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4948449967%_)))
                            (_%hd4948349971%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4948449967%_))))
                        (if (gx#stx-pair? _%tl4948249974%_)
                            (let ((_%e4948749977%_
                                   (gx#syntax-e _%tl4948249974%_)))
                              (let ((_%tl4948549984%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4948749977%_)))
                                    (_%hd4948649981%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4948749977%_))))
                                (if (gx#stx-pair? _%hd4948649981%_)
                                    (let ((_%e4949049987%_
                                           (gx#syntax-e _%hd4948649981%_)))
                                      (let ((_%tl4948849994%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4949049987%_)))
                                            (_%hd4948949991%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4949049987%_))))
                                        (if (gx#stx-pair? _%tl4948849994%_)
                                            (let ((_%e4949349997%_
                                                   (gx#syntax-e
                                                    _%tl4948849994%_)))
                                              (let ((_%tl4949150004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4949349997%_)))
                                                    (_%hd4949250001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4949349997%_))))
                                                (if (gx#identifier?
                                                     _%hd4949250001%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80724_|
                                                         _%hd4949250001%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4949150004%_)
                                                            (let ((_%e4949650007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4949150004%_)))
                      (let ((_%tl4949450014%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4949650007%_)))
                            (_%hd4949550011%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4949650007%_))))
                        (if (gx#stx-null? _%tl4949450014%_)
                            (if (gx#stx-pair/null? _%tl4948549984%_)
                                (let ((_%__splice7632976330%_
                                       (gx#syntax-split-splice
                                        _%tl4948549984%_
                                        '0)))
                                  (let ((_%tl4949950020%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7632976330%_
                                            '1)))
                                        (_%target4949750017%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7632976330%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4949950020%_)
                                        (_%__match7638776388%_
                                         _%e4948449967%_
                                         _%hd4948349971%_
                                         _%tl4948249974%_
                                         _%e4948749977%_
                                         _%hd4948649981%_
                                         _%tl4948549984%_
                                         _%e4949049987%_
                                         _%hd4948949991%_
                                         _%tl4948849994%_
                                         _%e4949349997%_
                                         _%hd4949250001%_
                                         _%tl4949150004%_
                                         _%e4949650007%_
                                         _%hd4949550011%_
                                         _%tl4949450014%_
                                         _%__splice7632976330%_
                                         _%target4949750017%_
                                         _%tl4949950020%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4947749592%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4947749592%_)))
                            (let () (declare (not safe)) (_%g4947749592%_)))))
                    (let () (declare (not safe)) (_%g4947749592%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80725_|
                     _%hd4949250001%_)
                    (if (gx#stx-pair? _%tl4949150004%_)
                        (let ((_%e4952349885%_ (gx#syntax-e _%tl4949150004%_)))
                          (let ((_%tl4952149892%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4952349885%_)))
                                (_%hd4952249889%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4952349885%_))))
                            (if (gx#stx-null? _%tl4952149892%_)
                                (if (gx#stx-pair/null? _%tl4948549984%_)
                                    (let ((_%__splice7633376334%_
                                           (gx#syntax-split-splice
                                            _%tl4948549984%_
                                            '0)))
                                      (let ((_%tl4952649898%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7633376334%_
                                                '1)))
                                            (_%target4952449895%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7633376334%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4952649898%_)
                                            (_%__match7643176432%_
                                             _%e4948449967%_
                                             _%hd4948349971%_
                                             _%tl4948249974%_
                                             _%e4948749977%_
                                             _%hd4948649981%_
                                             _%tl4948549984%_
                                             _%e4949049987%_
                                             _%hd4948949991%_
                                             _%tl4948849994%_
                                             _%e4949349997%_
                                             _%hd4949250001%_
                                             _%tl4949150004%_
                                             _%e4952349885%_
                                             _%hd4952249889%_
                                             _%tl4952149892%_
                                             _%__splice7633376334%_
                                             _%target4952449895%_
                                             _%tl4952649898%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4947749592%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4947749592%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4947749592%_)))))
                        (let () (declare (not safe)) (_%g4947749592%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80726_|
                         _%hd4949250001%_)
                        (if (gx#stx-pair? _%tl4949150004%_)
                            (let ((_%e4955049763%_
                                   (gx#syntax-e _%tl4949150004%_)))
                              (let ((_%tl4954849770%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4955049763%_)))
                                    (_%hd4954949767%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4955049763%_))))
                                (if (gx#stx-null? _%tl4954849770%_)
                                    (if (gx#stx-pair/null? _%tl4948549984%_)
                                        (let ((_%__splice7633776338%_
                                               (gx#syntax-split-splice
                                                _%tl4948549984%_
                                                '0)))
                                          (let ((_%tl4955349776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7633776338%_
                                                    '1)))
                                                (_%target4955149773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7633776338%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4955349776%_)
                                                (_%__match7647576476%_
                                                 _%e4948449967%_
                                                 _%hd4948349971%_
                                                 _%tl4948249974%_
                                                 _%e4948749977%_
                                                 _%hd4948649981%_
                                                 _%tl4948549984%_
                                                 _%e4949049987%_
                                                 _%hd4948949991%_
                                                 _%tl4948849994%_
                                                 _%e4949349997%_
                                                 _%hd4949250001%_
                                                 _%tl4949150004%_
                                                 _%e4955049763%_
                                                 _%hd4954949767%_
                                                 _%tl4954849770%_
                                                 _%__splice7633776338%_
                                                 _%target4955149773%_
                                                 _%tl4955349776%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947749592%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4947749592%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4947749592%_)))))
                            (let () (declare (not safe)) (_%g4947749592%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/contract~Using[1]#_g80727_|
                             _%hd4949250001%_)
                            (if (gx#stx-pair? _%tl4949150004%_)
                                (let ((_%e4957749639%_
                                       (gx#syntax-e _%tl4949150004%_)))
                                  (let ((_%tl4957549646%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4957749639%_)))
                                        (_%hd4957649643%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4957749639%_))))
                                    (if (gx#stx-null? _%tl4957549646%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4948549984%_)
                                            (let ((_%__splice7634176342%_
                                                   (gx#syntax-split-splice
                                                    _%tl4948549984%_
                                                    '0)))
                                              (let ((_%tl4958049652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7634176342%_
                                                        '1)))
                                                    (_%target4957849649%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7634176342%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4958049652%_)
                                                    (_%__match7651976520%_
                                                     _%e4948449967%_
                                                     _%hd4948349971%_
                                                     _%tl4948249974%_
                                                     _%e4948749977%_
                                                     _%hd4948649981%_
                                                     _%tl4948549984%_
                                                     _%e4949049987%_
                                                     _%hd4948949991%_
                                                     _%tl4948849994%_
                                                     _%e4949349997%_
                                                     _%hd4949250001%_
                                                     _%tl4949150004%_
                                                     _%e4957749639%_
                                                     _%hd4957649643%_
                                                     _%tl4957549646%_
                                                     _%__splice7634176342%_
                                                     _%target4957849649%_
                                                     _%tl4958049652%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4947749592%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4947749592%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4947749592%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4947749592%_)))
                            (let () (declare (not safe)) (_%g4947749592%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4947749592%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4947749592%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4947749592%_)))))
                            (let () (declare (not safe)) (_%g4947749592%_)))))
                    (let () (declare (not safe)) (_%g4947749592%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50507%_)
        (let* ((_%__stx7652276523%_ _%stx50507%_)
               (_%g5051250572%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7652276523%_))))
          (let ((_%__kont7652576526%_
                 (lambda (_%L51134%_ _%L51136%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51136%_ '()))
                               (foldr (lambda (_%g5115251155%_ _%g5115351158%_)
                                        (cons _%g5115251155%_ _%g5115351158%_))
                                      '()
                                      _%L51134%_)))))
                (_%__kont7652976530%_
                 (lambda (_%L50720%_ _%L50722%_)
                   (if (let ()
                         (declare (not safe))
                         (|gerbil/core/contract~Using[1]#dotted-identifier?|
                          _%L50722%_))
                       (let* ((_%g5074250749%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                  _%stx50507%_
                                  _%L50722%_)))
                              (_%E5074450755%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5074250749%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5074551053%_
                               (lambda (_%parts50759%_ _%var50761%_)
                                 (let ((_%$e50763%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50761%_))))
                                   (if _%$e50763%_
                                       ((lambda (_%te50767%_)
                                          (let _%loop50770%_ ((_%parts50773%_
                                                               _%parts50759%_)
                                                              (_%type50775%_
                                                               (##direct-structure-ref
                                                                _%te50767%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50776%_
                                                               _%var50761%_)
                                                              (_%checked-method?50777%_
                                                               (##direct-structure-ref
                                                                _%te50767%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50778%_
                                                               '#f))
                                            (let* ((_%parts5077950787%_
                                                    _%parts50773%_)
                                                   (_%else5078150848%_
                                                    (lambda ()
                                                      (let* ((_%g5079950807%_
                                                              (lambda (_%g5080050803%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5080050803%_)))
                     (_%g5079850844%_
                      (lambda (_%g5080050811%_)
                        ((lambda (_%L50814%_)
                           (let ()
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons _%L50814%_
                                         (foldr (lambda (_%g5083550838%_
                                                         _%g5083650841%_)
                                                  (cons _%g5083550838%_
                                                        _%g5083650841%_))
                                                '()
                                                _%L50720%_)))))
                         _%g5080050811%_))))
                (_%g5079850844%_ _%object50776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5078351027%_
                                                    (lambda (_%rest50852%_
                                                             _%part50854%_)
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (not _%nil-check?50778%_))
                       (let ((__tmp80728 (symbol->string _%part50854%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp80728)))
                  (let ((_%str50858%_ (symbol->string _%part50854%_)))
                    (_%loop50770%_
                     (cons (let ((__tmp80729
                                  (substring
                                   _%str50858%_
                                   '1
                                   (string-length _%str50858%_))))
                             (declare (not safe))
                             (##string->symbol __tmp80729))
                           _%rest50852%_)
                     _%type50775%_
                     _%object50776%_
                     _%checked-method?50777%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50775%_))
                      (let ()
                        (let* ((_%g5086350878%_
                                (lambda (_%g5086450874%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5086450874%_)))
                               (_%g5086250947%_
                                (lambda (_%g5086450882%_)
                                  (if (gx#stx-pair? _%g5086450882%_)
                                      (let ((_%e5086950885%_
                                             (gx#syntax-e _%g5086450882%_)))
                                        (let ((_%hd5086850889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5086950885%_)))
                                              (_%tl5086750892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5086950885%_))))
                                          (if (gx#stx-pair? _%tl5086750892%_)
                                              (let ((_%e5087250895%_
                                                     (gx#syntax-e
                                                      _%tl5086750892%_)))
                                                (let ((_%hd5087150899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5087250895%_)))
                                                      (_%tl5087050902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5087250895%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5087050902%_)
                                                      ((lambda (_%L50905%_
                                                                _%L50907%_)
                                                         (let ()
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (null? _%rest50852%_))
                       (let ()
                         (cons (gx#datum->syntax '#f '%%app)
                               (cons (cons _%L50905%_ (cons _%L50907%_ '()))
                                     (foldr (lambda (_%g5092650929%_
                                                     _%g5092750932%_)
                                              (cons _%g5092650929%_
                                                    _%g5092750932%_))
                                            '()
                                            _%L50720%_))))
                       (let ((_%$e50935%_
                              (let ()
                                (declare (not safe))
                                (|gerbil/core/contract~Using[1]#!class-slot-type|
                                 _%type50775%_
                                 _%part50854%_))))
                         (if _%$e50935%_
                             ((lambda (_%slot-type50939%_)
                                (let ((_%slot-type50942%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx50507%_
                                          _%slot-type50939%_))))
                                  (_%loop50770%_
                                   _%rest50852%_
                                   _%slot-type50942%_
                                   (cons _%L50905%_ (cons _%L50907%_ '()))
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                      _%type50775%_
                                      _%part50854%_))
                                   '#f)))
                              _%$e50935%_)
                             (let ()
                               (gx#raise-syntax-error
                                '#f
                                '"unresolved dotted reference; unknown type for slot"
                                _%stx50507%_
                                _%L50722%_
                                _%part50854%_)))))))
               _%hd5087150899%_
               _%hd5086850889%_)
              (_%g5086350878%_ _%g5086450882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5086350878%_
                                               _%g5086450882%_))))
                                      (_%g5086350878%_ _%g5086450882%_)))))
                          (_%g5086250947%_
                           (list (if _%nil-check?50778%_
                                     (cons 'check-nil!
                                           (cons _%object50776%_ '()))
                                     _%object50776%_)
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                    _%stx50507%_
                                    _%type50775%_
                                    _%part50854%_))))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50775%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest50852%_))
                                (let* ((_%g5095350968%_
                                        (lambda (_%g5095450964%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g5095450964%_)))
                                       (_%g5095251021%_
                                        (lambda (_%g5095450972%_)
                                          (if (gx#stx-pair? _%g5095450972%_)
                                              (let ((_%e5095950975%_
                                                     (gx#syntax-e
                                                      _%g5095450972%_)))
                                                (let ((_%hd5095850979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5095950975%_)))
                                                      (_%tl5095750982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5095950975%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5095750982%_)
                                                      (let ((_%e5096250985%_
                                                             (gx#syntax-e
                                                              _%tl5095750982%_)))
                                                        (let ((_%hd5096150989%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5096250985%_)))
                      (_%tl5096050992%_
                       (let () (declare (not safe)) (##cdr _%e5096250985%_))))
                  (if (gx#stx-null? _%tl5096050992%_)
                      ((lambda (_%L50995%_ _%L50997%_)
                         (let ()
                           (cons _%L50995%_
                                 (cons _%L50997%_
                                       (foldr (lambda (_%g5101251015%_
                                                       _%g5101351018%_)
                                                (cons _%g5101251015%_
                                                      _%g5101351018%_))
                                              '()
                                              _%L50720%_)))))
                       _%hd5096150989%_
                       _%hd5095850979%_)
                      (_%g5095350968%_ _%g5095450972%_))))
              (_%g5095350968%_ _%g5095450972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5095350968%_
                                               _%g5095450972%_)))))
                                  (_%g5095251021%_
                                   (list (if _%nil-check?50778%_
                                             (cons 'check-nil!
                                                   (cons _%object50776%_ '()))
                                             _%object50776%_)
                                         (gx#stx-identifier
                                          _%L50722%_
                                          (if _%checked-method?50777%_
                                              '""
                                              '"&")
                                          (let ((__obj80547 _%type50775%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj80547
                                                   'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj80547
                                                   '1
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/contract~InterfaceInfo#interface-info::t
                                                 __obj80547
                                                 'name)))
                                          '"-"
                                          _%part50854%_))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"illegal dotted reference; interface has no slots"
                                 _%stx50507%_
                                 _%L50722%_
                                 _%part50854%_)))
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"unexpected type"
                             _%stx50507%_
                             _%type50775%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5077950787%_))
                                                  (let ((_%hd5078451031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5077950787%_)))
                                                        (_%tl5078551034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5077950787%_))))
                                                    (let* ((_%part51037%_
                                                            _%hd5078451031%_)
                                                           (_%rest51040%_
                                                            _%tl5078551034%_))
                                                      (_%K5078351027%_
                                                       _%rest51040%_
                                                       _%part51037%_)))
                                                  (_%else5078150848%_)))))
                                        _%$e50763%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f '%%app)
                                               (cons _%L50722%_
                                                     (foldr (lambda (_%g5104451047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5104551050%_)
                      (cons _%g5104451047%_ _%g5104551050%_))
                    '()
                    _%L50720%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5074250749%_))
                             (let ((_%hd5074651057%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5074250749%_)))
                                   (_%tl5074751060%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5074250749%_))))
                               (let* ((_%var51063%_ _%hd5074651057%_)
                                      (_%parts51066%_ _%tl5074751060%_))
                                 (_%K5074551053%_
                                  _%parts51066%_
                                  _%var51063%_)))
                             (_%E5074450755%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50722%_
                                   (foldr (lambda (_%g5106851071%_
                                                   _%g5106951074%_)
                                            (cons _%g5106851071%_
                                                  _%g5106951074%_))
                                          '()
                                          _%L50720%_))))))
                (_%__kont7653376534%_
                 (lambda (_%L50619%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5063450637%_ _%g5063550640%_)
                                  (cons _%g5063450637%_ _%g5063550640%_))
                                '()
                                _%L50619%_)))))
            (let* ((_%__match7660976610%_
                    (lambda (_%e5055750579%_
                             _%hd5055650583%_
                             _%tl5055550586%_
                             _%__splice7653576536%_
                             _%target5055850589%_
                             _%tl5056050592%_)
                      (letrec ((_%loop5056150595%_
                                (lambda (_%hd5055950599%_ _%arg5056550602%_)
                                  (if (gx#stx-pair? _%hd5055950599%_)
                                      (let ((_%e5056250605%_
                                             (gx#syntax-e _%hd5055950599%_)))
                                        (let ((_%lp-tl5056450612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5056250605%_)))
                                              (_%lp-hd5056350609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5056250605%_))))
                                          (_%loop5056150595%_
                                           _%lp-tl5056450612%_
                                           (cons _%lp-hd5056350609%_
                                                 _%arg5056550602%_))))
                                      (let ((_%arg5056650615%_
                                             (reverse _%arg5056550602%_)))
                                        (_%__kont7653376534%_
                                         _%arg5056650615%_))))))
                        (_%loop5056150595%_ _%target5055850589%_ '()))))
                   (_%__match7659576596%_
                    (lambda (_%e5053550650%_
                             _%hd5053450654%_
                             _%tl5053350657%_
                             _%e5053850660%_
                             _%hd5053750664%_
                             _%tl5053650667%_
                             _%e5054150670%_
                             _%hd5054050674%_
                             _%tl5053950677%_
                             _%e5054450680%_
                             _%hd5054350684%_
                             _%tl5054250687%_
                             _%__splice7653176532%_
                             _%target5054550690%_
                             _%tl5054750693%_)
                      (letrec ((_%loop5054850696%_
                                (lambda (_%hd5054650700%_ _%rand5055250703%_)
                                  (if (gx#stx-pair? _%hd5054650700%_)
                                      (let ((_%e5054950706%_
                                             (gx#syntax-e _%hd5054650700%_)))
                                        (let ((_%lp-tl5055150713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5054950706%_)))
                                              (_%lp-hd5055050710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5054950706%_))))
                                          (_%loop5054850696%_
                                           _%lp-tl5055150713%_
                                           (cons _%lp-hd5055050710%_
                                                 _%rand5055250703%_))))
                                      (let ((_%rand5055350716%_
                                             (reverse _%rand5055250703%_)))
                                        (_%__kont7652976530%_
                                         _%rand5055350716%_
                                         _%hd5054350684%_))))))
                        (_%loop5054850696%_ _%target5054550690%_ '()))))
                   (_%__match7656976570%_
                    (lambda (_%e5053550650%_
                             _%hd5053450654%_
                             _%tl5053350657%_
                             _%e5053850660%_
                             _%hd5053750664%_
                             _%tl5053650667%_)
                      (if (gx#stx-pair? _%hd5053750664%_)
                          (let ((_%e5054150670%_
                                 (gx#syntax-e _%hd5053750664%_)))
                            (let ((_%tl5053950677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5054150670%_)))
                                  (_%hd5054050674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5054150670%_))))
                              (if (gx#identifier? _%hd5054050674%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80730_|
                                       _%hd5054050674%_)
                                      (if (gx#stx-pair? _%tl5053950677%_)
                                          (let ((_%e5054450680%_
                                                 (gx#syntax-e
                                                  _%tl5053950677%_)))
                                            (let ((_%tl5054250687%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5054450680%_)))
                                                  (_%hd5054350684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5054450680%_))))
                                              (if (gx#stx-null?
                                                   _%tl5054250687%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5053650667%_)
                                                      (let ((_%__splice7653176532%_
                                                             (gx#syntax-split-splice
                                                              _%tl5053650667%_
                                                              '0)))
                                                        (let ((_%tl5054750693%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7653176532%_ '1)))
                      (_%target5054550690%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7653176532%_ '0))))
                  (if (gx#stx-null? _%tl5054750693%_)
                      (_%__match7659576596%_
                       _%e5053550650%_
                       _%hd5053450654%_
                       _%tl5053350657%_
                       _%e5053850660%_
                       _%hd5053750664%_
                       _%tl5053650667%_
                       _%e5054150670%_
                       _%hd5054050674%_
                       _%tl5053950677%_
                       _%e5054450680%_
                       _%hd5054350684%_
                       _%tl5054250687%_
                       _%__splice7653176532%_
                       _%target5054550690%_
                       _%tl5054750693%_)
                      (if (gx#stx-pair/null? _%tl5053350657%_)
                          (let ((_%__splice7653576536%_
                                 (gx#syntax-split-splice _%tl5053350657%_ '0)))
                            (let ((_%tl5056050592%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7653576536%_ '1)))
                                  (_%target5055850589%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7653576536%_
                                      '0))))
                              (if (gx#stx-null? _%tl5056050592%_)
                                  (_%__match7660976610%_
                                   _%e5053550650%_
                                   _%hd5053450654%_
                                   _%tl5053350657%_
                                   _%__splice7653576536%_
                                   _%target5055850589%_
                                   _%tl5056050592%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5051250572%_)))))
                          (let () (declare (not safe)) (_%g5051250572%_))))))
              (if (gx#stx-pair/null? _%tl5053350657%_)
                  (let ((_%__splice7653576536%_
                         (gx#syntax-split-splice _%tl5053350657%_ '0)))
                    (let ((_%tl5056050592%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7653576536%_ '1)))
                          (_%target5055850589%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7653576536%_ '0))))
                      (if (gx#stx-null? _%tl5056050592%_)
                          (_%__match7660976610%_
                           _%e5053550650%_
                           _%hd5053450654%_
                           _%tl5053350657%_
                           _%__splice7653576536%_
                           _%target5055850589%_
                           _%tl5056050592%_)
                          (let () (declare (not safe)) (_%g5051250572%_)))))
                  (let () (declare (not safe)) (_%g5051250572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5053350657%_)
                                                      (let ((_%__splice7653576536%_
                                                             (gx#syntax-split-splice
                                                              _%tl5053350657%_
                                                              '0)))
                                                        (let ((_%tl5056050592%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7653576536%_ '1)))
                      (_%target5055850589%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7653576536%_ '0))))
                  (if (gx#stx-null? _%tl5056050592%_)
                      (_%__match7660976610%_
                       _%e5053550650%_
                       _%hd5053450654%_
                       _%tl5053350657%_
                       _%__splice7653576536%_
                       _%target5055850589%_
                       _%tl5056050592%_)
                      (let () (declare (not safe)) (_%g5051250572%_)))))
              (let () (declare (not safe)) (_%g5051250572%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5053350657%_)
                                              (let ((_%__splice7653576536%_
                                                     (gx#syntax-split-splice
                                                      _%tl5053350657%_
                                                      '0)))
                                                (let ((_%tl5056050592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7653576536%_
                                                          '1)))
                                                      (_%target5055850589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7653576536%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5056050592%_)
                                                      (_%__match7660976610%_
                                                       _%e5053550650%_
                                                       _%hd5053450654%_
                                                       _%tl5053350657%_
                                                       _%__splice7653576536%_
                                                       _%target5055850589%_
                                                       _%tl5056050592%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5051250572%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5051250572%_))))
                                      (if (gx#stx-pair/null? _%tl5053350657%_)
                                          (let ((_%__splice7653576536%_
                                                 (gx#syntax-split-splice
                                                  _%tl5053350657%_
                                                  '0)))
                                            (let ((_%tl5056050592%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7653576536%_
                                                      '1)))
                                                  (_%target5055850589%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7653576536%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5056050592%_)
                                                  (_%__match7660976610%_
                                                   _%e5053550650%_
                                                   _%hd5053450654%_
                                                   _%tl5053350657%_
                                                   _%__splice7653576536%_
                                                   _%target5055850589%_
                                                   _%tl5056050592%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5051250572%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5051250572%_))))
                                  (if (gx#stx-pair/null? _%tl5053350657%_)
                                      (let ((_%__splice7653576536%_
                                             (gx#syntax-split-splice
                                              _%tl5053350657%_
                                              '0)))
                                        (let ((_%tl5056050592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7653576536%_
                                                  '1)))
                                              (_%target5055850589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7653576536%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5056050592%_)
                                              (_%__match7660976610%_
                                               _%e5053550650%_
                                               _%hd5053450654%_
                                               _%tl5053350657%_
                                               _%__splice7653576536%_
                                               _%target5055850589%_
                                               _%tl5056050592%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5051250572%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5051250572%_))))))
                          (if (gx#stx-pair/null? _%tl5053350657%_)
                              (let ((_%__splice7653576536%_
                                     (gx#syntax-split-splice
                                      _%tl5053350657%_
                                      '0)))
                                (let ((_%tl5056050592%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7653576536%_
                                          '1)))
                                      (_%target5055850589%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7653576536%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5056050592%_)
                                      (_%__match7660976610%_
                                       _%e5053550650%_
                                       _%hd5053450654%_
                                       _%tl5053350657%_
                                       _%__splice7653576536%_
                                       _%target5055850589%_
                                       _%tl5056050592%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5051250572%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5051250572%_))))))
                   (_%__match7655776558%_
                    (lambda (_%e5051851084%_
                             _%hd5051751088%_
                             _%tl5051651091%_
                             _%e5052151094%_
                             _%hd5052051098%_
                             _%tl5051951101%_
                             _%__splice7652776528%_
                             _%target5052251104%_
                             _%tl5052451107%_)
                      (letrec ((_%loop5052551110%_
                                (lambda (_%hd5052351114%_ _%rand5052951117%_)
                                  (if (gx#stx-pair? _%hd5052351114%_)
                                      (let ((_%e5052651120%_
                                             (gx#syntax-e _%hd5052351114%_)))
                                        (let ((_%lp-tl5052851127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5052651120%_)))
                                              (_%lp-hd5052751124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5052651120%_))))
                                          (_%loop5052551110%_
                                           _%lp-tl5052851127%_
                                           (cons _%lp-hd5052751124%_
                                                 _%rand5052951117%_))))
                                      (let ((_%rand5053051130%_
                                             (reverse _%rand5052951117%_)))
                                        (let ((_%L51134%_ _%rand5053051130%_)
                                              (_%L51136%_ _%hd5052051098%_))
                                          (if (gx#identifier? _%L51136%_)
                                              (_%__kont7652576526%_
                                               _%L51134%_
                                               _%L51136%_)
                                              (_%__match7656976570%_
                                               _%e5051851084%_
                                               _%hd5051751088%_
                                               _%tl5051651091%_
                                               _%e5052151094%_
                                               _%hd5052051098%_
                                               _%tl5051951101%_))))))))
                        (_%loop5052551110%_ _%target5052251104%_ '())))))
              (if (gx#stx-pair? _%__stx7652276523%_)
                  (let ((_%e5051851084%_ (gx#syntax-e _%__stx7652276523%_)))
                    (let ((_%tl5051651091%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5051851084%_)))
                          (_%hd5051751088%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5051851084%_))))
                      (if (gx#stx-pair? _%tl5051651091%_)
                          (let ((_%e5052151094%_
                                 (gx#syntax-e _%tl5051651091%_)))
                            (let ((_%tl5051951101%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5052151094%_)))
                                  (_%hd5052051098%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5052151094%_))))
                              (if (gx#stx-pair/null? _%tl5051951101%_)
                                  (let ((_%__splice7652776528%_
                                         (gx#syntax-split-splice
                                          _%tl5051951101%_
                                          '0)))
                                    (let ((_%tl5052451107%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7652776528%_
                                              '1)))
                                          (_%target5052251104%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7652776528%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5052451107%_)
                                          (_%__match7655776558%_
                                           _%e5051851084%_
                                           _%hd5051751088%_
                                           _%tl5051651091%_
                                           _%e5052151094%_
                                           _%hd5052051098%_
                                           _%tl5051951101%_
                                           _%__splice7652776528%_
                                           _%target5052251104%_
                                           _%tl5052451107%_)
                                          (if (gx#stx-pair? _%hd5052051098%_)
                                              (let ((_%e5054150670%_
                                                     (gx#syntax-e
                                                      _%hd5052051098%_)))
                                                (let ((_%tl5053950677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5054150670%_)))
                                                      (_%hd5054050674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5054150670%_))))
                                                  (if (gx#identifier?
                                                       _%hd5054050674%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80730_|
                                                           _%hd5054050674%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5053950677%_)
                                                              (let ((_%e5054450680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5053950677%_)))
                        (let ((_%tl5054250687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5054450680%_)))
                              (_%hd5054350684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5054450680%_))))
                          (if (gx#stx-pair/null? _%tl5051651091%_)
                              (let ((_%__splice7653576536%_
                                     (gx#syntax-split-splice
                                      _%tl5051651091%_
                                      '0)))
                                (let ((_%tl5056050592%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7653576536%_
                                          '1)))
                                      (_%target5055850589%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7653576536%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5056050592%_)
                                      (_%__match7660976610%_
                                       _%e5051851084%_
                                       _%hd5051751088%_
                                       _%tl5051651091%_
                                       _%__splice7653576536%_
                                       _%target5055850589%_
                                       _%tl5056050592%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5051250572%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5051250572%_)))))
                      (if (gx#stx-pair/null? _%tl5051651091%_)
                          (let ((_%__splice7653576536%_
                                 (gx#syntax-split-splice _%tl5051651091%_ '0)))
                            (let ((_%tl5056050592%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7653576536%_ '1)))
                                  (_%target5055850589%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7653576536%_
                                      '0))))
                              (if (gx#stx-null? _%tl5056050592%_)
                                  (_%__match7660976610%_
                                   _%e5051851084%_
                                   _%hd5051751088%_
                                   _%tl5051651091%_
                                   _%__splice7653576536%_
                                   _%target5055850589%_
                                   _%tl5056050592%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5051250572%_)))))
                          (let () (declare (not safe)) (_%g5051250572%_))))
                  (if (gx#stx-pair/null? _%tl5051651091%_)
                      (let ((_%__splice7653576536%_
                             (gx#syntax-split-splice _%tl5051651091%_ '0)))
                        (let ((_%tl5056050592%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7653576536%_ '1)))
                              (_%target5055850589%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7653576536%_ '0))))
                          (if (gx#stx-null? _%tl5056050592%_)
                              (_%__match7660976610%_
                               _%e5051851084%_
                               _%hd5051751088%_
                               _%tl5051651091%_
                               _%__splice7653576536%_
                               _%target5055850589%_
                               _%tl5056050592%_)
                              (let ()
                                (declare (not safe))
                                (_%g5051250572%_)))))
                      (let () (declare (not safe)) (_%g5051250572%_))))
              (if (gx#stx-pair/null? _%tl5051651091%_)
                  (let ((_%__splice7653576536%_
                         (gx#syntax-split-splice _%tl5051651091%_ '0)))
                    (let ((_%tl5056050592%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7653576536%_ '1)))
                          (_%target5055850589%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7653576536%_ '0))))
                      (if (gx#stx-null? _%tl5056050592%_)
                          (_%__match7660976610%_
                           _%e5051851084%_
                           _%hd5051751088%_
                           _%tl5051651091%_
                           _%__splice7653576536%_
                           _%target5055850589%_
                           _%tl5056050592%_)
                          (let () (declare (not safe)) (_%g5051250572%_)))))
                  (let () (declare (not safe)) (_%g5051250572%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5051651091%_)
                                                  (let ((_%__splice7653576536%_
                                                         (gx#syntax-split-splice
                                                          _%tl5051651091%_
                                                          '0)))
                                                    (let ((_%tl5056050592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7653576536%_
                                                              '1)))
                                                          (_%target5055850589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7653576536%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5056050592%_)
                                                          (_%__match7660976610%_
                                                           _%e5051851084%_
                                                           _%hd5051751088%_
                                                           _%tl5051651091%_
                                                           _%__splice7653576536%_
                                                           _%target5055850589%_
                                                           _%tl5056050592%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5051250572%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5051250572%_)))))))
                                  (if (gx#stx-pair? _%hd5052051098%_)
                                      (let ((_%e5054150670%_
                                             (gx#syntax-e _%hd5052051098%_)))
                                        (let ((_%tl5053950677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5054150670%_)))
                                              (_%hd5054050674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5054150670%_))))
                                          (if (gx#identifier? _%hd5054050674%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80730_|
                                                   _%hd5054050674%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5053950677%_)
                                                      (let ((_%e5054450680%_
                                                             (gx#syntax-e
                                                              _%tl5053950677%_)))
                                                        (let ((_%tl5054250687%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5054450680%_)))
                      (_%hd5054350684%_
                       (let () (declare (not safe)) (##car _%e5054450680%_))))
                  (if (gx#stx-pair/null? _%tl5051651091%_)
                      (let ((_%__splice7653576536%_
                             (gx#syntax-split-splice _%tl5051651091%_ '0)))
                        (let ((_%tl5056050592%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7653576536%_ '1)))
                              (_%target5055850589%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7653576536%_ '0))))
                          (if (gx#stx-null? _%tl5056050592%_)
                              (_%__match7660976610%_
                               _%e5051851084%_
                               _%hd5051751088%_
                               _%tl5051651091%_
                               _%__splice7653576536%_
                               _%target5055850589%_
                               _%tl5056050592%_)
                              (let ()
                                (declare (not safe))
                                (_%g5051250572%_)))))
                      (let () (declare (not safe)) (_%g5051250572%_)))))
              (if (gx#stx-pair/null? _%tl5051651091%_)
                  (let ((_%__splice7653576536%_
                         (gx#syntax-split-splice _%tl5051651091%_ '0)))
                    (let ((_%tl5056050592%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7653576536%_ '1)))
                          (_%target5055850589%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7653576536%_ '0))))
                      (if (gx#stx-null? _%tl5056050592%_)
                          (_%__match7660976610%_
                           _%e5051851084%_
                           _%hd5051751088%_
                           _%tl5051651091%_
                           _%__splice7653576536%_
                           _%target5055850589%_
                           _%tl5056050592%_)
                          (let () (declare (not safe)) (_%g5051250572%_)))))
                  (let () (declare (not safe)) (_%g5051250572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5051651091%_)
                                                      (let ((_%__splice7653576536%_
                                                             (gx#syntax-split-splice
                                                              _%tl5051651091%_
                                                              '0)))
                                                        (let ((_%tl5056050592%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7653576536%_ '1)))
                      (_%target5055850589%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7653576536%_ '0))))
                  (if (gx#stx-null? _%tl5056050592%_)
                      (_%__match7660976610%_
                       _%e5051851084%_
                       _%hd5051751088%_
                       _%tl5051651091%_
                       _%__splice7653576536%_
                       _%target5055850589%_
                       _%tl5056050592%_)
                      (let () (declare (not safe)) (_%g5051250572%_)))))
              (let () (declare (not safe)) (_%g5051250572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5051651091%_)
                                                  (let ((_%__splice7653576536%_
                                                         (gx#syntax-split-splice
                                                          _%tl5051651091%_
                                                          '0)))
                                                    (let ((_%tl5056050592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7653576536%_
                                                              '1)))
                                                          (_%target5055850589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7653576536%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5056050592%_)
                                                          (_%__match7660976610%_
                                                           _%e5051851084%_
                                                           _%hd5051751088%_
                                                           _%tl5051651091%_
                                                           _%__splice7653576536%_
                                                           _%target5055850589%_
                                                           _%tl5056050592%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5051250572%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5051250572%_))))))
                                      (if (gx#stx-pair/null? _%tl5051651091%_)
                                          (let ((_%__splice7653576536%_
                                                 (gx#syntax-split-splice
                                                  _%tl5051651091%_
                                                  '0)))
                                            (let ((_%tl5056050592%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7653576536%_
                                                      '1)))
                                                  (_%target5055850589%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7653576536%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5056050592%_)
                                                  (_%__match7660976610%_
                                                   _%e5051851084%_
                                                   _%hd5051751088%_
                                                   _%tl5051651091%_
                                                   _%__splice7653576536%_
                                                   _%target5055850589%_
                                                   _%tl5056050592%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5051250572%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5051250572%_)))))))
                          (if (gx#stx-pair/null? _%tl5051651091%_)
                              (let ((_%__splice7653576536%_
                                     (gx#syntax-split-splice
                                      _%tl5051651091%_
                                      '0)))
                                (let ((_%tl5056050592%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7653576536%_
                                          '1)))
                                      (_%target5055850589%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7653576536%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5056050592%_)
                                      (_%__match7660976610%_
                                       _%e5051851084%_
                                       _%hd5051751088%_
                                       _%tl5051651091%_
                                       _%__splice7653576536%_
                                       _%target5055850589%_
                                       _%tl5056050592%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5051250572%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5051250572%_))))))
                  (let () (declare (not safe)) (_%g5051250572%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51168%_)
        (let* ((_%__stx7661276613%_ _%stx51168%_)
               (_%g5117251193%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7661276613%_))))
          (let ((_%__kont7661576616%_
                 (lambda (_%L51261%_)
                   (let* ((_%g5127351280%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx51168%_
                              _%L51261%_)))
                          (_%E5127551286%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5127351280%_
                                    '([var . parts]))
                             (void)))
                          (_%K5127651502%_
                           (lambda (_%parts51290%_ _%var51292%_)
                             (let ((_%$e51294%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51292%_))))
                               (if _%$e51294%_
                                   ((lambda (_%te51298%_)
                                      (let _%loop51301%_ ((_%parts51304%_
                                                           _%parts51290%_)
                                                          (_%type51306%_
                                                           (##direct-structure-ref
                                                            _%te51298%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51307%_
                                                           _%var51292%_)
                                                          (_%nil-check?51308%_
                                                           '#f))
                                        (let* ((_%parts5130951317%_
                                                _%parts51304%_)
                                               (_%else5131151329%_
                                                (lambda () _%object51307%_))
                                               (_%K5131351484%_
                                                (lambda (_%rest51333%_
                                                         _%part51335%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?51308%_))
                                                           (let ((__tmp80731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51335%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80731)))
              (let ((_%str51339%_ (symbol->string _%part51335%_)))
                (_%loop51301%_
                 (cons (let ((__tmp80732
                              (substring
                               _%str51339%_
                               '1
                               (string-length _%str51339%_))))
                         (declare (not safe))
                         (##string->symbol __tmp80732))
                       _%rest51333%_)
                 _%type51306%_
                 _%object51307%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51306%_))
                  (let ()
                    (let* ((_%g5134451359%_
                            (lambda (_%g5134551355%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5134551355%_)))
                           (_%g5134351476%_
                            (lambda (_%g5134551363%_)
                              (if (gx#stx-pair? _%g5134551363%_)
                                  (let ((_%e5135051366%_
                                         (gx#syntax-e _%g5134551363%_)))
                                    (let ((_%hd5134951370%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5135051366%_)))
                                          (_%tl5134851373%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5135051366%_))))
                                      (if (gx#stx-pair? _%tl5134851373%_)
                                          (let ((_%e5135351376%_
                                                 (gx#syntax-e
                                                  _%tl5134851373%_)))
                                            (let ((_%hd5135251380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5135351376%_)))
                                                  (_%tl5135151383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5135351376%_))))
                                              (if (gx#stx-null?
                                                   _%tl5135151383%_)
                                                  ((lambda (_%L51386%_
                                                            _%L51388%_)
                                                     (let ()
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%rest51333%_))
                                                           (let ((_%$e51418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                             _%type51306%_
                             _%part51335%_))))
                     (if _%$e51418%_
                         ((lambda (_%slot-type51422%_)
                            (let* ((_%g5142551433%_
                                    (lambda (_%g5142651429%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g5142651429%_)))
                                   (_%g5142451456%_
                                    (lambda (_%g5142651437%_)
                                      ((lambda (_%L51440%_)
                                         (let ()
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@type)
                                                             (cons _%L51440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons _%L51386%_ (cons _%L51388%_ '())) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%g5142651437%_))))
                              (_%g5142451456%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx51168%_
                                  _%slot-type51422%_)))))
                          _%$e51418%_)
                         (if _%nil-check?51308%_
                             (let ()
                               (cons _%L51386%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51388%_ '()))
                                           '())))
                             (let ()
                               (cons _%L51386%_ (cons _%L51388%_ '()))))))
                   (let ((_%$e51464%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                             _%type51306%_
                             _%part51335%_))))
                     (if _%$e51464%_
                         ((lambda (_%type51468%_)
                            (let ((_%type51471%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx51168%_
                                      _%type51468%_))))
                              (if _%nil-check?51308%_
                                  (_%loop51301%_
                                   _%rest51333%_
                                   _%type51471%_
                                   (cons _%L51386%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'check-nil!)
                                                     (cons _%L51388%_ '()))
                                               '()))
                                   '#f)
                                  (_%loop51301%_
                                   _%rest51333%_
                                   _%type51471%_
                                   (cons _%L51386%_ (cons _%L51388%_ '()))
                                   '#f))))
                          _%$e51464%_)
                         (let ()
                           (gx#raise-syntax-error
                            '#f
                            '"unresolved dotted reference; unknown type for slot"
                            _%stx51168%_
                            _%L51261%_
                            _%part51335%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd5135251380%_
                                                   _%hd5134951370%_)
                                                  (_%g5134451359%_
                                                   _%g5134551363%_))))
                                          (_%g5134451359%_ _%g5134551363%_))))
                                  (_%g5134451359%_ _%g5134551363%_)))))
                      (_%g5134351476%_
                       (list (if _%nil-check?51308%_
                                 (cons 'check-nil! (cons _%object51307%_ '()))
                                 _%object51307%_)
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx51168%_
                                _%type51306%_
                                _%part51335%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51306%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx51168%_
                         _%type51306%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5130951317%_))
                                              (let ((_%hd5131451488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5130951317%_)))
                                                    (_%tl5131551491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5130951317%_))))
                                                (let* ((_%part51494%_
                                                        _%hd5131451488%_)
                                                       (_%rest51497%_
                                                        _%tl5131551491%_))
                                                  (_%K5131351484%_
                                                   _%rest51497%_
                                                   _%part51494%_)))
                                              (_%else5131151329%_)))))
                                    _%$e51294%_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f '%%ref)
                                           (cons _%L51261%_ '()))))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5127351280%_))
                         (let ((_%hd5127751506%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5127351280%_)))
                               (_%tl5127851509%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5127351280%_))))
                           (let* ((_%var51512%_ _%hd5127751506%_)
                                  (_%parts51515%_ _%tl5127851509%_))
                             (_%K5127651502%_ _%parts51515%_ _%var51512%_)))
                         (_%E5127551286%_)))))
                (_%__kont7661776618%_
                 (lambda (_%L51220%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51220%_ '())))))
            (let ((_%__match7663376634%_
                   (lambda (_%e5117751241%_
                            _%hd5117651245%_
                            _%tl5117551248%_
                            _%e5118051251%_
                            _%hd5117951255%_
                            _%tl5117851258%_)
                     (let ((_%L51261%_ _%hd5117951255%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L51261%_))
                           (_%__kont7661576616%_ _%L51261%_)
                           (_%__kont7661776618%_ _%hd5117951255%_))))))
              (if (gx#stx-pair? _%__stx7661276613%_)
                  (let ((_%e5117751241%_ (gx#syntax-e _%__stx7661276613%_)))
                    (let ((_%tl5117551248%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5117751241%_)))
                          (_%hd5117651245%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5117751241%_))))
                      (if (gx#stx-pair? _%tl5117551248%_)
                          (let ((_%e5118051251%_
                                 (gx#syntax-e _%tl5117551248%_)))
                            (let ((_%tl5117851258%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5118051251%_)))
                                  (_%hd5117951255%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5118051251%_))))
                              (if (gx#stx-null? _%tl5117851258%_)
                                  (_%__match7663376634%_
                                   _%e5117751241%_
                                   _%hd5117651245%_
                                   _%tl5117551248%_
                                   _%e5118051251%_
                                   _%hd5117951255%_
                                   _%tl5117851258%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5117251193%_)))))
                          (let () (declare (not safe)) (_%g5117251193%_)))))
                  (let () (declare (not safe)) (_%g5117251193%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51522%_)
        (let* ((_%__stx7665076651%_ _%stx51522%_)
               (_%g5152651555%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7665076651%_))))
          (let ((_%__kont7665376654%_
                 (lambda (_%L51647%_ _%L51649%_)
                   (let* ((_%g5166351670%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx51522%_
                              _%L51649%_)))
                          (_%E5166551676%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5166351670%_
                                    '([var . parts]))
                             (void)))
                          (_%K5166651906%_
                           (lambda (_%parts51680%_ _%var51682%_)
                             (let ((_%$e51684%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51682%_))))
                               (if _%$e51684%_
                                   ((lambda (_%te51688%_)
                                      (let _%loop51691%_ ((_%parts51694%_
                                                           _%parts51680%_)
                                                          (_%type51696%_
                                                           (##direct-structure-ref
                                                            _%te51688%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51697%_
                                                           _%var51682%_)
                                                          (_%checked-mutator?51698%_
                                                           (##direct-structure-ref
                                                            _%te51688%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51699%_
                                                           '#f))
                                        (let* ((_%parts5170051707%_
                                                _%parts51694%_)
                                               (_%E5170251713%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5170051707%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5170351888%_
                                                (lambda (_%rest51717%_
                                                         _%part51719%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?51699%_))
                                                           (let ((__tmp80733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51719%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80733)))
              (let ((_%str51723%_ (symbol->string _%part51719%_)))
                (_%loop51691%_
                 (cons (let ((__tmp80734
                              (substring
                               _%str51723%_
                               '1
                               (string-length _%str51723%_))))
                         (declare (not safe))
                         (##string->symbol __tmp80734))
                       _%rest51717%_)
                 _%type51696%_
                 _%object51697%_
                 _%checked-mutator?51698%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51696%_))
                  (let ()
                    (if (let () (declare (not safe)) (null? _%rest51717%_))
                        (let ()
                          (let* ((_%g5173051745%_
                                  (lambda (_%g5173151741%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5173151741%_)))
                                 (_%g5172951802%_
                                  (lambda (_%g5173151749%_)
                                    (if (gx#stx-pair? _%g5173151749%_)
                                        (let ((_%e5173651752%_
                                               (gx#syntax-e _%g5173151749%_)))
                                          (let ((_%hd5173551756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5173651752%_)))
                                                (_%tl5173451759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5173651752%_))))
                                            (if (gx#stx-pair? _%tl5173451759%_)
                                                (let ((_%e5173951762%_
                                                       (gx#syntax-e
                                                        _%tl5173451759%_)))
                                                  (let ((_%hd5173851766%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5173951762%_)))
                                                        (_%tl5173751769%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5173951762%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5173751769%_)
                                                        ((lambda (_%L51772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L51774%_)
                   (let ()
                     (if _%nil-check?51699%_
                         (cons _%L51772%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51774%_ '()))
                                     (cons _%L51647%_ '())))
                         (cons _%L51772%_
                               (cons _%L51774%_ (cons _%L51647%_ '()))))))
                 _%hd5173851766%_
                 _%hd5173551756%_)
                (_%g5173051745%_ _%g5173151749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5173051745%_
                                                 _%g5173151749%_))))
                                        (_%g5173051745%_ _%g5173151749%_)))))
                            (_%g5172951802%_
                             (list _%object51697%_
                                   (let ((__tmp80735
                                          (if _%checked-mutator?51698%_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                                 _%type51696%_
                                                 _%part51719%_))
                                              '#f)))
                                     (declare (not safe))
                                     (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                      _%stx51522%_
                                      _%type51696%_
                                      _%part51719%_
                                      __tmp80735))))))
                        (let ((_%$e51806%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~Using[1]#!class-slot-type|
                                  _%type51696%_
                                  _%part51719%_))))
                          (if _%$e51806%_
                              ((lambda (_%type51810%_)
                                 (let* ((_%type51813%_
                                         (let ()
                                           (declare (not safe))
                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                            _%stx51522%_
                                            _%type51810%_)))
                                        (_%g5181651831%_
                                         (lambda (_%g5181751827%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g5181751827%_)))
                                        (_%g5181551878%_
                                         (lambda (_%g5181751835%_)
                                           (if (gx#stx-pair? _%g5181751835%_)
                                               (let ((_%e5182251838%_
                                                      (gx#syntax-e
                                                       _%g5181751835%_)))
                                                 (let ((_%hd5182151842%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5182251838%_)))
                                                       (_%tl5182051845%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5182251838%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl5182051845%_)
                                                       (let ((_%e5182551848%_
                                                              (gx#syntax-e
                                                               _%tl5182051845%_)))
                                                         (let ((_%hd5182451852%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5182551848%_)))
                       (_%tl5182351855%_
                        (let () (declare (not safe)) (##cdr _%e5182551848%_))))
                   (if (gx#stx-null? _%tl5182351855%_)
                       ((lambda (_%L51858%_ _%L51860%_)
                          (let ()
                            (_%loop51691%_
                             _%rest51717%_
                             _%type51813%_
                             (cons _%L51858%_ (cons _%L51860%_ '()))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                                _%type51813%_
                                _%part51719%_))
                             '#f)))
                        _%hd5182451852%_
                        _%hd5182151842%_)
                       (_%g5181651831%_ _%g5181751835%_))))
               (_%g5181651831%_ _%g5181751835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5181651831%_
                                                _%g5181751835%_)))))
                                   (_%g5181551878%_
                                    (list (if _%nil-check?51699%_
                                              (cons 'check-nil!
                                                    (cons _%object51697%_ '()))
                                              _%object51697%_)
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                             _%stx51522%_
                                             _%type51813%_
                                             _%part51719%_))))))
                               _%$e51806%_)
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"unresolved dotted reference; unknown type for slot"
                                 _%stx51522%_
                                 _%L51649%_
                                 _%part51719%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51696%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx51522%_
                         _%type51696%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5170051707%_))
                                              (let ((_%hd5170451892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5170051707%_)))
                                                    (_%tl5170551895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5170051707%_))))
                                                (let* ((_%part51898%_
                                                        _%hd5170451892%_)
                                                       (_%rest51901%_
                                                        _%tl5170551895%_))
                                                  (_%K5170351888%_
                                                   _%rest51901%_
                                                   _%part51898%_)))
                                              (_%E5170251713%_)))))
                                    _%$e51684%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51522%_)))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5166351670%_))
                         (let ((_%hd5166751910%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5166351670%_)))
                               (_%tl5166851913%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5166351670%_))))
                           (let* ((_%var51916%_ _%hd5166751910%_)
                                  (_%parts51919%_ _%tl5166851913%_))
                             (_%K5166651906%_ _%parts51919%_ _%var51916%_)))
                         (_%E5166551676%_)))))
                (_%__kont7665576656%_
                 (lambda (_%L51592%_ _%L51594%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51522%_)))))
            (let ((_%__match7667776678%_
                   (lambda (_%e5153251617%_
                            _%hd5153151621%_
                            _%tl5153051624%_
                            _%e5153551627%_
                            _%hd5153451631%_
                            _%tl5153351634%_
                            _%e5153851637%_
                            _%hd5153751641%_
                            _%tl5153651644%_)
                     (let ((_%L51647%_ _%hd5153751641%_)
                           (_%L51649%_ _%hd5153451631%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L51649%_))
                           (_%__kont7665376654%_ _%L51647%_ _%L51649%_)
                           (_%__kont7665576656%_
                            _%hd5153751641%_
                            _%hd5153451631%_))))))
              (if (gx#stx-pair? _%__stx7665076651%_)
                  (let ((_%e5153251617%_ (gx#syntax-e _%__stx7665076651%_)))
                    (let ((_%tl5153051624%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5153251617%_)))
                          (_%hd5153151621%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5153251617%_))))
                      (if (gx#stx-pair? _%tl5153051624%_)
                          (let ((_%e5153551627%_
                                 (gx#syntax-e _%tl5153051624%_)))
                            (let ((_%tl5153351634%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5153551627%_)))
                                  (_%hd5153451631%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5153551627%_))))
                              (if (gx#stx-pair? _%tl5153351634%_)
                                  (let ((_%e5153851637%_
                                         (gx#syntax-e _%tl5153351634%_)))
                                    (let ((_%tl5153651644%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5153851637%_)))
                                          (_%hd5153751641%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5153851637%_))))
                                      (if (gx#stx-null? _%tl5153651644%_)
                                          (_%__match7667776678%_
                                           _%e5153251617%_
                                           _%hd5153151621%_
                                           _%tl5153051624%_
                                           _%e5153551627%_
                                           _%hd5153451631%_
                                           _%tl5153351634%_
                                           _%e5153851637%_
                                           _%hd5153751641%_
                                           _%tl5153651644%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5152651555%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5152651555%_)))))
                          (let () (declare (not safe)) (_%g5152651555%_)))))
                  (let () (declare (not safe)) (_%g5152651555%_))))))))))
